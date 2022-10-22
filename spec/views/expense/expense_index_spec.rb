require 'rails_helper'

RSpec.feature 'Group index', type: :feature do
  before(:each) do
    visit new_user_session_path

    @user = User.create(name: 'Rich', email: '123@mail.com', password: 'password')
    @group = Group.create(name: 'Travel', icon: 'https://pxhere.com/en/photo/1569711', user_id: @user.id)
    @expense = Expense.create(name: 'Paris', amount: 1000.0, user_id: @user.id, group_id: @group.id)
    fill_in 'Email', with: 'amy@mail.com'
    fill_in 'Password', with: 'password'

    click_button 'Log in'
    visit group_expenses_path(@group.id)
  end
end
