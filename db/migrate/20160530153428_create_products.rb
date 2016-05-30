class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :mpid
      t.string :model_num
      t.string :range
      t.string :weight
      t.string :output
      t.boolean :rechargeable
      t.string :battery
      t.boolean :solar
      t.string :charge_time
      t.boolean :remote_buttons
      t.boolean :speakerphone
      t.string :bluetooth_ver
      t.boolean :radio
      t.string :waterproof_ip
      t.string :dust_ip
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
