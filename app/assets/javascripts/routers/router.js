disneyBnB.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.model = options.user;
    this.$rootEl = options.$rootEl;
    this.listings = options.listings;
  },

  routes: {
    '': 'root',
    'listings': 'index',
    'listings/new': 'new',
    'listings/:id': 'show',
  },

  root: function(){
    this.listings.fetch();
    var v = new disneyBnB.Views.Root({
      listings: this.listings
    });
    this._swapView(v);
  },

  index: function(){
    // this.listings.fetch();
    var v = new disneyBnB.Views.ListingIndex({
      collection: this.listings
    });
    this._swapView(v);
  },

  show: function(id){
    var listing = this.listings.getOrFetch(id);
    var v = new disneyBnB.Views.ListingShow({
      model: listing,
      collection: this.listings
    });
    this._swapView(v);
  },

  new: function() {
    var listing = new disneyBnB.Models.Listing();
    var v = new disneyBnB.Views.ListingNew({
      model: listing,
      collection: this.listings
    });
    this._swapView(v);
  },

  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.$el);
    view.render();
  }
});
