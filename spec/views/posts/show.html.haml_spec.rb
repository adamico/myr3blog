require 'spec_helper'

describe "posts/show.html.haml" do
  before(:each) do
    assign(:post, @post = stub_model(Post,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    response.should contain("MyString")
    response.should contain("MyText")
  end
end
