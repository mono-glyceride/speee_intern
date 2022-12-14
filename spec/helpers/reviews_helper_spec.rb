require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.describe ReviewsHelper, type: :helper do
  describe '#format_price' do
    it '10,000を渡すと1万円が返る' do
      expect(helper.format_price(10_000)).to eq '1万円'
    end

    it '10,000,000を渡すと1,000万円が返る' do
      expect(helper.format_price(10_000_000)).to eq '1,000万円'
    end
  end

  describe '#format_date' do
    it '2022-01-01を渡すと2022年1月が返る' do
      date = Time.zone.parse('2022-01-01')
      expect(helper.format_date(date)).to eq '2022年1月'
    end

    it '2022-11-11を渡すと2022年11月が返る' do
      date = Time.zone.parse('2022-11-11')
      expect(helper.format_date(date)).to eq '2022年11月'
    end
  end

  describe '#months_after_the_sale' do
    it '2022-03-15と2022-04-14を渡すと"売出しから約0か月"が返る' do
      date_before = Time.zone.parse('2022-03-15')
      date_after = Time.zone.parse('2022-04-14')
      expect(helper.months_after_the_sale(date_before, date_after)).to eq '売出しから約0か月'
    end

    it '2022-03-15と2022-04-15を渡すと"売出しから約1か月"が返る' do
      date_before = Time.zone.parse('2022-03-15')
      date_after = Time.zone.parse('2022-04-15')
      expect(helper.months_after_the_sale(date_before, date_after)).to eq '売出しから約1か月'
    end

    it '2022-03-15と2022-05-14を渡すと"売出しから約1か月"が返る' do
      date_before = Time.zone.parse('2022-03-15')
      date_after = Time.zone.parse('2022-05-14')
      expect(helper.months_after_the_sale(date_before, date_after)).to eq '売出しから約1か月'
    end
  end
end
# rubocop:enable Metrics/BlockLength
