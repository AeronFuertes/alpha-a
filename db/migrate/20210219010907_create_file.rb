class CreateFile < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :description, :text
    add_column :artilces, :created_at, :datetime
    add_column :articles, :updated_at, :datetime

    end
end
