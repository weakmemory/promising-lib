# A Library for the Coq developments of the Promising Semantics

## Build

- Requirement: [Coq 8.13.1](https://coq.inria.fr/download), opam.

- Install via opam

        opam repo add coq-released https://coq.inria.fr/opam/released
        opam remote add coq-sflib -k git https://github.com/snu-sf/sf-opam-coq-archive
        opam remote add coq-promising -k git https://github.com/snu-sf/promising-opam-coq-archive
        opam install coq-promising-lib
