#! /bin/bash -v

cpan Finance::BeanCounter

# edit the setup script
diff setup_beancounter ~/perl5/bin/setup_beancounter # our version
cp setup_beancounter ~/perl5/bin/setup_beancounter # our version
~/perl5/bin/setup_beancounter
