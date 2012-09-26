class EmailList < ActiveRecord::Base
  attr_accessible :mail
 
 validates :name, presence: true, :uniqueness => true

end
