class MainController < ApplicationController
  def index
	  	@leagues = League.all
  end

end
