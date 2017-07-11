def get_file_as_string(text_to_transform)
  data = ''
  f = File.open(text_to_transform, "r") 
  f.each_line do |line|
    data += line
  end
  return data
end