class CommentsController < ApplicationController

  def create
    puts '6' * 80
    puts params[:comment][:content]
    stripped_input = ActionController::Base.helpers.strip_tags(params[:comment][:content])

    @comment = Comment.create(user: current_user, content: stripped_input, post: Post.find(params[:post_id]))

    if @comment.save
      redirect_to root_path
    else
      redirect_to new_post_path, danger: "Unable to create post"
    end
  end

  def update
  end
end
