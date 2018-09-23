class Admin::AdminController < ApplicationController
  http_basic_authenticate_with name: ENV['POSTGRES_USER'], password: ENV['POSTGRES_PASSWORD']
end
