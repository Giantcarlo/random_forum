class CommentsController < ApplicationController
  def create
    puts '6' * 60
    puts params
    puts params[:content]
    puts params[:post_id]
    @comment = Comment.create(user: current_user, content: params[:content], post: Post.find(params[:post_id]))
    puts '6' * 60
    puts params
    puts params[:content]
    if @comment.save
      redirect_to root_path
    else
      redirect_to new_post_path, danger: "Unable to create post"
    end
  end

  def update
  end
end
