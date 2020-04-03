class User::ItemsController < ApplicationController

	def index
		@items = Item.where(selling_status: true)
	end

	def show
		@item = Item.find(params[:id])
	end

end
