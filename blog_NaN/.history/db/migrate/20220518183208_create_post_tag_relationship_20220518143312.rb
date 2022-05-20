class CreatePostTagRelationship < ActiveRecord::Migration[7.0]
  def change
    create_table :post_tag_relationships do |t|

      t.timestamps
    end
  end
end

class CreatePostTagRelationship < ActiveRecord::Migration[5.2]
    def change
      create_table :posts do |t|
        t.string :title
        t.text :content
        t.string :author
        t.timestamps
      end

      create_table :tags do |t|
        t.string :title
        t.timestamps
      end
      
    create_table :post_tags do |t|
    t.belongs_to :post, index: true
    t.belongs_to :tag, index: true
    t.boolean :available, default: true
    t.timestamps
    end
end
end