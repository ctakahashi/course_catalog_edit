class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :s_id
      t.string :email
      t.string :first
      t.string :middle
      t.string :last, null: false

      t.timestamps null: false
    end
  end
end
