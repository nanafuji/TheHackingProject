class ArticlesController < ApplicationController
	include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end

  def new
  	@article = Article.new
  end

  def create
#  	@article = Article.new(params[:article])
	@article = Article.new(article_params)
#  		title: params[:article][:title],
#  		body: params[:article][:body])
 	@article.save

  	flash.notice = "A new article '#{@article.title}' has been created!"

 	redirect_to article_path(@article)
  end

  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy
  	
  	flash.notice = "Article '#{@article.title}' has been deleted!"

  	redirect_to articles_path(@articles)
  end
 
  def edit
  	@article = Article.find(params[:id])
  end
 
  def update
  	@article = Article.find(params[:id])
  	@article.update(article_params)

  	flash.notice = "Article '#{@article.title}' has been updated!"

  	redirect_to article_path(@article)
  end

end

