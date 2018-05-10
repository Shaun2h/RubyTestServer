class User < ApplicationRecord
	validates :username, :presence => true #validate the presence of a user field before entering into db. failure means it won't be entered.
end
