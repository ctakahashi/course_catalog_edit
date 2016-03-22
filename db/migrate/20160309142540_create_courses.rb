class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :code
      t.text    :subjects
      t.string  :name
      t.text    :description
      t.float   :credits
      t.boolean :independent_study
      t.text    :requirements

      t.timestamps null: false
    end
  end
end
