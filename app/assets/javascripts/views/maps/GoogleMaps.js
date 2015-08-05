disneyBnB.Views.GoogleMaps = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function() {
    this._markers = {};
    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
  },

  initMap: function () {
    var lat = 37.7833;
    var lng = -122.4167;
    if (disneyBnB.GLOBAL_LATITUDE){
      lat = disneyBnB.GLOBAL_LATITUDE;
      lng = disneyBnB.GLOBAL_LONGITUDE;
    }
    disneyBnB.mapOptions = {
      center: { lat: lat, lng: lng},
      zoom: 12
    };
    disneyBnB.map = new google.maps.Map(this.el, disneyBnB.mapOptions);
    this.collection.each(this.addMarker.bind(this));
    this.attachMapListeners();
  },

  attachMapListeners: function () {
    google.maps.event.addListener(disneyBnB.map, 'bounds_changed', this.setBounds.bind(this));
    google.maps.event.addListener(disneyBnB.searchBox, 'places_changed', this.addPin.bind(this));
    google.maps.event.addListener(disneyBnB.map, 'idle', this.search.bind(this));
  },

  showMarkerInfo: function (event, marker) {
    var infoWindow = new google.maps.InfoWindow({
      content: marker.title
    });

    infoWindow.open(disneyBnB.map, marker);
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
      map: disneyBnB.map,
      title: listing.get('title')
    });

    google.maps.event.addListener(marker, 'click', function (event) {
      view.showMarkerInfo(event, marker);
    });

    this._markers[listing.id] = marker;
  },

  search: function () {
    var mapBounds = disneyBnB.map.getBounds();
    var ne = mapBounds.getNorthEast();
    var sw = mapBounds.getSouthWest();
    var filterData = {
      lat: [sw.lat(), ne.lat()],
      lng: [sw.lng(), ne.lng()]
    };

    this.collection.fetch({
      data: { filter_data: filterData },
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
    var bounds = disneyBnB.map.getBounds();
    disneyBnB.searchBox.setBounds(bounds);
  },

  addPin: function() {
    var marker = this._markers[0];
    if (marker) {
      marker.setMap(null);
      delete this._markers[0];
    }

    var places = disneyBnB.searchBox.getPlaces();
    if (places.length === 0) {
      return;
    }
    var bounds = new google.maps.LatLngBounds();
    var place = places[0];
    disneyBnB.GLOBAL_LATITUDE = place.geometry.location.A;
    disneyBnB.GLOBAL_LONGITUDE = place.geometry.location.F;
    var image = {
      url: place.icon,
      size: new google.maps.Size(71,71),
      origin: new google.maps.Point(0, 0),
      anchor: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(25, 25)
    };

    marker = new google.maps.Marker({
      map: disneyBnB.map,
      icon: image,
      title: place.name,
      position: place.geometry.location
    });
    this._markers[0] = marker;
    disneyBnB.map.setCenter(place.geometry.location);
    disneyBnB.map.setZoom(12);
  }
});
