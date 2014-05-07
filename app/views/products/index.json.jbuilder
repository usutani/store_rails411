json.array!(@products) do |product|
  json.extract! product, :id
end
