# -*- encoding: utf-8 -*-

require 'bundler'
Bundler.setup
Bundler::GemHelper.install_tasks

require 'rake'

require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'yard/rake/yardoc_task'

desc 'Remove development artifacts'
task :clobber do
  rm_rf 'coverage'
  rm_rf 'pkg'
  rm_rf 'tmp'
end

RSpec::Core::RakeTask.new(:spec)

class Cucumber::Rake::Task::ForkedCucumberRunner

  # Run within the context of the bundle when shelling out
  def run
    sh("bundle exec #{RUBY} " + args.join(' '))
  end

end

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w(--format progress)
end
