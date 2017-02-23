require 'rails_helper'

RSpec.describe "widgets/index", type: :view do
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

  it "renders a list of widgets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end

  describe "WidgetsHelper" do
    it "calls the helper in index.html.erb" do
      render
      expect(rendered).to match /AAAA index\.html\.erb AAAA/
    end

    it "calls the helper in _partial.html.erb" do
      render
      expect(rendered).to match /AAAA _partial\.html\.erb AAAA/
    end
  end

  describe "SomeOtherHelper" do
    it "calls the helper in index.html.erb" do
      render
      expect(rendered).to match /BBBB index\.html\.erb BBBB/
    end

    it "calls the helper in _partial.html.erb" do
      render
      expect(rendered).to match /BBBB _partial\.html\.erb BBBB/
    end
  end

  describe "SubdirHelperTest::Subdir" do
    it "calls the helper in index.html.erb" do
      render
      expect(rendered).to match /SUBDIR index\.html\.erb SUBDIR/
    end

    it "calls the helper in _partial.html.erb" do
      render
      expect(rendered).to match /SUBDIR _partial\.html\.erb SUBDIR/
    end
  end
end
