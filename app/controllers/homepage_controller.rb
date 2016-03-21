class HomepageController < ApplicationController
  def index
    @enrolements = Enrolement.where(:user_id => current_user.id)
  end
end
