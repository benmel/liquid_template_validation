require 'rails_helper'

RSpec.describe "liquid_templates/index", type: :view do
  before(:each) do
    assign(:liquid_templates, [
      LiquidTemplate.create!(
        :content => "MyText"
      ),
      LiquidTemplate.create!(
        :content => "MyText"
      )
    ])
  end

  it "renders a list of liquid_templates" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
