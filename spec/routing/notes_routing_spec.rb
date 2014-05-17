require "spec_helper"

describe "routes for Notes" do
  it "routes /notes to the notes controller" do
    expect(:get => "/notes").
      to route_to(:controller => "notes", :action => "index")
  end
  
  it "routes / to the notes controller" do
    expect(:get => "/").
      to route_to(:controller => "notes", :action => "index")
  end
  
  it "routes /notes/new to the notes controller" do
    expect(:get => "/notes/new").
      to route_to(:controller => "notes", :action => "new")
  end
  
  it "routes /delchecked to the notes controller" do
    expect(:get => "/delchecked").
      to route_to(:controller => "notes", :action => "delchecked")
  end
  
  it "routes /notes/:id/edit to the notes#edit action" do
	expect(:get => "/notes/1/edit").to route_to("notes#edit", :id => "1")
  end
  
  it "routes /notes/:id/check to the notes#check action" do
	expect(:get => "/notes/1/check").to route_to("notes#check", :id => "1")
  end
  
  it "routes /notes/:id/uncheck to the notes#uncheck action" do
	expect(:get => "/notes/1/uncheck").to route_to("notes#uncheck", :id => "1")
  end
  
  it "routes delete /notes/:id to the notes#destroy action" do
	expect(:delete => "/notes/1").to route_to("notes#destroy", :id => "1")
  end
  
  it "routes patch /notes/:id to the notes#update action" do
	expect(:patch => "/notes/1").to route_to("notes#update", :id => "1")
  end
  
  it "routes post /notes to the notes#create action" do
	expect(:post => "/notes").to route_to("notes#create")
  end
end