class Post < ApplicationRecord
	validates :author, length: { minimum: 2 }, presence: true
	validates :body, length: { minimum: 10 }, presence: true
end
