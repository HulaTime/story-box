class AddNameToPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :name, :string
  end
end
