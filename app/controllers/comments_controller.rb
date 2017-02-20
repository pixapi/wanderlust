class CommentsController < ApplicationController
  def new
    @place = Place.find(params[:id])
    @comment = Comment.new
  end

  def create
    @place = Place.find(params[:place_id])
    @comment = @place.comments.new(comment_params.merge({user_id: current_user.id}))
    if @comment.save
      flash[:sucess] = "Comment Saved!"
      redirect_to place_path(@place)
    else
      flash[:warning] = "Comment Not Saved!"
      redirect_to place_path(@place)
    end

    # @comment = Comment.new(comment_params)
    # @place = Job.find(params[:place_id])
    # @comment.place_id = params[:place_id]
    #
    # @comment.save
    #
    # redirect_to place_path(@place)
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :user_id, :place_id)
  end

end
