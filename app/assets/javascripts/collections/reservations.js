disneyBnB.Collections.Reservations = Backbone.Collection.extend({
  url: '/api/reservations',
  model: 'disneyBnB.Models.Reservation'
});
