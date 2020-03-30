class User::MarketsController < ApplicationController

	def tukinomiya
		@tukinomiya = Market.find(1)
	end

	def katori
		@katori = Market.find(2)
	end
	
end
