class AddAgreementToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :agreement, :text
  end
end
