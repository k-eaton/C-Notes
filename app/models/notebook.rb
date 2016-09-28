class Notebook < ApplicationRecord
  validates :name, presence: true
  
  belongs_to :user
  has_many :pages
end
