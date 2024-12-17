class AddSurnameToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :surname, :string
  end
end
