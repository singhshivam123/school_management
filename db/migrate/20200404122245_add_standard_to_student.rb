class AddStandardToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :standard
  end
end
