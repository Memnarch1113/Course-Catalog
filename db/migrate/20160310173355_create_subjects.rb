class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :term
      t.string :name
      t.string :abbreviation
      t.string :segments

      t.timestamps null: false
    end
  end
end
