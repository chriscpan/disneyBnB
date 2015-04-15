disneyBnB.Views.ListingShow = Backbone.View.extend({
  template: JST['listing/listingShow'],

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  events: {
    'click .book-listing': 'reserveListing'
  },

  render: function(){
    var content = this.template({
      reservation: this.model.get('reservations'),
      picture: this.model.get('images'),
      listing: this.model
    });
    this.$el.html(content);

    disneyBnB.findDatePicker();

    return this;
  },

  reserveListing: function(event) {
    event.preventDefault();
    var data = this.$el.find('form').serializeJSON();
    var reservation = new disneyBnB.Models.Reservation();
    reservation.save( data, {
      success: function() {
        this.collection.reservations().add(reservation, {merge: true});
        conosle.log('success!');
      }.bind(this),
      error: function() {
        console.log('error!');
      }.bind(this)
    });
  }
});
