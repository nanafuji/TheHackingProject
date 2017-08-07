class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.datetime :date
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
