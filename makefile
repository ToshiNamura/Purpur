
build-1.20.2-2095:
	docker build . -f ./Purpur-1.20.2-2095/dockerfile -t microclock64/purpur:1.20.2-2095

run-1.20.2-2095:
	docker run -it --name purpur-server -p 25565:25565 -v purpur-data:/purpur microclock64/purpur:1.20.2-2095

1.20.2-2095: build-1.20.2-2095 run-1.20.2-2095

build-1.19.4-1985:
	docker build . -f ./Purpur-1.19.4-1985/dockerfile -t microclock64/purpur:1.19.4-1985

run-1.19.4-1985:
	docker run -it --name purpur-server -p 25565:25565 -v purpur-data:/purpur microclock64/purpur:1.19.4-1985

1.19.4-1985: build-1.19.4-1985 run-1.19.4-1985