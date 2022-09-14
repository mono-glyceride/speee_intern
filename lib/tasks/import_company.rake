require 'csv'

# rubocop:disable Metrics/BlockLength
desc '企業データをインポート'
task import_company: :environment do
  CSV.foreach('db/csv_data/company_and_branch.csv', headers: true) do |row|
    # for branch table
    branch_name = row['店舗名']
    zip_code = row['郵便番号']
    phone_number = row['電話番号']
    fax_number = row['FAX番号']
    business_hours = row['営業時間']
    closed_day = row['定休日']
    introduction = row['紹介文']
    after_address = row['以降住所']
    csv_city_name = row['市区町村']
    city_object = City.find_by(name: csv_city_name)
    city_id = city_object.id

    # for company table
    csv_company_name = row['企業名']
    puts "import done企業名 = #{csv_company_name}"
    logo_url = row['ロゴURL']
    catch_copy = row['キャッチコピー']

    # for available area table
    available_area = row["査定依頼可能エリア"]
    available_area.each do |line|
      puts line
    end
    byebug
    # city_name csv_company_name のデータが無ければ、company_name: csv_company_name がcreateされる。
    ActiveRecord::Base.transaction do
      company_i = Company.find_or_create_by!(name: csv_company_name) do |company|
        company.logo_url = logo_url
        company.catch_copy = catch_copy
      end

      Branch.create!(
        name: branch_name,
        zip_code:,
        phone_number:,
        fax_number:,
        business_hours:,
        closed_day:,
        introduction:,
        after_address:,
        company_id: company_i.id,
        city_id:
      )
    end
  end
rescue ActiveRecord::RecordInvalid => e
  logger.error e.message
  logger.error e.backtrace.join("\n")
ensure
  puts '企業データのインポート完了!'
end
# rubocop:enable Metrics/BlockLength
