class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :login
      t.string :password_digest
      t.string :mail
      t.string :nickname

      t.timestamps
    end
  end
end
