class CreateSheets < ActiveRecord::Migration[6.1]
  def change
    create_table :sheets, if_not_exists: true do |t|
      t.integer :column, null: false
      t.string :row, null: false
      t.timestamps
    end
  end
end
