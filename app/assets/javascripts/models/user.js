disneyBnB.Models.User = Backbone.Model.extend({
  urlRoot: 'api/users',

  listings: function(){
    if(!this._listings){
      this._listings = new disneyBnB.Collections.Listings([], {user: this});
    }
    return this._listings;
  },

  parse: function(jsonResp) {
    if (jsonResp.listings){
      this.listings().set(jsonResp.listings);
      delete jsonResp.listings;
    }
    return jsonResp;
  },

});
