disneyBnB.Views.ListingIndex = Backbone.View.extend({
  template: JST['templates/listingsIndex'],

  initialize: function(){
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function() {
    var content = this.template({
      listings: this.collection
    });
    this.$el.html(content);
    return this;  
  }
});