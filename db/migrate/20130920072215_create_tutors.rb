class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.decimal :daily_rate
      t.boolean :publish

      t.timestamps
    end
  end
end
