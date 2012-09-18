class NyymMailer < ActionMailer::Base
  default :from => "webmaster@gleeclub.cornell.edu"

  def self.set_vars
    if ENV["RAILS_ENV"] == "development"
      @@librarian_email = @@nyyyms_coordinator_email = "webmaster@gleeclub.cornell.edu"
    else
      @@librarian_email = "librarian@gleeclub.cornell.edu"
      @@nyyyms_coordinator_email = "nyyms@gleeclub.cornell.edu"
    end
  end

  def send_signup_confirmations_for_independent_signup(nyym)
    NyymMailer.set_vars
    NyymMailer.signup_confirmation_to_attendee(nyym).deliver
    NyymMailer.signup_confirmation_to_librarian(nyym).deliver
    NyymMailer.signup_confirmation_to_nyyms_coordinator(nyym).deliver
  end
  
  def send_signup_confirmations_for_bulk_signup(registration)
    NyymMailer.set_vars
    NyymMailer.signup_confirmation_to_teacher_bulk(registration).deliver
    NyymMailer.signup_confirmation_to_librarian_bulk(registration).deliver
    NyymMailer.signup_confirmation_to_nyyms_coordinator_bulk(registration).deliver
  end

  # --------
  # Independent emails

  def signup_confirmation_to_attendee(nyym)
    @nyym = nyym

    mail :to => nyym.email, :subject => "Your NYYMS Registration", :reply_to => "nyyms@gleeclub.cornell.edu"
  end
  
  def signup_confirmation_to_librarian(nyym)
    @nyym = nyym

    mail :to => @@librarian_email, :subject => "New NYYMS Registration", :reply_to => "nyyms@gleeclub.cornell.edu"
  end
  
  def signup_confirmation_to_nyyms_coordinator(nyym)
    @nyym = nyym

    mail :to => @@nyyyms_coordinator_email, :subject => "New NYYMS Registration"
  end
  
  # --------
  # Bulk emails
  
  def signup_confirmation_to_teacher_bulk(registration)
    @registration = registration

    mail :to => registration.email, :subject => "Your Students' NYYMS Registration", :reply_to => @@nyyyms_coordinator_email
  end
  
  def signup_confirmation_to_librarian_bulk(registration)
    @registration = registration

    mail :to => @@librarian_email, :subject => "New NYYMS Registration", :reply_to => @@nyyyms_coordinator_email
  end
  
  def signup_confirmation_to_nyyms_coordinator_bulk(registration)
    @registration = registration

    mail :to => @@nyyyms_coordinator_email, :subject => "New NYYMS Registration"
  end
  
end
