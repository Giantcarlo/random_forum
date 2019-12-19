class PostController < ApplicationController
  def index
    @posts = Post.all
    
  end

  def show

  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    if @post.save
      flash[:success] = "Post created"
      redirect_to root_path
    else
      flash[:error] = "Post failed to be created"
        redirect_to root_path
    end
    else 
      redirect_to root_path
    
  end
  

  def edit
  end

  def update
  end

  def destroy
  end
end
