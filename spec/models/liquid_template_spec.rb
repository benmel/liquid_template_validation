require 'rails_helper'

RSpec.describe LiquidTemplate, type: :model do
  describe 'Liquid validation' do
    it 'allows valid content' do
      liquid_template_valid = LiquidTemplate.new(content: '{% if products.size > 0 %}Hello{% endif %}')
      liquid_template_valid.valid?
      expect(liquid_template_valid).to be_valid
    end

    it 'adds an error for invalid content' do
      liquid_template_invalid = LiquidTemplate.new(content: '{{ name')
      liquid_template_invalid.valid?
      expect(liquid_template_invalid).not_to be_valid
      expect(liquid_template_invalid.errors).to have_key(:content)
    end
  end
end
