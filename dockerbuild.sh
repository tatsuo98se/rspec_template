cname=rspec_template
docker build ./ -t $cname

docker run -ti --rm --name $cname -v `pwd`:/work/ $cname