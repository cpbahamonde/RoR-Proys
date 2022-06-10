class AddMagazineToOenologistmagazine < ActiveRecord::Migration[7.0]
  def change
    add_reference :oenologist_magazines, :magazine, null: false, foreign_key: true
  end
end
