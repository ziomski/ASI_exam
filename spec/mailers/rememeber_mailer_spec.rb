require "spec_helper"

describe RememeberMailer do
  describe 'instructions' do
    let(:note) { mock_model Note, title: 'Test title', description: 'Test description', email: 'test@wp.pl' }
    let(:mail) { RememeberMailer.remember_send(note) }
	let(:send) { RememeberMailer.remember_send(note).deliver }
 
    it 'renders the subject' do
      expect(mail.subject).to eql('Note Remember')
    end
 
    it 'renders the receiver email' do
      expect(mail.to).to eql([note.email])
    end
 
    it 'renders the sender email' do
      expect(mail.from).to eql(['qm806j@wp.pl'])
    end
 
    it 'assigns @note.title' do
      expect(mail.body.encoded).to match(note.title)
    end
 
 	it 'assigns @note.description' do
      expect(mail.body.encoded).to match(note.description)
    end
	
	it 'assigns @note.email' do
      expect(mail.body.encoded).to match(note.email)
    end
	
	it "sends an email" do
    	expect { send }.to change { ActionMailer::Base.deliveries.count }.by(1)
  	end
	
	it 'should have access to URL helpers' do
    	expect { notes_url :host => 'notes.com' }.not_to raise_error
    	expect { notes_url }.to raise_error
  	end
  end
end
