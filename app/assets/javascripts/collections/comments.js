disneyBnB.Collections.Comments = Backbone.Collection.extend({
  url: "/api/comments",

  model: disneyBnB.Models.Comment,

});
