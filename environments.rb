configure :development do
 set :database, 'sqlite3:sinatra_template_dev.db'
 set :show_exceptions, true
end

configure :production do
 ActiveRecord::Base.establish_connection(
  {
    adapter: 'postgresql',
    encoding: 'unicode',
    database: 'sinatra_template
',
    pool: 2,
    host: 'localhost',
    username: 'sinatra_template
',
    password: 'password'}
 )
end
