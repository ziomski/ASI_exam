require "spec_helper"

describe ApplicationHelper do
  describe "#page_title" do
    it "returns the default title" do
      expect(helper.page_title).to eq("MyNotes")
    end
  end
end