class CreateFams < ActiveRecord::Migration[5.2]
  def change
    create_table :fams do |t|
      t.references :user, foreign_key: true
      t.references :kid, foreign_key: true
      t.string :family_name

      t.timestamps
    end
  end
end
