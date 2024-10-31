#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(vertices = 1) out;

layout(set = 0, binding = 0) uniform CameraBufferObject {
    mat4 view;
    mat4 proj;
} camera;

// TODO: Declare tessellation control shader inputs and outputs
layout(location = 0) in vec4[] in_V0; 
layout(location = 1) in vec4[] in_V1;
layout(location = 2) in vec4[] in_V2;

layout(location = 0) out vec4[] out_V0;
layout(location = 1) out vec4[] out_V1;
layout(location = 2) out vec4[] out_V2;

void main() {
	// Don't move the origin location of the patch
    gl_out[gl_InvocationID].gl_Position = gl_in[gl_InvocationID].gl_Position;

	// TODO: Write any shader outputs
    out_V0[gl_InvocationID] = in_V0[gl_InvocationID];
    out_V1[gl_InvocationID] = in_V1[gl_InvocationID];
    out_V2[gl_InvocationID] = in_V2[gl_InvocationID];

    gl_TessLevelInner[0] = 4;
    gl_TessLevelInner[1] = 4;
    gl_TessLevelOuter[0] = 4;
    gl_TessLevelOuter[1] = 4;
    gl_TessLevelOuter[2] = 4;
    gl_TessLevelOuter[3] = 4;
}