class PagesController < ApplicationController
  def blog
    @contact_form = ContactForm.new
  end
end
