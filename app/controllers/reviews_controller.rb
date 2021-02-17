class ReviewsController < ApplicationController

    def new
@review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.restaurant = @restaurant
        if @review.save
            redirect_to restaurant_path(@restaurant)
        else
            render "new"
    end 

    private
    def review_params

        params.requires(:review).permit(:new, :create)
    end 
end
