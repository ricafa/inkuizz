require 'rails_helper'

RSpec.describe "pages/finish.html.erb", type: :view do
  it 'show finish page' do
    #assign(:user, User.create(question_number = 6))
    render
    expect(rendered).to match "That's all!"
  end
end
