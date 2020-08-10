class CreateFullprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :fullprofiles do |t|
      t.string :username
      t.string :company
      t.string :taxcode
      t.string :address
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
