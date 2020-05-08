// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:32469,y:33396,varname:node_9361,prsc:2|normal-405-RGB,emission-7845-OUT,custl-1272-OUT,alpha-6987-OUT,refract-6460-OUT,voffset-6117-OUT;n:type:ShaderForge.SFN_Tex2d,id:851,x:31244,y:33979,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:5927,x:31244,y:34164,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:544,x:31442,y:34078,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Slider,id:6297,x:31087,y:34439,ptovrint:False,ptlb:OpacityVar,ptin:_OpacityVar,varname:node_6297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7835975,max:1;n:type:ShaderForge.SFN_Fresnel,id:7543,x:30969,y:34513,varname:node_7543,prsc:2|EXP-2190-OUT;n:type:ShaderForge.SFN_Slider,id:2190,x:30626,y:34536,ptovrint:False,ptlb:FresnelIntensity,ptin:_FresnelIntensity,varname:node_2190,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8569404,max:1;n:type:ShaderForge.SFN_Multiply,id:4419,x:31459,y:34468,varname:node_4419,prsc:2|A-6297-OUT,B-3122-OUT,C-7012-A;n:type:ShaderForge.SFN_Power,id:3122,x:31226,y:34565,varname:node_3122,prsc:2|VAL-7543-OUT,EXP-7588-OUT;n:type:ShaderForge.SFN_Slider,id:7588,x:30656,y:34714,ptovrint:False,ptlb:FresnelPower,ptin:_FresnelPower,varname:node_7588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5.625001,max:11;n:type:ShaderForge.SFN_TexCoord,id:6055,x:31527,y:33274,varname:node_6055,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6208,x:31109,y:33540,ptovrint:False,ptlb:VertexOffsetaTex,ptin:_VertexOffsetaTex,varname:node_6208,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1459-UVOUT;n:type:ShaderForge.SFN_Panner,id:1459,x:30937,y:33540,varname:node_1459,prsc:2,spu:0.4,spv:0.4|UVIN-4084-OUT;n:type:ShaderForge.SFN_Multiply,id:1399,x:31357,y:33578,varname:node_1399,prsc:2|A-6208-R,B-4403-OUT;n:type:ShaderForge.SFN_NormalVector,id:4403,x:31047,y:33717,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7492,x:31541,y:33639,varname:node_7492,prsc:2|A-1399-OUT,B-8737-OUT;n:type:ShaderForge.SFN_Slider,id:8737,x:31200,y:33779,ptovrint:False,ptlb:VertexOffsetVar,ptin:_VertexOffsetVar,varname:node_8737,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2001671,max:1;n:type:ShaderForge.SFN_Set,id:322,x:31719,y:33274,varname:UV,prsc:2|IN-6055-UVOUT;n:type:ShaderForge.SFN_Get,id:4084,x:30737,y:33540,varname:node_4084,prsc:2|IN-322-OUT;n:type:ShaderForge.SFN_Set,id:490,x:31715,y:33639,varname:VertexOffset,prsc:2|IN-7492-OUT;n:type:ShaderForge.SFN_Get,id:6117,x:32262,y:33777,varname:node_6117,prsc:2|IN-490-OUT;n:type:ShaderForge.SFN_Set,id:1549,x:31682,y:34048,varname:DiffuseColor,prsc:2|IN-544-OUT;n:type:ShaderForge.SFN_VertexColor,id:7012,x:31226,y:34712,varname:node_7012,prsc:2;n:type:ShaderForge.SFN_Set,id:240,x:31851,y:34528,varname:Opacity,prsc:2|IN-793-OUT;n:type:ShaderForge.SFN_Get,id:6987,x:32262,y:33659,varname:node_6987,prsc:2|IN-240-OUT;n:type:ShaderForge.SFN_Tex2d,id:3499,x:30846,y:35016,ptovrint:False,ptlb:RefractionTex,ptin:_RefractionTex,varname:node_3499,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:05a893ce5856e2f45b6dea64d8f27943,ntxv:0,isnm:False|UVIN-8015-UVOUT;n:type:ShaderForge.SFN_Append,id:917,x:31046,y:35033,varname:node_917,prsc:2|A-3499-R,B-3499-G;n:type:ShaderForge.SFN_Multiply,id:9698,x:31264,y:35032,varname:node_9698,prsc:2|A-917-OUT,B-2599-OUT;n:type:ShaderForge.SFN_Vector1,id:2599,x:31058,y:35173,varname:node_2599,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Set,id:5140,x:31439,y:35032,varname:Refraction,prsc:2|IN-9698-OUT;n:type:ShaderForge.SFN_Get,id:6460,x:32262,y:33721,varname:node_6460,prsc:2|IN-5140-OUT;n:type:ShaderForge.SFN_Get,id:2801,x:30458,y:35040,varname:node_2801,prsc:2|IN-322-OUT;n:type:ShaderForge.SFN_Panner,id:8015,x:30668,y:35040,varname:node_8015,prsc:2,spu:0.4,spv:0.4|UVIN-2801-OUT;n:type:ShaderForge.SFN_LightVector,id:3803,x:32660,y:34025,varname:node_3803,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1444,x:32660,y:34187,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:6532,x:32901,y:34112,varname:node_6532,prsc:2,dt:1|A-3803-OUT,B-1444-OUT;n:type:ShaderForge.SFN_Clamp01,id:8187,x:33921,y:34383,varname:node_8187,prsc:2|IN-5092-OUT;n:type:ShaderForge.SFN_HalfVector,id:136,x:32660,y:34388,varname:node_136,prsc:2;n:type:ShaderForge.SFN_Dot,id:6232,x:32901,y:34315,varname:node_6232,prsc:2,dt:1|A-1444-OUT,B-136-OUT;n:type:ShaderForge.SFN_Multiply,id:5092,x:33352,y:34345,varname:node_5092,prsc:2|A-6532-OUT,B-5741-OUT,C-665-RGB;n:type:ShaderForge.SFN_Power,id:5741,x:33087,y:34411,varname:node_5741,prsc:2|VAL-6232-OUT,EXP-3070-OUT;n:type:ShaderForge.SFN_Color,id:665,x:33062,y:34609,ptovrint:False,ptlb:node_665,ptin:_node_665,varname:node_665,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Exp,id:3070,x:32853,y:34647,varname:node_3070,prsc:2,et:1|IN-1422-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:1422,x:32679,y:34647,varname:node_1422,prsc:2,a:1,b:11|IN-8565-OUT;n:type:ShaderForge.SFN_Slider,id:8565,x:32349,y:34647,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_8565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-11,cur:0.5248079,max:11;n:type:ShaderForge.SFN_Set,id:1752,x:34127,y:34338,varname:Diffuse,prsc:2|IN-8187-OUT;n:type:ShaderForge.SFN_Get,id:1272,x:32262,y:33582,varname:node_1272,prsc:2|IN-1752-OUT;n:type:ShaderForge.SFN_Multiply,id:7256,x:31673,y:34528,varname:node_7256,prsc:2|A-4419-OUT,B-8327-OUT;n:type:ShaderForge.SFN_Get,id:8327,x:31438,y:34696,varname:node_8327,prsc:2|IN-1752-OUT;n:type:ShaderForge.SFN_Add,id:793,x:31839,y:34639,varname:node_793,prsc:2|A-4419-OUT,B-8327-OUT;n:type:ShaderForge.SFN_Get,id:7845,x:32262,y:33494,varname:node_7845,prsc:2|IN-1549-OUT;n:type:ShaderForge.SFN_Tex2d,id:405,x:32055,y:33361,ptovrint:False,ptlb:NormalTex,ptin:_NormalTex,varname:node_405,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-495-UVOUT;n:type:ShaderForge.SFN_Panner,id:495,x:31771,y:33371,varname:node_495,prsc:2,spu:0.05,spv:0.05|UVIN-6055-UVOUT;proporder:851-5927-6297-2190-7588-6208-8737-3499-665-8565-405;pass:END;sub:END;*/

Shader "Shader Forge/S1huizhu_2" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _OpacityVar ("OpacityVar", Range(0, 1)) = 0.7835975
        _FresnelIntensity ("FresnelIntensity", Range(0, 1)) = 0.8569404
        _FresnelPower ("FresnelPower", Range(0, 11)) = 5.625001
        _VertexOffsetaTex ("VertexOffsetaTex", 2D) = "white" {}
        _VertexOffsetVar ("VertexOffsetVar", Range(0, 1)) = 0.2001671
        _RefractionTex ("RefractionTex", 2D) = "white" {}
        _node_665 ("node_665", Color) = (1,1,1,1)
        _Gloss ("Gloss", Range(-11, 11)) = 0.5248079
        _NormalTex ("NormalTex", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            //ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform float _OpacityVar;
            uniform float _FresnelIntensity;
            uniform float _FresnelPower;
            uniform sampler2D _VertexOffsetaTex; uniform float4 _VertexOffsetaTex_ST;
            uniform float _VertexOffsetVar;
            uniform sampler2D _RefractionTex; uniform float4 _RefractionTex_ST;
            uniform float4 _node_665;
            uniform float _Gloss;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_5948 = _Time;
                float2 UV = o.uv0;
                float2 node_1459 = (UV+node_5948.g*float2(0.4,0.4));
                float4 _VertexOffsetaTex_var = tex2Dlod(_VertexOffsetaTex,float4(TRANSFORM_TEX(node_1459, _VertexOffsetaTex),0.0,0));
                float3 VertexOffset = ((_VertexOffsetaTex_var.r*v.normal)*_VertexOffsetVar);
                v.vertex.xyz += VertexOffset;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_5948 = _Time;
                float2 node_495 = (i.uv0+node_5948.g*float2(0.05,0.05));
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(node_495, _NormalTex)));
                float3 normalLocal = _NormalTex_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 UV = i.uv0;
                float2 node_8015 = (UV+node_5948.g*float2(0.4,0.4));
                float4 _RefractionTex_var = tex2D(_RefractionTex,TRANSFORM_TEX(node_8015, _RefractionTex));
                float2 Refraction = (float2(_RefractionTex_var.r,_RefractionTex_var.g)*0.1);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + Refraction;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 DiffuseColor = (_Diffuse_var.rgb*_Color.rgb);
                float3 emissive = DiffuseColor;
                float3 Diffuse = saturate((max(0,dot(lightDirection,i.normalDir))*pow(max(0,dot(i.normalDir,halfDirection)),exp2(lerp(1,11,_Gloss)))*_node_665.rgb));
                float3 finalColor = emissive + Diffuse;
                float node_4419 = (_OpacityVar*pow(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelIntensity),_FresnelPower)*i.vertexColor.a);
                float3 node_8327 = Diffuse;
                float3 Opacity = (node_4419+node_8327);
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,Opacity),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            //ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform float _OpacityVar;
            uniform float _FresnelIntensity;
            uniform float _FresnelPower;
            uniform sampler2D _VertexOffsetaTex; uniform float4 _VertexOffsetaTex_ST;
            uniform float _VertexOffsetVar;
            uniform sampler2D _RefractionTex; uniform float4 _RefractionTex_ST;
            uniform float4 _node_665;
            uniform float _Gloss;
            uniform sampler2D _NormalTex; uniform float4 _NormalTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1328 = _Time;
                float2 UV = o.uv0;
                float2 node_1459 = (UV+node_1328.g*float2(0.4,0.4));
                float4 _VertexOffsetaTex_var = tex2Dlod(_VertexOffsetaTex,float4(TRANSFORM_TEX(node_1459, _VertexOffsetaTex),0.0,0));
                float3 VertexOffset = ((_VertexOffsetaTex_var.r*v.normal)*_VertexOffsetVar);
                v.vertex.xyz += VertexOffset;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1328 = _Time;
                float2 node_495 = (i.uv0+node_1328.g*float2(0.05,0.05));
                float3 _NormalTex_var = UnpackNormal(tex2D(_NormalTex,TRANSFORM_TEX(node_495, _NormalTex)));
                float3 normalLocal = _NormalTex_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 UV = i.uv0;
                float2 node_8015 = (UV+node_1328.g*float2(0.4,0.4));
                float4 _RefractionTex_var = tex2D(_RefractionTex,TRANSFORM_TEX(node_8015, _RefractionTex));
                float2 Refraction = (float2(_RefractionTex_var.r,_RefractionTex_var.g)*0.1);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + Refraction;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 Diffuse = saturate((max(0,dot(lightDirection,i.normalDir))*pow(max(0,dot(i.normalDir,halfDirection)),exp2(lerp(1,11,_Gloss)))*_node_665.rgb));
                float3 finalColor = Diffuse;
                float node_4419 = (_OpacityVar*pow(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelIntensity),_FresnelPower)*i.vertexColor.a);
                float3 node_8327 = Diffuse;
                float3 Opacity = (node_4419+node_8327);
                fixed4 finalRGBA = fixed4(finalColor * Opacity,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _VertexOffsetaTex; uniform float4 _VertexOffsetaTex_ST;
            uniform float _VertexOffsetVar;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2416 = _Time;
                float2 UV = o.uv0;
                float2 node_1459 = (UV+node_2416.g*float2(0.4,0.4));
                float4 _VertexOffsetaTex_var = tex2Dlod(_VertexOffsetaTex,float4(TRANSFORM_TEX(node_1459, _VertexOffsetaTex),0.0,0));
                float3 VertexOffset = ((_VertexOffsetaTex_var.r*v.normal)*_VertexOffsetVar);
                v.vertex.xyz += VertexOffset;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
