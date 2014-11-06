class ContactFormsController < ApplicationController

  def create
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.valid?
      @contact_form.deliver
    end
  end
end
