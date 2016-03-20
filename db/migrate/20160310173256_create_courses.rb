class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :term
      t.string :code
      t.integer :continuity_id
      t.string :name
      t.string :description
      t.integer :credits
      t.integer :independent_study
      t.string :requirements
      t.timestamps null: false
    end
  end
end
