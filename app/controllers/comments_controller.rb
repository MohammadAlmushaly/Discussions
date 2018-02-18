class CommentsController < ApplicationController

	def create

		@discussion=Discussion.find(params[:discussion_id])
		@comment=@discussion.comments.new(comment_params)
		@comment.save
		redirect_to discussion_path(@discussion)

	end

	private
	def comment_params
      params.require(:comment).permit(:body)
	end

end
