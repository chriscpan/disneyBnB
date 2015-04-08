disneyBnB.Collections.Listings = Backbone.Collection.extend({
  url: '/api/listings',

  model: disneyBnB.Models.Listing,

  getOrFetch: function(id){
    var model = this.get(id);
    var that = this;
    if (model){
      model.fetch();
    } else {
      model = new disneyBnB.Models.Listing({id: id});
      model.fetch({
        success: function(){
          that.add(model);
        }
      });
    }
    return model;
  },
});
