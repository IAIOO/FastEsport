package com.neusoft.system.tools;

import java.io.File;
import java.security.MessageDigest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import com.neusoft.system.db.DBUtils;

public class Tools 
{

	public static void main(String[] args) 
	{
//		try 
//		{
//			String aab103=Tools.getEmpNumber();
//			System.out.println(aab103);
//		}
//		catch (Exception e) 
//		{
//			e.printStackTrace();
//		}
	}
	private Tools() {}
	
	//计算赔率,保留小数点后两位
	public static double calculate(String a,String b){

		double aa=Double.valueOf(a);
		double bb=Double.valueOf(b);

		double c =  (aa + bb)/aa;
		return (double) ((Math.round((c - 0.005) * 100)) / 100.0);
	}

	public static String getPath2(String name)throws Exception{
		//String path = this.getClass().getClassLoader().getResource("").getPath() + "name";
		File file=new File(name);
		return file.getPath();
	}
	
	public static String[] getRows(List<Map<String,String>> ac05Rows,String sz) throws Exception{
		//随机打乱
		Collections.shuffle(ac05Rows);
		String[] idRows=new String[ac05Rows.size()*6];
		int teamNum=ac05Rows.size()/4;//每个分组的队伍数量
		//普通单败赛制
		if(sz=="1"){
			//得到参赛人员的序列号
			System.out.println("aac501(1) = "+ac05Rows.get(1).get("aac501"));
			System.out.println("aac501(1) = "+ac05Rows.get(1).get("aac501"));
			if (ac05Rows.size()!=0) {

				for (int i = 0; i < ac05Rows.size(); i++) {
					idRows[i] = ac05Rows.get(i).get("aac501");
				}
				System.out.println(idRows);
			}else {
				System.out.println("ac05表为空");
			}
		}else if (sz=="2"){
			//分为四个小组
			//小组双循环，假设参赛人员可以被四整除
			String[][] temp=new String[4][teamNum*6*4];

			int[][] array = new int[teamNum + 1][teamNum + 1];

			System.out.println("aac501(0) = "+ac05Rows.get(0).get("aac501"));
			System.out.println("aac501(1) = "+ac05Rows.get(1).get("aac501"));

			table((int) (Math.log(teamNum)/Math.log(2)),array,teamNum);
			int m=0;
			for(int n=0;n<4;n++) {//分为四个组
				for (int i = 1; i <= teamNum; i++) {
					for (int j = 1; j <= teamNum; j++) {
						if (j != 1) {
							idRows[m] = ac05Rows.get(4*n+array[i][1]-1).get("aac501");
							idRows[m + 1] = ac05Rows.get(4*n+array[i][j]-1).get("aac501");
							m=m+2;
						}
					}
				}
			}

		}
		return idRows;
	}


	/**
	 *
	 * @title RoundRobinSchedule
	 * @describe 循环赛日程表：
	 *           设有n=2^k个运动员要进行循环赛。
	 *           现要设计一个满足以下要求的比赛日程表：
	 *           (1)每个选手必须与其他n-1个选手各赛一次；
	 *           (2)每个选手一天只能参赛一次；
	 *           (3)循环赛在n-1天内结束。
	 *           按此要求将比赛日程表设计成有n行和n-1列的一个表。
	 *           在表中的第i行，第j列处填入第i个选手在第j天所遇到的选手。
	 */



	/**
	 *
	 * @param k：2^k个运动员
	 * @param a：循环赛日程表
	 * @param n：运动员的人数
	 */
	private static void table(int k, int[][] a, int n) {
		// 设置日程表第一行
		for (int i = 1; i <= n; i++) {
			a[1][i] = i;
		}
		// 每次填充时，起始填充位置
		int m = 1;
		for (int s = 1; s <= k; s++) {
			n /= 2;
			for (int t = 1; t <= n; t++) {
				// 控制行
				for (int i = m + 1; i <= 2 * m; i++) {
					// 控制列
					for (int j = m + 1; j <= 2 * m; j++) {
						// 右下角等于左上角的值
						a[i][j + (t - 1) * m * 2] = a[i - m][j + (t - 1) * m * 2 - m];
						// 左下角等于右上角的值
						a[i][j + (t - 1) * m * 2 - m] = a[i - m][j + (t - 1) * m * 2];
					}
				}
			}
			m *= 2;
		}
	}

	// 输出日程表
	private static void printTable(int[] array[], int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= n; j++) {
				System.out.print(array[i][j] + " ");
			}
			System.out.println();
		}
	}



	//将所有的报名参赛的选手导入到excel中
	public static void db2Excel(List<Map<String,String>> ac05Rows)throws Exception{

	}

	/***************************************************************************
	 *                    MD5Begin
	 ***************************************************************************/
	
	
   public static String getMd5(Object pwd)throws Exception
   {
		/**
		 * MD5二次混淆加密
		 */
		//完成原始加密
		String md5pwd1=Tools.MD5Encode(pwd);
		//生成混淆明文
		String pwd2=md5pwd1+"fastesport"+md5pwd1;
		String md5pwd2=Tools.MD5Encode(pwd2);
		return md5pwd2;

   }

   
    private final static String[] hexDigits = {
	     "0", "1", "2", "3", "4", "5", "6", "7",
	     "8", "9", "a", "b", "c", "d", "e", "f"
	     };

	  /**
	   * 转换字节数组为16进制字串
	   * @param b 字节数组
	   * @return 16进制字串
	   */
	  private static String byteArrayToHexString(byte[] b)
	  {
	      StringBuffer resultSb = new StringBuffer();
	      for (int i = 0; i < b.length; i++)
	      {
	         resultSb.append(byteToHexString(b[i]));
	      }
	      return resultSb.toString();
	  }
	  /**
	   * 转换字节为16进制字符串
	   * @param b byte
	   * @return String
	   */
	  private static String byteToHexString(byte b)
	  {
	      int n = b;
	      if (n < 0)
	         n = 256 + n;
	      int d1 = n / 16;
	      int d2 = n % 16;
	      return hexDigits[d1] + hexDigits[d2];
	  }
	  /**
	   * 得到MD5的秘文密码
	   * @param origin String
	   * @throws Exception
	   * @return String
	   */
	  private static String MD5Encode(Object origin) throws Exception
	  {
	       String resultString = null;
	       try
	       {
	           resultString=new String(origin.toString());
	           MessageDigest md = MessageDigest.getInstance("MD5");
	           resultString=byteArrayToHexString(md.digest(resultString.getBytes()));
	           return resultString;
	       }
	       catch (Exception ex)
	       {
	          throw ex;
	       }
	  }	
	/***************************************************************************
	 *                    MD5End
	 ***************************************************************************/
	
	/**
	 * 获取用户流水号
	 * @return  String number="yyyy"+4位流水码
	 * @throws Exception
	 */
	public static String getUserNumber()throws Exception
	{
		return Tools.getCurrentYear()+Tools.getFormatNumber("U");
	}
	
	private static final String baseCode1="0000";
	
	/**
	 * 获取格式化的尾码
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static String getFormatNumber(String firstName)throws Exception
	{
		//1.获取流水号
		int lastNumber=Tools.getNumnberForYear(firstName);
		//2.计算流水号的宽度
		int size=String.valueOf(lastNumber).length();
		
		return baseCode1.substring(size)+lastNumber;
		
	}
	
	/**
	 * 获取编号尾码
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static int getNumnberForYear(String firstName)throws Exception
	{
		PreparedStatement pstm1=null;
		PreparedStatement pstm2=null;
		ResultSet rs=null;
		try
		{
			//1.定义SQL语句查询当前值
			StringBuilder sql1=new StringBuilder()
					.append("select a.pkvalue ")
					.append("  from sequence a ")
					.append("  where date_format(a.sdate,'%Y')=date_format(current_date,'%Y')")
					.append("    and a.pkname=?")
					;
			pstm1=DBUtils.prepareStatement(sql1.toString());
			pstm1.setObject(1, firstName);
			rs=pstm1.executeQuery();
			
			int currentVal=0;
			StringBuilder sql2=new StringBuilder();
			if(rs.next())
			{
				currentVal=rs.getInt(1);
				sql2.append("update sequence ")
				    .append("   set pkvalue=?")
				    .append(" where date_format(sdate,'%Y')=date_format(current_date,'%Y')")
				    .append("   and pkname=?")
				;
			}
			else
			{
				sql2.append("insert into sequence(pkvalue,pkname,sdate)")
				    .append("              values(?,?,current_date)")
				;
			}
			pstm2=DBUtils.prepareStatement(sql2.toString());
			pstm2.setObject(1, ++currentVal);
			pstm2.setObject(2, firstName);
			pstm2.executeUpdate();
			
			return currentVal;
		}
		finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm1);
			DBUtils.close(pstm2);
		}
		
		
	}
	
	/**
	 * 获取年码
	 * @return
	 */
	private static String  getCurrentYear()
	{
//		//实例化日期格式类
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
//		//获取系统当前日期
//		Date d=new Date();
//		//格式化当前日期
//		String str_date=sdf.format(d);
//		return str_date;
		
		
		return new SimpleDateFormat("yyyy").format(new java.util.Date());
	}
	
	/**
	 * 获取当前日期	
	 * @return
	 */
	
	public static String getCurrentDate()
	{
//		SimpleDateFormat gcd = new SimpleDateFormat("yyyy-MM-dd");
//		Date d=new Date();
//		String gcd_date=gcd.format(d);
//		return gcd_date;
		return new SimpleDateFormat("yyyy.MM.dd").format(new java.util.Date());

	}

	public static String ArrayToString(Object element)
	{
		//空值拦截
		if(element==null || element.equals(""))
		{
			return "";
		}
		
		//判断element到底是什么?是字符串还是字符串数组
		if(element instanceof java.lang.String[])
		{
			//将参数转换成字符串数组
			String arr[]=(String[])element;
			//计算数组长度
			int len=arr.length;
			//构造动态字符串对象,装载数组的每个元素
			StringBuilder tem=new StringBuilder(arr[0]);
			//循环读取数组的后继元素
			for(int i=1;i<len;i++)
			{
				tem.append(arr[i]);
			}
			return tem.toString();
		}
		else
		{
			return element.toString();
		}	
		
	}
			
	/**
	 * 将数组连接成字符串
	 * @param element
	 * @return
	 */
	public static String joinArray(Object element)
	{
		//空值拦截
		if(element==null || element.equals(""))
		{
			return "";
		}
		
		//判断element到底是什么?是字符串还是字符串数组
		if(element instanceof java.lang.String[])
		{
			//将参数转换成字符串数组
			String arr[]=(String[])element;
			//计算数组长度
			int len=arr.length;
			//构造动态字符串对象,装载数组的每个元素
			StringBuilder tem=new StringBuilder(arr[0]);
			//循环读取数组的后继元素
			for(int i=1;i<len;i++)
			{
				tem.append(",").append(arr[i]);
			}
			return tem.toString();
		}
		else
		{
			return element.toString();
		}	
		
	}
	
	/**
	 * 创建数据传输对象
	 * @param request
	 * @return
	 */
	public static Map<String,Object> createDto(HttpServletRequest request)
	{
		//1.获取页面数据
		Map<String,String[]> tem=request.getParameterMap();
		int initSize=((int)(tem.size()/0.75))+1;
		//2.导出所有键值对,形成键值对集合
		Set<Entry<String,String[]>> entrySet=tem.entrySet();
		//3.定义数组,表示Enetry的value部分
		String value[]=null;
		
		//4.定义DTO容器
		Map<String,Object> dto=new HashMap<>(initSize);
		//5.循环读取entrySet,获取每个键值对
		for(Entry<String,String[]> entry :entrySet)
		{
			//获取value部分的数组
			value=entry.getValue();
			//依据长度判断页面控件的类别
			if(value.length==1)  //非checkbox类控件
			{
		        //过滤掉页面未填充项目
				if(value[0]!=null && !value[0].equals(""))
				{
					dto.put(entry.getKey(), value[0]);
				}
			}
			else     //checkbox类控件
			{
				dto.put(entry.getKey(), value);
			}	
		}
		//System.out.println(dto);
		return dto;
	}
	
	 /**
	  * 获取主键值 
	  * @param pkname
	  * @return
	  * @throws Exception
	  */
    public static int getSequence(String pkname)throws Exception
    {
   	 PreparedStatement pstm1=null;    //查询序列的当前值
   	 PreparedStatement pstm2=null;    //修改序列的当前值
   	 ResultSet rs=null;
   	 try
   	 {
   		 //定义SQL语句,查询序列的当前值
   		 String sql1="select a.pkvalue from sequence a where a.pkname=?";
   		 //编译SQL1
   		 pstm1=DBUtils.prepareStatement(sql1);
   		 //参数赋值
   		 pstm1.setObject(1, pkname);
   		 //执行查询
   		 rs=pstm1.executeQuery();
   		 
   		 //定义序列当前值
   		 int currentVal=0;
   		 //判断数据库中,是否存在当前列的值
   		 if(rs.next())
   		 {
   			 //读取数据库当前值,为序列赋值
   			 currentVal=rs.getInt(1);
   			 
   			 //修改数据中的值,在原来基础上+1
   			 String sql2="update sequence set pkvalue=? where pkname=?";
   			 pstm2=DBUtils.prepareStatement(sql2);
   			 pstm2.setObject(1, ++currentVal);
   			 pstm2.setObject(2, pkname);
   			 pstm2.executeUpdate();
   			 
   		 }
   		 else
   		 {
   			 //向数据库录入当前主键的数据,pkvalue值为1
   			 String sql2="insert into sequence(pkname,pkvalue) values(?,?)";
   			 pstm2=DBUtils.prepareStatement(sql2);
   			 pstm2.setObject(1, pkname);
   			 pstm2.setObject(2, ++currentVal);
   			 pstm2.executeUpdate();
   		 }	 
   		 
   		 return currentVal;
   		 
   	 }
   	 finally
   	 {
   		 DBUtils.close(rs);
   		 DBUtils.close(pstm1);
   		 DBUtils.close(pstm2);
   	 }
    }

}
