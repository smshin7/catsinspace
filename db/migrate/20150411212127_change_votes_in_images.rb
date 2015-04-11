class ChangeVotesInImages < ActiveRecord::Migration
  def change
    change_column :images, :votes, :integer, array: true, default: []
  end
end
