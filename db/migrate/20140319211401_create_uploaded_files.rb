class CreateUploadedFiles < ActiveRecord::Migration
  def change
    create_table :uploaded_files do |t|
      t.string :file

      t.timestamps
    end
  end
end
