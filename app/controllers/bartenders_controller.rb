class BartendersController < ApplicationController


  def index
    @bartenders = Bartender.all
  end

  def show
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_bartender
      @bartender = Bartender.find(params[:id])
    end

end
