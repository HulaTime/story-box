class ArticlesController < ApplicationController

  def index
    redirect_to root_path if current_user == nil
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
