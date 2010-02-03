<%@ page import = "java.io.*,java.util.*"%> 
<%
  //保存图像数据流
  String filePath = request.getRealPath("/upfile/"+request.getParameter("picFilename"));
  File file = new File(filePath);
 
	  if(!file.exists())
	  {
		  file.createNewFile();
	  }
 
  System.out.print("filepath==" + filePath);
  BufferedInputStream inputStream = new BufferedInputStream(request.getInputStream());
  FileOutputStream outputStream = new FileOutputStream(file);
  byte [] bytes = new byte[1024];
  int v;
  while((v=inputStream.read(bytes))>0)
  {
    outputStream.write(bytes,0,v);
  }
  outputStream.close();
  inputStream.close();
%>