class NyymMailer < ActionMailer::Base
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable   :ganalytics, :opentrack

  default :from => "\"Cornell University Glee Club\" <no-reply@gleeclub.com>"

  def self.gc_email(username)
    "#{username}@gleeclub.cornell.edu"
  end

  def self.set_vars
    if ENV["RAILS_ENV"] == "development"
      @@librarian_email = @@nyyyms_coordinator_email = "pjm336@cornell.edu"
    else
      @@librarian_email = gc_email("librarian")
      @@nyyyms_coordinator_email = gc_email("nyyms")
    end
  end

  def send_signup_confirmations_for_independent_signup(nyym)
    NyymMailer.set_vars
    NyymMailer.signup_confirmation_to_attendee(nyym).deliver
    NyymMailer.signup_confirmation_to_librarian(nyym).deliver
    NyymMailer.signup_confirmation_to_nyyms_coordinator(nyym).deliver
  end

  def send_signup_confirmations_for_bulk_signup(registration, young_men)
    NyymMailer.set_vars
    NyymMailer.signup_confirmation_to_teacher_bulk(registration, young_men).deliver
    NyymMailer.signup_confirmation_to_librarian_bulk(registration, young_men).deliver
    NyymMailer.signup_confirmation_to_nyyms_coordinator_bulk(registration, young_men).deliver
  end

  # --------
  # Independent emails

  def signup_confirmation_to_attendee(nyym)
    @nyym = nyym

    mail(
      :to => nyym.email,
      :cc => @@nyyyms_coordinator_email,
      :subject => "Your NYYMS Registration",
      :reply_to => @@nyyyms_coordinator_email
    )
  end

  def signup_confirmation_to_librarian(nyym)
    @nyym = nyym

    mail(
      :to => @@librarian_email,
      :cc => @@nyyyms_coordinator_email,
      :subject => "New NYYMS Registration",
      :reply_to => @@nyyyms_coordinator_email
    )
  end

  def signup_confirmation_to_nyyms_coordinator(nyym)
    @nyym = nyym

    mail(
      :to => @@nyyyms_coordinator_email,
      :subject => "New NYYMS Registration"
    )
  end

  # --------
  # Bulk emails

  def signup_confirmation_to_teacher_bulk(registration, young_men)
    @registration = registration
    @young_men    = young_men

    mail(
      :to => registration.email,
      :cc => @@nyyyms_coordinator_email,
      :subject => "Your Students' NYYMS Registration",
      :reply_to => @@nyyyms_coordinator_email
    )
  end

  def signup_confirmation_to_librarian_bulk(registration, young_men)
    @registration = registration
    @young_men    = young_men

    mail(
      :to => @@librarian_email,
      :cc => @@nyyyms_coordinator_email,
      :subject => "New NYYMS Registration",
      :reply_to => @@nyyyms_coordinator_email
    )
  end

  def signup_confirmation_to_nyyms_coordinator_bulk(registration, young_men)
    @registration = registration
    @young_men    = young_men

    mail(
      :to => @@nyyyms_coordinator_email,
      :subject => "New NYYMS Registration"
    )
  end

end
