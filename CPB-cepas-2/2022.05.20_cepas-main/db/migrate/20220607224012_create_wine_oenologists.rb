class CreateWineOenologists < ActiveRecord::Migration[7.0]
  def change
    create_table :wine_oenologists do |t|

      t.timestamps
    end
  end
end
