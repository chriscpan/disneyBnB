disneyBnB.Views.GoogleMaps = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },


  render: function(){
    var mapOptions = {
      center: {
         lat: this.model.get('latitude'), lng: this.model.get('longitude')
      }
    };

    this._map = newgoogle.maps.Map(this.el, mapOptions);
  }
});
