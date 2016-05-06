class CommentsController < ApplicationController
  def create
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = @cheerup.comments.create(comment_params)
    redirect_to cheerup_path(@cheerup)
    # some sort of error handling like you have for cheerups that would take advantage of validations might be nice.
  end

  # you don't always have to give users the ability to edit/update but it's often nice if they create something that they didn't like they have an option besides simply deleting and starting over


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
