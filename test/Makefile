JULIAHOME = $(abspath ..)
include ../Make.inc

TESTS = all linalg $(filter-out TestHelpers runtests testdefs,$(subst .jl,,$(wildcard *.jl) $(wildcard linalg/*.jl)))

default: all

$(TESTS):
	@$(call PRINT_JULIA, $(call spawn,$(JULIA_EXECUTABLE)) --check-bounds=yes -f ./runtests.jl $@)

perf:
	@$(MAKE) -C perf all

clean:
	@$(MAKE) -C perf $@
	-rm -f libccalltest.$(SHLIB_EXT) ccalltest

.PHONY: $(TESTS) perf clean

all ccall julia-debug julia-release: libccalltest.$(SHLIB_EXT)
libccalltest.$(SHLIB_EXT): ccalltest.c
	@$(call PRINT_CC, $(CC) $(CFLAGS) $(DEBUGFLAGS) -O3 $< $(fPIC) -shared -o $@ $(LDFLAGS) -DCC=$(CC))

ccalltest: ccalltest.c libccalltest.$(SHLIB_EXT)
	@$(call PRINT_CC, $(CC) $(CFLAGS) $(DEBUGFLAGS) -O3 $< -o $@ $(LDFLAGS) -DCC=$(CC))
