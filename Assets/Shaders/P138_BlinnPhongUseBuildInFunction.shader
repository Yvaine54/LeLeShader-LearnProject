Shader"Yvaine/P138/FunctionBlinnPhong"{
	Properties{
		_Diffuse("Diffuse",Color) = (1,1,1,1)
		_Specular("Specular",Color) = (1,1,1,1)
		_Gloss("Gloss",Range(8,256)) = 20
	}
	SubShader{
		Pass{
			Tags{"LightMode"="ForwardBase"}
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "Lighting.cginc"

			float4 _Diffuse;
			float4 _Specular;
			float _Gloss;

			struct a2v {
				float4 vertex:POSITION;
				float3 normal:NORMAL;
			};
			struct v2f {
				float4 pos:SV_POSITION;
				float3 worldNormal:TEXCOORD0;
				float3 worldPos:TEXCOORD1;
			};

			v2f vert(a2v v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.worldNormal = UnityObjectToWorldNormal(v.normal);
				o.worldPos = mul(unity_ObjectToWorld,v.vertex);
				return o;
			}
			float4 frag(v2f i) :SV_Target{
				float3 ambient = UNITY_LIGHTMODEL_AMBIENT;
				float3 worldNormal = normalize(i.worldNormal);
				float3 worldLightDir = normalize(UnityWorldSpaceLightDir(i.worldPos));
				float3 diffuse = _LightColor0*_Diffuse*max(0,saturate(dot(worldNormal, worldLightDir)));
				float3 viewDir = normalize(UnityWorldSpaceViewDir(i.worldPos));
				float3 halfDir = normalize(worldLightDir + viewDir);
				float3 specular = _LightColor0*_Specular*pow(max(0, dot(worldNormal, halfDir)), _Gloss);
				return float4(ambient + diffuse + specular, 1);
			}
			ENDCG
		}
	}
	Fallback"Specular"
}