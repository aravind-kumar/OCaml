# OCaml
OCaml Learning

How to install OCaml on a Mac

Visit : https://ocaml.org/docs/install.html for instructions involving other than mac.

1.brew install ocaml

2.brew install opam

3.opam init

5.opam config setup -a

6.opam update

7.opam switch 4.04.2

8.eval $(opam config env)

How to setup OCaml for emacs/spacemacs ?

Easy 

1.opam install merlin utop ocp-indent 

2.Open spacemacs dot file i.e SPC f e d

3.Search for dotspacemacs-configuration-layer

4.Add ocaml to the layers list.

