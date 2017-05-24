require 'sinatra'
require 'haml'
require 'sinatra/activerecord'
require 'zlib'
require 'sinatra/json'
require './environments'
require 'digest'
require 'money'
require "erb"
include ERB::Util

class SinatraTemplateModel < ActiveRecord::Base
end

set :public_folder, 'public'

get '/' do
  haml :index, format: :html5
end

end
