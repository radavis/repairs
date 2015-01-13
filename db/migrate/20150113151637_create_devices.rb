class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :manufacturer
      t.string :state

      t.timestamps null: false
    end
  end
end
