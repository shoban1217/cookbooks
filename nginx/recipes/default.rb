#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



package 'nginx' do
	action :install
end
cookbook_file '/etc/nginx/nginx.conf' do
  
	   source 'nginx.conf'
           mode '0777'
           owner 'root'
           group 'root'
	  
  end
service 'nginx' do
        action [ :enable, :start]    
end

  

 

