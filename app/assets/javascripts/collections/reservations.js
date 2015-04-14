disneyBnB.Collections.Reservations = Backbone.Collection.extend({
  url: '/api/listings',
  model: 'disneyBnB.Models.Reservation'
});
