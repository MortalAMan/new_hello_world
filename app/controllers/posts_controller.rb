class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def show
    @posts = Post.find(params[:id])
  end

  def new
    @posts = Post.new 
  end 
  
  def create
    @posts = Post.new(post_params)
    if @posts.save
      redirect_to posts_path
    else
      render :new
    end
  end 

   def edit
    @posts = Post.find(params{:id})
  end 
end
  
private
  
  def post_params
    params.require(:post).permit(:title, :author, :body)  
  end 




