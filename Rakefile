lib = File.expand_path('lib', File.dirname(__FILE__))
$:.unshift lib unless $:.include?(lib)

require 'rubygems'
require 'rake'
require 'rake/rdoctask'
require 'rspec/core/rake_task'
require 'whodump'

#############################################################################
#
# Standard tasks
#
#############################################################################

require 'rcov/rcovtask'
Rcov::RcovTask.new do |t|
  t.libs << "spec"
  t.test_files = FileList['spec/**/*_spec.rb']
  t.rcov_opts = ['--exclude', 'gems\/,spec\/']
  t.verbose = true
end

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Whodump #{Whodump::VERSION}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :console do
  sh "irb -rubygems -r ./lib/whodump.rb"
end


#############################################################################
#
# Packaging tasks
#
#############################################################################

task :release do
  puts ""
  print "Are you sure you want to relase Whodump #{Whodump::VERSION}? [y/N] "
  exit unless STDIN.gets.index(/y/i) == 0
  
  unless `git branch` =~ /^\* master$/
    puts "You must be on the master branch to release!"
    exit!
  end
  
  # Build gem and upload
  sh "gem build whodump.gemspec"
  sh "gem push whodump-#{Whodump::VERSION}.gem"
  sh "rm whodump-#{Whodump::VERSION}.gem"
  
  # Commit
  sh "git commit --allow-empty -a -m 'v#{Whodump::VERSION}'"
  sh "git tag v#{Whodump::VERSION}"
  sh "git push origin master"
  sh "git push origin v#{Whodump::VERSION}"
end
