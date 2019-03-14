class AddFlagToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :comments_flag, :integer, default: 0
  end
end
