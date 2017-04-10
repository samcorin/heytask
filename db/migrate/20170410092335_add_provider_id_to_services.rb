class AddProviderIdToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :provider_id, :integer
  end
end
