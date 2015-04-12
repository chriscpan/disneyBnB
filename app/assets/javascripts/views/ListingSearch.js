disneyBnB.Views.ListingSearch = Backbone.View.extend({
  template: JST['listing/listingSearch'],

  initialize: function(options){
    this.input = this.$el.find('input');
    this.init_searchBar();
  },

  events: {
    'input': 'updateCities',
    'submit': 'getListings'
  },

  init_searchBar: function() {
    var content = this.template();
    this.$el.html(content);
    searchBox = new google.maps.places.SearchBox(this.$el.find('input')[0])
    this.attachMapListeners();
  },

  attachMapListeners: function(){
    google.maps.event.addListener(searchBox, 'places_changed', this.getListings.bind(this))
  },

  getListings: function(){
    console.log('getListings!');

    // this.collection.fetch({
    //   data: {search: {
    //
    //   },
    //   success: function(){
    //     this.collection.each( function(listing) {
    //         });
    //   }
    // });
  },

  updateCities: function(event){
    // debugger
    if (this.input.val() === "") {
      this.render([]);
      return ;
    }
    // this.render(this.input.val());

    console.log('hello')
  }
});
