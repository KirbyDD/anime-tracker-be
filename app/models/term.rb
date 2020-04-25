class Term < ApplicationRecord
  validates_presence_of :word, :definition
end
