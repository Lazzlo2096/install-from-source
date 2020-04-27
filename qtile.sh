# Official Instructions:
# https://qtile.readthedocs.io/en/latest/manual/install/index.html#installing-from-source
# =============================


DIR_WITH_SRC=~/mylocal/src

#-----
OFFICIAL_REPO=git://github.com/qtile/qtile.git
MY_REPO=

INSTALLING_REPO=OFFICIAL_REPO
#-----

# Dependencyes:
pip install xcffib
pip install --no-cache-dir cairocffi
sudo apt-get install libpangocairo-1.0-0

# Main:
cd $DIR_WITH_SRC
git clone git://github.com/qtile/qtile.git
cd qtile
pip install .

#------------------------------------------------

# Additional configs (MY reduction! from instruction):
cat > /usr/share/xsessions/qtile.desktop <<EOF
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Exec=$(whereis qtile)
Type=Application
Keywords=wm;tiling
EOF