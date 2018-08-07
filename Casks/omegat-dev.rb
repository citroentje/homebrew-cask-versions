cask 'omegat-dev' do
  version '4.1.5'
  sha256 'e7f6dbe8633fbbcb913c1f13103a4aab63b31b43e5a7a2bfea245c101541c551'

  # downloads.sourceforge.net/omegat was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/omegat/OmegaT%20-%20Latest/OmegaT%20#{version}/OmegaT_#{version}_Beta_Mac_Signed.zip"
  appcast 'https://sourceforge.net/projects/omegat/rss?path=/OmegaT%20-%20Latest'
  name 'OmegaT Development'
  homepage 'https://omegat.org/'

  app "OmegaT_#{version}_Beta_Mac_Signed/OmegaT.app"

  caveats do
    depends_on_java '8+'
  end
end
