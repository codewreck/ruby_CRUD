class ArticlesController < ApplicationController


	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def show
		@article = Article.find(params[:id])
	end

	def create

		@article = Article.new(params.require(:article).permit(:title, :text))

		if @article.save
			redirect_to @article
		else 
			render 'new'
		end
		# redirecting the user to the 'show' action
		# redirect_to @article 

	end

	

end
