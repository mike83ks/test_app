class ActionCategoriesController < ApplicationController

  def index
    @action_categories = ActionCategory.all
  end
end
