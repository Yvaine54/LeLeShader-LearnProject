Shader"Yvaine/P135/BlinnPhong"{
	Properties{
		_Diffuse("Diffuse",Color) = (1,1,1,1)
		_Specular("Specular",Color) = (1,1,1,1)
		_Gloss("Gloss",Range(8,256)) = 20
	}
	SubShader{
		Pass{
			Tags{"LightMode" = "ForwardBase"}
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
			struct v2f{
				float4 pos:SV_POSITION;
				float3 worldNormal:TEXCOORD0;
				float3 worldPos:TEXCOORD1;
			};

			v2f vert(a2v v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.worldNormal = mul(v.normal,unity_WorldToObject);//用a2v的法线乘矩阵，使它转到模型空间下，给到v2f的世界法线
				o.worldPos = mul(v.vertex, unity_ObjectToWorld);//从模型空间到世界空间
				return o;
			}
			float4 frag(v2f i) :SV_Target{
				float3 ambient = UNITY_LIGHTMODEL_AMBIENT;
				float3 worldNormal = normalize(i. worldNormal);
				float3 worldLightDir = normalize(_WorldSpaceLightPos0);//得到光源方向
				float3 diffuse = _LightColor0.rgb*_Diffuse*saturate(dot(worldNormal, worldLightDir));
				float3 viewDir = normalize(_WorldSpaceCameraPos.xyz - i.worldPos.xyz);//得到视角方向
				float3 halfDir = normalize(worldLightDir + viewDir);
				float3 specular1 = _LightColor0.rgb*_Specular.rgb;
				float3 specular2= specular1*pow(max(0, dot(worldNormal, halfDir)), _Gloss);
				return float4(ambient + diffuse + specular2, 1);
			}
			ENDCG
		}
	}
	Fallback"Specular"
}