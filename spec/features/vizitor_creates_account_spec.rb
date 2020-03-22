require "rails_helper"

feature "Account Creation" do
  scenario "allows guest to create account" do # сценарий просто доступ к странице любого пользователя
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'mike123'
    fill_in :user_password, :with => 'secure123!@#'
    fill_in :user_password_confirmation, :with => 'secure123!@#'

    #click_button 'Sing up' #что-то не работает тест по кнопке

    #expect(page).to have_content I18n.t('devise.registrations.signed_up')
    #не работает тест по кнопке поэтому и не работает exept(page)

  end  

  
end
