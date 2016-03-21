class HomepageController < ApplicationController
  def index
    if signed_in?
    @enrolements = Enrolement.where(:user_id => current_user.id)
    else
      @enrolements = []
    end
  end
end
