class ArticlesController < ApplicationController
  def index
    @articles = Article.active.order("#{sort_column} #{sort_direction}")
  end

  private

  def sort_column
    params[:sort] ? params[:sort] : 'created_at'
  end

  def sort_direction
    params[:direction] ? params[:direction] : 'asc'
  end
end
