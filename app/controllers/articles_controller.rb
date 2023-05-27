class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show destroy]

  def index
    @articles = policy_scope(Article)
  end

  def show
  end

  def destroy
    @article.destroy!

    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])

    authorize @article
  end
end
