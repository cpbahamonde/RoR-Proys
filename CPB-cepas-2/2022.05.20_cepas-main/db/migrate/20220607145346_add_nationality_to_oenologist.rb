class AddNationalityToOenologist < ActiveRecord::Migration[7.0]
  def change
    add_column :oenologists, :nationality, :string
  end
end
