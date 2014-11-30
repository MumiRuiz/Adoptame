class CommentsController < ApplicationController
	def index
		@comment = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @comment.id

	end

	def new
		@comment = Comment.new
	end

	def create
	  @comment = Comment.new(comment_params)
	  @comment.article_id = params[:article_id]
	  @comment.save
	  redirect_to article_path(@comment.article)	
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update(comment_params)
		flash.notice = "Comment '#{@comment.title}' Updated!"
		redirect_to article_path(@comment.article)
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		respond_to do |format|
			format.html { redirect_to articles_url}
		end	
	end

	

	def comment_params
	  params.require(:comment).permit(:author_name, :body)
	end
end
