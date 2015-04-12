disneyBnB.Views.ListingNew = Backbone.View.extend({
  template: JST['listing/listingNew'],

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  events: {
    'submit': 'createListing'
  },

  render: function() {
    var content = this.template({
      listing: this.model
    });
  },

  createListing: function(){

  }
});
