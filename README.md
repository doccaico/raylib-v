## raylib-v

**-- Windows Only --**

### Install
```sh
$ v install --git https://github.com/doccaico/raylib-v
```

### Build
```sh
# gcc (debug)
$ v -cc gcc main.v

# gcc (release)
$ v -cc gcc -prod -no-prod-options main.v

# msvc (debug)
$ v -cc msvc main.v

# msvc (release)
$ v -cc msvc -prod -subsystem windows main.v
```

### How to use
```v
module main

import raylib as rl

fn main() {
	screen_width := 800
	screen_height := 450

	rl.init_window(screen_width, screen_height, 'raylib [core] example - basic window')
	defer { rl.close_window() }

	rl.set_target_fps(60)

	for !rl.window_should_close() {
		rl.begin_drawing()

		rl.clear_background(rl.raywhite)

		rl.draw_text('Congrats! You created your first window!', 190, 200, 20, rl.black)

		rl.end_drawing()
	}
}
```
