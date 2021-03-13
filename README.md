# A Library for the Coq developments of the Promising Semantics

## Build

- Requirement: [Coq 8.13.1](https://coq.inria.fr/download), opam.

- Install via opam

        opam repo add coq-released https://coq.inria.fr/opam/released
        opam repo add coq-sflib -k git https://github.com/snu-sf/sf-opam-coq-archive.git
        opam repo add coq-promising -k git https://github.com/snu-sf/promising-opam-coq-archive.git#8.13
        opam install coq-promising-lib
