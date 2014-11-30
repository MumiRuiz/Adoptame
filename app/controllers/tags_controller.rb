class TagsController < ApplicationController

	def index
		@tags = Tag.all
		@articles = Article.all
	end

	def show
		@tag = Tag.find(params[:id])
		@tag = Tag.new
		@tag.article_id = @article.id
	end

end
