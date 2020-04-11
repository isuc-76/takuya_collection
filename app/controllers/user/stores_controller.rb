class User::StoresController < ApplicationController

	def top
		@tukinomiya = Market.find(1)
		@katori = Market.find(2)
	end

	def index
		@store = Store.find(1)
	end

	def about
	end

end
