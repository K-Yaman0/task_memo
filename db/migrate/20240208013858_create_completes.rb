class CreateCompletes < ActiveRecord::Migration[7.0]
  def change
    create_table :completes do |t|

      t.references :user,         null: false, foreign_key: true
      t.references :task,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
