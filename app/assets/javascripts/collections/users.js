disneyBnB.Collections.Users = Backbone.Collection.extend({
  model: disneyBnB.Models.User,

  url: '/api/users'
})
