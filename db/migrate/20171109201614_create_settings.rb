class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.string :home_photo
      t.text :home_text
      t.string :address
      t.string :telephone
      t.string :instagram
      t.string :facebook

      t.timestamps
    end
  end
end
