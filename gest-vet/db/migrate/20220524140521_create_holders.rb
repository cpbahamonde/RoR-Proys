class CreateHolders < ActiveRecord::Migration[7.0]
  def change
    create_table :holders do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
