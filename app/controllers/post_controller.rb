class PostController < ApplicationController
  def index
    @posts = Post.all
    
  end

  def show

  end

  def new
  end

  def create
    puts params 
    puts "&" * 60
    puts post_params
    @post = Post.create(user: current_user, title: params[:title], content: params[:content])
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  

  def edit
  end

  def update
  end

  def destroy
  end

  private 


  def set_post
    @post=Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :content)
  end
end
