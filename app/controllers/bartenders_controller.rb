class BartendersController < ApplicationController
skip_before_action :authenticate_user!
before_action :set_bartender, only: [:show]

  def index
    @bartenders = Bartender.all
    @party      = Party.new
  end

  def show

  end

  def search
    byebug
    @bartenders = Bartender.where("location ILIKE ?", "%#{params[:party][:address]}%")
    @party      = Party.new
    render :index
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_bartender
      @bartender = Bartender.find(params[:id])
    end

end
