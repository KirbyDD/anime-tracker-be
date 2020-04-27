class AddPronunciationToTerms < ActiveRecord::Migration[6.0]
  def change
    add_column :terms, :pronunciation, :string
  end
end
