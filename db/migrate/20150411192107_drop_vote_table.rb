class DropVoteTable < ActiveRecord::Migration
  def change
    drop_table :votes
  end
end
