class CreateSlogans < ActiveRecord::Migration[6.1]
  def change
    create_table :slogans do |t|
      t.st_point :point, geographic: true
      t.string :summary, null: false, unique: true
      t.text :details

      t.timestamps
    end
  end
end
