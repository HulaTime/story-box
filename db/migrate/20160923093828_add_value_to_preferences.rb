class AddValueToPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :value, :string
  end
end
