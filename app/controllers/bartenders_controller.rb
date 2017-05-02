class BartendersController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_bartender, only: [:show]

  def index
    @bartenders = Bartender.all

    if params[:party]
      @party          = Party.new(party_params)
      session[:party] = party_params
    else
      @party = Party.new(session[:party])
    end
  end

  def show
    attributes = Rack::Utils.parse_nested_query(params[:party])
    attributes["date"] = attributes["date"].to_date if attributes["date"]
    @party     = Party.new(attributes)
    @new_review = @bartender.reviews.build
    @review = Review.new
    p params
  end

  def search
    location_query = params[:party][:address].split(',').map(&:squish)
    @bartenders = []
    if location_query.empty?
      @bartenders = Bartender.all
    else
      location_query.each do |word|
        @bartenders += Bartender.where("location ILIKE ?", "%#{word}%")
      end
    end
    if params[:party]
      @party          = Party.new(party_params)
      session[:party] = party_params
    else
      @party = Party.new(session[:party])
    end

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
