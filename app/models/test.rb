class Test < ActiveRecord::Base
  validates_presence_of :widget, :message => "You're ugly"
end
