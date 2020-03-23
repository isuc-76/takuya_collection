class ItemAnswer < ApplicationRecord

	validates :answer, presence: true

	belongs_to :item_question

end
