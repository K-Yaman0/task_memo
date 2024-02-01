class Task < ApplicationRecord
  belongs_to :user
  has_many :memos, dependent: :destroy

  with_options presence: true do
    validates :content, length: { maximum: 20 }
  end

end
