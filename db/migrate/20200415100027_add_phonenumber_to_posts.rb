class AddPhonenumberToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :phonenumber, :text
  end
end
