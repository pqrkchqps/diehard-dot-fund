class ManifestController < ApplicationController
  respond_to :json

  def show
    render json: {
      name: ENV['SITE_NAME'] || 'DiehardFund',
      short_name: ENV['SITE_NAME'] || 'DiehardFund',
      display: 'standalone',
      orientation: 'portrait',
      start_url: '/dashboard',
      background_color: '#ffffff',
      theme_color: '#ffffff',
      icons: [{
        src:   [root_url.chomp('/'), :img, :"logo-square.png"].join('/'),
        sizes: '144x144',
        type:  'image/png'
      }]
    }
  end
end
