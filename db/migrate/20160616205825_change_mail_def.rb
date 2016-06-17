class ChangeMailDef < ActiveRecord::Migration
  def change
    change_column(:users, :email, null: false)
  end
end
