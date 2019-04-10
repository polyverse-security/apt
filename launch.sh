docker build -t apt-builder .
docker run --rm -it -v $PWD:/apt apt-builder 
