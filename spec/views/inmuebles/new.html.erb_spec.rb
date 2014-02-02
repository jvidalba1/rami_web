require 'spec_helper'

describe "inmuebles/new" do
  before(:each) do
    assign(:inmueble, stub_model(Inmueble).as_new_record)
  end

  it "renders new inmueble form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inmuebles_path, "post" do
    end
  end
end
