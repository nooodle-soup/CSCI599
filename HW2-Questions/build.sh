#!/usr/bin/env bash

####
# Calc

ocamlc -i calc.ml > calc.mli
ocamlc -c calc.mli
ocamlc -c calc.ml

menhir --infer calcparser.mly
ocamlc calcparser.mli
ocamlc calcparser.ml

ocamllex calclexer.mll
ocamlc calclexer.ml

####
# Imp

ocamlc -i imp.ml > imp.mli
ocamlc -c imp.mli
ocamlc -c imp.ml

if [[ -f "impparser.mly" ]]; then
    menhir --infer impparser.mly
    ocamlc impparser.mli
    ocamlc impparser.ml
fi

if [[ -f "implexer.mll" ]]; then
    ocamllex implexer.mll
    ocamlc implexer.ml
fi
