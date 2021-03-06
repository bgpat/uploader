@dir = "/var/www/uploader/"

worker_processes 8
working_directory @dir

timeout 300
listen 4567, backlog: 1024

pid "#{@dir}run/unicorn.pid"

stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"
