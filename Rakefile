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

#task :cucumber do
#  begin
#    #puts "Running with: #{@browser.}"

#    Rake::Task[:create_customer_testcase].execute()
#  rescue Exception => e
#    puts "Error while running task"
#  end
#end


#Cucumber::Rake::Task.new(:run_features)
#task :default => [:cucumber]
#

Cucumber::Rake::Task.new(:create_customer_testcase) do |t| # 1
  t.profile = 'default'
  t.cucumber_opts = '--tags @create_customer_testcase'
end

Cucumber::Rake::Task.new(:activation_new_user_for_admin) do |t| # 2
  t.profile = 'default'
  t.cucumber_opts = '--tags @activation_new_user_for_admin'
end

Cucumber::Rake::Task.new(:register_shop_testcase) do |t| # 3
  t.profile = 'default'
  t.cucumber_opts = '--tags @register_shop_testcase'
end

Cucumber::Rake::Task.new(:signup_craftsman_and_activation_and_go_account_settings) do |t| # 4
  t.profile = 'default'
  t.cucumber_opts = '--tags @signup_craftsman_and_activation_and_go_account-settings'
end

Cucumber::Rake::Task.new(:inviting_a_new_person_to_the_workspace) do |t| # 5
  t.profile = 'default'
  t.cucumber_opts = '--tags @inviting_a_new_person_to_the_workspace'
end

Cucumber::Rake::Task.new(:how_it_works) do |t| # 6
  t.profile = 'default'
  t.cucumber_opts = '--tags @how_it_works'
end

Cucumber::Rake::Task.new(:about_us) do |t| # 7
  t.profile = 'default'
  t.cucumber_opts = '--tags @about_us'
end

Cucumber::Rake::Task.new(:agb) do |t| # 8
  t.profile = 'default'
  t.cucumber_opts = '--tags @agb'
end

Cucumber::Rake::Task.new(:handworker) do |t| # 9
  t.profile = 'default'
  t.cucumber_opts = '--tags @handworker'
end

Cucumber::Rake::Task.new(:workspace_landing) do |t| # 10
  t.profile = 'default'
  t.cucumber_opts = '--tags @workspace_landing'
end

task :default => :create_customer_testcase
task :default => :activation_new_user_for_admin
task :default => :register_shop_testcase
task :default => :signup_craftsman_and_activation_and_go_account_settings
task :default => :inviting_a_new_person_to_the_workspace
task :default => :how_it_works
task :default => :about_us
task :default => :agb
task :default => :handworker
task :default => :workspace_landing
