class RemoveImageUrlFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :image_url, :text
  end
end
