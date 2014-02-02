require 'spec_helper'

describe "inmuebles/show" do
  before(:each) do
    @inmueble = assign(:inmueble, stub_model(Inmueble))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
