class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable


         validates :name,
         presence: true,
         format: {
         	with: /\A[ぁ-んァ-ン一-龥]/,
         	allow_blank: true,
         	message: "には、数字やアルファベットは使用できません"
         }

         validates :telephone_number, presence: true

         validates :postal_code, presence: true

         devise :validatable

         validates :user_status,
         inclusion: { in: [true, false] }

         # acts_as_paranoid

         has_many :purchases

  #論理削除
  def active_for_authentication?
    super && user_status
  end


end
