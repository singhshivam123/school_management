class AddFirstNameToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :first_name, :string, limit: 80
    add_column :students, :middle_name, :string, limit: 80
    add_column :students, :last_name, :string, limit: 80
    add_column :students, :date_of_birth, :date
    add_column :students, :father_name, :string
    add_column :students, :join_date, :date
    add_column :students, :leaving_date, :date
    add_column :students, :mobile, :string
  end
end
