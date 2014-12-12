class CreateTypeReports < ActiveRecord::Migration
  def change
    create_table :type_reports do |t|
      t.string :label
      t.text :description

      t.timestamps
    end
  end
end
