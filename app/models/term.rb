class Term < ApplicationRecord
  validates_presence_of :word, :definition

  enum category: %w(general anime_category personality_relationships)
end
