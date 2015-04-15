window.disneyBnB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {

    var user = new disneyBnB.Models.User();
    // user = user.fetch({url: '../api/users'});
    var $rootEl = $('#main');
    var listings = new disneyBnB.Collections.Listings();
    if (window.location.hash !== ""){
      this.navView = new disneyBnB.Views.ListingSearch({
        el: $('.listing-search'),
        collection: listings
      });
    }
    new disneyBnB.Routers.Router({
      $rootEl: $rootEl,
      user: user,
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
