class User::StoresController < ApplicationController

	def top
	end

	def index
		@store = Store.find(1)
	end

	def about
	end

end
