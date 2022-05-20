class CreatePostTagRelationship < ActiveRecord::Migration[7.0]
  def change
    create_table :post_tag_relationships do |t|

      t.timestamps
    end
  end
end
