class Publisher::BaseController < ApplicationController

  layout 'publisher'

  before_action :authenticate_user!
  before_action :publisher_required!

  private

  def publisher_required
    redirect_to root_path, alert: 'Вы не можете создавать, редактировать, удалять объявления, до тех пор пока не зарегистрируетесь.' unless current_user.is_a?(Publisher)
  end

end
