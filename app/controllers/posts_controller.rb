class PostsController < ApplicationController 
  before_action :set_post, except: [:index, :new, :create]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  impressionist actions: [:show], unique: [:session_hash] 

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @post, notice: 'Great Success!'
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'All Better Now!'
    else
      render 'edit'
    end
  end

  def show
    @comment = Comment.where(post_id: @post)
  end

  def destroy
    @post.destroy

    redirect_to root_path, notice: 'Successfully Deleted:)'
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :category_id)
    end
end