class PartiesController < ApplicationController
  skip_before_action :authenticate_user!, only: []

  def create
    @party = Party.new(party_params)
    @party.theme = "Party" if @party.theme == ""
    @bartender = Bartender.find(params[:bartender_id])
    @party.bartender = @bartender
    @party.user = current_user
    @party.save!
    redirect_to bartender_party_path(@bartender, @party)
  end

  def new
    if params[:party]
      @party = Party.new(party_params)
      if session[:party]['theme']
        @party.theme = session[:party]['theme']
      end
    else
      @party = Party.new(session[:party])
    end
    @bartender = Bartender.find(params[:bartender_id].to_i)
    @party.bartender = @bartender
    @party.user = current_user
    #@party.address = session[:party][:address]
    #@party.start_time = @start_time
  end

  def show
    @party = Party.find(params[:id])
  end

  private

  def party_params
    params.require(:party).permit(:date, :theme, :size, :address, :start_time)
  end

  # Use callbacks to share common setup or constraints between actions.
end
