export CURRENT_PATH=$(dirname $0)
export LIBTORRENT_PATH="${CURRENT_PATH}/../lib/libtorrent"

cd $LIBTORRENT_PATH

mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=14 -G Ninja .. || exit 1
ninja || exit 2
ninja install