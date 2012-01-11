class Email < Contact
  validates :entry, :email_format => {:message => 'is formatted incorrectly.'}
end
