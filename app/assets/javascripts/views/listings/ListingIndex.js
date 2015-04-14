disneyBnB.Views.ListingIndex = Backbone.View.extend({
  tagName: 'div class=listing-container',

  template: JST['listing/listingIndex'],

  initialize: function(){
    this.mapShow = new disneyBnB.Views.GoogleMaps({
      collection: this.collection
    });
    this.searchIndex = new disneyBnB.Views.searchIndex({
      collection: this.collection
    });
  },

  render: function() {
    this.$el.html(this.searchIndex.render().$el);
    this.$el.append(this.mapShow.$el);
    this.mapShow.initMap();
    return this;
  }
});
