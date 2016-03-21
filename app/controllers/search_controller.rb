class SearchController < ApplicationController
  def show
  end
  def results
    @query_subject = Subject.find_by_subject_id params[:subject][:subject_id]
    @query_course
    @courses = @query_subject.courses.find_all
  end
end
