class Task < ApplicationRecord

  with_options presence: true do
    validates :content
  end

end
