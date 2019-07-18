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
	
	//��������,����С�������λ
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
		//�������
		Collections.shuffle(ac05Rows);
		String[] idRows=new String[ac05Rows.size()*6];
		int teamNum=ac05Rows.size()/4;//ÿ������Ķ�������
		//��ͨ��������
		if(sz=="1"){
			//�õ�������Ա�����к�
			System.out.println("aac501(1) = "+ac05Rows.get(1).get("aac501"));
			System.out.println("aac501(1) = "+ac05Rows.get(1).get("aac501"));
			if (ac05Rows.size()!=0) {

				for (int i = 0; i < ac05Rows.size(); i++) {
					idRows[i] = ac05Rows.get(i).get("aac501");
				}
				System.out.println(idRows);
			}else {
				System.out.println("ac05��Ϊ��");
			}
		}else if (sz=="2"){
			//��Ϊ�ĸ�С��
			//С��˫ѭ�������������Ա���Ա�������
			String[][] temp=new String[4][teamNum*6*4];

			int[][] array = new int[teamNum + 1][teamNum + 1];

			System.out.println("aac501(0) = "+ac05Rows.get(0).get("aac501"));
			System.out.println("aac501(1) = "+ac05Rows.get(1).get("aac501"));

			table((int) (Math.log(teamNum)/Math.log(2)),array,teamNum);
			int m=0;
			for(int n=0;n<4;n++) {//��Ϊ�ĸ���
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
	 * @describe ѭ�����ճ̱�
	 *           ����n=2^k���˶�ԱҪ����ѭ������
	 *           ��Ҫ���һ����������Ҫ��ı����ճ̱�
	 *           (1)ÿ��ѡ�ֱ���������n-1��ѡ�ָ���һ�Σ�
	 *           (2)ÿ��ѡ��һ��ֻ�ܲ���һ�Σ�
	 *           (3)ѭ������n-1���ڽ�����
	 *           ����Ҫ�󽫱����ճ̱���Ƴ���n�к�n-1�е�һ����
	 *           �ڱ��еĵ�i�У���j�д������i��ѡ���ڵ�j����������ѡ�֡�
	 */



	/**
	 *
	 * @param k��2^k���˶�Ա
	 * @param a��ѭ�����ճ̱�
	 * @param n���˶�Ա������
	 */
	private static void table(int k, int[][] a, int n) {
		// �����ճ̱��һ��
		for (int i = 1; i <= n; i++) {
			a[1][i] = i;
		}
		// ÿ�����ʱ����ʼ���λ��
		int m = 1;
		for (int s = 1; s <= k; s++) {
			n /= 2;
			for (int t = 1; t <= n; t++) {
				// ������
				for (int i = m + 1; i <= 2 * m; i++) {
					// ������
					for (int j = m + 1; j <= 2 * m; j++) {
						// ���½ǵ������Ͻǵ�ֵ
						a[i][j + (t - 1) * m * 2] = a[i - m][j + (t - 1) * m * 2 - m];
						// ���½ǵ������Ͻǵ�ֵ
						a[i][j + (t - 1) * m * 2 - m] = a[i - m][j + (t - 1) * m * 2];
					}
				}
			}
			m *= 2;
		}
	}

	// ����ճ̱�
	private static void printTable(int[] array[], int n) {
		for (int i = 1; i <= n; i++) {
			for (int j = 1; j <= n; j++) {
				System.out.print(array[i][j] + " ");
			}
			System.out.println();
		}
	}



	//�����еı���������ѡ�ֵ��뵽excel��
	public static void db2Excel(List<Map<String,String>> ac05Rows)throws Exception{

	}

	/***************************************************************************
	 *                    MD5Begin
	 ***************************************************************************/
	
	
   public static String getMd5(Object pwd)throws Exception
   {
		/**
		 * MD5���λ�������
		 */
		//���ԭʼ����
		String md5pwd1=Tools.MD5Encode(pwd);
		//���ɻ�������
		String pwd2=md5pwd1+"fastesport"+md5pwd1;
		String md5pwd2=Tools.MD5Encode(pwd2);
		return md5pwd2;

   }

   
    private final static String[] hexDigits = {
	     "0", "1", "2", "3", "4", "5", "6", "7",
	     "8", "9", "a", "b", "c", "d", "e", "f"
	     };

	  /**
	   * ת���ֽ�����Ϊ16�����ִ�
	   * @param b �ֽ�����
	   * @return 16�����ִ�
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
	   * ת���ֽ�Ϊ16�����ַ���
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
	   * �õ�MD5����������
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
	 * ��ȡ�û���ˮ��
	 * @return  String number="yyyy"+4λ��ˮ��
	 * @throws Exception
	 */
	public static String getUserNumber()throws Exception
	{
		return Tools.getCurrentYear()+Tools.getFormatNumber("U");
	}
	
	private static final String baseCode1="0000";
	
	/**
	 * ��ȡ��ʽ����β��
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static String getFormatNumber(String firstName)throws Exception
	{
		//1.��ȡ��ˮ��
		int lastNumber=Tools.getNumnberForYear(firstName);
		//2.������ˮ�ŵĿ��
		int size=String.valueOf(lastNumber).length();
		
		return baseCode1.substring(size)+lastNumber;
		
	}
	
	/**
	 * ��ȡ���β��
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
			//1.����SQL����ѯ��ǰֵ
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
	 * ��ȡ����
	 * @return
	 */
	private static String  getCurrentYear()
	{
//		//ʵ�������ڸ�ʽ��
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy");
//		//��ȡϵͳ��ǰ����
//		Date d=new Date();
//		//��ʽ����ǰ����
//		String str_date=sdf.format(d);
//		return str_date;
		
		
		return new SimpleDateFormat("yyyy").format(new java.util.Date());
	}
	
	/**
	 * ��ȡ��ǰ����	
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
		//��ֵ����
		if(element==null || element.equals(""))
		{
			return "";
		}
		
		//�ж�element������ʲô?���ַ��������ַ�������
		if(element instanceof java.lang.String[])
		{
			//������ת�����ַ�������
			String arr[]=(String[])element;
			//�������鳤��
			int len=arr.length;
			//���춯̬�ַ�������,װ�������ÿ��Ԫ��
			StringBuilder tem=new StringBuilder(arr[0]);
			//ѭ����ȡ����ĺ��Ԫ��
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
	 * ���������ӳ��ַ���
	 * @param element
	 * @return
	 */
	public static String joinArray(Object element)
	{
		//��ֵ����
		if(element==null || element.equals(""))
		{
			return "";
		}
		
		//�ж�element������ʲô?���ַ��������ַ�������
		if(element instanceof java.lang.String[])
		{
			//������ת�����ַ�������
			String arr[]=(String[])element;
			//�������鳤��
			int len=arr.length;
			//���춯̬�ַ�������,װ�������ÿ��Ԫ��
			StringBuilder tem=new StringBuilder(arr[0]);
			//ѭ����ȡ����ĺ��Ԫ��
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
	 * �������ݴ������
	 * @param request
	 * @return
	 */
	public static Map<String,Object> createDto(HttpServletRequest request)
	{
		//1.��ȡҳ������
		Map<String,String[]> tem=request.getParameterMap();
		int initSize=((int)(tem.size()/0.75))+1;
		//2.�������м�ֵ��,�γɼ�ֵ�Լ���
		Set<Entry<String,String[]>> entrySet=tem.entrySet();
		//3.��������,��ʾEnetry��value����
		String value[]=null;
		
		//4.����DTO����
		Map<String,Object> dto=new HashMap<>(initSize);
		//5.ѭ����ȡentrySet,��ȡÿ����ֵ��
		for(Entry<String,String[]> entry :entrySet)
		{
			//��ȡvalue���ֵ�����
			value=entry.getValue();
			//���ݳ����ж�ҳ��ؼ������
			if(value.length==1)  //��checkbox��ؼ�
			{
		        //���˵�ҳ��δ�����Ŀ
				if(value[0]!=null && !value[0].equals(""))
				{
					dto.put(entry.getKey(), value[0]);
				}
			}
			else     //checkbox��ؼ�
			{
				dto.put(entry.getKey(), value);
			}	
		}
		//System.out.println(dto);
		return dto;
	}
	
	 /**
	  * ��ȡ����ֵ 
	  * @param pkname
	  * @return
	  * @throws Exception
	  */
    public static int getSequence(String pkname)throws Exception
    {
   	 PreparedStatement pstm1=null;    //��ѯ���еĵ�ǰֵ
   	 PreparedStatement pstm2=null;    //�޸����еĵ�ǰֵ
   	 ResultSet rs=null;
   	 try
   	 {
   		 //����SQL���,��ѯ���еĵ�ǰֵ
   		 String sql1="select a.pkvalue from sequence a where a.pkname=?";
   		 //����SQL1
   		 pstm1=DBUtils.prepareStatement(sql1);
   		 //������ֵ
   		 pstm1.setObject(1, pkname);
   		 //ִ�в�ѯ
   		 rs=pstm1.executeQuery();
   		 
   		 //�������е�ǰֵ
   		 int currentVal=0;
   		 //�ж����ݿ���,�Ƿ���ڵ�ǰ�е�ֵ
   		 if(rs.next())
   		 {
   			 //��ȡ���ݿ⵱ǰֵ,Ϊ���и�ֵ
   			 currentVal=rs.getInt(1);
   			 
   			 //�޸������е�ֵ,��ԭ��������+1
   			 String sql2="update sequence set pkvalue=? where pkname=?";
   			 pstm2=DBUtils.prepareStatement(sql2);
   			 pstm2.setObject(1, ++currentVal);
   			 pstm2.setObject(2, pkname);
   			 pstm2.executeUpdate();
   			 
   		 }
   		 else
   		 {
   			 //�����ݿ�¼�뵱ǰ����������,pkvalueֵΪ1
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
