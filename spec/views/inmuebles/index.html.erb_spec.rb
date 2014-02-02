require 'spec_helper'

describe "inmuebles/index" do
  before(:each) do
    assign(:inmuebles, [
      stub_model(Inmueble),
      stub_model(Inmueble)
    ])
  end

  it "renders a list of inmuebles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
