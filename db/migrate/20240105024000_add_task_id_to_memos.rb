class AddTaskIdToMemos < ActiveRecord::Migration[7.0]
  def change
    add_reference :memos, :task, foreign_key: true
  end
end
