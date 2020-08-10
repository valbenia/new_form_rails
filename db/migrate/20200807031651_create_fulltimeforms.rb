class CreateFulltimeforms < ActiveRecord::Migration[6.0]
  def change
    create_table :fulltimeforms do |t|
      t.string :name
      t.string :date
      t.string :content
      t.string :income
      t.string :note
      t.timestamps
    end
  end
end
