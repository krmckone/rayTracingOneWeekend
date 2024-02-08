raytracer: main.cpp
	g++ -std=c++11 -stdlib=libc++ main.cpp -o raytracer
image.ppm: raytracer
	./raytracer >> image.ppm
clean: raytracer
	rm raytracer
clean_image: image.ppm
	rm image.ppm