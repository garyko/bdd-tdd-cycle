Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
  # fail "Unimplemented"
end

Then /the director of ["'](?<title>(\s)*\w+((\s)*\w+)*(\s)*)["'] should be ["'](?<director>(\s)*\w+((\s)*\w+)*(\s)*)["']/ do |title, director|
  !Movie.where(title: title, director: director).nil?
end

