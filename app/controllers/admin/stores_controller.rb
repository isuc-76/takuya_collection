class Admin::StoresController < ApplicationController

before_action :authenticate_admin!


	def top
	end

	def index
		@store = Store.find(1)
	end

	def update
		@store = Store.find(1)
		if @store.update(store_params)
			redirect_back(fallback_location: root_path)
		else
			redirect_back(fallback_location: root_path)
		end
	end


	private

		def store_params
			params.require(:store).permit(:comment)
		end


end
