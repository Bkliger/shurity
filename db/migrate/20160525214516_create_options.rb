class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :opt_value
      t.belongs_to :question, index:true

      t.timestamps null: false
    end
  end
end
