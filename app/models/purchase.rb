class Purchase < ApplicationRecord

	# validates :item_name, presence: true

	validates :transaction_status, presence: true
	enum transaction_status:{
		"購入確定": 0,
		"請求書発送中": 1,
		"入金確認": 2,
		"商品発送済み": 3,
	}

	belongs_to :user
	belongs_to :item

end
