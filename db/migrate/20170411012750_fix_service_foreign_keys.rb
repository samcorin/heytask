class FixServiceForeignKeys < ActiveRecord::Migration[5.0]
  def change
    remove_reference :services, :user
    add_foreign_key :services, :users, column: :provider_id
    add_index :services, :provider_id
  end
end
