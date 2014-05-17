require "spec_helper"

describe "notes/index" do
   it "displays all the notes" do
    assign(:notes, [
      stub_model(Note, :title => "one", :description => "This is a test description"),
      stub_model(Note, :title => "two", :description => "This is a test description")
    ])
	view.stub(:will_paginate)
    render
	expect(rendered).to have_content("one")
    expect(rendered).to have_content("two")
  end
end

describe "controller.request.path_parameters" do
  it "matches the Rails environment by using symbols for keys" do
    [:controller, :action].each { |k| expect(controller.request.path_parameters.keys).to include(k) }
  end
end