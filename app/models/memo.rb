class Memo < ApplicationRecord
  belongs_to :user
  belongs_to :task

  with_options presence: true do
    validates :memo, presence: { message: 'を入力してください。' }
  end
end
