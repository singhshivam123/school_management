class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.boolean :gender
      t.string :occupation
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
