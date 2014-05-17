require "spec_helper"

feature "Note management" do
  scenario "User creates a new note" do
    visit "/notes/new"

    fill_in "Title", :with => "My Note"
	fill_in "Description", :with => "Test Test Test Test"
	
    click_button "Create Note"

	expect(page).to have_text("My Note")
    expect(page).to have_text("Test Test Test Test")
  end
  
  scenario "User edit a note" do
   	@note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	
	visit edit_note_path(@note)
	fill_in "Description", :with => "Editing Test"
	click_button "Update Note"
    expect(page).to have_text("Editing Test")
  end
  
   scenario "User delete a note" do
  	@note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	
	Capybara.current_session.driver.delete note_path(@note)
	visit "/"
    expect(page).not_to have_text("Test Test Test Test")
  end
  
  scenario "User set note as check" do
    @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	
	visit check_note_path(@note)
    Note.all.each do |note| 
		expect(note.checked).to eq("true")
	end
  end
  
  scenario "User set note as uncheck" do
    @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	
	visit check_note_path(@note)
	visit uncheck_note_path(@note)
    Note.all.each do |note| 
		expect(note.checked).to eq("false")
	end
  end
  
  scenario "User delete done notes" do
    @note = Note.create!(title: "This is a test title", description: "Test Test Test Test",:email => "test@wp.pl")
	
	visit "/"
	expect(page).to have_text("Test Test Test Test")
	
	visit check_note_path(@note)
	visit "/delchecked"
   	
	expect(page).not_to have_text("Test Test Test Test")
  end
  
  scenario "Search test" do
    Note.create!(title: "This is a test1", description: "This is a test description",:email => "test@wp.pl")
	Note.create!(title: "This is a test2", description: "This is a test description",:email => "test@wp.pl")
	
	visit "/"
	fill_in "search", :with => "test1"
   	click_button "Search"
	
	expect(page).not_to have_text("test2")
	expect(page).to have_text("test1")
  end
  
  scenario "Pagination test" do
  	for i in 1..7
   		Note.create!(title: "This is a test title#{i}",  description: "This is a test description",:email => "test@wp.pl")
	end
	
	visit "/notes?page=2"
	
	expect(page).not_to have_text("title6")
	expect(page).to have_text("title7")
  end
  
  scenario "GET index page_title" do
      visit "/"
      expect(page).to have_text("MyNotes")
  end
  
  scenario "GET new page_title" do
      visit "/notes/new"
      expect(page).to have_text("MyNotes")
  end
  
  scenario "GET edit page_title" do
      @note = Note.create!(title: "This is a test title", description: "This is a test description",:email => "test@wp.pl")
	
	  visit edit_note_path(@note)
      expect(page).to have_text("MyNotes")
  end
end
