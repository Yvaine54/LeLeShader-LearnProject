// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader"Yvaine/P111/False Color"{
	Subshader{
		Pass{
		CGPROGRAM
		#pragma vertex vert
		#pragma fragment frag
		#include "UnityCG.cginc"

		struct v2f {
			float4 pos:SV_POSITION;
			fixed4 color : COLOR0;
		};

		v2f vert(appdata_full v) {
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);


			o.color = fixed4(v.normal*0.5 + fixed3(.5, .5, .5), 1);//1.可视化法线方向

			o.color = fixed4(v.tangent.xyz*.5 + fixed3(.5, .5, .5), 1);//2.可视化切线方向
			
			
			fixed3 binormal = cross(v.normal, v.tangent.xyz)*v.tangent.w;//3.可视化副切线方向
			o.color = fixed4(binormal*.5 + fixed3(.5, .5, .5), 1);

			o.color = fixed4(v.texcoord.xy, 0, 1);//4.可视化第一组纹理坐标

			o.color = fixed4(v.texcoord1.xy, 0, 1);//5.可视化第二组纹理坐标


			o.color = frac(v.texcoord);//6.可视化第一组纹理坐标的小数部分
			if (any(saturate(v.texcoord) - v.texcoord)) {
				o.color.b = .5;
			}
			o.color.a = 1;


			o.color = frac(v.texcoord1);//7.可视化第二组文理坐标的小数部分
			if (any(saturate(v.texcoord1) - v.texcoord1)) {
				o.color.b = .5;
			}
			o.color.a = 1;

			o.color = v.color;//8.可视化点点颜色

			return o;

		}
		fixed4 frag(v2f i) :SV_Target{
			return i.color;
		}
		ENDCG

		}
	}
}