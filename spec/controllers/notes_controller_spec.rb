require 'spec_helper'

describe NotesController do
   describe "GET index" do
   	it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
   
    it "assigns @notes" do
      note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
      get :index
      expect(assigns(:notes)).to eq([note])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  describe "GET new" do
  	it "responds successfully with an HTTP 200 status code" do
      get :new
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
	
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end
  describe "GET edit" do
  	it "responds successfully with an HTTP 200 status code" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	  get :edit, :id => @note.id
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  
    it "renders the edit template" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	  get :edit, :id => @note.id
      expect(response).to render_template("edit")
    end
  end
  
  describe "GET check" do
  	it "responds successfully with an HTTP 200 status code" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	  get :check, :id => @note.id
      expect(response.status).to eq(302)
    end
  
    it "renders the edit template" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	  get :check, :id => @note.id
      expect(response).to redirect_to("/notes")
    end
  end
  
  describe "GET uncheck" do
  	it "responds successfully with an HTTP 200 status code" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	  get :uncheck, :id => @note.id
      expect(response.status).to eq(302)
    end
  
    it "renders the edit template" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	  get :uncheck, :id => @note.id
      expect(response).to redirect_to("/notes")
    end
  end
  
  describe "GET delchecked" do
    it "delete done" do
      for i in 1..10
	  	Note.create!(title: "This is a test title", description: "This is a test description",checked: "true",:email => "test@wp.pl")
	  end
      get :delchecked
      expect(Note).to have(0).records
    end
  end
end
