class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :presentation_type
      t.belongs_to :category, index:true

      t.timestamps null: false
    end
  end
end
