class PostCommentsController < ApplicationController

	def create
		comment = PostComment.new(post_comment_params)
		comment.user_id = current_user.id
		comment.book_id = params[:book_id]
		comment.save
		redirect_to book_path(params[:book_id])
	end

	def destroy
		comment = PostComment.find(params[:book_id])
		comment.user_id = current_user.id
		comment.destroy
		redirect_to book_path(params[:book_id])
	end

	private
	def post_comment_params
		params.require(:post_comment).permit(:user_id,:comment,:book_id)
	end
end