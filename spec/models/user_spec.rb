require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it '全ての登録要素が存在すれば登録できること' do
      expect(@user).to be_valid
    end

    it 'nicknameが空では登録できないこと' do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include('ユーザーネームを入力してください')
    end

    it 'emailが空では登録できないこと' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include('メールアドレスを入力してください')
    end

    it 'emailに@が入っていなければ登録できないこと' do
      @user.email = '1111iiaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('メールアドレスは不正な値です')
    end

    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      first_user = FactoryBot.build(:user, email: @user.email)
      first_user.valid?
      expect(first_user.errors.full_messages).to include('メールアドレスはすでに存在します')
    end

    it 'passwordが空では登録できないこと' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワードを入力してください')
    end
    it 'passwordが存在してもpassword_confirmationが空では登録できないこと' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
    end

    it 'passwordが5文字以下であれば登録できないこと' do
      @user.password = '12345'
      @user.password_confirmation = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
    end

    it 'passwordが存在しても半角英数字混合でなければ登録できないこと' do
      @user.password = 'あいうえお'
      @user.valid?
      expect(@user.errors.full_messages).to include('パスワードは不正な値です')
    end
  end
end
