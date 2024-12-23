class SplitNameToFirstnameAndSurname < ActiveRecord::Migration[7.0]
  def up
    Student.reset_column_information

    Student.find_each do |student|
      if student.respond_to?(:name) && student.name.present?
        names = student.name.split(" ", 2)
        student.update!(firstname: names[0], surname: names[1])
      end
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Cannot restore 'name' column as it has been removed."
  end
end
