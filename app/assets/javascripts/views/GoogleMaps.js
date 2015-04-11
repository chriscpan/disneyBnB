disneyBnB.Views.GoogleMaps = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function() {
    this._markers = {};
    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
  },

  attachMapListeners: function () {
    google.maps.event.addListener(map, 'idle', this.search.bind(this));
    // google.maps.event.addListener(this._map, 'click', this.createListing.bind(this));
  },

  initMap: function () {
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167},
      zoom: 12
    };

    map = new google.maps.Map(this.el, mapOptions);

    this.collection.each(this.addMarker.bind(this));
    // this.attachMapListeners();
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

  search: function () {
    var mapBounds = this._map.getBounds();
    var ne = mapBounds.getNorthEast();
    var sw = mapBounds.getSouthWest();

    var filterData = {
      lat: [sw.lat(), ne.lat()],
      lng: [sw.lng(), ne.lng()]
    };

    this.collection.fetch({
      data: { filter_data: filterData }
    });
  },

  startBounce: function (id) {
    var marker = this._markers[id];
    marker.setAnimation(google.maps.Animation.BOUNCE);
  },

  stopBounce: function (id) {
    var marker = this._markers[id];
    marker.setAnimation(null);
  }
});
