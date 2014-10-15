#!/usr/bin/env ruby
require 'inifile'

profile = ARGV[0]
profile ||= 'default'
region = ARGV[1]
region ||= 'us-east-1'

config_path = "~/.aws/config"

config = IniFile.load( File.expand_path config_path )
profile = config["profile #{profile}"]
unless profile and profile.count > 0
  fail "Couldn't find profile #{profile} in #{config_path}"
end
[ 'aws_access_key_id', 'aws_secret_access_key'].each do |key|
  fail "Required not defined under profile: #{key}.  Have keys: #{profile.keys.inspect}" unless profile[key]
  puts "export #{key.upcase}='#{profile[key]}'"
end
if profile['region']
  region = profile['region']
end
region = 'us-east-1' unless region
puts "export AWS_REGION='#{region}'"
