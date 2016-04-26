class CommentsController < ApplicationController
  def create
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = @cheerup.comments.create(comment_params)
    redirect_to cheerup_path(@cheerup)
  end


  def destroy
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = @cheerup.comments.find(params[:id])
    @comment.destroy
    redirect_to cheerup_path(@cheerup)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
