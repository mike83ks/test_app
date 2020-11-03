class ActionCategoriesController < ApplicationController
#before_action :admin_required!

  def index
    @action_categories = ActionCategory.all
  end

end
