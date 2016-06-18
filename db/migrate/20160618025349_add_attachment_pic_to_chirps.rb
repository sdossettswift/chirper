class AddAttachmentPicToChirps < ActiveRecord::Migration
  def self.up
    change_table :chirps do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :chirps, :pic
  end
end
