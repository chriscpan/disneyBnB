disneyBnB.Views.ListingComments = Backbone.View.extend({
  tagName: 'div class=panel',

  template: JST['listing/listingComment'],

  events: {
    'click .comment-listing': 'createComment'
  },

  initialize: function(options){
    this.listing = options.listing;
    this.listings = options.listings;
    this.listenTo(this.listing.comments(), 'sync add', this.render);
  },

  render: function(){
    var content = this.template({
      listing: this.listing
    });
    this.$el.html(content);
    return this;
  },

  createComment: function(event) {
    event.preventDefault();
    var comment = new disneyBnB.Models.Comment();
    comment.user().set(disneyBnB.current_user.attributes);
    var data = $('.comment-form').serializeJSON();
    var user_id = disneyBnB.current_user.id;
    var listing_id = this.listing.id;
    comment.set({
      author_id: user_id,
      listing_id: listing_id
    });
    comment.save( data, {
      success: function(comment, response) {
        console.log('success!');
        this.listing.comments().add(comment);
      }.bind(this),
      error: function() {
        var $p;
        if (disneyBnB.current_user.id) {
          $p = $('<p>Comment cannot be blank!</p>');
        } else {
          $p = $('<p>You need to be logged in</p>');
        }
        $('.comment-error-message').html($p);
        console.log('error!');
      }
    });
  }

});
