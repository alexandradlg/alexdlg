class CreateStays < ActiveRecord::Migration[5.2]
  def change
    create_table :stays do |t|
      t.date :start_date
      t.date :end_date
      t.belongs_to :tenant
      t.belongs_to :studio
      t.timestamps
    end
  end
end
