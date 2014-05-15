class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "bingo", password: "secret",
                               except: [:index, :show]

  #index method
  def index
    @articles = Article.all
  end
  #new method
  def new
    @article = Article.new
  end
  #create article method
  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)

    if @article.save
       redirect_to @article
    else
       render 'new'
    end
  end
  # show article by id
  def show
    @article = Article.find(params[:id])
  end
  #edit article by id
  def edit
    @article = Article.find(params[:id])
  end
  #update
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
  #delete by id
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  #private methods
  private
  def article_params
    puts "article #{params[:article]} #{params[:id]} #{params[:title]}
#{params[:text]}"
    params.require(:article).permit(:title, :text)
  end
end
