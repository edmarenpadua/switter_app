class Swit < ActiveRecord::Base
	acts_as_voteable
	belongs_to :user
	has_many :comments
	validates :content, length: { maximum: 140 }, presence: true
end
