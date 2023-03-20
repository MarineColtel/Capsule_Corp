class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review = Booking.find(params[:list_id])
    @review.booking = @review
    if @review.save
      redirect_to review_path(@list)
    else
      @booking = Booking.new
      render "reviews/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_path(@review.list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
