class AddVotesColumnToImage < ActiveRecord::Migration
  def change
    add_column :images, :votes, :integer, array: true
  end
end
