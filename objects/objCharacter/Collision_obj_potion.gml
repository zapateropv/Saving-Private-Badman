// 1. Add 1 (which equals HALF a heart in your system)
hp += 1;

// 2. "Cap" it so it never goes above 6
if (hp > 6) {
    hp = 6;
}

// 3. Destroy the potion
with (other) {
    instance_destroy();
}

// 4. Feedback
image_blend = c_green;
alarm[0] = 10;