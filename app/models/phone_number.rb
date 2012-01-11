class PhoneNumber < Contact
validates_length_of :field1, :is => 10, :message => 'must be 10 digits, excluding special characters such as spaces and dashes. No extension or country code allowed.', :if => Proc.new{|o| !o.phone.blank?}

end
