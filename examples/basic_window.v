module main

import raylib

fn main() {
	screen_width := 800
	screen_height := 450

	raylib.init_window(screen_width, screen_height, 'raylib [core] example - basic window')
	defer { raylib.close_window() }

	raylib.set_target_fps(60)

	for !raylib.window_should_close() {
		raylib.begin_drawing()

		raylib.clear_background(raylib.raywhite)

		raylib.draw_text('Congrats! You created your first window!', 190, 200, 20, raylib.black)

		raylib.end_drawing()
	}
}
