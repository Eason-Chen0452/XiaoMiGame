#ifdef GL_ES
precision mediump float;
#endif

// uniform sampler2D tex;
varying vec2 v_texCoord; 
uniform float variedStrength; 

const float sampleDist = 1.0;
//const float variedStrength = 2.2;

/*
float samples[10] =
{
    -0.08,
    -0.05,
    -0.03,
    -0.02,
    -0.01,
    0.01,
    0.02,
    0.03,
    0.05,
    0.08
};
*/

void main(void)
{   
    float floatArray[5];
    
    floatArray[0] = -0.08;
    floatArray[1] = -0.05;
    floatArray[2] = -0.03;
    floatArray[3] = -0.02;
    floatArray[4] = -0.01;
    
    // vec2 dir = 0.5 - v_texCoord;
    
    vec2 dir;
    dir.x = 0.65 - v_texCoord.x;
    dir.y = 0.35 - v_texCoord.y;
    
    float dist = sqrt(dir.x*dir.x + dir.y*dir.y);
    
    dir = dir/dist;
    
    vec4 color = texture2D(CC_Texture0,v_texCoord);
    
    vec4 sum = color;
   
    // for (int i = 0; i < 5; i++)
    //{
    //    sum += texture2D( CC_Texture0, v_texCoord + dir * floatArray[i] );
    //}
    
    sum += texture2D( CC_Texture0, v_texCoord + dir * floatArray[0] );
    sum += texture2D( CC_Texture0, v_texCoord + dir * floatArray[1] );
    sum += texture2D( CC_Texture0, v_texCoord + dir * floatArray[2] );
    sum += texture2D( CC_Texture0, v_texCoord + dir * floatArray[3] );
    sum += texture2D( CC_Texture0, v_texCoord + dir * floatArray[4] );
    
    sum *= 1.0/6.0;
    
    float t = dist * variedStrength;
    t = clamp( t ,0.0,1.0);
    
    gl_FragColor = mix( color, sum, t );
} 