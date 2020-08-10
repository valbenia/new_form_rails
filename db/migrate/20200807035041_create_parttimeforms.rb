class CreateParttimeforms < ActiveRecord::Migration[6.0]
  def change
    create_table :parttimeforms do |t|
      t.string :name
      t.string :date
      t.string :customer
      t.string :income
      t.string :description
      t.string :note
      t.timestamps
    end
  end
end
