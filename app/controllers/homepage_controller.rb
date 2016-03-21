class HomepageController < ApplicationController
  def index
    @enrolements = Enrolement.all
  end
end
