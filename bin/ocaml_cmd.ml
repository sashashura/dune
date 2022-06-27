open Import

let info = Term.info "ocaml"

let group =
  ( Term.Group.Group
      [ in_group Utop.command
      ; in_group Ocaml_merlin.command
      ; in_group Ocaml_merlin.Dump_dot_merlin.command
      ; in_group Top.command
      ; in_group Top.module_command
      ]
  , info )
