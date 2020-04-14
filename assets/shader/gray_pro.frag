#ifdef GL_ES
precision mediump float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

uniform float percent;

void main(void)
{
    vec4 c = texture2D(CC_Texture0, v_texCoord);
    if(v_texCoord.y > (1.0 - percent))
    {
		gl_FragColor = c;
    }
    else
	{
		gl_FragColor.xyz = vec3(0.2126*c.r*0.5 + 0.7152*c.g*0.5 + 0.0722*c.b*0.5);
		gl_FragColor.w = c.w;
	}
}