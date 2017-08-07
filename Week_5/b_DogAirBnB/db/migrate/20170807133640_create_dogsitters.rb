class CreateDogsitters < ActiveRecord::Migration[5.1]
  def change
    create_table :dogsitters do |t|
      t.string :name
      t.integer :postal_code

      t.timestamps
    end
  end
end
