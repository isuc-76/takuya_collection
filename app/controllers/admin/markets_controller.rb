class Admin::MarketsController < ApplicationController

before_action :authenticate_admin!


	def tukinomiya
		@market = Market.find(1)
	end

	def katori
		@market = Market.find(2)
	end

	def update
		@market = Market.find(params[:id])
		if @market.update(market_params)
			redirect_back(fallback_location: root_path)
		else
			redirect_back(fallback_location: root_path)
		end
	end


	private

		def market_params
			params.require(:market).permit(:day, :content)
		end

end
