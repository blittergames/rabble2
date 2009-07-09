# APP_ROOT is set to the current dir(which is /)
APP_ROOT = File.dirname File.expand_path __FILE__ unless defined? APP_ROOT

# Require /environment.rb
require "#{APP_ROOT}/environment.rb"

# Tell DM to auto upgrade the database tables when the model has changed
DataMapper.auto_upgrade!

get '/' do
  @buildings = Building.all
  haml :index
end

get '/new' do
  haml :new
end

post '/new' do
  @building = Building.new
  @building.attributes = {:name => params[:name]}
  if @building.save
    redirect '/'
  else
    redirect '/new'
  end
end
