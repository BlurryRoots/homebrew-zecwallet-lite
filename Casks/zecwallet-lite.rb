cask 'zecwallet-lite' do
  version '1.1.12'
  sha256 '55b9198dd4ea07b5a2ba17a6a9c242974e8c8c15456fdb547426355b9c3eda42'

  # github.com/adityapk00/zecwallet-lite/ was verified as official when first introduced to the cask
  url "https://github.com/adityapk00/zecwallet-lite/releases/download/v#{version}/Zecwallet.Lite-#{version}.dmg"
  appcast 'https://github.com/adityapk00/zecwallet-lite/releases.atom'
  name 'Zecwallet Lite'
  homepage 'https://www.zecwallet.co/'

  app 'Zecwallet Lite.app'

  zap trash: [
               '~/Library/Preferences/co.zecwallet.lite',
               '~/Library/Preferences/co~/Libraryzecwallet~/Librarylite~/Libraryplist',
               '~/Library/Preferences/co.zecwallet.lite.plist',
               '~/Library/Application Support/zecwallet',
               '~/Library/Application Support/Zecwallet Lite',
               '~/Library/Application Support/Zcash/zecwallet-light-wallet.dat',
               '~/Library/Application Support/Zcash/zecwallet-light-wallet.debug.dat',
               '~/Library/Application Support/Zcash',
               '~/Library/Logs/Zecwallet Lite',
               '~/Library/Saved Application State/co~/Libraryzecwallet~/Librarylite~/LibrarysavedState',
               '~/Library/Saved Application State/co.zecwallet.lite.savedState',
             ]
end
