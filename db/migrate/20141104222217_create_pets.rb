class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :kind
      t.string :age
      t.string :gender
      t.string :size
      t.text :story

      t.timestamps null: false
    end
  end
end
