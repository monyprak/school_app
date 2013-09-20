class CreateTutorsSkillsets < ActiveRecord::Migration
  def change
    create_table :tutors_skillsets do |t|
      t.references :tutor, index: true
      t.references :skillset, index: true
    end
  end
end
