def upvote
  @link = Link.find(params[:id])
  @link.upvote_by current_user
  redirect_to links_path
end

def downvote
  @link = Link.find(params[:id])
  @link.downvote_by current_user
  redirect_to links_path
end
