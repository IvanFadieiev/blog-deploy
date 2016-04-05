worker_processes 1

APP_DIR = '/home/alex/projects/simple_blog'
working_directory APP_DIR + '/current'

pid APP_DIR + '/shared/tmp/pids/unicorn.pid'

# listen APP_DIR + '/shared/tmp/unicorn.sock', backlog: 64
listen '/tmp/unicorn.sock', backlog: 64

stderr_path APP_DIR + '/shared/log/unicorn.stderr.log'
stdout_path APP_DIR + '/shared/log/unicorn.stdout.log'
