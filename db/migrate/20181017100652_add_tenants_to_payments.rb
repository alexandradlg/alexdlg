class AddTenantsToPayments < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :tenant
  end
end
