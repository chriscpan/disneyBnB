disneyBnB.Views.GoogleMaps = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function() {
    // this.listenTo(this.model, 'sync', this.render);
  },

  initMap: function () {
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167},
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
  },

  render: function(){
    debugger
    var mapOptions = {
      center: {
         lat: this.model.get('latitude'), lng: this.model.get('longitude')

      }
    };

    this._map = newgoogle.maps.Map(this.el, mapOptions);
    return this._map;
  }
});
