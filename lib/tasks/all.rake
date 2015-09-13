namespace :setup do
  task :all => [:init, :cleanup, :git, :git_branch] do
    puts "Done"
  end
end
