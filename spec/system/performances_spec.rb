# frozen_string_literal: true

require 'rails_helper'

# def basic_pass(path)
#   username = ENV['BASIC_AUTH_USER']
#   password = ENV['BASIC_AUTH_PASSWORD']
#   visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
# end

RSpec.describe 'Performances', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @performance = FactoryBot.build(:performance)
  end

  it 'ログインしたユーザーは公演を登録できる' do
    visit root_path
    expect(page).to have_content('ログイン')
    visit new_user_session_path
    fill_in 'メールアドレス', with: @user.email
    fill_in 'パスワード', with: @user.password
    find('input[name="commit"]').click
    expect(current_path).to eq root_path(@user)
    expect(page).to have_content('マイページ')
    visit user_path(@user)
    expect(page).to have_content('公演情報を登録する')
    visit new_performance_path
    attach_file 'item-image', 'app/assets/images/usagi.png'
    fill_in '公演タイトル', with: @performance.title
    fill_in '公演団体名', with: @performance.group
    find('#genre-name').all('option')[2].select_option
    find('#area-name').all('option')[2].select_option
    fill_in 'チケット料金１', with: @performance.price1
    select '2021', from: '開演日'
    find('#performance_start_date_2i').all('option')[12].select_option
    find('#performance_start_date_3i').all('option')[1].select_option
    select '2021', from: '終演日'
    find('#performance_end_date_2i').all('option')[12].select_option
    find('#performance_end_date_3i').all('option')[31].select_option
    fill_in '開演時間詳細', with: 'abc'
    fill_in 'チケット購入先', with: @performance.url
    expect  do
      find('input[name="commit"]').click
    end.to change { Performance.count }.by(1)
    expect(current_path).to eq user_path(@user)
    expect(page).to have_content @performance.title
  end
end
