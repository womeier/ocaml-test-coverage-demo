test:
	dune runtest 

clean:
	dune clean
	git clean -dfX
	rm -rf docs/

coverage:
	make clean
	BISECT_ENABLE=yes dune build
	dune runtest
	bisect-ppx-report html
	bisect-ppx-report summary
