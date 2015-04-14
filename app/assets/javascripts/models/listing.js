disneyBnB.Models.Listing = Backbone.Model.extend({
  urlRoot: '/api/listings',

  // location: function(){
  //   if (!this._locations) {
  //     this._locations = new disneyBnB.Collections.Locations([], {listing: this});
  //   }
  //   return this._locations;
  // },

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
  }
});
