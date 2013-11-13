class GiftsController < ApplicationController
  def index
  	@gifts = Gift.all 
  end

  def new
  	@gifts = Gift.new 
  end
end
