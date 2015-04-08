disneyBnB.Views.Root = Backbone.View.extend({
  template: JST['root/root'],

  initialize: function(){

  },

  render: function(){
    debugger
    var content = this.template();
    this.$el.html(content);
    return this;
  },
});
