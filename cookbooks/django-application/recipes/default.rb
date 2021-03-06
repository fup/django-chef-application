#
# Cookbook Name:: webserver-application
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# create a 2.6 virtualenv owned by ubuntu user
# python_virtualenv "/home/ubuntu/flask_ve" do
#     owner "root"
#     group "sysadmins"
#     action :create
# end

# install Django 1.5.1
python_pip "Django" do
    version "1.5"
    action :install
end

python_pip "simplejson" do
    action :install
end

python_pip "pytz" do
    action :install
end

python_pip "django-social-auth" do
    action :install
end

python_pip "tweepy" do
    action :install
end

python_pip "PIL" do
    action :install
end

python_pip "easy-thumbnails" do
    action :install
end

python_pip "distribute" do
    action :install
end

python_pip "wsgiref" do
    action :install
end

packages = Array.new

packages |= %w/
    python-psycopg2
/

packages.each do |pkg|
    package pkg do
        action [:install, :upgrade]
    end
end

python_pip 'django_evolution' do
    action :install
end

python_pip 'rq' do
    action :install
end

python_pip 'rq-dashboard' do
    action :install
end

python_pip 'rq-scheduler' do
    action :install
end

python_pip 'django-rq' do
    action :install
end

python_pip 'django-redis' do
    action :install
end

python_pip 'python-linkedin' do
    action :install
end

python_pip 'requests' do
    action :install
end

python_pip 'python-linkedin' do
    action :install
end

python_pip 'requests' do
    action :install
end

python_pip 'requests_oauthlib' do
    action :install
end

python_pip "django-supervisor" do
    action :install
end

python_pip "indeed" do
    action :install
end

include_recipe 'django-application::custom_installations'
