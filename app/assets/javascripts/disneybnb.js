window.disneyBnB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var user = new disneyBnB.Models.User();
    user = user.fetch({url: '../api/users'});
    var $rootEl = $('.main');
    var listings = new disneyBnB.Collections.Listings();
    new disneyBnB.Routers.Router({
      $rootEl: $rootEl,
      user: user,
      listings: listings
    });
    Backbone.history.start();
  }
};

$(document).ready(function(){
  disneyBnB.initialize();
});
