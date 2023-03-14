all: linux macos windows

linux:
	godot --headless --export-release 'Linux/X11' ./build/linux/test-linux-x86_64.zip

macos:
	godot --headless --export-release 'macOS' ./build/macos/test-macos-x86_64.zip

windows:
	godot --headless --export-release 'Windows Desktop' ./build/windows/test-windows-x86_64.exe

clean:
	rm -rf ./build/windows/* ./build/linux/* ./build/macos/*
