class AddImageUrlToBike < ActiveRecord::Migration[7.2]
  def change
    add_column :bikes, :image_url, :string
  end
end
