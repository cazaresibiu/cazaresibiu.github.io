run:
	hugo server -D --disableFastRender --bind "::" -b "http://192.168.0.208:1313"

prod:
	HUGO_ENV=production hugo server -D --disableFastRender --bind "::" -b "http://192.168.0.208:1313"

build-debug:
	hugo -D

build: 
	HUGO_ENV=production hugo --minify
	python -m http.server --directory public