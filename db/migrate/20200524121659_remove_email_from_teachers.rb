class RemoveEmailFromTeachers < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :email, limit: 20
  end
end
