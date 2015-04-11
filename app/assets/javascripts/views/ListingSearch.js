disneyBnB.Views.ListingSearch = Backbone.View.extend({
  template: JST['listing/listingSearch'],

  initialize: function(){
    this.input = this.$el.find('input');
    this.render();
    // debugger
  },

  events: {
    'input': 'updateCities',
    'click .thing': 'getListings'
  },

  render: function() {
    debugger
    var content = this.template();
    this.$el.html(content);
    return this;
  },

  renderListings: function(){
    this.$el.find('.listing-result').empty();

    // this.collection.fetch({
    //   data: function(){
    //
    //   },
    //   success: function(){
            // this.collection.each( function(listing) {
            // });
    //   }
    // });
  },

  updateCities: function(){
    debugger
    if (this.input.val() === "") {
      this.render([]);
      return ;
    }
    this.render(this.input.val());
  }
});
