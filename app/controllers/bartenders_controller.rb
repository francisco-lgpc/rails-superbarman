class BartendersController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_bartender, only: [:show]

  def index
    @bartenders = Bartender.all
    @party      = Party.new(party_params)
  end

  def show
    attributes = Rack::Utils.parse_nested_query(params[:party])
    attributes["date"] = attributes["date"].to_date if attributes["date"]
    @party     = Party.new(attributes)
    @new_review = @bartender.reviews.build
    @review = Review.new
  end

  def search
    location_query = params[:party][:address].split(',').map(&:squish)
    @bartenders = []
    location_query.each do |word|
      @bartenders += Bartender.where("location ILIKE ?", "%#{word}%")
    end
    @party = Party.new
    render :index
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bartender
    @bartender = Bartender.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:address, :date, :theme, :size)
  end

end
