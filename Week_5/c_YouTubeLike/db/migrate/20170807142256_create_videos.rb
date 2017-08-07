class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.datetime :edited_year
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
