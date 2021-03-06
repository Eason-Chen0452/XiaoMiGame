
#ifdef GL_ES
  precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;

uniform int _gr;
uniform float _hl;

void main()
{
	vec4 cc = v_fragmentColor * texture2D(CC_Texture0, v_texCoord);
	if( _gr == 1 ) {
		cc.r = cc.g = cc.b = dot(cc.rgb, vec3(0.299, 0.587, 0.114));
		gl_FragColor = cc;
		return;
	}
	if( _hl > 0.0) {
		vec3 gra = vec3(0.0, 0.0, 0.0);
		gra.r = gra.g = gra.b = dot(cc.rgb, vec3(0.299, 0.587, 0.114));
		float _h2 = _hl * 0.47;
		cc.rgb = gra.rgb + 0.85*(cc.rgb-gra.rgb);
		cc.rgb *= _h2;
		gl_FragColor = cc;
		return;
	}
	gl_FragColor = cc;
}