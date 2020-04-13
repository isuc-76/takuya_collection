class User::ItemsController < ApplicationController

	def index
		@items = Item.where(selling_status: true).page(params[:page]).per(4)
	end

	def show
		@item = Item.find(params[:id])
	end

	# def update
	# 	p "ステータス変更"
	# 	item = Item.find(params[:id])
	# 	item.save(item_params)
	# end


	# private

		# def item_params
		# 	params.require(:item).permit(:selling_status)
		# end

end
