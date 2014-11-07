class AddCountryToPet < ActiveRecord::Migration
  def change
    add_column :pets, :country, :string
  end
end
