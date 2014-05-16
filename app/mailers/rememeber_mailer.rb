class RememeberMailer < ActionMailer::Base
  default :from => "qm806j@wp.pl"
  
  def remember_send(note)
    @note = note
    mail(:to => note.email, :subject => "Note Remember")
  end
end
