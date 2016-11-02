mkdir -p files

function download {
	url=$1

	f_name=${2:-$(basename $url)}

	[ ! -f $f_name ] && wget $url ${2:+-o $2}
}

(
cd files
download https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2
download http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v12.x.x/nRF5_SDK_12.1.0_0d23e2a.zip
download http://developer.nordicsemi.com/nRF5_SDK/nRF5_SDK_v12.x.x/nRF5_SDK_12.1.0_offline_doc.zip
download https://www.nordicsemi.com/eng/nordic/download_resource/51392/15/78652372 nRF5x-Command-Line-Tools_9_0_0_Linux-x86_64.tar
)