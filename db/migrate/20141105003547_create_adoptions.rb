class CreateAdoptions < ActiveRecord::Migration
  def change
    create_table :adoptions do |t|
      t.string :user_description
      t.references :institution, index: true
      t.references :pet, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
