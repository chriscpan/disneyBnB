disneyBnB.Views.Root = Backbone.View.extend({
  template: JST['root/root'],

  initialize: function(options){
    this.listings = options.listings;
  },

  render: function(){
    var content = this.template();
    this.$el.html(content);
    disneyBnB.findDatePicker();
    this.navView = new disneyBnB.Views.ListingSearch({
      el: $('.listing-search-home'),
      collection: this.listings
    });
    return this;
  },
});
