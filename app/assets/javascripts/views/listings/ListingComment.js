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
    var data = $('.comment-form').serializeJSON();
    var user_id = disneyBnB.current_user.id;
    var listing_id = this.listing.id;
    comment.set({
      author_id: user_id,
      listing_id: listing_id
    });
    comment.save( data, {
      success: function() {
        console.log('success!');
        this.listing.comments().add(comment);
      }.bind(this),
      error: function() {
        console.log('error!');
      }
    });
  }

});
