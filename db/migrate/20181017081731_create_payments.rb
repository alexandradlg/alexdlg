class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.belongs_to :stay
      t.monetize :price
      t.date :month
      t.string :guid
      t.timestamps
    end
  end
end
