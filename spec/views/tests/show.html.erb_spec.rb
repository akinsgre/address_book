require 'spec_helper'

describe "tests/show" do
  before(:each) do
    @test = assign(:test, stub_model(Test,
      :widget => "Widget"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Widget/)
  end
end
