class AddJobToOenologistmagazine < ActiveRecord::Migration[7.0]
  def change
    add_column :oenologist_magazines, :job, :string
  end
end
