disneyBnB.Views.ListingShow = Backbone.View.extend({
  tagName: 'div class=show',

  template: JST['listing/listingShow'],

  initialize: function(options){
    this.listing = this.model;
    this.listings = this.collection;
    this.showDescription = new disneyBnB.Views.ListingDescription({
      model: this.listing,
      listings: this.listings
    });
    this.showComments = new disneyBnB.Views.ListingComments({
      listing: this.listing,
      listings: this.listings
    });
    this.showProfile = new disneyBnB.Views.ListingProfile({
      listing: this.listing
    });
  },

  render: function() {
    this.$el.html(this.showDescription.render().$el);
    this.$el.append(this.showComments.render().$el);
    this.$el.append(this.showProfile.render().$el);
    return this;
  }
});
