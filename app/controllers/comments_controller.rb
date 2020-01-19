class CommentsController < ApplicationController

  def create

    @comment = Comment.create(user: current_user, content: params[:comment][:content], post: set_post )

    if @comment.save
      redirect_to root_path
    else
      redirect_to new_post_path, danger: "Unable to create post"
    end
  end

  def update
  end

  private 

  def set_post
    @post = Post.find(params[:post_id])
  end
end
