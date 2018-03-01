class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @listings = Listing.all
  end

  def show
  # The individual category page
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(form_params)

    if @category.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def form_params
    params.require(:category).permit(:title)
  end

end
