class CreateStandardTeacher < ActiveRecord::Migration[6.0]
  def change
    create_table :standard_teachers, id: false do |t|
      t.belongs_to :standard
      t.belongs_to :teacher
    end
  end
end
