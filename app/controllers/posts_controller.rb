class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
 
  def create
    @post = Post.new(params.require(:post).permit(:title, :start_date, :end_date, :memo))
    if @post.save
      redirect_to :posts
    else
      render "new"
    end
  end
 
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
 
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :start_date, :end_date, :memo))
      redirect_to :posts
    else
      render "edit"
    end
  end
 
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :posts
  end
  
end
