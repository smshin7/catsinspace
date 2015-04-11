class AddUserRefToImage < ActiveRecord::Migration
  def change
    add_reference :images, :user, index: true
    add_foreign_key :images, :users
  end
end
