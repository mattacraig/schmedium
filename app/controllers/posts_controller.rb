class PostsController < ApplicationController 
  before_action :set_post, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

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
    
  end

  def destroy
    @post.destroy
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body)
    end
end