class ReviewsController < ApplicationController
before_action :set_bartender
skip_before_action :authenticate_user!
  def new
    @review = @bartender.reviews.build
  end

  def create
    @review = Review.new(review_params)
    @review.bartender = @bartender
    @review.save!
      # format.html {
        redirect_to bartender_path(@bartender)
        # , notice: 'Thanks!' }
    # else
      # format.html {
      # }

  end

private
def set_bartender
  @bartender = Bartender.find(params[:bartender_id])
end

def review_params
  @params = params.require(:review).permit(:content, :rating)
end

end
