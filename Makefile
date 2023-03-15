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
