class SearchController < ApplicationController
  def show
  end


  def results
    @additional = "No Results"
    query_subject_id = params[:subject][:subject_id]
    query_course_name = params[:course_name]
    courses1 = []
    courses2 = []
    if query_subject_id != ''
      query_subject = Subject.find_by_subject_id query_subject_id
      courses1 = query_subject.courses.all
    end
    if query_course_name != ''
      courses2 = Course.where(:name => query_course_name)
    end

    if query_course_name != '' && query_subject_id != ''
      @courses = courses1 & courses2
    else
      @courses = courses1|courses2
    end
    if @courses != []
      @additional = "Search Results"
    end
  end
end
