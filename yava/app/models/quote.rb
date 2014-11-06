class Quote < ActiveRecord::Base

  validates :snippet, :author, presence: true
end
