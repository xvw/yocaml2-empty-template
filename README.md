# yocaml2-empty-template

> A dead simple skeleton for bootstrapping a blog using YOCaml2. As I sometimes
> shamefully promote YOCaml2 to a lot of people. Including people who don't do
> OCaml, this repository is a skeleton, almost blank, which is bundled with
> YOCaml version 2 (still under development) and the packages needed to build a
> YOCaml project. The skeleton should be self-explanatory enough to be adapted
> to other needs!

## Initiating the project

To work, we assume that a version greater than or equal to `2.2.0~beta1` is
installed on your machine ([Install
OPAM](https://opam.ocaml.org/doc/Install.html), [upgrade to version
`2.2.0~xxxx`](https://opam.ocaml.org/blog/opam-2-2-0-beta2/#Try-it)).

> [!TIP]  
> We're relying on version `2.2.x` to support the `dev-setup` flag, which allows
> development dependencies to be packaged, making it very practical to install
> locally all the elements needed to create a pleasant development environment.

When you have a suitable version of OPAM, you can run the following command to
build a [local switch](https://opam.ocaml.org/blog/opam-local-switches/) to
create a sandboxed environment (with a good version of OCaml, and all the
dependencies installed locally).

```shell
opam update
opam switch create . --deps-only --with-dev-setup -y
eval $(opam env)
```

And that's all there is to it. Launching `dune build` should build the project!
At present, the project simply prints to standard output, but you can build your
project in `bin/`. YOCaml and its various plugins will be accessible in the
scope of this directory. The setup should work with Vim and Emacs (if they are
configured to work with OCaml) and with any editor configured to use LSP (Merlin
and OCaml-lsp-server being development dependencies of the project).

The setup should work with Vim and Emacs (if they are configured to work with
OCaml) and with any editor configured to use LSP (Merlin and OCaml-lsp-server
being development dependencies of the project).

## Run the binary

Just run the `yo.exe` binary compiled from `bin/yo.ml` like this:

```shell
dune exec bin/yo.exe
```

You can now build your own static site generator, from-scratch, using the
[simple
blog](https://gitlab.com/funkywork/yocaml/-/tree/main/examples/simple-blog?ref_type=heads)
example as inspiration! **Enjoy!**

## Installed plugins

The plugins installed are as follows (and should be sufficient to create a blog
generator):

- **Yocaml** the core engine. Which exposes the high-level API to be used to
  build YOCaml pipelines
- **Yocaml_jingoo** the Jingoo template engine ([documented
  here](https://github.com/tategakibunko/jingoo))
- **Yocaml_yaml** to use Yaml to describe metadata
- **Yocaml_omd** to use Markdown as a markup language
- **Yocaml_unix** to run YOCaml on a Unix (or WSL-based) environment

These are the same dependencies as those used in the [simple
blog](https://gitlab.com/funkywork/yocaml/-/tree/main/examples/simple-blog?ref_type=heads)
example, which provides exhaustive documentation on how to build a blog with
YOCaml2.

## Customization

You can modify the `dune-project`, `yo.opam.template` files and everything else
in the `bin` directory as you see fit to suit different types of project!
