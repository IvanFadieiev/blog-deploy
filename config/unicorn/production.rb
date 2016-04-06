worker_processes 1

APP_DIR = '/home/alex/simple_blog'
working_directory APP_DIR + '/current'

pid APP_DIR + '/shared/tmp/pids/unicorn.pid'

listen APP_DIR + '/shared/tmp/sockets/unicorn.sock', backlog: 64

stderr_path APP_DIR + '/shared/log/unicorn.stderr.log'
stdout_path APP_DIR + '/shared/log/unicorn.stdout.log'

preload_app true

GC.copy_on_write_friendly = true if GC.respond_to?(:copy_on_write_friendly=)

before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = "#{rails_root}/Gemfile"
end

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.connection.disconnect!

  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.establish_connection
end
