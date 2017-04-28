class PartiesController < ApplicationController


  def show
    @party = Party.find(params[:id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
end
