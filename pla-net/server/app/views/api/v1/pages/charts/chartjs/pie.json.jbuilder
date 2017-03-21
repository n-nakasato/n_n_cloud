json.array!(@pies) do |pie|
  json.value pie[:value]
  json.color pie[:color]
  json.highlight pie[:highlight]
  json.label pie[:label]
end