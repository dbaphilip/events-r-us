class AddFieldsToEvents < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :image, :string
    add_column :events, :description, :text
    add_column :events, :starts_at, :datetime
  end
end
