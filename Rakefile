require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

#require 'parallel'

#@browsers = JSON.load(open('browsers.json'))
#@parallel_limit = ENV['BS_PLATFORM'] || 1
#@parallel_limit = @parallel_limit.to_i

#task :cucumber do
#  Parallel.each(@browsers, :in_processes => @parallel_limit) do |browser|
#    begin
#      puts "Running with: #{browser.inspect}"
#
#      Rake::Task[:run_features].execute()
#    rescue Exception => e
#      puts "Error while running task"
#    end
#  end
#end

task :cucumber do
  begin
    #puts "Running with: #{@browser.}"

    Rake::Task[:run_features].execute()
  rescue Exception => e
    puts "Error while running task"
  end
end

Cucumber::Rake::Task.new(:run_features)
task :default => [:cucumber]