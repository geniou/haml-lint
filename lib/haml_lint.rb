require 'haml_lint/constants'
require 'haml_lint/parser'
require 'haml_lint/haml_visitor'
require 'haml_lint/lint'
require 'haml_lint/linter_registry'
require 'haml_lint/linter'
require 'haml_lint/reporter'
require 'haml_lint/runner'
require 'haml_lint/utils'
require 'haml_lint/version'

require 'haml'

# Load all linters
Dir[File.expand_path('haml_lint/linter/*.rb', File.dirname(__FILE__))].each do |file|
  require file
end

# Load all reporters
Dir[File.expand_path('haml_lint/reporter/*.rb', File.dirname(__FILE__))].each do |file|
  require file
end
