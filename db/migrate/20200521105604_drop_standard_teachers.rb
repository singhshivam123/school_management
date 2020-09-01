class DropStandardTeachers < ActiveRecord::Migration[6.0]
  def change
    drop_table :standard_teachers
  end
end
