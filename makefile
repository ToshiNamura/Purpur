
# Purpur-1.20.2-2095

build-1.20.2-2095:
	docker build . -f ./Purpur-1.20.2-2095/dockerfile -t microclock64/purpur:1.20.2-2095

run-1.20.2-2095:
	docker run -d --name purpur-1-20-2-2095-server -p 25566:25565 -v purpur-1-20-2-2095-data:/purpur microclock64/purpur:1.20.2-2095

1.20.2-2095: build-1.20.2-2095 run-1.20.2-2095

# Purpur-1.19.4-1985

build-1.19.4-1985:
	docker build . -f ./Purpur-1.19.4-1985/dockerfile -t microclock64/purpur:1.19.4-1985

run-1.19.4-1985:
	docker run -d --name purpur-1-19-4-1985-server -p 25567:25565 -v purpur-1-19-4-1985-data:/purpur microclock64/purpur:1.19.4-1985

1.19.4-1985: build-1.19.4-1985 run-1.19.4-1985

# Purpur-1.18.2-1632

build-1.18.2-1632:
	docker build . -f ./Purpur-1.18.2-1632/dockerfile -t microclock64/purpur:1.18.2-1632

run-1.18.2-1632:
	docker run -d --name purpur-1-18-2-1632-server -p 25568:25565 -v purpur-1-18-2-1632-data:/purpur microclock64/purpur:1.18.2-1632

1.18.2-1632: build-1.18.2-1632 run-1.18.2-1632

# Purpur-1.17.1-1428

build-1.17.1-1428:
	docker build . -f ./Purpur-1.17.1-1428/dockerfile -t microclock64/purpur:1.17.1-1428

run-1.17.1-1428:
	docker run -d --name purpur-1-17-1-1428-server -p 25569:25565 -v purpur-1-17-1-1428-data:/purpur microclock64/purpur:1.17.1-1428

1.17.1-1428: build-1.17.1-1428 run-1.17.1-1428

# Global::

build-all: build-1.17.1-1428 build-1.18.2-1632 build-1.19.4-1985 build-1.20.2-2095

set-latest:
	docker tag microclock64/purpur:1.17.1-1428 microclock64/purpur:1.17.1
	docker tag microclock64/purpur:1.18.2-1632 microclock64/purpur:1.18.2
	docker tag microclock64/purpur:1.19.4-1985 microclock64/purpur:1.19.4
	docker tag microclock64/purpur:1.20.2-2095 microclock64/purpur:1.20.2

all: build-all set-latest