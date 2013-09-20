class CreateDesignatories < ActiveRecord::Migration
  def change
    create_table :designatories do |t|
      t.string :name

      t.timestamps
    end
  end
end
