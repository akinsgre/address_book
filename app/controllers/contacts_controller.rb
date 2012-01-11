class ContactsController < ApplicationController
  def index
    @contacts = Contact.find(:all)
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    case @contact.type 
    when "PhoneNumber" 
      logger.info "This is a phone number"
      @typedContact = @contact.becomes(PhoneNumber)
    when "TextMsg"
      logger.info "This is a Text"
      @typedContact = @contact.becomes(TextMsg)
    when "Email"
      logger.info "This is a Email"
      @typedContact = @contact.becomes(Email)
    else 
      logger.info "This is no type"
      raise "Not a supported type"
    end
    if @typedContact.save
      logger.info "redirecting"
      redirect_to @contact, :notice => "Successfully created contact."
    else
      @contact = @typedContact.becomes(Contact)
      logger.info "Errors are " + @typedContact.errors.full_messages.to_s
      render "new"
    end

  end

  def update
    
  end

  def show
  end

end
