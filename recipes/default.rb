#
# Cookbook Name:: base-web
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'base-web::install_apache'

package ['wget','curl','vim'] do
  action :install
end
