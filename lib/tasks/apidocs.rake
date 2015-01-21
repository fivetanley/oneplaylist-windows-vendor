namespace :apidocs do
  desc "build api.md -> public/index.html"
  task :build  do
    sh "aglio -i api.md -o public/index.html"
  end

  task :server do
    puts "aglio -i api.md -s"
    exec "aglio -i api.md -s"
  end
end

desc "develop api docs with a preview server"
task :apidocs => ["apidocs:build"]
