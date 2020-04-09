class User::PurchasesController < ApplicationController

	def new
		@purchase = Purchase.new
		@item = Item.find_by(id: params[:format])
		# binding.pry
		@user = current_user
	end

	def create
		# @item = Item.find(params[:id])
		p "購入できそう？"
		purchase = Purchase.new(purchase_params)
		if purchase.save
			@item = Item.find(purchase.item_id)
			@item.update(selling_status: false)

			# @item = Item.find_by(id: params[:format])
			# @item = Item.find(2)
			# binding.pry
			# @purchase.user_id = current_user.id
			# @purchase.item_id = @item.id
			

			redirect_to user_purchase_thanks_path
		else
			render 'new'
		end
	end

	# def update
	# 	@item = Item.find_by(id: params[:format])
	# 	@item.update(item_params)
	# end

	def index
		@purchases = Purchase.where(user_id: current_user.id)
	end

	def show
		@purchase = Purchase.find(params[:id])
	end

	def thanks
	end


	private

		def purchase_params
			params.require(:purchase).permit(:user_id, :item_id)
		end

		# def item_params
		# 	params.require(:item).permit(:selling_status)
		# end

end
