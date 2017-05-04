class PartiesController < ApplicationController
  skip_before_action :authenticate_user!, only: []


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
        p @party.date
      @bartender.parties.each do |party|
          p party.date
        if party.date == @party.date
         redirect_to bartender_path(@bartender)
        else
          @party.save!
          redirect_to bartender_party_path(@bartender, @party)
        end
      end
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
    p @party.date
      @bartender.parties.each do |party|
          p party.date
        if party.date == @party.date
          flash[:notice] = "Sorry, #{@bartender.name} has already an event on this date..."
         redirect_to bartender_path(@bartender)
        end
      end
  end

  def show
    @party = Party.find(params[:id])
  end

  private

  def party_params
    params.require(:party).permit(:date, :theme, :size, :address, :start_time, :zip_code, :city, :country, :message)
  end

  # Use callbacks to share common setup or constraints between actions.
end
