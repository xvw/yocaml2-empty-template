(lang dune 3.14)

(name yo)
(version dev)
(generate_opam_files)
(executables_implicit_empty_intf)

(source (github xvw/yocaml2-empty-template ))
(license GPL-3.0-or-later)
(authors "Xavier Van de Woestyne <xaviervdw@gmail.com>")
(maintainers "Xavier Van de Woestyne <xaviervdw@gmail.com>")

(package
  (name yo)
  (synopsis "A dead simple skeleton for bootstrapping a blog using YOCaml2")
  (description "An empty skeleton for building a YOCaml2 (in dev) Project")
  (depends

   ;; Build dependencies
   (ocaml (>= 5.1.1))
   (dune (>= 3.14.0))

   ;; YOCaml dependencies
   yocaml
   yocaml_jingoo
   yocaml_yaml
   yocaml_omd
   yocaml_eio

   ;; dev setup
   (ocamlformat :with-dev-setup)
   (ocp-indent :with-dev-setup)
   (merlin :with-dev-setup)
   (utop :with-dev-setup)
   (ocaml-lsp-server :with-dev-setup)))
