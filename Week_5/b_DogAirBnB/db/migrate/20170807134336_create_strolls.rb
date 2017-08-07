class CreateStrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :strolls do |t|
      t.datetime :date
      t.belongs_to :dog, foreign_key: true, index: true
      t.belongs_to :dogsitter, foreign_key: true, index: true

      t.timestamps
    end
  end
end
