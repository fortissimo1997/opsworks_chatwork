# -*- coding: utf-8 -*-

node[:deploy].each do |application, deploy|
  token = deploy[:chatwork_token]
  room  = deploy[:chatwork_room_id]
  return true if token.nil? || room.nil?
  return true if deploy[:scm].nil? || deploy[:deploying_user].nil?
  revision = deploy[:scm][:revision]
  user     = deploy[:deploying_user].split('/')[1]
  return true if deploy[:notifying_nodes].nil?
  return true unless deploy[:notifying_nodes].kind_of?(Array)
  return true unless deploy[:notifying_nodes].include?(node[:opsworks][:instance][:hostname])
  message_body = "The+deployment+of+#{application}+revision+#{revision}+has+just+been+completed+by+#{user}."

  execute 'post notification to chatwork' do
    command "curl -X POST -H \"X-ChatWorkToken: #{token}\" -d \"body=#{message_body}\" \"https://api.chatwork.com/v1/rooms/#{room}/messages\""
    action :run
  end
end
