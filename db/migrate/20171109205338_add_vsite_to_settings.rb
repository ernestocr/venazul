class AddVsiteToSettings < ActiveRecord::Migration[5.1]
  def change
    add_column :settings, :vsite, :string
  end
end
