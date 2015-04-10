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
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167},
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);

    this.collection.each(this.addMarker.bind(this));
  },

  showMarkerInfo: function (event, marker) {
    var infoWindow = new google.maps.InfoWindow({
      content: marker.title
    });

    infoWindow.open(this._map, marker);
  },

  removeMarker: function (listing) {
    var marker = this._markers[listing.id];
    marker.setMap(null);
    delete this._markers[listing.id];
  },

  // addMarker: function (listing) {
  //   if (this._markers[listing.id]) {
  //     return ;
  //   }
  //   // debugger
  //   var view = this;
  //
  //   var latLng = new google.maps.LatLng(
  //     listing.attributes.location.latitude,
  //     listing.attributes.location.longitude
  //   );
  //
  //   var marker = new google.maps.Marker({
  //     position: latLng,
  //     map: this._map,
  //     title: listing.get('title')
  //   });
  //
  //   google.maps.event.addListener(marker, 'click', function (event){
  //     view.showMarkerInfo(event, marker);
  //   });
  //
  //   this._markers[listing.id] = marker;
  // }
  addMarker: function (listing) {
    if (this._markers[listing.id]) { return; }
    var view = this;

    var latLng = new google.maps.LatLng(
      listing.get('latitude'),
      listing.get('longitude')
    );

    var marker = new google.maps.Marker({
      position: latLng,
      map: this._map,
      title: listing.get('title')
    });

    google.maps.event.addListener(marker, 'click', function (event) {
      view.showMarkerInfo(event, marker);
    });

    this._markers[listing.id] = marker;
  },
});
