class MainController < ApplicationController
  def index
  	@sports = Sport.all
  end

end
