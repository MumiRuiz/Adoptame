class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :country
      t.string :state
      t.string :city
      t.string :website
      t.string :manager
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
