class AddSubjectToGrades < ActiveRecord::Migration[7.0]
  def change
    add_reference :grades, :subject, null: false, foreign_key: true, default: 1
  end
end
