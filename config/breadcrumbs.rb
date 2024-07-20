# config/breadcrumbs.rb

crumb :root do
  link "試験一覧", root_path
end

crumb :qualification do |qualification|
  link "試験詳細", qualification_path(qualification)
  parent :root
end

crumb :login do
  link "ログイン", new_user_session_path
  parent :root
end

crumb :new_user do
  link "新規登録", new_user_registration_path
  parent :root
end

crumb :user_profile do |user|
  link "#{user.nickname}さんのプロフィール", user_path(user)
  parent :root
end

crumb :edit_user_profile do |user|
  link "プロフィール編集", edit_user_path(user)
  parent :user_profile, user
end

crumb :edit_comment do |qualification, comment|
  link "コメント編集", edit_qualification_comment_path(qualification, comment)
  parent :qualification, qualification
end

