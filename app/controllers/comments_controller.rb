class CommentsController < ApplicationController
  def show
    @friend = Friend.find(params[:friend_id])
    #@comment = @friend.comments
  end
  def create 
    @friend = Friend.find(params[:friend_id])
    @comment = @friend.comments.create(comment_params)
    redirect_to friend_path(@friend)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter_name, :body)
  end
end
