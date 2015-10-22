class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end
  def index
    @all_tags = Tag.all
  end
  before_filter :require_login, only: [:destroy]
  def destroy
    Tag.find(params[:id]).destroy
    redirect_to article_path(@article)
  end
end
