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
