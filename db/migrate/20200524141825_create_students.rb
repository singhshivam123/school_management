class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.string :father_name
      t.date :join_date
      t.date :leaving_date
      t.string :mobile

      t.timestamps
    end
  end
end
