class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def index
    # @reviews = Review.where(restaurant_id: @restaurant)
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_reviews_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
