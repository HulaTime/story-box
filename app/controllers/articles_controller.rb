class ArticlesController < ApplicationController

  def index
    if current_user
      @articles = current_user.articles
    else
      redirect_to root_path
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.create(article_params)
  end

  private

  def article_params
    params.require(:article).permit(:title, :article)
  end

end
