disneyBnB.Views.ListingProfile = Backbone.View.extend({
  template: JST['listing/listingProfile'],

  initialize: function(options) {
    this.listing = options.listing;
    this.listenTo(this.listing, 'sync', this.render);
  },

  render: function() {
    var content = this.template({
      listing: this.listing
    });
    this.$el.html(content);
    return this;
  },
});
