class ListingsController < ApplicationController

  def new
    @category = Category.find(params[:category_id])
    @listing = Listing.new
  end

  def create
    @category = Category.find(params[:category_id])
    @listing = @category.listings.new(params.require(:listing).permit(:title, :body))
    if @listing.save
      redirect_to category_path(@category)
    else
      render "new"
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
