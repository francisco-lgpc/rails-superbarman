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
    @bartender = Bartender.find(params[:party]['bartender'].to_i)
    @party.bartender = @bartender
    @party.user = current_user
    @party.theme = 'Party' if @party.theme == ''

    if @party.save
      respond_to do |format|
        format.html { redirect_to new_party_payment_path(@party) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      redirect_to new_party_path(@party)
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
    @bartender = Bartender.find(params[:party]['bartender'].to_i)
    @party.bartender = @bartender
    @party.user = current_user
    @bartender.parties.each do |party|
      if party.date == @party.date
        flash[:notice] = "Sorry, #{@bartender.name} has already an event on this date..."
       redirect_to bartender_path(@bartender)
      end
    end
  end

  def show
    @party = Party.find(params[:id])
  end

  def bartender_confirm
    party = Party.find(params[:id])
    party.bartender_confirm
    party.save!

    # Commented out so as to not waste all our credit
    # party.send_text_to_user

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
    params.require(:party).permit(:agreed, :date, :theme, :size, :address, :start_time, :zip_code, :city, :country, :message)
  end

  # Use callbacks to share common setup or constraints between actions.
end
