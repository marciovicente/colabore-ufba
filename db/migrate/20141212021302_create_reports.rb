class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :student
      t.text :description
      t.string :image
      t.string :title
      t.integer :report_type

      t.timestamps
    end
  end
end
