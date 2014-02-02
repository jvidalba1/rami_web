require 'spec_helper'

describe "inmuebles/edit" do
  before(:each) do
    @inmueble = assign(:inmueble, stub_model(Inmueble))
  end

  it "renders the edit inmueble form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inmueble_path(@inmueble), "post" do
    end
  end
end
