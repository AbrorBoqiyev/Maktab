class ChangeNameToFirstNameAndSurnameInTeachers < ActiveRecord::Migration[7.0]
  def change
    if column_exists?(:teachers, :name)
      remove_column :teachers, :name
    end

    unless column_exists?(:teachers, :firstname)
      add_column :teachers, :firstname, :string
    end

    unless column_exists?(:teachers, :surname)
      add_column :teachers, :surname, :string
    end
  end
end
