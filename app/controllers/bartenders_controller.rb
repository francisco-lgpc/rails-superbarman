class BartendersController < ApplicationController
before_action :set_bartender, only: [:show]

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
