class LiquidTemplate < ApplicationRecord
  validates :content, presence: true
  validate :syntax_errors

  private
  def syntax_errors
    Liquid::Template.parse(self.content)
  rescue Liquid::SyntaxError => e
    errors.add(:content, e.message)
  end
end
