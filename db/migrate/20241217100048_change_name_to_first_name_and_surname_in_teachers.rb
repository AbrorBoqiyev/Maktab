class ChangeNameToFirstNameAndSurnameInTeachers < ActiveRecord::Migration[7.0]
  def change
    remove_column :teachers, :name, :string if_exists: true
    add_column :teachers, :firstname, :string, unless column_exists?(:teachers, :firstname)
    add_column :teachers, :surname, :string, unless column_exists?(:teachers, :surname)
  end
end
