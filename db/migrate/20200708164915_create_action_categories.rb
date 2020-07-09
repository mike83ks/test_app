class CreateActionCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :action_categories do |t|
      t.string :action_category_name
      t.timestamps
    end
  end
end
