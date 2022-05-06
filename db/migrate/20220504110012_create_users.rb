class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end