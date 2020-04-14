
#ifdef GL_ES
	varying mediump vec2 TextureCoordOut;
#else
	varying vec2 TextureCoordOut;
#endif

uniform vec4 u_color;
uniform float offset;

void main(void)
{
	vec2 xy = TextureCoordOut;
	xy.x += offset;

	if ( xy.x  > 1.0 )
		 xy.x -= 1.0;
	vec4 org = texture2D(CC_Texture0, xy) * u_color;
	if( org.a <= 0.01 || org.rgb == vec3(0,0,0) )
		discard;

    gl_FragColor = org;
}
