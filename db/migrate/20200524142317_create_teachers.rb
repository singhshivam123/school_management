class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :qualification
      t.string :mobile
      t.string :desination

      t.timestamps
    end
  end
end
