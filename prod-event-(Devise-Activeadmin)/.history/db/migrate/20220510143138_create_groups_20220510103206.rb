class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :crew
      t.date :debut_date
      t.string :group_rypr

      t.timestamps
    end
  end
end
