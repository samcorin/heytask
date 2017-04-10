class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :services_id, :service_id
  end
end
