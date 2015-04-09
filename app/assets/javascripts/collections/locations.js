disneyBnB.Collections.Locations = Backbone.Collection.extend({
  model: disneyBnB.Models.Location,

  url: '/api/locations'
});
