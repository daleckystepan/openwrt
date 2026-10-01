PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"
PATH="/opt/homebrew/opt/gettext/bin:$PATH"
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
export PATH


./scripts/feeds update -a
./scripts/feeds install -a

gmake defconfig
gmake -j10 world


# gmake -j1 V=s  world

# gmake target/linux/clean
# gmake package/libs/ncurses/clean
# gmake package/libs/ncurses/compile V=s

# gmake tools/gnulib/compile

# find . -name ".DS_Store" -type f -delete

# D=/sys/bus/mdio_bus/devices/d0032004.mdio-mii:10; [ -L "$D/driver" ] || { echo "device is not bound"; exit 1; }; R=$(readlink -f "$D/driver"); echo "${D##*/}" > "$R/unbind" && echo "${D##*/}" > "$R/bind"
