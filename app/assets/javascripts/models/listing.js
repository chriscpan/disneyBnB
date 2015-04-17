disneyBnB.Models.Listing = Backbone.Model.extend({
  urlRoot: '/api/listings',

  images: function(){
    if (!this._images) {
      this._images = new disneyBnB.Collections.Images([], {listing: this});
    }
    return this._images;
  },

  reservations: function(){
    if (!this._reservations) {
      this._reservations = new disneyBnB.Collections.Reservations([], {listing: this});
    }
    return this._reservations;
  },

  comments: function(){
    if (!this._comments){
      this._comments = new disneyBnB.Collections.Comments([], {listing: this});
    }
    return this._comments;
  },

  users: function() {
    if(!this._user) {
      this._user = new disneyBnB.Collections.Users([], {listing: this});
    }
    return this._user;
  },

  // parse: function(jsonResp) {
  //   if (jsonResp.images) {
  //     this.images().set(jsonResp.images, {parse: true});
  //     delete jsonResp.images;
  //   }
  //   return jsonResp;
  // }

  parse: function(jsonResp) {
    if (jsonResp.comments) {
      this.comments().set(jsonResp.comments, {parse: true});
      delete jsonResp.comments;
    }

    if (jsonResp.user) {
      this.users().set(jsonResp.user, {parse: true});
      delete jsonResp.user;
    }
    return jsonResp;
  }
});
