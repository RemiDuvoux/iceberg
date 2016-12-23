require 'csv'
csv_options = { col_sep: ';', quote_char: '"', headers: :first_row }
filepath ||= "#{Rails.root}/db/vc_db_seed_libre_50premiers.csv"

CSV.foreach(filepath, csv_options) do |row|
  new_vc = VcFirm.create!(name: row[0], creation_date: row[1], vc_type: row[2], city: row[3], country: row[4], office_address: row[5], description: row[6], website: row[7], twitter: row[10], facebook: row[11], seed_stage: row[12], series_a: row[13], series_b: row[14], series_c: row[15], growth_stage: row[16], category: row[17])
  new_vc.remote_logo_url = row[9]
  new_vc.save!
end

csv_options = { col_sep: ';', quote_char: '"'}
filepath_startups ||= "#{Rails.root}/db/rounds_seed_50_first.csv"
CSV.foreach(filepath_startups, csv_options) do |row|
  if Startup.find_by(name: row[1]).nil?
    new_startup = Startup.new(name: row[1], sector: row[2])
  else
    new_startup = Startup.find_by(name: row[1])
  end
  new_round = Round.new
  new_round.startup = new_startup
  new_round.vc_firm = VcFirm.find_by(name: row[0])
  new_round.save!
  new_startup.save!
end
