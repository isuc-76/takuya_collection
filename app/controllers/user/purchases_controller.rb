class User::PurchasesController < ApplicationController

	def new
		# @purchase = Purshase.new
		# @item = Item.find(params[:id])
		@user = current_user
	end

	def create
		# @item = Item.find(params[:id])
		p "購入できそう？"
		@purshase = Purchase.new(purchase_params)
		@purshase.user_id = current_user.id
		@purchase.save(purchase_params)

		redirect_to user_purchase_thanks_path
	end

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

end
