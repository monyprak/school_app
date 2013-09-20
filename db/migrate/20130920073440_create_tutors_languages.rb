class CreateTutorsLanguages < ActiveRecord::Migration
  def change
    create_table :tutors_languages do |t|
      t.references :tutor, index: true
      t.references :language, index: true
    end
  end
end
