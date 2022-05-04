class CreateProys < ActiveRecord::Migration[7.0]
  def change
    create_table :proys do |t|
      t.string :nombre
      t.string :descrip
      t.timestamp :fechini
      t.timestamp :fechfin
      t.string :estado

      t.timestamps
    end
  end
end
