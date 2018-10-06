class Admin::AdminController < ApplicationController
  http_basic_authenticate_with name: 'subclinical', password: 'password1'
end
