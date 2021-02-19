class CreateArticle1s < ActiveRecord::Migration[6.1]
  def change
    create_table :article1s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
