disneyBnB.Models.User = Backbone.Model.extend({
  urlRoot: 'api/users',

  listings: function(){
    if(!this._listings){
      this._listings = new disneyBnB.Collections.Listings([], {user: this});
    }
    return this._listings;
  },

  reservations: function(){
    if(!this._reservations){
      this._reservations = new disneyBnB.Collections.Listing([], {user: this});
    }
    return this._reservations;
  },

  parse: function(jsonResp) {
    if (jsonResp.listings){
      this.listings().set(jsonResp.listings);
      delete jsonResp.listings;
    }
    return jsonResp;
  },

});
