class Assoc < ActiveRecord::Migration
  def change

    change_table :questions do |t|
      t.belongs_to :category, index:true
    end

    change_table :options do |t|
      t.belongs_to :question, index:true
    end

  end
end
