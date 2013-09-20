class CreateTutorsDesignatories < ActiveRecord::Migration
  def change
    create_table :tutors_designatories do |t|
      t.references :tutor, index: true
      t.references :designatory, index: true
    end
  end
end
