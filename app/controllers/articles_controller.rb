class ArticlesController < ApplicationController
  #index method
  def index
    @articles = Article.all
  end
  #new method
  def new
  end
  #create article method
  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end
  # show article by id
  def show
    @article = Article.find(params[:id])
  end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
