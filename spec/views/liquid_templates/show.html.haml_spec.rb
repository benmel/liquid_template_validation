require 'rails_helper'

RSpec.describe "liquid_templates/show", type: :view do
  before(:each) do
    @liquid_template = assign(:liquid_template, LiquidTemplate.create!(
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
