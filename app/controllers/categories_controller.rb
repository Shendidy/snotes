class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @catigories = Catigory.new
  end

  def create
    @category = Catigory.new(category_params)
  end

  def edit
  end
end

private
def category_params
  params.require(:category), permit(:name, :description)
end
