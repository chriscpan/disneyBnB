window.disneyBnB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {

    var user = new disneyBnB.Models.User();
    this.current_user = user.fetch({url: '/api/current_users'});
    var $rootEl = $('#main');
    var listings = new disneyBnB.Collections.Listings();
    this.navView = new disneyBnB.Views.ListingSearch({
      el: $('.listing-search'),
      collection: listings
    });

    new disneyBnB.Routers.Router({
      $rootEl: $rootEl,
      current_user: this.current_user,
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
