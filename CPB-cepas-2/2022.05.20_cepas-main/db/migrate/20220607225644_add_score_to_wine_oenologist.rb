class AddScoreToWineOenologist < ActiveRecord::Migration[7.0]
  def change
    add_column :wine_oenologists, :score, :integer
  end
end
