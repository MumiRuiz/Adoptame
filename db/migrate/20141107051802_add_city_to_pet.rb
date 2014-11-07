class AddCityToPet < ActiveRecord::Migration
  def change
    add_column :pets, :city, :string
  end
end
