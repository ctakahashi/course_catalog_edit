class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string  :s_id
      t.string  :name
      t.string  :abbreviation
      t.text    :segments

      t.timestamps null: false
    end
  end
end
