worker_processes 1

APP_DIR = '/home/alex/projects/simple_blog'
working_directory APP_DIR + '/current'

listen APP_DIR + '/shared/tmp/unicorn.sock', backlog: 64

pid APP_DIR + '/shared/tmp/pids/unicorn.pid'

stderr_path APP_DIR + '/shared/log/unicorn.stderr.log'
stdout_path APP_DIR + '/shared/log/unicorn.stdout.log'
