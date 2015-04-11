class AddUserAndImageIdColumnsToVotesTable < ActiveRecord::Migration
  def change
    add_column :votes, :user_id, :string
    add_column :votes, :image_id, :string
  end
end
