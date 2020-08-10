class CreatePartprofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :partprofiles do |t|
      t.string :username
      t.string :name
      t.string :time
      t.string :job

      t.timestamps
    end
  end
end
