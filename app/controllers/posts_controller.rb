class PostsController < ApplicationController
  before_action :verify_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  impressionist :actions=>[:show]


  def index
    @posts = Post.order(created_at: :desc)
    
  end

  def show
    set_post
    @comment = Comment.new
    impressionist(@post)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(user:current_user, title: params[:post][:title], content: params[:post][:content])
    if @post.save
      redirect_to root_path, success: "Successfully created post!"
    else
      redirect_to new_post_path, danger: "Unable to create post"
    end
  end
  

  def edit
  end

  def update
  end

  def lock_post
    @post = Post.find(params[:post_id])
    if @post.update(post_locked_params)
      redirect_to post_path(@post.id)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private 


  def set_post
    @post=Post.find(params[:id])
  end

  def post_params
    # This doesn't do anything yet. I need to research how to use it (with Devise in particular)
    params.require(:post).permit(:title, :content)
  end

  def post_locked_params
    params.require(:post).permit(:is_locked)
  end

  def verify_user
    # Verifies that the current user is the post's creator
    set_post
    unless @post.user == current_user
      flash[:notice] = 'Access denied as you are not the creator of this post'
      redirect_to root_path
     end
  end
end
