disneyBnB.Views.ListingDescription = Backbone.View.extend({
  template: JST['listing/listingDescription'],

  initialize: function(options){
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
    var current_id = this.model.get('id');
    var capacity = 2;
    var user_id = disneyBnB.current_user.id;
    var status = "PENDING";
    reservation.set({
      user_id: user_id,
      listing_id: current_id,
      capacity: capacity,
      status: status
    });
    data.start_date = this.convertDate(data.start_date);
    data.end_date = this.convertDate(data.end_date);
    debugger
    reservation.save( data, {
      success: function() {
        this.model.reservations().add(reservation);
      }.bind(this),
      error: function() {
        console.log('error!');
      }.bind(this)
    });
  },

  convertDate: function(date) {
    var year = date.slice(6);
    return year + "/" + date.slice(0, 5);
  }
});
