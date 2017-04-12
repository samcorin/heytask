class AddAddressToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :address, :string
  end
end
