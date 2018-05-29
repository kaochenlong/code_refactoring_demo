begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.verbose = false
  end
  task default: :spec
  task test: :spec
rescue LoadError
end
