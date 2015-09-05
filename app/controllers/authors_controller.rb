class AuthorsController < ApplicationController

  def show
    @posts = Post.where(user_id: params[:id]).order('created_at DESC')
  end
end