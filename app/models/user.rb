class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true, format: {without: /\s/}
	validates :email, presence: true, uniqueness: true, format: {with: /\@/}
end
