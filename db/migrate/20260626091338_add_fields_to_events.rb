class AddFieldsToEvents < ActiveRecord::Migration[8.1]
  def change
    add_column :events, :image, :string, default: "placeholder.png"
    add_column :events, :capacity, :integer, default: 1
    add_column :events, :description, :text
    add_column :events, :starts_at, :datetime
  end
end
