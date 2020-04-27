class TermSerializer
  include FastJsonapi::ObjectSerializer
  attributes :word, :definition, :category, :pronunciation
end
