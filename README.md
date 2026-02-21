# window

Window focus, visibility, and logging.

## Log Levels

| Level | Value |
|-------|-------|
| LOG   | 0     |
| WARN  | 1     |
| ERROR | 2     |

## API

```
#use wasm.bats-packages.dev/window as W
#use array as A

(* Bring the window to focus *)
$W.focus() : void

(* Get document visibility state.
   Returns 0 = visible, 1 = hidden. *)
$W.get_visibility() : int

(* Log a message at the given level *)
$W.log{lb:agz}{n:nat}
  (level: int, msg: !A.borrow(byte, lb, n), msg_len: int n) : void
```
