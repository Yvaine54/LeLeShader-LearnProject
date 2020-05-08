// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader"Yvaine/P105/simple shader"{
	Subshader{
		Pass{
		CGPROGRAM//我用CG语言跟你讲个故事
		#pragma vertex vert //从前有个男的叫vert
		#pragma fragment frag//还有个女的叫frag
		

		//某天，女的叫男的给她做个帽子

		//写个结构体，作为需要的材料单，给男的去做帽子
		struct a2v {
			float4 vertex:POSITION;
			float3 normal:NORMAL;
			float4 texcoord:TEXCOORD0;
		};

		//写个结构体，女的向男生描述她想要的帽子。
		struct v2f {
			float4 pos:SV_POSITION; //这帽子有个完美的形状（男的自己发挥）
			float3 color:COLOR0; //这帽子要有个好看的颜色（男的自己发挥）
		};
		
		v2f vert(a2v v) {//开始了开始了，我就是那男的，我叫vert。我按照a2v的单子，搞了一个我的材料包，这个材料包叫“v”
			v2f o;//然后我要按照女生的需求，做一个我设计的帽子o
			o.pos = UnityObjectToClipPos(v.vertex);//我思考了下，给了个被矩阵蹂躏过的形状
			o.color = fixed3(0, 1, 0);//然后调了个绿色，应该比较有趣~
			return o;//妥了妥了，设计完了，我把设计往v2f需求一套！完美！
		//frag肯定打不死我。
		}

		fixed3 frag(v2f i) :SV_Target{//好的，我是frag女，现在我去拿vert男按照我的v2f要求做的帽子，
			//因为是我专属的，所以我给它重新取了名字叫“i”，而且实际上我只关心这帽子的颜色fixed3....
			return fixed3(i.color);//emmmmmm我拿到了，绿的？！什么男的啊！！！
			//return！return！return！return！我要发朋友圈，告诉全世界，这男的居然给了我个绿色浽4BE驧稳8摂4V?2(L焬?Kㄐ嵩-嵴骫 & M 
		}

		ENDCG
			//鹌鹑故事讲完了。
		}
	}
}

