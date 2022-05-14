class AddImageUrlToLibro < ActiveRecord::Migration[7.0]
  def change
    add_column :libros, :image_url, :string
  end
end
