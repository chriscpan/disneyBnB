disneyBnB.Views.ListingIndex = Backbone.View.extend({
  template: JST['listing/listingIndex'],

  initialize: function(){
    this.listenTo(this.collection, 'sync', this.render);
    // this.collection.each(this.addMapView.bind(this));
  },

  render: function() {
    var content = this.template({
      listings: this.collection
    });
    this.$el.html(content);
    debugger
    var v = new disneyBnB.Views.GoogleMaps({
      // model: this.collection.first()
      collection: this.collection
    });
    this.$el.append(v.$el);
    v.initMap();
    // v.render
    return this;
  },

  // addMapView: function(listing) {
  //   var subview = new disneyBnB.Views.GoogleMaps({
  //     model:
  //   })
  // },

  // _mapView: function(view){
  //   this._currentView && this._currentView.remove();
  //   this._currentView = view;
  //
  //   this.$el.append(view.$el);
  //   view.render();
  // }
});
