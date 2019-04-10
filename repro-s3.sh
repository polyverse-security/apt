echo "Copying S3 sources.list over...."
cp sources.list.s3 /etc/apt/sources.list

echo "Reinstalling...."

sudo apt-get update -y && \
sudo apt-get install -y \
    -o Debug::Acquire::http=true \
    -o Debug::pkgAcquire::Worker=true \
    --reinstall $(dpkg --get-selections | awk '{print $1}') \
    &>> /tmp/apt-reinstall


