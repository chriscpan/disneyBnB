disneyBnB.Views.ListingNew = Backbone.View.extend({
  tagName: 'div form-container',
  template: JST['listing/listingForm'],

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  events: {
    'submit': 'createListing'
  },

  render: function() {
    // debugger
    var content = this.template({
      listing: this.model
    });
    this.$el.html(content);
    return this;
  },

  createListing: function(event){
    event.preventDefault();
    var data = $(event.currentTarget).serializeJSON();
    this.model.save(data, {
      success: function(){
        console.log('create listing!');
        this.collection.add(this.model, {merge: true});
        Backbone.history.navigate('listing/' + this.model.id, {trigger: true});
      }.bind(this),
      error: function(model, response){
        console.log('error!');
        var $ul = $('<ul> </ul>');
          debugger
        // $(response.responseJSON).each(function(index, message){
        //   var $li = $('<li>' + message + '</li>');
        //   $ul.append($li);
        // });
        $ul.append($('<li>All fields must be filled out!</li>'));
        this.$el.prepend($ul);
      }.bind(this)
    });
  }
});
