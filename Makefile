all: linux windows

linux:
	godot --headless --export-release 'Linux/X11' ./build/linux/test

windows:
	godot --headless --export-release 'Windows Desktop' ./build/windows/test.exe

clean:
	rm -f ./build/windows/* ./build/linux/*
