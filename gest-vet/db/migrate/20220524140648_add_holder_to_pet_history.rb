class AddHolderToPetHistory < ActiveRecord::Migration[7.0]
  def change
    add_reference :pethistories, :holder, null: false, foreign_key: true
  end
end
