class WelcomeController < ApplicationController
  def index
    @timer = Timer.new
    @survey = Survey.new
  end
end
