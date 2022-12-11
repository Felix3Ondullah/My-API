class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :package_type
      t.string :pick_up_location
      t.string :drop_off_location
      t.string :date
      t.string :receiver_name
      t.string :number_of_kgs

      t.timestamps
    end
  end
end
