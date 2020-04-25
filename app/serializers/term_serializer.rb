class TermSerializer
  include FastJsonapi::ObjectSerializer
  attributes :word, :definition
end
