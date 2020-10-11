require 'rails_helper'

RSpec.describe Performance, type: :model do
  describe '#create' do
    before do
      @performance = FactoryBot.build(:performance)
      @performance.image = fixture_file_upload('app/assets/images/usagi.png')
    end

    it '全ての登録要素が存在すれば登録できること' do
      expect(@performance).to be_valid
    end

     it '画像が空では登録できないこと' do
      @performance.image = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("公演画像を入力してください")
     end

     it 'titleが空では登録できないこと' do
      @performance.title = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("公演名を入力してください")
     end

     it 'groupが空では登録できないこと' do
      @performance.group = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("団体名を入力してください")
     end

     it 'genre_idが空では登録できないこと' do
      @performance.genre_id = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("ジャンルを入力してください")
     end

     it 'area_idが空では登録できないこと' do
      @performance.area_id = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("エリアを入力してください")
     end

     it 'start_dateが空では登録できないこと' do
      @performance.start_date = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("開演日を入力してください")
     end

     it 'end_dateが空では登録できないこと' do
      @performance.end_date = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("終演日を入力してください")
     end

     it 'start_atが空では登録できないこと' do
      @performance.start_at = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("開演時間の詳細を入力してください")
     end

     it 'urlが空では登録できないこと' do
      @performance.url = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("購入手続き先を入力してください")
     end

     it 'price1が空では登録できないこと' do
      @performance.price1 = nil
      @performance.valid?
      expect(@performance.errors.full_messages).to include("チケット料金を入力してください")
    end

    it 'price1は半角数字でなければ登録できないこと' do
      @performance.price1 = "１あア亜Aa" 
      @performance.valid?
      expect(@performance.errors.full_messages).to include()
    end

  end
end
