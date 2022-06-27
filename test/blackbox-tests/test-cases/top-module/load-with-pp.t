  $ cat >dune-project <<EOF
  > (lang dune 3.3)
  > EOF

  $ cat >dune <<EOF
  > (library
  >  (preprocess (action (run %{bin:dunepp} %{input-file})))
  >  (name foo))
  > EOF

  $ cat >foo.ml <<EOF
  > let foo = _STRING_
  > EOF

  $ dune ocaml top-module foo.ml | sed 's/"[^"]*dunepp"/$dunepp/g'
  #directory "$TESTCASE_ROOT/_build/default/.foo.objs/byte";;
  #pp $dunepp;;
  #use "$TESTCASE_ROOT/_build/default/foo.ml";;
