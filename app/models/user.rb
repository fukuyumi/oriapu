class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
validates :nick_name,
         presence: true

validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
validates :family_name,
         format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ },
         presence: true
validates :first_name,
         format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ },
         presence: true
validates :family_name_kana,
         format: { with: /\A[ァ-ヶー]+\z/ },
         presence: true
validates :first_name_kana,
         format: { with: /\A[ァ-ヶー]+\z/ },
         presence: true

end
