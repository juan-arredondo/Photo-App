class CommentsController < ApplicationController
  def show
  end

  # def new
  #   @comment = Comment.new
  # end

  def edit
  end

  def create
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.create(comment_params)
    redirect_to picture_path(@picture)
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
