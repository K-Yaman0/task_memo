class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :task

  with_options presence: true do
    validates :memo, length: { maximum: 50 }
  end
end
