class User::PurchasesController < ApplicationController

before_action :authenticate_user!
before_action :correct_user, only: [:edit, :update]
before_action :correct_purchase, only:[:show]


	def new
		@purchase = Purchase.new
		@item = Item.find_by(id: params[:format])
		# @item = Item.find(params[:id])
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
		@purchases = Purchase.where(user_id: current_user.id).page(params[:page]).per(4)
	end

	def show
		@purchase = Purchase.find(params[:id])
		# @purchase = Purchase.where(item_id: @purchase.item_id)

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

		def correct_user
			@user = User.find(params[:id])
			if current_user != @user
				redirect_back(fallback_location: root_path)
			end
		end

		def correct_purchase
			@purchase = Purchase.find(params[:id])
			if current_user.id != @purchase.user_id
				redirect_back(fallback_location: root_path)
			end
		end

end
