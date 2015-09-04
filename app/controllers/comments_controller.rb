class CommentsController < ApplicationController
before_action :authenticate_user!, only: [:create]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @post, notice: 'You make a fair point....'
    else
      render :new
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end
end