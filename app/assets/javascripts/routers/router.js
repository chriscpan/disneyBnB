disneyBnB.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.model = options.user;
    this.$rootEl = options.$rootEl;
    this.listings = options.listings;
  },

  routes: {
    '../listings': 'index',
    '../listings/:id': 'show',
  },

  index: function(){
    this.listings.fetch();
    var v = new disneyBnB.Views.ListingIndex({
      collection: this.listings
    });
    this._swapView(v);
  },

  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
