class CreateLibros < ActiveRecord::Migration[7.0]
  def change
    create_table :libros do |t|
      t.string :title
      t.string :descrip
      t.string :author
      t.timestamp :fechprestm
      t.timestamp :fechdevol
      t.string :status

      t.timestamps
    end
  end
end
