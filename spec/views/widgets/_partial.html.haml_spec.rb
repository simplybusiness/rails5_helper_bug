require 'rails_helper'

RSpec.describe "widgets/_partial", type: :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(
        :name => "Name"
      ),
      Widget.create!(
        :name => "Name"
      )
    ])
  end

  describe "WidgetsHelper" do
    it "calls the helper in _partial.html.erb" do
      render
      expect(rendered).to match /AAAA _partial\.html\.erb AAAA/
    end
  end

  describe "SomeOtherHelper" do
    it "calls the helpber in _partial.html.erb" do
      render
      expect(rendered).to match /BBBB _partial\.html\.erb BBBB/
    end
  end
end
