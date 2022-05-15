class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :external_id
      t.string :name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.integer :orders, null: false, default: 0
      
      

      t.timestamps
    end
  end
end
