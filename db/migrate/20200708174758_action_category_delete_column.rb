class ActionCategoryDeleteColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :action_categories, :action_category_name
  end
end
