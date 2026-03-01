draw_self();
if (flash > 0) {
    gpu_set_fog(true, c_red, 0, 1000);
    draw_self();
    gpu_set_fog(false, c_red, 0, 1000);
}