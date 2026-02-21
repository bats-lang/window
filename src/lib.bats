(* window -- window focus, visibility, and logging *)

#include "share/atspre_staload.hats"

#use array as A
#use wasm.bats-packages.dev/bridge as B

#pub fun focus(): void

#pub fun get_visibility(): int

#pub fun log
  {lb:agz}{n:nat}
  (level: int, msg: !$A.borrow(byte, lb, n), msg_len: int n): void

implement focus() = $B.focus()

implement get_visibility() = $B.get_visibility()

implement log{lb}{n}(level, msg, msg_len) =
  $B.log(level, msg, msg_len)
