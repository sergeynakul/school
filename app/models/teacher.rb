class Teacher < ApplicationRecord
	validates :first_name, :last_name, :description, presence: true
end
