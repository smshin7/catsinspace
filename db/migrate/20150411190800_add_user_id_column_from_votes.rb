class AddUserIdColumnFromVotes < ActiveRecord::Migration
  def change
    add_column :votes, :user_id, :string, array: true, default: []
  end
end
