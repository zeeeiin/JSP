<%@page import="com.sky.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<div style="text-align: center"></div>
	<h3>* ���̵� �ߺ� Ȯ�� ��� *</h3>
	
<%
    //1) ��밡���� ���̵��� ���, ���̵� �Է� ���� �ֱ� ����
    String id=request.getParameter("id");
    UserDAO dao = UserDAO.getInstance();
    //UserDAO dao = new UserDAO();
    int cnt = dao.idCheck(id);
    out.println("�Է� ID : <strong>" + id + "</stong>");
    if(cnt==0){
    	out.println("<p>��� ������ ���̵��Դϴ�.</p>");
		out.println("<a href='javascript:apply(\"" + id + "\")'>[����]</a>");
	
    }else{
    	out.println("<p style='color: red'>�ش� ���̵�� ����Ͻ� �� �����ϴ�.</p>");
    }//if end
%>

	<script>
    	function apply(id){
            //2) �ߺ�Ȯ�� id�� �θ�â�� ����
            //�θ�â opener
            opener.document.regForm.id.value=id;
            window.close(); //â�ݱ�
        }//apply () end
    </script>
  
 <hr>
 
 <a href="javascript:history.back()">[�ٽýõ�]</a>
 &nbsp; &nbsp;
 <a href="javascript:window.close()">[â�ݱ�]</a>
 

</body>
</html>