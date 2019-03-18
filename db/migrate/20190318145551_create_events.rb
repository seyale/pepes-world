class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :place
      t.string :photo
      t.text :description
      t.references :kid, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
