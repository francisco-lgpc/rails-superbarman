class PartiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:bartender_confirm, :bartender_reject]

  def create
    if params[:party]
      @party = Party.new(party_params)
      if session[:party]['theme']
        @party.theme = session[:party]['theme']
      end
    else
      @party = Party.new(session[:party])
    end
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

    #Add validation for the date of the bartender


    @party.bartender = @bartender
    @party.user = current_user
    # byebug
    #@party.address = session[:party][:address]
    #@party.start_time = @start_time
  end

  def show
    @party = Party.find(params[:id])
  end

  def bartender_confirm
    party = Party.find(params[:id])
    party.bartender_confirm
    party.save!
    redirect_to bartender_dashboard_path(party.bartender)
  end

  def bartender_reject
    party = Party.find(params[:id])
    party.bartender_reject
    party.save!
    redirect_to bartender_dashboard_path(party.bartender)
  end

  private

  def party_params
    params.require(:party).permit(:date, :theme, :size, :address, :start_time, :zip_code, :city, :country, :message)
  end

  # Use callbacks to share common setup or constraints between actions.
end
