class AddRegionToPet < ActiveRecord::Migration
  def change
    add_column :pets, :region, :string
  end
end
