class CreateOenologistMagazines < ActiveRecord::Migration[7.0]
  def change
    create_table :oenologist_magazines do |t|

      t.timestamps
    end
  end
end
