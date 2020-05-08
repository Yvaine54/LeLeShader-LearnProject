// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader"Yvaine/P106/Simple Shader"{
	Properties{
		//声明一个Color类型的属性
		_Color("color Tint", Color) = (1,1,1,1)
	}
		SubShader{
			Pass{
				CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#include"UnityCG.cginc"

				//在Cg代码中，我们需要定义一个与属性名称和类型都匹配的变量
				fixed4 _Color;

				struct a2v {
					float4 vertex:POSITION;
					float3 normal:NORMAL;
					float4 texcoord:TEXCOORD0;
				};

				struct v2f {
					float4 pos:SV_POSITION;
					fixed3 color : COLOR0;
				};

				v2f vert(appdata_full v) {
					v2f o;
					o.pos = UnityObjectToClipPos(v.vertex);
					o.color =mul(v.color,fixed4(1,0,0,1));
					return o;
				}

				fixed3 frag(v2f i) :SV_Target{
					//fixed3 c = i.color;
					////使用_Color属性来控制输出颜色
					//c *= _Color.rgb;
					/*return fixed4 (c, 1);*/
					return i.color;
				}

				ENDCG

			}
		}
}