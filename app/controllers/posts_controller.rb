class PostsController < ApplicationController
  def index
    @posts = Post.all
    
  end

  def show
    set_post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(user: current_user, title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path, danger: "Unable to create post"
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
