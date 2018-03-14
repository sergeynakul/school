class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :registerable, :recoverable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
end
