class AddVoteCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :voteCount, :integer, default: 0
  end
end
