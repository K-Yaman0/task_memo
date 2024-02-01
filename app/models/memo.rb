class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :task

  with_options presence: true do
    validates :memo, length: { maximum: 30 }
  end
end
