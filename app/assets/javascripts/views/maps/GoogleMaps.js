disneyBnB.Views.GoogleMaps = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function() {
    this._markers = {};
    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
  },

  // longitude: D, Latitude: k
  initMap: function () {
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167},
      zoom: 12
    };

    map = new google.maps.Map(this.el, mapOptions);
    debugger
    this.collection.each(this.addMarker.bind(this));
    this.attachMapListeners();
  },

  attachMapListeners: function () {
    google.maps.event.addListener(map, 'bounds_changed', this.setBounds.bind(this));
    google.maps.event.addListener(searchBox, 'places_changed', this.addPin.bind(this));
    google.maps.event.addListener(map, 'idle', this.search.bind(this));
    // google.maps.event.addListener(this._map, 'click', this.createListing.bind(this));
  },

  showMarkerInfo: function (event, marker) {
    var infoWindow = new google.maps.InfoWindow({
      content: marker.title
    });

    infoWindow.open(map, marker);
  },

  removeMarker: function (listing) {
    var marker = this._markers[listing.id];
    marker.setMap(null);
    delete this._markers[listing.id];
  },

  addMarker: function (listing) {
    if (this._markers[listing.id]) { return; }
    var view = this;

    var latLng = new google.maps.LatLng(
      listing.get('latitude'),
      listing.get('longitude')
    );

    var marker = new google.maps.Marker({
      position: latLng,
      map: map,
      title: listing.get('title')
    });

    google.maps.event.addListener(marker, 'click', function (event) {
      view.showMarkerInfo(event, marker);
    });

    this._markers[listing.id] = marker;
  },

  // createListing: function (event) {
  //   var listing = new GoogleMapsDemo.Models.Listing({
  //     lat: event.latLng.lat(),
  //     lng: event.latLng.lng()
  //   });
  //
  //   listing.save({}, {
  //     success: function () {
  //       this.collection.add(listing);
  //     }.bind(this)
  //   });
  // },

  search: function () {
    var mapBounds = map.getBounds();
    var ne = mapBounds.getNorthEast();
    var sw = mapBounds.getSouthWest();
    debugger
    var filterData = {
      lat: [sw.lat(), ne.lat()],
      lng: [sw.lng(), ne.lng()]
    };

    this.collection.fetch({
      data: { filter_data: filterData },
      success:  function() {
        console.log('idle!');
      }
    });
  },
  //
  // startBounce: function (id) {
  //   var marker = this._markers[id];
  //   marker.setAnimation(google.maps.Animation.BOUNCE);
  // },
  //
  // stopBounce: function (id) {
  //   var marker = this._markers[id];
  //   marker.setAnimation(null);
  // },

  setBounds: function() {
    console.log('change bounds');
    var bounds = map.getBounds();
    searchBox.setBounds(bounds);
  },

  addPin: function() {

    var marker = this._markers[0];
    if (marker) {
      marker.setMap(null);
      delete this._markers[0];
    }

    var places = searchBox.getPlaces();
    console.log(places);
    // debugger
    if (places.length === 0) {
      return;
    }
    var bounds = new google.maps.LatLngBounds();
    var place = places[0];

    var image = {
      url: place.icon,
      size: new google.maps.Size(71,71),
      origin: new google.maps.Point(0, 0),
      anchor: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(25, 25)
    };

    var marker = new google.maps.Marker({
      map: map,
      icon: image,
      title: place.name,
      position: place.geometry.location
    });

    this._markers[0] = marker;
    bounds.extend(place.geometry.location);
    map.fitBounds(bounds);
  }
});
