class AddQuoteIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :quote, :integer
  end
end
