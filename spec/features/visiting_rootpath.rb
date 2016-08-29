require 'rails_helper'
require 'capybara/rails'
feature 'Visiting Root' do
  it "displays repl button" do
    visit root_path
    find_link('repl')
  end
  it "on repl button click reroutes to repl_path" do
    visit root_path
    find_link('repl').click
    expect(current_path).to eq(repl_path)
  end
  feature 'Visiting Repl Page' do
    it "displays a repl where you can run code" do
      visit repl_path
      page.has_content?('repl')
    end




  end
end
