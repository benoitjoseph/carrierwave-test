class CreatePictures < ActiveRecord::Migration[7.2]
  def change
    create_table :pictures do |t|
      t.string :kind
      t.string :file

      t.timestamps
    end
  end
end
