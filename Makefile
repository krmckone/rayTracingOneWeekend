image.ppm: raytracer clean_image
	./raytracer >> image.ppm
raytracer: main.cpp *.h
	g++ -std=c++11 -stdlib=libc++ main.cpp -o raytracer
clean: raytracer
	rm raytracer
clean_image:
	rm -f image.ppm