class AddOenologistToOenologistmagazine < ActiveRecord::Migration[7.0]
  def change
    add_reference :oenologist_magazines, :oenologist, null: false, foreign_key: true
  end
end
