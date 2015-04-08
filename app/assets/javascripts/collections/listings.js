disneyBnB.Collections.Listings = Backbone.Collection.extend({
  url: '/api/listings',

  model: disneyBnB.Models.Listing,
});
