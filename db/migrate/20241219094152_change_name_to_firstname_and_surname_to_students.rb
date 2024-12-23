class ChangeNameToFirstnameAndSurnameToStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :name, :string
    add_column :students, :firstname, :string
    add_column :students, :surname, :string
  end
end
