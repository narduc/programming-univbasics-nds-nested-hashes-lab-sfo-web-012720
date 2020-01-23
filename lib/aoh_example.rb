# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

DON_G = { name:  "Don Gately", occupation: "Live-in Staff" }
JOELLE_VD = { name:  "Joelle van Dyne", occupation: "Radio Personality" }
PAT_M =  { name:  "Pat Monteseian", occupation: "Staff" }
KATE_G = { name:  "Kate Gompert", occupation: "None" }
BRUCE_G = { name:  "Bruce Green", occupation: "Fan of Mildred" }

def assembled_aoh
  # Build an array that contains (or, "nests") the constants into a single
  # Array. Ruby constants are denoted by ALL_CAPS
  arr = []
  arr << DON_G
  arr << JOELLE_VD
  arr << PAT_M 
  arr << KATE_G
  arr << BRUCE_G
  arr
end

def literal_aoh
  # Using Array literal syntax only, build a nested array that uses the data in
  # held in the constants
  result = [{:name=>"Don Gately", :occupation=>"Live-in Staff"},
       {:name=>"Joelle van Dyne", :occupation=>"Radio Personality"},
       {:name=>"Pat Monteseian", :occupation=>"Staff"},
       {:name=>"Kate Gompert", :occupation=>"None"},
       {:name=>"Bruce Green", :occupation=>"Fan of Mildred"}]
       result
end
# describe 'When a learning to perform lookups in AoHs,' do
#   describe 'when given a aoh, row, and column argument,' do
#     it 'the aoh_lookup method returns the requested value' do
#       expect(aoh_lookup(assembled_aoh, 2, :name)).to eq("Pat Monteseian")
def aoh_lookup(aoh, row, key)
  ele = aoh[row][key]
  ele
end

def aoh_update(aoh, row, key, new_value)
  # Update the AoH data at row and key to have the value of new_value
  # Return the updated AoH
  aoh[row][key] = new_value
end
