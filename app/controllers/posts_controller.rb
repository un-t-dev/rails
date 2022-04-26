class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
 
  def create
    binding.pry
    @post = Post.new(params.require(:post).permit(:title, :start_date, :end_date, :all_day, :memo))
    if @post.save
      flash[notice] = "新規登録しました"
      redirect_to :posts
    else
      render "new"
    end
  end
 
  def show
  end
  
  def edit
  end
 
  def update
  end
 
  def destroy
  end
  
end
