disneyBnB.Views.searchIndex = Backbone.View.extend({
  tagName: "div class=listing-index",

  template: JST['listing/searchIndex'],

  initialize: function(){
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function(){
    var content = this.template({
      listings: this.collection
    });
    this.$el.html(content);
    return this;
  }

});
