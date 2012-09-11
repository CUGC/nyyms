class NyymMailer < ActionMailer::Base
  default :from => "webmaster@gleeclub.cornell.edu"

  def send_signup_confirmations(nyym)
    NyymMailer.signup_confirmation_to_attendee(nyym).deliver
    NyymMailer.signup_confirmation_to_teacher(nyym).deliver
    NyymMailer.signup_confirmation_to_librarian(nyym).deliver
    NyymMailer.signup_confirmation_to_nyyms_coordinator(nyym).deliver
  end

  def signup_confirmation_to_attendee(nyym)
    @nyym = nyym

    mail :to => nyym.email, :subject => "Your NYYMS Registration", :reply_to => "nyyms@gleeclub.cornell.edu"
  end
  
  def signup_confirmation_to_teacher(nyym)
    @nyym = nyym

    mail :to => nyym.teacher_email, :subject => "Your Student's NYYMS Registration", :reply_to => "nyyms@gleeclub.cornell.edu"
  end
  
  def signup_confirmation_to_librarian(nyym)
    @nyym = nyym

    mail :to => "librarian@gleeclub.cornell.edu", :subject => "New NYYMS Registration", :reply_to => "nyyms@gleeclub.cornell.edu"
  end
  
  def signup_confirmation_to_nyyms_coordinator(nyym)
    @nyym = nyym

    mail :to => "nyyms@gleeclub.cornell.edu", :subject => "New NYYMS Registration"
  end
  
end
