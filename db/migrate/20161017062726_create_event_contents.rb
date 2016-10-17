class CreateEventContents < ActiveRecord::Migration[5.0]
  def change
    create_table :event_contents do |t|
      t.references :event
      t.text :content
      t.timestamps
    end
  end
end
