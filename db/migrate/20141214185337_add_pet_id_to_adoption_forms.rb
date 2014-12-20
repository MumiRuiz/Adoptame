class AddPetIdToAdoptionForms < ActiveRecord::Migration
  def change
    add_column :adoption_forms, :pet_id, :integer
  end
end
