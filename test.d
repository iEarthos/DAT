module test;

import std.stdio;
public {
	import std.file : read, mkdir;
	import std.string : format, strip;
}
import std.array : split, join, empty;
import std.algorithm : startsWith, endsWith;
import std.c.string : memcpy;

bool isEmpty(string test) {
	return test.strip().empty();
}

private void _foo() {
	int[] arr;
	int[4] arrs;
	int[int] arrt;
	int[ulong] arrt2;
}

string fmt() {
	string str = "one\nnew line";

	{
		string str_;
		str = "abc";
	}

	void* p;
	std.c.string.memcpy(p, &str, str.sizeof);

	return format("%d.%d.%d", 0, 9, 9);
}

@property
const(string) bar() pure {
	return "";
}

struct C {
private:
	int id;
}

C[void*] c_map;

void main() {
	uint id = 0;
	id++;

	byte[] _buffer;
	_buffer = new byte[4];

	byte[byte*] bbmap;

	const uint msize = 42;
	void[] memory = new void[msize];
	assert(memory !is null);
}

debug {
	string outdir = "Debug";
} else {
	string outdir = "Release";
}

void unused() {
	if (!outdir)
		mkdir(outdir);
	else
		mkdir(outdir ~ "_New");
}

struct Foo {
	int foo1;

	enum : ubyte {
		Unused,
	} /// <--

	int foo2;
}

struct Bar {
	void useless() const {
		int test2;
	}
}

class FR;

int FR_global;

void FR_test() {
	int abc;
}

struct A {
	private import core.stdc.stdlib : malloc, realloc, free;

	void* allocate(size_t bytes) {
		return malloc(bytes);
	}

	void reallocate(void* ptr, size_t bytes) {
		ptr = realloc(ptr, bytes);
	}

	void deallocate(void* ptr) {
		free(ptr);
	}
}

struct B {
	private import core.stdc.stdlib : free;

	void*[128] _ptrs;

	void freeAll() {
		for (size_t i = 0; i < this._ptrs.length; i++) {
			free(this._ptrs[i]);
		}
	}
}