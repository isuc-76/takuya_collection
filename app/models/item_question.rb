class ItemQuestion < ApplicationRecord

	validates :question, presence: true

	validates :anser_status,
	inclusion: { in: [true, false] }

	has_one :item_answer
	belongs_to :item

end
