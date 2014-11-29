class AddInstitutionIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :institution_id, :integer
  end
end
