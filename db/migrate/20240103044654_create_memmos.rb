class CreateMemmos < ActiveRecord::Migration[7.0]
  def change
    create_table :memmos do |t|
      t.string :memo,          null: false
      t.timestamps
    end
  end
end
