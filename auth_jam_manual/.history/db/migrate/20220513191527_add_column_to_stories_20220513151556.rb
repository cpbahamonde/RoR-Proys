class AddColumnToStories < ActiveRecord::Migration[7.0]
  def change
    add_reference :stories, :user_if, null: false, foreign_key: true
  end
end
