//basic simulation: displays the particles in place.
uniform sampler2D positions;
uniform float xFactor;
uniform float yFactor;
uniform float zFactor;
varying vec2 vUv;
void main() {
    float strength = 10.0;
    const float PI = 3.1415926535897932384626433832795;
    vec3 pos = texture2D( positions, vUv ).xyz;
    float xpos = pos.x + cos(pos.x + 5.*PI/8.) * xFactor;
    float ypos = pos.y + cos(pos.y + 5.*PI/8.) * yFactor;
    float zpos = pos.z + cos(pos.z + 5.*PI/8.) * zFactor;
    float aff = (abs(cos(pos.x)) + abs(cos(pos.y)) + abs(cos(pos.z)))/3.0;
    gl_FragColor = vec4( vec3(xpos, ypos, zpos) , aff );
}
