class PagesController < ApplicationController
  def landing
  end

  def home
    @bartenders = Bartender.find(:all, order: "rating desc", limit: 3)
  end
end
