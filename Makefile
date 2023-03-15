all: linux macos windows

linux:
	mkdir -p ./build
	godot --headless --export-release 'Linux/X11' ./build/test-linux-x86_64.zip

macos:
	godot --headless --export-release 'macOS' ./build/test-macos-x86_64.zip

windows:
	godot --headless --export-release 'Windows Desktop' ./build/test-windows-x86_64.exe

clean:
	rm -rf ./build/*

ci-image:
	podman build -t godot-builder ci/

run-ci-image: 
	podman run -it --rm -v $(shell pwd):/work godot-builder

import:
	godot --headless --editor --quit

ci: clean import all
