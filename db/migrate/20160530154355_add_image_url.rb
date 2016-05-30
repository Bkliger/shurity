class AddImageUrl < ActiveRecord::Migration
  def change
    add_column :products, :image_URL, :string
  end
end
