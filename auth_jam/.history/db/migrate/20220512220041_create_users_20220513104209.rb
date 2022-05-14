class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
      t.index column_name :email, unique
    end
  end
end
