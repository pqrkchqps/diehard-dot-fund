require_relative '../pluck_translations'
namespace :diehard_fund do
  task :pluck_translations => :environment do
    DiehardFundI18n.pluck_translations({
      en_source_filename: ARGV[1],
      source_key: ARGV[2],
      en_destination_filename: ARGV[3],
      destination_key: ARGV[4]
    })
    exit 0
  end
end
