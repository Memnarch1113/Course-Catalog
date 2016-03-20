class CoursesSubjects < ActiveRecord::Migration
  def change
    create_table :courses_subjects, id:false do |t|
      t.belongs_to :course, index:true
      t.belongs_to :subject, index:true
      t.integer :segment
      t.timestamps null: false
    end
  end
end
