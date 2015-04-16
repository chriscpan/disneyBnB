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
  }

  // parse: function(jsonResp) {
  //   debugger
  //   if (jsonResp.images) {
  //     this.images().set(jsonResp.images, {parse: true});
  //     delete jsonResp.images;
  //   }
  //   return jsonResp;
  // }
});
