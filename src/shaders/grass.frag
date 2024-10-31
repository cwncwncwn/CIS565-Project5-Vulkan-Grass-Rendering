#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(set = 0, binding = 0) uniform CameraBufferObject {
    mat4 view;
    mat4 proj;
} camera;

// TODO: Declare fragment shader inputs
layout(location = 0) in float fs_V;
layout(location = 1) in vec3 fs_Nor;

layout(location = 0) out vec4 outColor;

void main() {
    // TODO: Compute fragment color
    vec4 col1 = vec4(172., 213., 105., 255.) / 255.;
    vec4 col2 = vec4(98., 130., 47., 255.) / 255.;
    outColor = mix(col2, col1, fs_V);
}