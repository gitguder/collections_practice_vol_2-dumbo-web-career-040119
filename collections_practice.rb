# your code goes here
def begins_with_r(tools)
  tools.each { |word| return false if word.start_with?("r") == false }
  true
end

def contain_a(a_array)
  a_array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
 array.delete_if { |elem| elem.class != String }
end

def count_elements(array)
  counts = Hash.new(0)

  array.each { |elem| counts[elem] += 1 }
  count_array = []

  counts.each do |element, number|
    element.each { |key, val| count_array << {key => val, :count => number} }
  end
  count_array
end

def merge_data(keys, data)
  merge_hash = []

  data.each do |hash|
    hash.each do |name, info|
      keys.each do |k_val|
      merge_hash << k_val.merge(info) if k_val.values[0] == name
      end
    end
  end
  merge_hash

end

def find_cool(array)
  hashes_r_cool = []

  array.each do |hash|
    hash.each { |key, val| hashes_r_cool << hash if key == :temperature && val == "cool" }
  end
  hashes_r_cool
end

def organize_schools(schools)
  places = {}
  schools.values.each { |place| places[place.values[0]] = [] }
  schools.each { |school, place| places[place.values[0]] << school }
  places
end
