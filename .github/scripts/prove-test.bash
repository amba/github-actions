printenv
git config --global user.name 'github-actions'
cd /tmp
wget https://github.com/lab-measurement/Lab-Measurement-Homepage/raw/master/gnuplot-5.2.4.tar.gz
tar -xf gnuplot-$gp_version.tar.gz
cd gnuplot-$gp_version
./configure --prefix=$HOME/local
make
make install
export PATH="$HOME/local/bin:$PATH"
gnuplot --version
# Sometimes Alien::Gnuplot does not find the installed gnuplot
# (but problem not reproducible, see
# https://travis-ci.org/lab-measurement/Lab-Measurement/jobs/378743671
export GNUPLOT_BINARY=$HOME/local/bin/gnuplot

