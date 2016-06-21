class WelcomeController < ApplicationController
  def index
  	@welcomes = Welcomes.all
  end
end
