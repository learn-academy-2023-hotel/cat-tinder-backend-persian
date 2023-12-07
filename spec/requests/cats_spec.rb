require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it 'gets a list of cats' do
      Cat.create(
        name: 'Remii',
        age: 1,
        enjoys: 'Eating and running around',
        image: 'https://unsplash.com/photos/white-and-brown-long-fur-cat-ZCHj_2lJP00',
      )

      get '/cats'
      cat = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a cat" do
      cat_params = {
        cat: {
          name: 'Remii',
          age: 1,
          enjoys: 'Eating and running around',
          image: 'https://unsplash.com/photos/white-and-brown-long-fur-cat-ZCHj_2lJP00'
        }
      }

      post '/cats', params: cat_params

      expect(response).to have_http_status(200)

      cat = Cat.first 

      expect(cat.name).to eq 'Remii'
      expect(cat.age).to eq 1
      expect(cat.enjoys).to eq 'Eating and running around'
    end
  end

  describe "PATCH /update" do
    it "Updates the cat information" do

      cat_params = {
        cat: {
          name: 'Mako',
          age: 2,
          enjoys: 'Enjoys being a menace',
          image: 'https://unsplash.com/photos/russian-blue-cat-wearing-yellow-sunglasses-yMSecCHsIBc'
        }
      }
      post '/cats', params: cat_params
      cat = Cat.first

      updated_params ={
        cat: {
          name: 'Garfield',
          age: 4,
          enjoys: 'Enjoys eating and being fat',
          image: 'https://unsplash.com/photos/shallow-focus-photography-of-orange-persian-cat-hjsNyctCkCQ'
        }
      }

      patch "/cats/#{cat.id}", params: updated_params
      updated_cat = Cat.find(cat.id)
      expect(response).to have_http_status (200)
      expect(updated_cat.name).to eq "Garfield"
    end
  end

  describe "DELETE /destroy" do
    it "Deletes the cat information" do

      cat_params = {
        cat: {
          name: 'Mako',
          age: 2,
          enjoys: 'Enjoys being a menace',
          image: 'https://unsplash.com/photos/russian-blue-cat-wearing-yellow-sunglasses-yMSecCHsIBc'
        }
      }
      post '/cats', params: cat_params
      cat = Cat.first

      delete "/cats/#{cat.id}"
      expect(response).to have_http_status (200)
      expect(Cat.count).to eq 0
    end
  end

end
