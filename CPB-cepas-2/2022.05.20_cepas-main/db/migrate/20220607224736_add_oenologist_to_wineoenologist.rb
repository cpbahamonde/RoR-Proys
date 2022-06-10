class AddOenologistToWineoenologist < ActiveRecord::Migration[7.0]
  def change
    add_reference :wine_oenologists, :oenologist, null: false, foreign_key: true
  end
end
