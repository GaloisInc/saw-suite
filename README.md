# SAW Suite

SAW Suite is a binary software distribution for a number of open-source tools
used for specification and formal verification of software and hardware. SAW
Suite offers a conveniently packaged collection of all the tools in the SAW
ecosystem, with nightly (i.e., recent) versions of the tools that are known to
work together.

SAW Suite is also distributed as a minimal multi-platform Docker image
(currently based on Ubuntu 24.04) containing the binary distribution.

SAW Suite currently contains the following tools:

* [Crux-LLVM](https://tools.galois.com/saw/crux/what-is-crux)
* [Crux-MIR](https://tools.galois.com/saw/crux/what-is-crux)
* [Crux-MIR-Comp](https://github.com/GaloisInc/saw-script/tree/master/crux-mir-comp)
* [Cryptol](https://tools.galois.com/cryptol) and the Cryptol remote API
* [`mir-json`](https://github.com/GaloisInc/mir-json)
* [SAW](https://tools.galois.com/saw) and the SAW remote API
* The following SMT solvers:
  * ABC - [99ab99bf](https://github.com/berkeley-abc/abc/tree/99ab99bfa6d1c2cc11d59af16aa26b273f611674)
  * Bitwuzla - [0.7.0](https://github.com/bitwuzla/bitwuzla/tree/3cf7c35b97c60016883cc19c4d6a9344a989a4d6)
  * Boolector - [3.2.2](https://github.com/Boolector/boolector/tree/e7aba964f69cd52dbe509e46e818a4411b316cd3)
  * CVC4 - [1.8](https://github.com/CVC4/CVC4-archived/tree/5247901077efbc7b9016ba35fded7a6ab459a379)
  * CVC5 - [1.1.1](https://github.com/cvc5/cvc5/tree/ebfdf84d5698eeb83e0fa4e45101fe4a8f4543eb)
  * Yices - [2.6.5](https://github.com/SRI-CSL/yices2/tree/8e6297e233299631147f98659224c3118fc6a215)
  * Z3 - [4.8.8](https://github.com/Z3Prover/z3/tree/ad55a1f1c617a7f0c3dd735c0780fc758424c7f1) and
         [4.8.14](https://github.com/Z3Prover/z3/tree/df8f9d7dcb8b9f9b3de1072017b7c2b7f63f0af8)
