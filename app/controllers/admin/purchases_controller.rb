class Admin::PurchasesController < ApplicationController

	def top
		@purchases = Purchase.select(:transaction_status)
	end

	def index
		@purchases = Purchase.all
	end

	def kakutei
		@purchases = Purchase.where(transaction_status: 0)
	end

	def seikyu
		@purchases = Purchase.where(transaction_status: 1)
	end

	def nyukin
		@purchases = Purchase.where(transaction_status: 2)
	end

	def hassouzumi
		@purchases = Purchase.where(transaction_status: 3)
	end

	def show
		@purchase = Purchase.find(params[:id])
	end

	def update
		@purchase = Purchase.find(params[:id])
		if params[:purchase][:transaction_status]=="0"
			transaction_status = "購入確定"
		elsif params[:purchase][:transaction_status]=="1"
			transaction_status = "請求書発送中"
		elsif params[:purchase][:transaction_status]=="2"
			transaction_status = "入金確認"
		elsif params[:purchase][:transaction_status]=="3"
			transaction_status = "商品発送済み"
		end

		@purchase.update(purchase_params)
	end


	private

		def purchase_params
			params.require(:purchase).permit(:transaction_status)
		end

end
