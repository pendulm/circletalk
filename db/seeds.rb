# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Forum.create! do |p|
  p.id = 1
  p.name = "作战中心"
  p.parent_id = nil
end
Forum.create! do |p|
  p.id = 12
  p.name = "情报处"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 30
  p.name = "MGSPW专区"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 22
  p.name = "MGS4专区"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 23
  p.name = "MGO专区"
  p.parent_id = 22
end
Forum.create! do |p|
  p.id = 4
  p.name = "掌机与古典MG区"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 17
  p.name = "MGS3专区"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 3
  p.name = "MGS2专区"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 32
  p.name = "MGS2-VR专区"
  p.parent_id = 32
end
Forum.create! do |p|
  p.id = 2
  p.name = "MGS/孪蛇专区"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 31
  p.name = "MGS1-VR专区"
  p.parent_id = 2
end
Forum.create! do |p|
  p.id = 25
  p.name = "小岛主题公园"
  p.parent_id = 1
end
Forum.create! do |p|
  p.id = 5
  p.name = "俱乐部"
  p.parent_id = nil
end
Forum.create! do |p|
  p.id = 6
  p.name = "泳池"
  p.parent_id = 5
end
Forum.create! do |p|
  p.id = 7
  p.name = "游戏厅"
  p.parent_id = 5
end
Forum.create! do |p|
  p.id = 15
  p.name = "音画馆"
  p.parent_id = 5
end
Forum.create! do |p|
  p.id = 20
  p.name = "同人社"
  p.parent_id = 5
end
Forum.create! do |p|
  p.id = 21
  p.name = "102.25 & MGCN微博"
  p.parent_id = 5
end
Forum.create! do |p|
  p.id = 9
  p.name = "后勤部"
  p.parent_id = nil
end
Forum.create! do |p|
  p.id = 10
  p.name = "内务处"
  p.parent_id = 9
end
Forum.create! do |p|
  p.id = 13
  p.name = "总部直属机构"
  p.parent_id = nil
end
Forum.create! do |p|
  p.id = 28
  p.name = "爱国者密室"
  p.parent_id = 13
end
Forum.create! do |p|
  p.id = 16
  p.name = "会议室"
  p.parent_id = 13
end
Forum.create! do |p|
  p.id = 14
  p.name = "特勤处"
  p.parent_id = 13
end
Forum.create! do |p|
  p.id = 18
  p.name = "MGSPC汉化组工作区"
  p.parent_id = 13
end
