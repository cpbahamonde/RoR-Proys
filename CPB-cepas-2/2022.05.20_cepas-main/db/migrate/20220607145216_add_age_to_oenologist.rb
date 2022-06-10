class AddAgeToOenologist < ActiveRecord::Migration[7.0]
  def change
    add_column :oenologists, :age, :integer
  end
end
