class ApplicationRecord < ActiveRecord::Base
	# 論理削除
	# acts_as_paranoid
  self.abstract_class = true
end
