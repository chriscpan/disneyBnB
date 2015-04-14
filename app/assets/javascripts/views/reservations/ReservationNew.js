disneyBnB.Views.newReservation = Backbone.View.extend({
  template: JST['reservation/reservationNew'],

  initialize: function() {

  },

  render: function() {
    var content = this.template({
      listing: this.model,
      reservation: this.collection.reservations()
    });
    this.$el.html(content);
    return this;
  }
});
