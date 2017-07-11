workers Integer(ENV['PUMA_WORKERS'] || 1)
threads_count = Integer(ENV['MAX_THREADS'] || 4)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RAILS_ENV'] || 'development'

if ENV['LOOMIO_SSL_KEY']
  ssl_bind '0.0.0.0', '9292', {
     key: ENV['SSL_KEY'],
     cert: ENV['SSL_CERT'],
     ca: ENV['SSL_CA']
  }
end

on_worker_boot do
  # worker specific setup
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end
