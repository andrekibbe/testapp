namespace :setup do
  desc "Cleanup Gemfile and other stuff."
  task :cleanup => :init do
    print "Clean up the standard Gemfile for a new one?(y/n): "
    option  = STDIN.gets.strip

    case_code(option)
    puts "Setting a new Gemfile."
    cp 'lib/tasks/Gemfile', '.', verbose: false

    puts "Running bundle install. This may take a while...\n\n"
    sh "bundle install"
  end
end
