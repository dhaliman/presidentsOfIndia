class CreatePresidents < ActiveRecord::Migration[5.1]
  def change
    create_table :presidents do |t|
      t.string :name
      t.date :in_office_start
      t.date :in_office_end

      t.timestamps
    end
  end
end
