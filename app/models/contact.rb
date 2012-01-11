class Contact < ActiveRecord::Base
require_dependency "text_msg"
require_dependency "phone_number"
require_dependency "email"

attr_accessible :name, :type, :entry

validates_presence_of :name, :type, :entry, :message => "must exist"

def self.select_options
  descendants.map do |c| c.to_s end.sort
end
end
