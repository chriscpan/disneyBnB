disneyBnB.Models.Comment = Backbone.Model.extend({
  urlRoot: "/api/comments",

  user: function() {
    if (!this._user) {
      this._user = new disneyBnB.Models.User({}, {comment: this});
    }
    return this._user;
  },

  parse: function(jsonResp) {
    if (jsonResp.user) {
      this.user().set(jsonResp.user);
      delete jsonResp.user;
    }
    return jsonResp;
  }
});
