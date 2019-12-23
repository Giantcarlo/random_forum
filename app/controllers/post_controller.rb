class PostController < ApplicationController
  def index
    @posts = Post.all
    
  end

  def show

  end

  def new
    # If I add a @post=Post.new here, the form_with is wrong. I might want to try with a form-for instead.
  end

  def create
    # It never gets here
    puts "$" * 60
    puts params
    @post = Post.new(post_params)
    # @title = params[:title]
    # @content = params[:content]
    # @post = Post.create(title:@title, user:current_user, content:@content)
    @post.save
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
