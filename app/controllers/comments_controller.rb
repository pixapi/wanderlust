class CommentsController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @comment = Comment.new
    @comment.place_id = @place.id
    byebug
  end

  def create
    @comment = Comment.new(comment_params)
    @place = Job.find(params[:place_id])
    @comment.place_id = params[:place_id]

    @comment.save

    redirect_to place_path(@place)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :user_id, :place_id)
  end
end
end
