require 'spec_helper'

describe Note do
  it "check note create" do
    for i in 1..10
   		Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	end
	expect(Note).to have(10).records
  end
  it "check note delete" do
	for i in 1..10
   		Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	end
	expect(Note).to have(10).records
	Note.all.each do |note| 
		note.destroy
	end
	expect(Note).to have(0).records
  end
  it "check note update" do
	for i in 1..10
   		Note.create!(title: "This", description: "This is a test description",:email => "test@wp.pl")
	end
	Note.all.each do |note| 
		note.update(priority: "c",title: "This is a test title")
	end
	Note.all.each do |note|
		expect(note.priority).to eq("c")
		expect(note.title).to eq("This is a test title")
	end
  end
  it "check priority setting" do
  	for i in 1..10
		Note.create!(priority: "c",title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	end
	Note.all.each do |note| 
		expect(note.priority).to eq("c")
	end
  end
  it "check title setting" do
   for i in 1..10
   		Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	end
	Note.all.each do |note| 
		expect(note.title).to eq("This is a test title")
	end
  end
  it "check description setting" do
  	for i in 1..10
   		Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	end
	Note.all.each do |note| 
		expect(note.description).to eq("This is a test description")
	end
  end
  it "check checked setting" do
  	for i in 1..10
		Note.create!(title: "This is a test title", description: "This is a test description",checked: "true",:email => "test@wp.pl")
	end
	Note.all.each do |note| 
		expect(note.checked).to eq("true")
	end
  end
  context "when initialized" do
    subject(:note) { Note.new }

    it "is a new note" do
      expect(note).to be_a_new(Note)
    end

    it "is not a new string" do
      expect(note).not_to be_a_new(String)
    end
  end
  context "when saved" do
    subject(:note) { Note.create(title: "This is a test title", description: "This is a test description",checked: "true",:email => "test@wp.pl") }

    it "is not a new note" do
      expect(note).not_to be_a_new(Note)
    end

    it "is not a new string" do
      expect(note).not_to be_a_new(String)
    end
	
	it "fails validation with no title (using error_on)" do
    	expect(Note.new).to have(1).error_on(:title)
  	end

  	it "fails validation with no title expecting a specific message" do
    	expect(Note.new.errors_on(:title)).to include("can't be blank")
  	end
	
	it "passes validation with a title (using 0)" do
   		expect(Note.new(:title => "test")).to have(0).errors_on(:title)
  	end
	
	it "fails validation with no description (using error_on)" do
    	expect(Note.new).to have(1).error_on(:description)
  	end

  	it "fails validation with no description expecting a specific message" do
    	expect(Note.new.errors_on(:description)).to include("can't be blank")
  	end
	
	it "passes validation with a description (using 0)" do
   		expect(Note.new(:description => "test")).to have(0).errors_on(:description)
  	end
	
	it "fails validation with wrong email (using error_on)" do
    	expect(Note.new(:email => "test")).to have(1).error_on(:email)
  	end

  	it "fails validation with wrong email expecting a specific message" do
    	expect(Note.new(:email => "test").errors_on(:email)).to include("is invalid")
  	end
	
	it "passes validation with a email (using 0)" do
   		expect(Note.new(:email => "test@wp.pl")).to have(0).errors_on(:email)
  	end
	
	let(:note) { mock_model(Note) }

  	it "is valid by default" do
    	expect(note).to be_valid
  	end

  	it "is not a new record by default" do
    	expect(note).not_to be_new_record
  	end

  	it "can be converted to a new record" do
    	expect(note.as_new_record).to be_new_record
  	end
  end
end
