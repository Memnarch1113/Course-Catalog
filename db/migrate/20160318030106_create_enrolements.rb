class CreateEnrolements < ActiveRecord::Migration
  def change
    create_table :courses_users, id:false do |t|
      t.belongs_to :course, index:true
      t.belongs_to :user, index:true
      t.timestamps null: false
    end
  end
end
