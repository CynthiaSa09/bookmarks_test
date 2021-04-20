require 'faker'


20.times do |i|
  name = Faker::Commerce.department + (i + 1).to_s
  Kind.create!(name: name)
end

10.times do |c|
  name = Faker::Food.dish + (c + 1).to_s
  is_public = [true, false].sample
  Seed = Category.create!(name: name, is_public: is_public)
  5.times do |h|
    name = Faker::Food.dish + (c + 1).to_s
    is_public = [true, false].sample
    category_id = Seed.id
    Category.create!(name: name, is_public: is_public, category_id: category_id)
  end
end

categories = Category.all
kinds = Kind.all

20.times do |b|
  name = Faker::Music.album + (b + 1).to_s
  url = Faker::Internet.url
  Bookmark.create!(name: name, url: url)
end

Bookmark.all.each do |b|
  10.times do 
    BookmarkCategory.create!(bookmark: b, category: categories.sample)
    BookmarkKind.create!(bookmark: b, kind: kinds.sample)
  end
end