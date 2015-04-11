class RemoveUserIdColumnFromVotesTable < ActiveRecord::Migration
  def change
    remove_column :votes, :user_id
  end
end
