class CreateFams < ActiveRecord::Migration[5.2]
  def change
    create_table :fams do |t|
      t.string :family_name

      t.timestamps
    end
  end
end
