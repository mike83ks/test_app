class AddPublisherIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :publisher_id, :integer
  end
end
