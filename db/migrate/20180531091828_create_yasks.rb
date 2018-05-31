class CreateYasks < ActiveRecord::Migration[5.1]
  def change
    create_table :yasks do |t|
      t.string :title
      t.string :detail

      t.timestamps
    end
  end
end
