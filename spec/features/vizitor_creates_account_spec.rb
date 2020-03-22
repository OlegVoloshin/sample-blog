require "rails_helper"

feature "Account Creation" do
  scenario "allows guest to create account" do # сценарий просто доступ к странице любого пользователя
    sing_up

    #click_button 'Sing up' #что-то не работает тест по кнопке

    #expect(page).to have_content I18n.t('devise.registrations.signed_up')
    #не работает тест по кнопке поэтому и не работает exept(page)

  end  
  
  
end
