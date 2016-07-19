class ArticlesController < ApplicationController

  def index
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
  end

  private

  def article_params
    params.require(:article).permit(:title, :article)
  end

end
