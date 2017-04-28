class PartiesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @party = Party.new(party_params)
    @bartender = Bartender.find(params[:bartender_id])
    @party.bartender = @bartender
    @party.user = User.first
    @party.save!
    redirect_to bartender_party_path(@bartender, @party)
  end

  def show
    @party = Party.find(params[:id])
  end

  private

  def party_params
    params.require(:party).permit(:date, :theme, :size, :address)
  end

  # Use callbacks to share common setup or constraints between actions.
end
