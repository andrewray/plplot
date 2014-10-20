build:
	ocamlc plplot_core_stubs.c
	ocamlc plplot_impl.c
	ocamlc idlalloc.c
	ocamlfind ocamlmklib -o plplot \
		-l plplotd \
		plplot_core.mli plplot_core.ml \
		plplot.mli plplot.ml \
		idlalloc.o plplot_core_stubs.o plplot_impl.o

install:
	ocamlfind install plplot META \
		plplot.cma plplot.cmxa plplot.cmi plplot_core.cmi \
		plplot.a dllplplot.so

uninstall:
	ocamlfind remove plplot

clean:
	rm -f *.o *.a *.so *.cmi *.cmo *.cma *.cmxa *.cmx *~

