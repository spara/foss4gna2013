require 'github_api'
require 'hashie'

github = Github.new
results =  github.search.repos :owner => 'codeforamerica', :keyword => 'rails'

results.each do |result|
	puts result.customreader('username')
end
