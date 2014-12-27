class AddAttachmentPhotoToInstitutions < ActiveRecord::Migration
  def self.up
    change_table :institutions do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :institutions, :photo
  end
end
