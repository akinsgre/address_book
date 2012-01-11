require 'spec_helper'

describe "tests/edit" do
  before(:each) do
    @test = assign(:test, stub_model(Test,
      :widget => "MyString"
    ))
  end

  it "renders the edit test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tests_path(@test), :method => "post" do
      assert_select "input#test_widget", :name => "test[widget]"
    end
  end
end
