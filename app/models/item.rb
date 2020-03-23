class Item < ApplicationRecord

	validates :item_name, presence: true

	validates :content, presence: true

	validates :image, presence: true

	validates :price, presence: true

	validates :selling_status,
	inclusion: { in: [true, false] }


	has_one :purchase
    has_many :item_questions

end
