.PHONY: build

build:
	GOARCH=wasm GOOS=js go build -o build/web/app.wasm
	go build

run: build
	./highlight
