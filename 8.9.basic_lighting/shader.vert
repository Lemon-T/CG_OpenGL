#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;

out vec3 Normal;
out vec3 FragWorldPos;

uniform mat4 model;
uniform mat3 normalMatrix;
uniform mat4 view;
uniform mat4 projection;

void main()
{
  gl_Position = projection * view * model * vec4(position, 1.0f);
  Normal = normalMatrix * normal;
  FragWorldPos = vec3(model * vec4(position, 1.0f));
}