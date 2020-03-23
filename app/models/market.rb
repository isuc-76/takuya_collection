class Market < ApplicationRecord

	validates :day, presence: true
	validates :content, presence: true
	
end
