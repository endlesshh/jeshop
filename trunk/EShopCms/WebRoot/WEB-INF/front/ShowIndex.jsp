   
  
   package com.jspx.action.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;


//用户模板文件管理
public class adminStyleFile extends ActionSupport {

	
	//列举所有的模板文件
	public List<File> filelist ;
	public File file;
	public String fileName = null;

	public List<File> getFilelist() {
		return filelist;
	}
	public void setFilelist(List<File> filelist) {
		this.filelist = filelist;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public File[] listSfile()
	{
		try{
			String fileName = "";
			String conPath = ServletActionContext.getRequest().getContextPath();
			fileName = conPath + "//WEB-INF//front//";
			System.out.println("主站根目录："+conPath);
			File file = new File(fileName);
			if(file.exists())
			{
				
				System.out.println(file.getName());
			}
			
			
			return file.listFiles();
			}catch(Exception e)
			{
				System.out.println(e.toString());
			 return null;
			}
			
	}
	
	
	public String fileStr;
	public String getFileStr() {
		return fileStr;
	}
	public void setFileStr(String fileStr) {
		this.fileStr = fileStr;
	}
	public String findFile()
	{
		this.setErrmsg("");
		if(fileName==null)
		{
			this.setErrmsg("要读取的模板文件名称错误");
			return SUCCESS;
		}
		try{
			
		FileUtils ftools = new FileUtils();
		File file = new File(ServletActionContext.getServletContext().getRealPath("//WEB-INF//front//"+fileName));
		fileStr = ftools.readFileToString(file,"utf-8");
		this.setErrmsg("模板文件读取成功");
		}catch(Exception e)
		{
			this.setErrmsg("模板文件读取发生错误");
			return SUCCESS;
		}
		return SUCCESS;
	}
	public String errmsg ="";
	public String getErrmsg() {
		return errmsg;
	}
	public void setErrmsg(String errmsg) {
		this.errmsg = errmsg;
	}
	
	public String createFile()
	{
		this.setErrmsg("");
		if(fileName==null)
		{
			this.setErrmsg("保存模板时候发生错误请检查！原因：文件名称可能为空");
			return this.listStyleFile();
		}
		try{
		File file = new File(ServletActionContext.getServletContext().getRealPath("//WEB-INF//front//"+fileName));
		if(file.exists())
		{
			
			this.setErrmsg("模板文件已经存在，请重新给模板文件命名");
			return this.listStyleFile();
		}else
		{
			file.createNewFile();
		}
		
		}catch(Exception e)
		{
			this.setErrmsg("新建模板文件错误！原因:"+e.toString());
			return this.listStyleFile();
		}
		
		return this.listStyleFile();
	}
	
	public String saveFile()
	{
		this.setErrmsg("");
		if(fileStr == null||fileName==null)
		{
			this.setErrmsg("保存模板时候发生错误请检查！原因：文件名称可能为空");
			return SUCCESS;
		}
		
		try{
		FileUtils ftools = new FileUtils();
		File file = new File(ServletActionContext.getServletContext().getRealPath("//WEB-INF//front//"+fileName));
		
		ftools.writeStringToFile(file, fileStr,"UTF-8");
		this.setErrmsg("模板保存成功");
		}catch(Exception e)
		{
			this.setErrmsg("保存模板时候发生错误请检查！");
			return SUCCESS;
		}
		return SUCCESS;
	}
	
	
	//下载文件
	public String downFile()
	{
		this.setErrmsg("");
		if(fileName==null)
		{
			this.setErrmsg("模板文件名称错误");
			return SUCCESS;
		}
		try{
		File file = new File(ServletActionContext.getServletContext().getRealPath("//WEB-INF//front//"+fileName));
		FileInputStream filein = new FileInputStream(file);
		HttpServletResponse response = ServletActionContext.getResponse();
		javax.servlet.ServletOutputStream fileout = response.getOutputStream();
		response.setContentType("application/x-msdownload");
		response.setHeader("Content-Disposition", "attachment; filename=" + fileName+ "");
		int filelen = filein.available();
		byte[] bit = new byte[filelen];
		filein.read(bit);
		fileout.write(bit);
		fileout.flush();
		fileout.close();
		}catch(Exception e)
		{
			this.setErrmsg("下载模板文件错误 原因:"+e.toString());
		}
		
		return null;
	}
	
	public static void main(String[] args)
	{
		File file = new File("G:\\Apache Tomcat 6.0.16\\webapps\\EShopCMS\\WEB-INF\\front\\dsfdsfsd.gif");
		if(file.exists())
		{
			file.delete();
		}
	}
	
	public String deleFile()
	{
		if(this.fileName!=null)
		{
			try{
			File file = new File(ServletActionContext.getServletContext().getRealPath("//WEB-INF//front//"+fileName));
			//File file = new File("G:\\Apache Tomcat 6.0.16\\webapps\\EShopCMS\\WEB-INF\\front\\dsfdsfsd.gif");
				
				if(file.exists())
		    {
		    	if(file.delete())
		    	{
		    		this.setErrmsg("模板文件删除成功");
		    		
		    	}
		    	return listStyleFile();
		    }
		   }catch(Exception e)
		   {
			   System.out.println("出现异常"+e.toString());
			   this.setErrmsg("出现异常：说明："+e.toString());
			   return listStyleFile();
		   }
		    this.setErrmsg("模板文件不存在");
		    return listStyleFile();
		}
		this.setErrmsg("文件名称不存在");
		System.out.println("删除文件不存在");
		return listStyleFile();
	}
	
	
	
	public String listStyleFile()
	{
		try{
		String fileName = "";
		String conPath = ServletActionContext.getRequest().getContextPath();
		fileName = "//WEB-INF//front//";
		System.out.println("主站根目录："+fileName);
		File file = new File(ServletActionContext.getServletContext().getRealPath(fileName));
		if(file.exists())
		{
			File[] files = file.listFiles();
			List<File> lf = new ArrayList();
			
			for(int i=0;i<files.length;i++)
			{
				if(files[i].isFile())
				{
					File ft = files[i].getAbsoluteFile();
					lf.add(ft);
				}
				
			}
			this.setFilelist(lf);
		}else
		{
			System.out.println("目录文件不存在"+file.getAbsolutePath());
		}
		
		
		
		}catch(Exception e)
		{
			System.out.println(e.toString());
		}
		
		return SUCCESS;
	}
	
	
	
}
