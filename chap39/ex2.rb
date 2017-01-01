# Indian states and capitals
states_capitals1 = {
  andhra_pradesh: "Hyderabad",
  arunachal_pradesh: "Itanagar",
  assam: "Dispur",
  bihar: "Patna",
  gujarat: "Gandhinagar",
  maharashtra: "Bhopal",
  karnataka: "Bengaluru",
  punjab: "Chandigarh",
  tamilnadu: "Chennai"
}

states_capitals2 = {
  andhra_pradesh: "Hyderabad",
  arunachal_pradesh: "Itanagar",
  assam: "Dispur",
  bihar: "Patna"
}
h = Hash.new
p states_capitals1[:punjab]
grades = Hash.new(0) # will be default value instead of nil
# grades.default = 0 sets default
p grades['Emma']
p states_capitals1[:assam].upcase
p states_capitals1.keys
# p states_capitals2 <= states_capitals1 # returns true if 2 is subset of/equal to 1
p states_capitals1.key("Bengaluru")
p h.empty?
p states_capitals1.has_key?(:maharashtra)
p states_capitals2.has_key?(:maharashtra)
p states_capitals2.invert # keys become values & values become keys
hsh = {"a" => 100, "b" => 200, "c" => 300}
p hsh.select {|k,v| k > "a"}
p hsh.select {|k,v| v < 200}
