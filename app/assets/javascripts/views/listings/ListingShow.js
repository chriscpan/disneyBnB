disneyBnB.Views.ListingShow = Backbone.View.extend({
  template: JST['listing/listingShow'],

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function(){
    // debugger
    var content = this.template({
      reservation: this.model.get('reservations'),
      picture: this.model.get('images'),
      listing: this.model
    });
    this.$el.html(content);
    return this;
  }
});
