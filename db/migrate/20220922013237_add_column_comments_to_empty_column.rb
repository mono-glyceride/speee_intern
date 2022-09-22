class AddColumnCommentsToEmptyColumn < ActiveRecord::Migration[7.0]
  def change                                                    
    change_column_comment(:available_areas, :id, from: nil, to: '査定可能エリアid')                                                                   
    change_column_comment(:available_areas, :city_id, from: nil, to: '市区町村id')                                                               
    change_column_comment(:available_areas, :branch_id, from: nil, to: '店舗id')                                                           
    change_column_comment(:branches, :id, from: nil, to: '店舗id')                                                                           
    change_column_comment(:branches, :name, from: nil, to: '店舗名')                                                                         
    change_column_comment(:branches, :zip_code, from: nil, to: '郵便番号')                                                                     
    change_column_comment(:branches, :phone_number, from: nil, to: '電話番号')                                                                 
    change_column_comment(:branches, :fax_number, from: nil, to: 'FAX番号')                                                                   
    change_column_comment(:branches, :business_hours, from: nil, to: '営業時間')
    change_column_comment(:branches, :closed_day, from: nil, to: '定休日')
    change_column_comment(:branches, :introduction, from: nil, to: '紹介文')
    change_column_comment(:branches, :after_address, from: nil, to: '以降住所')
    change_column_comment(:branches, :company_id, from: nil, to: '企業id')
    change_column_comment(:branches, :city_id, from: nil, to: '市区町村id')
    change_column_comment(:branches, :ieul_branch_id, from: nil, to: 'ieul_店舗id')
    change_column_comment(:cities, :id, from: nil, to: '市区町村id')
    change_column_comment(:cities, :name, from: nil, to: '市区町村名')
    change_column_comment(:cities, :prefecture_id, from: nil, to: '都道府県id')
    change_column_comment(:companies, :id, from: nil, to: '企業id')
    change_column_comment(:companies, :name, from: nil, to: '企業名')
    change_column_comment(:companies, :logo_url, from: nil, to: 'ロゴURL')
    change_column_comment(:companies, :catch_copy, from: nil, to: 'キャッチコピー')
    change_column_comment(:companies, :ieul_company_id, from: nil, to: 'ieul_企業id')
    change_column_comment(:prefectures, :id, from: nil, to: '都道府県id')
    change_column_comment(:prefectures, :name, from: nil, to: '都道府県名')
    change_column_comment(:property_types, :id, from: nil, to: '物件種別id')
    change_column_comment(:property_types, :name, from: nil, to: '物件種別名')
    change_column_comment(:reviews, :id, from: nil, to: '口コミid')
    change_column_comment(:reviews, :name, from: nil, to: '名前')
    change_column_comment(:reviews, :gender, from: nil, to: '性別')
    change_column_comment(:reviews, :age, from: nil, to: '年齢')
    change_column_comment(:reviews, :sell_count, from: nil, to: '売却回数')
    change_column_comment(:reviews, :considering_selling_at, from: nil, to: '売却検討時期')
    change_column_comment(:reviews, :assessment_requested_at, from: nil, to: '査定依頼時期')
    change_column_comment(:reviews, :sales_started_at, from: nil, to: '売出時期')
    change_column_comment(:reviews, :sold_at, from: nil, to: '売却時期')
    change_column_comment(:reviews, :delivered_at, from: nil, to: '引渡時期')
    change_column_comment(:reviews, :assessment_price, from: nil, to: '査定価格')
    change_column_comment(:reviews, :sold_price, from: nil, to: '販売価格')
    change_column_comment(:reviews, :is_discount, from: nil, to: '値下げしたかどうか')
    change_column_comment(:reviews, :discount_date_type_after_sales_started, from: nil, to: '売り出してから何ヶ月後に値下げしたか')
    change_column_comment(:reviews, :discount_price, from: nil, to: '値下げ価格')
    change_column_comment(:reviews, :brokerage_contract_type, from: nil, to: '媒介契約の形態')
    change_column_comment(:reviews, :headline, from: nil, to: '見出し')
    change_column_comment(:reviews, :reason_for_sale, from: nil, to: '売却理由')
    change_column_comment(:reviews, :comment_anxiety, from: nil, to: '売却時に不安だったこと')
    change_column_comment(:reviews, :comment_reason_to_decide, from: nil, to: 'この会社に決めた理由')
    change_column_comment(:reviews, :satisfaction_level, from: nil, to: '不動産会社の対応満足度')
    change_column_comment(:reviews, :comment_reason_for_satisfaction, from: nil, to: '不動産会社の対応満足度の理由')
    change_column_comment(:reviews, :advice, from: nil, to: '今後売却する人へのアドバイス')
    change_column_comment(:reviews, :comment_improvement, from: nil, to: '不動産会社に改善してほしい点')
    change_column_comment(:reviews, :property_type_id, from: nil, to: '物件種別id')
    change_column_comment(:reviews, :city_id, from: nil, to: '市区町村id')
    change_column_comment(:reviews, :branch_id, from: nil, to: '店舗id')
    change_column_comment(:reviews, :contract_price, from: nil, to: '成約価格')
    change_column_comment(:reviews, :review_digest, from: nil, to: '口コミダイジェスト')
  end
end