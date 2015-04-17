module Api
  class CommentsController < ApiController

    def create
        @comment = Comment.new(comment_params);
        if @comment.save
          render json: @comment
        else
          # byebug
          render json:
          @comment.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def comment_params
      params.require(:comment).permit(:author_id, :listing_id, :content)
    end
  end
end
