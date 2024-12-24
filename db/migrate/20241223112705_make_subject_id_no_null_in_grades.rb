class MakeSubjectIdNoNullInGrades < ActiveRecord::Migration[7.0]
  def change
    change_column_default :grades, :subject_id, from: 1, to: nil
    change_column_null :grades, :subject_id, false
  end
end
