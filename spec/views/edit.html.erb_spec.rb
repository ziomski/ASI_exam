require "spec_helper"

describe "notes/edit" do
   it "displays form for new note" do
	@note = Note.new
	render
	expect(rendered).to have_selector("form")
  end
   it "infers the controller path" do
    expect(controller.request.path_parameters[:controller]).to eq("notes")
    expect(controller.controller_path).to eq("notes")
  end
  it "infers the controller path" do
    expect(controller.request.path_parameters[:action]).to eq("edit")
  end
end