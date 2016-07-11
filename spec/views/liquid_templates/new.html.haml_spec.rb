require 'rails_helper'

RSpec.describe "liquid_templates/new", type: :view do
  before(:each) do
    assign(:liquid_template, LiquidTemplate.new(
      :content => "MyText"
    ))
  end

  it "renders new liquid_template form" do
    render

    assert_select "form[action=?][method=?]", liquid_templates_path, "post" do

      assert_select "textarea#liquid_template_content[name=?]", "liquid_template[content]"
    end
  end
end
