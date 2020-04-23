class AddRemarkaToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :remarka, :text
  end
end
