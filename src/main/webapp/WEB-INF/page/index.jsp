<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBliC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>新贷后smp</title>
<meta content="text/html; charset=utf-8" http-equiv=Content-Type>
<meta content=no-cache http-equiv=Pragma>
<meta content=no-cache http-equiv=Cache-Control>
<meta content=0 http-equiv=Expires>


<link rel=stylesheet type=text/css href="${pageContext.request.contextPath}/static/smp/common.css">
<link rel=stylesheet type=text/css href="${pageContext.request.contextPath}/static/smp/zTreestyle.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/plugins/easyUI/themes/default/easyui.css"
	type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/easyUI/themes/icon.css"
	type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/model.css"></link>


<script type="text/javascript" src="${pageContext.request.contextPath}/static/smp/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/smp/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/smp/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/smp/formValidatorRegex.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/smp/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/smp/ajaxSetup.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/smp/jquery.ztree.core-3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/smp/jquery.ztree.excheck-3.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/smp/jquery.ztree.exedit-3.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/smp/jquery.messager.js">
<script type=text/javascript src="${pageContext.request.contextPath}/static/smp/common.js"></script>

<script type=text/javascript src="${pageContext.request.contextPath}/static/smp/constants.js"></script>
<style type="text/css">
ul.ztree {
	margin-top: 10px;
	border: 1px solid #617775;
	background: #f0f6e4;
}
</style>
<style type=text/css>
UL.ztree {
	BORDER-BOTTOM: #617775 1px solid;
	BORDER-LEFT: #617775 1px solid;
	MARGIN-TOP: 10px;
	BACKGROUND: #f0f6e4;
	BORDER-TOP: #617775 1px solid;
	BORDER-RIGHT: #617775 1px solid
}
</style>
<script>
	function addTab(title, url) {
		if ($('#tabs').tabs('exists', title)) {
			$('#tabs').tabs('select', title);
		} else {
			//var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
			var content = '<iframe name="" border=0 marginWidth=13 marginHeight=0 src="'
					+ url
					+ '" frameBorder=No width=100% scrolling=yes height=100% allowTransparency></iframe>';
			//alert(content);
			$('#tabs').tabs('add', {
				title : title,
				content : content,
				closable : true
			});
		}
	}
</script>
<meta name=GENERATOR content="MSHTML 9.00.8112.16421">
</head>
<body class=easyui-layout>
	<div id=head region="north">
		<span id=logo>新贷后平台</span>
		<UL id=contact>
			<li class=dot1>点击切换组：<input style="WIDTH: 120px" id=group
				onclick=changeGroup() name=group readOnly>
			<li class=dot1>当前登录用户：<font color=dodgerblue size=3>新贷后平台</font>
			<li class=dot1><A onclick=modifyPassword()
				href="http://10.100.30.79:9099/smp/#">修改密码</A>
			<li class=dot1><A onclick=logout()
				href="http://10.100.30.79:9099/smp/#">退出系统</A></li>
		</UL>
	</div>
	<!-- 左侧系统导航列表 -->
	<div style="WIDTH: 200px; OVERFLOW: hidden; padding1: 1px" title=系统列表
		region="west" split="true">

		<div style="margin: 20px 0;"></div>
		<div class="easyui-panel" style="padding: 5px">
			<ul class="easyui-tree">

				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('放款列表','./放款列表/放款列表.htm')" target="_parent"
							style=""><span id="">放款列表</span></a>

					</ul>
				</li>


				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('合同列表','toContract')" target="_parent"
							style=""><span id="">合同列表</span></a>

					</ul>
				</li>
				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('前期费用查询','./前期费用查询/前期费用查询列表.htm')"
							target="_parent" style=""><span id="">前期费用列表</span></a>
					</ul>
				</li>

				<li>

					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('变更服务费列表','./变更服务费/变更服务费.htm')" target="_parent"
							style=""><span id="">变更费用列表</span></a>
					</ul>
				</li>


				<li>
					<ul>

						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('正常待还款列表','./待还款列表/待还款列表.htm')" target="_parent"
							style=""><span id="">正常待还款</span></a>

					</ul>

				</li>




				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('逾期列表','./逾期列表/逾期列表.htm')" target="_parent"
							style=""><span id="">逾期列表</span></a>
					</ul>
				</li>

				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('已还款列表','./已还款列表/已还款列表.htm')" target="_parent"
							style=""><span id="">已还款列表</span></a>
					</ul>

				</li>

				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('扣款结果查询','./扣款结果查询/扣款结果查询列表.htm')"
							target="_parent" style=""><span id="">扣款结果查询</span></a>
					</ul>
				</li>
				<li>
					<ul>
						<a id="" class="" treenode_a="" href="#"
							onclick="addTab('信托扣款明细查询','./信托扣款明细查询/信托扣款明细查询.htm')"
							target="_parent" style=""><span id="">信托扣款明细查询</span></a>
					</ul>
				</li>


				<li state="closed"><span>VL合同管理</span>

					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('成长企业贷合同','./成长企业贷管理/成长企业贷合同管理.htm')"
							target="_parent" style=""><span id="">VL合同列表</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('成长企业贷合同审核列表','./成长企业贷管理/成长企业贷合同审核列表.htm')"
							target="_parent" style=""><span id="">VL合同审核</span></a></li>



					</ul></li>
				<li state="closed"><span>VL合同变更处理</span>

					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('成长企业贷变更申请','./成长企业贷变更处理/成长企业贷合同变更申请列表.htm')"
							target="_parent" style=""><span id="">VL变更申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('成长企业贷变更审核列表','./成长企业贷变更处理/成长企业贷合同变更审核列表.htm')"
							target="_parent" style=""><span id="">VL变更审核</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('成长企业贷变更历史','./成长企业贷变更处理/成长企业贷合同变更历史列表.htm')"
							target="_parent" style=""><span id="">VL变更历史</span></a></li>

					</ul></li>



				<li state="closed"><span>预约还款</span>
					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('预约还款','./预约还款/预约还款申请列表.htm')" target="_parent"
							style=""><span id="">预约还款</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('一次性提前还款申请','./预约还款/一次性提前还款申请列表.htm')"
							target="_parent" style=""><span id="">提前还款预约</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('一次性提前还款初审','./预约还款/一次性提前还款初审列表.htm')"
							target="_parent" style=""><span id="">提前还款初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('一次性提前还款终审','./预约还款/一次性提前还款终审列表.htm')"
							target="_parent" style=""><span id="">提前还款终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('预约还款历史','./预约还款/预约还款大历史.htm')" target="_parent"
							style=""><span id="">预约还款历史</span></a></li>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('系统预约还款历史','./预约还款/系统预约还款大历史.htm')"
							target="_parent" style=""><span id="">系统预约历史</span></a></li>


					</ul></li>













				<li state="closed"><span>减免</span>

					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免申请','./减免/减免合同列表.htm')" target="_parent"
							style=""><span id="">减免申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免初审','./减免/减免初审列表.htm')" target="_parent"
							style=""><span id="">减免初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免终审','./减免/减免终审列表.htm')" target="_parent"
							style=""><span id="">减免终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免历史','./减免/减免大历史.htm')" target="_parent"
							style=""><span id="">减免历史</span></a></li>

					</ul></li>

				<li state="closed"><span>减免结清</span>

					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免结清申请','./减免结清/减免结清申请列表.htm')" target="_parent"
							style=""><span id="">减免结清申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免结清初审','./减免结清/减免结清初审列表.htm')" target="_parent"
							style=""><span id="">减免结清初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免结清终审','./减免结清/减免结清终审列表.htm')" target="_parent"
							style=""><span id="">减免结清终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('减免结清历史','./减免结清/减免结清历史.htm')" target="_parent"
							style=""><span id="">减免结清历史</span></a></li>

					</ul></li>







				<li state="closed"><span>退款</span>


					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('退款申请','./退款/退款申请列表.htm')" target="_parent"
							style=""><span id="">退款申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('退款初审','./退款/退款初审列表.htm')" target="_parent"
							style=""><span id="">退款初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('退款终审','./退款/退款终审列表.htm')" target="_parent"
							style=""><span id="">退款终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('退款历史','./退款/退款大历史.htm')" target="_parent"
							style=""><span id="">退款历史</span></a></li>

					</ul></li>

				<li state="closed"><span>银行卡变更</span>


					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('银行卡变更申请','./银行卡变更/银行卡变更申请列表.htm')"
							target="_parent" style=""><span id="">银行卡变更申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('银行卡变更初审','./银行卡变更/银行卡变更初审列表.htm')"
							target="_parent" style=""><span id="">银行卡变更初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('银行卡变更终审','./银行卡变更/银行卡变更终审列表.htm')"
							target="_parent" style=""><span id="">银行卡变更终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('银行卡变更历史','./银行卡变更/银行卡变更历史.htm')"
							target="_parent" style=""><span id="">银行卡变更历史</span></a></li>

					</ul></li>


				<!--li state="closed">
                   <span>还款方案变更</span>
				
                
                <ul>
				    <li>
					  <a id="" class="" treenode_a="" href="#" onclick="addTab('还款方案变更申请','./还款方案变更/还款方案变更申请.htm')" target="_parent" style=""><span id="">还款方案变更申请</span></a>
				    </li>

				    <li>
                    <a id="" class="" treenode_a="" href="#" onclick="addTab('还款方案变更初定','./还款方案变更/还款方案变更初定.htm')" target="_parent" style=""><span id="">还款方案变更初定</span></a>				   
				    </li>
				   
				    <li>
                    <a id="" class="" treenode_a="" href="#" onclick="addTab('还款方案变更终审','./还款方案变更/还款方案变更终审.htm')" target="_parent" style=""><span id="">还款方案变更终审</span></a>				   
				    </li>
					
					<li>
                    <a id="" class="" treenode_a="" href="#" onclick="addTab('还款方案变更历史','./还款方案变更/还款方案变更历史.htm')" target="_parent" style=""><span id="">还款方案变更历史</span></a>				   
				    </li>
				   
                 </ul>
		   </li-->



				<li state="closed"><span>保证金处理</span>
					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('保证金处理申请','./保证金处理/保证金处理申请列表.htm')"
							target="_parent" style=""><span id="">保证金处理申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('保证金处理初审','./保证金处理/保证金处理初审列表.htm')"
							target="_parent" style=""><span id="">保证金处理初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('保证金处理终审','./保证金处理/保证金处理终审列表.htm')"
							target="_parent" style=""><span id="">保证金处理终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('保证金处理历史','./保证金处理/保证金处理历史.htm')"
							target="_parent" style=""><span id="">保证金处理历史</span></a></li>
					</ul></li>


				<li state="closed"><span>其他费用补录</span>
					<ul>
						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('其他费用补录申请','./其他费用补录/其他费用补录申请列表.htm')"
							target="_parent" style=""><span id="">其他费用补录申请</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('其他费用补录初审','./其他费用补录/其他费用补录初审列表.htm')"
							target="_parent" style=""><span id="">其他费用补录初审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('其他费用补录终审','./其他费用补录/其他费用补录终审列表.htm')"
							target="_parent" style=""><span id="">其他费用补录终审</span></a></li>

						<li><a id="" class="" treenode_a="" href="#"
							onclick="addTab('其他费用补录历史','./其他费用补录/其他费用补录历史.htm')"
							target="_parent" style=""><span id="">其他费用补录历史</span></a></li>
					</ul></li>




				<!--li>
	  
		    <ul>
				   <a id="" class="" treenode_a="" href="#" onclick="addTab('融资租赁经销商保证金确认','./融资租赁经销商保证金确认/融资租赁经销商保证金确认.htm')" target="_parent" style=""><span id="">经销商保证金确认</span></a>
		    </ul>
	   </li-->

				<!--li state="closed">
                <span>信托担保补偿金</span>
		
               <ul>
				  <li>
					<a id="" class="" treenode_a="" href="#" onclick="addTab('待补偿列表','./信托担保补偿金/待补偿列表.htm')" target="_parent" style=""><span id="">待补偿列表</span></a>
				  </li>

				  <li>
                    <a id="" class="" treenode_a="" href="#" onclick="addTab('已补偿列表','./信托担保补偿金/已补偿列表.htm')" target="_parent" style=""><span id="">已补偿列表</span></a>				   
				  </li>
				  
				 </ul>
		   </li-->


				<!--li>
               
                <ul>
						
						<a id="" class="" treenode_a="" href="#" onclick="addTab('融资租赁其他费用补录','./其他费用补录/其他费用补录.htm')" target="_parent" style=""><span id="">融资租赁其他费用补录</span></a>
						
                </ul>
            </li-->
		</div>

		<div id=navlist class=easyui-accordion border="false" fit="true"></div>
	</div>

	<!-- 右侧Tab选项卡 -->
	<div style="" title="主页" region="center">

		<div id=tabs class=easyui-tabs border="false" fit="true">

			<!--div id="tab1"  name="1" class="easyui-tabs"   closable="true"  title="减免结清">  

           <iframe name="sq" border=0 marginWidth=13 marginHeight=0 src="减免结清.htm" frameBorder=No width="1600" scrolling=yes height=600 allowTransparency>
</iframe>
	</div>


<div id="tab2"  name="2 "  class="easyui-tabs"  closable="true"   title="减免结清初审"> 
<iframe name="chsh" border=0 marginWidth=13 marginHeight=0 src="减免结清初审.htm" frameBorder=No width=1600 scrolling=yes height=600 allowTransparency>
</iframe>
</div>

<div id="tab3"  name="3"  class="easyui-tabs"   closable="true"  title="减免结清终审"> 
<iframe name="zhsh" border=0 marginWidth=13 marginHeight=0 src="减免结清终审.htm" frameBorder=No width=1600 scrolling=yes height=600 allowTransparency>
</iframe>
</div>

<div id="tab4"  name="4"  class="easyui-tabs"   closable="true"  title="减免结清历史"> 

<iframe name="lish" border=0 marginWidth=13 marginHeight=0 src="减免结清历史.htm" frameBorder=No width=1600 scrolling=yes height=600 allowTransparency>
</iframe>
</div-->





		</div>
	</div>
	<!-- 选项卡右键菜单 -->


</body>

</html>