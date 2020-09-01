class RemoveStandardIdFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :standard_id, :integer
    remove_column :students, :teacher_id, :integer
  end
end
