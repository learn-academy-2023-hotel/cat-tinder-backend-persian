require 'rails_helper'

RSpec.describe Cat, type: :model do
    
 it "should validate name existing on database" do
  cat = Cat.create(age:3, enjoys:'lasagna and moms spaghetti', image: 'https://unsplash.com/photos/shallow-focus-photography-of-orange-persian-cat-hjsNyctCkCQ')
  expect(cat.errors[:name]).to_not be_empty
 end

 it "should validate age existing on database" do
  cat = Cat.create(name:'Patrick', enjoys:'Krabby Patties', image:'https://spongebob.com')
  expect(cat.errors[:age]).to_not be_empty
 end
 it "should validate enjoys on database" do
  cat = Cat.create(age:4, name:'Sam', image: 'https://unsplash.com/photos/shallow-focus-photography-of-orange-persian-cat-hjsNyctCkCQ')
  expect(cat.errors[:enjoys]).to_not be_empty
end

it "validates length to a minimum of 10 characters" do
   cat = Cat.create(age:74, name:'Bob', image: 'https://unsplash.com/photos/orange-tabby-cat-walking-on-concrete-wall-SYbPySsQEMY')
   expect(cat.errors[:enjoys]).to_not be_empty
  end

 it "should validate image exists" do
  cat = Cat.create(age:74, enjoys:'popcorn', name:'Tom')
  expect(cat.errors[:image]).to_not be_empty
 end
end
