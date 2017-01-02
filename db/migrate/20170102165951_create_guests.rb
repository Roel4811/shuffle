class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
