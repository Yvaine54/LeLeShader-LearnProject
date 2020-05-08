Shader"Yvaine/P131/HalfLambert"{
	Properties{
		_Diffuse("Diffuse",Color) = (1,1,1,1)
	}

	SubShader{
		
		Pass{
			Tags{"LightMode" = "ForwardBase"}
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "Lighting.cginc"

			fixed4 _Diffuse;
		
			struct a2v {
				float4 vertex:POSITION;
				float3 normal:NORMAL;

			};

			struct v2f {
				float4 pos : SV_POSITION;
				float3 worldNormal:TEXCOORD0;
			};

			v2f vert(a2v v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.worldNormal = mul(v.normal, (float3x3)unity_WorldToObject);
				return o;
			}

			fixed4 frag(v2f i) :SV_Target{
				float3 ambient = UNITY_LIGHTMODEL_AMBIENT.xyz;
				float3 worldNormal = normalize(i.worldNormal);
				float3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);
				float3 halfLambert = 0.5* dot(worldNormal ,worldLightDir ) + 0.5;
				float3 diffuse = _LightColor0.rgb*_Diffuse.rgb*halfLambert;
				float3 color = ambient + diffuse;
				return fixed4(color, 1);
			}
			ENDCG

		}
	}
		Fallback"Diffuse"
}