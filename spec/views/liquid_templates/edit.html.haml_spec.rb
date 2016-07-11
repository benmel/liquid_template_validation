require 'rails_helper'

RSpec.describe "liquid_templates/edit", type: :view do
  before(:each) do
    @liquid_template = assign(:liquid_template, LiquidTemplate.create!(
      :content => "MyText"
    ))
  end

  it "renders the edit liquid_template form" do
    render

    assert_select "form[action=?][method=?]", liquid_template_path(@liquid_template), "post" do

      assert_select "textarea#liquid_template_content[name=?]", "liquid_template[content]"
    end
  end
end
