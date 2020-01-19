class CommentsController < ApplicationController
  def create

    @comment = Comment.create(user: current_user, content: params[:comment][:content], post: Post.find(params[:post_id]))

    if @comment.save
      redirect_to root_path
    else
      redirect_to new_post_path, danger: "Unable to create post"
    end
  end

  def update
  end
end
