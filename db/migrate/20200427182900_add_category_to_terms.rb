class AddCategoryToTerms < ActiveRecord::Migration[6.0]
  def change
    add_column :terms, :category, :integer
  end
end
