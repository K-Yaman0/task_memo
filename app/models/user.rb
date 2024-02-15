class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks
  has_many :memos

  with_options presence: true do
    validates :nickname, length: { maximum: 6 }
    validates :password, length: { minimum: 6 }, format: { with: /\A[a-z\d]+\z/i, message: 'は半角英数のみ使用可能です' }
  end
end
