class GiftsController < ApplicationController
  
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def index
  	@gifts = Gift.all 
  end

  def new
  	@gifts = Gift.new 
  end

def create
	@gift = Gift.new (params[:gift])

	if @gift.save
		# #create twitter API client
  #     client = Twitter::REST::Client.new do |config|
  #       config.consumer_key        = "WjVbbY5SpPGg1LLJsZq46A"
  #       config.consumer_secret     = "mArP7ZqRIz2vPM0QHrqKciqpgsUvAgUODRR9RaHMQ"
  #       config.access_token        = "2205349028-0UH8agMmHdEuKu5DPZxSYqwIWUpU1zzGzsu6hxY"
  #       config.access_token_secret = "ISlTvu59p7SdRAxawSBcZqMmt0vcMSlXPAR07gHGGUQeq"
  #     end

  #     client.update("@mjrcrothers gets a latte on me! #mdm #{gift.from}")

		client.update(@mjrcrothers have a latte on me! #{@gift.from} from: #{@gift.from})
    flash[:info] = "thanks a-latte!"
		redirect_to :back
	end
end

end
