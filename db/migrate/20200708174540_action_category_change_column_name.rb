class ActionCategoryChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    add_column :action_categories, :name, :string
  end
end
