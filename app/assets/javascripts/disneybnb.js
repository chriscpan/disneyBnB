window.disneyBnB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {

    disneyBnB.current_user = new disneyBnB.Models.User();
    disneyBnB.current_user.fetch({url: '/api/current_users'});
    var $rootEl = $('#main');
    // disneyBnB.user = new disneyBnB.Collections.Users();
    // disneyBnB.user.fetch();
    var listings = new disneyBnB.Collections.Listings();
    this.navView = new disneyBnB.Views.ListingSearch({
      el: $('.listing-search'),
      collection: listings
    });

    new disneyBnB.Routers.Router({
      $rootEl: $rootEl,
      listings: listings
    });

    Backbone.history.start();
  },

  findDatePicker: function(){
    $('#check-in').datepicker();
    $('#check-out').datepicker();
  }
};

$(document).ready(function(){
  disneyBnB.initialize();
});
