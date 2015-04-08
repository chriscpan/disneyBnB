window.disneyBnB = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var user = new disneyBnB.Models.User();
    // var user = user.fetch({url: })
    var $rootEl = $('#navigation');

    new disneyBnB.Routers.Router({
      $rootEl: $rootEl
    });
  }
};

$(document).ready(function(){
  disneyBnB.initialize();
});
