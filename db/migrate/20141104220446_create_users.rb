class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :country
      t.string :state
      t.string :city
      t.text :description

      t.timestamps null: false
    end
  end
end
