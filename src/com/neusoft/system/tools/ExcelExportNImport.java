package com.neusoft.system.tools;

import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import java.io.*;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 * TODO-
 * need
 * �ļ��ϴ����
 */
public class ExcelExportNImport {


    //�����еı���������ѡ�ֵ��뵽excel��
    public static void List2Excel(List<Map<String,String>> rows,String aaf101)throws Exception{

        //�ļ�����·��
        String path="D:/";
        //����HSSFWorkbook����
        HSSFWorkbook hssfWorkbook=new HSSFWorkbook();
        //����������
        HSSFSheet sheet=hssfWorkbook.createSheet();
        //����������
        HSSFRow titleRow=sheet.createRow(0);
        titleRow.createCell(0).setCellValue("��ˮ��");
        titleRow.createCell(1).setCellValue("�������к�");
        titleRow.createCell(2).setCellValue("aac502");
        titleRow.createCell(3).setCellValue("ѡ�����к�");

        //�������ݣ�����������
        for(int i=0;i<rows.size();i++){
            //����������
            HSSFRow row=sheet.createRow(i+1);
            //�������
            row.createCell(0).setCellValue(rows.get(i).get("aac501"));
            row.createCell(1).setCellValue(rows.get(i).get("aaf101"));
            row.createCell(2).setCellValue(rows.get(i).get("aac502"));
            row.createCell(3).setCellValue(rows.get(i).get("aab101"));
        }

        //�����ļ���
        String fileName=aaf101+"����������Ա��.xls";
        //��ȡ���������


        FileOutputStream fileOutputStream=new FileOutputStream(path+fileName);
        hssfWorkbook.write(fileOutputStream);
        hssfWorkbook.close();

    }
    
    //�����̱���
    public static void List2ExcelS(List<Map<String,String>> rows,String aaf101)throws Exception{

        //�ļ�����·��
        String path="D:/";
        //����HSSFWorkbook����
        HSSFWorkbook hssfWorkbook=new HSSFWorkbook();
        //����������
        HSSFSheet sheet=hssfWorkbook.createSheet();
        //����������
        HSSFRow titleRow=sheet.createRow(0);
        titleRow.createCell(0).setCellValue("��ˮ��");
        titleRow.createCell(1).setCellValue("�������к�");
        titleRow.createCell(2).setCellValue("����A");
        titleRow.createCell(3).setCellValue("����B");
        titleRow.createCell(4).setCellValue("����ʱ��");
        titleRow.createCell(5).setCellValue("A�÷�");
        titleRow.createCell(6).setCellValue("B�÷�");

        //�������ݣ�����������
        for(int i=0;i<rows.size();i++){
            //����������
            HSSFRow row=sheet.createRow(i+1);
            //�������
            row.createCell(0).setCellValue(rows.get(i).get("aaf201"));
            row.createCell(1).setCellValue(rows.get(i).get("aaf101"));
            row.createCell(2).setCellValue(rows.get(i).get("aaf202"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf203"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf204"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf205"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf206"));
        }

        //�����ļ���
        String fileName=aaf101+"��������̱�.xls";
        //��ȡ���������


        FileOutputStream fileOutputStream=new FileOutputStream(path+fileName);
        hssfWorkbook.write(fileOutputStream);
        hssfWorkbook.close();

    }

    public static List<List<String>> excel2List(String filePath)throws Exception{


        //String filePath="D://����.xlsx";
        List<List<String>> rows=new ArrayList<>();

        //��ȡ�ļ�������
        InputStream inputStream=new FileInputStream(filePath);
        //��ȡExcel��������

        Sheet sheetAt = null;
        Workbook workbook=null;

        try{

            if(filePath.endsWith("xlsx")) {
                workbook=new XSSFWorkbook(inputStream);
            }else if(filePath.endsWith("xls")){
                workbook=new HSSFWorkbook(inputStream);
            }else{
                workbook=null;
            }
            if(workbook!=null) {
                sheetAt = workbook.getSheetAt(0);
                //ѭ����ȡ�������

                for (Row rows1 : sheetAt) {
                    List list = new ArrayList();
                    //��ͷ���ݲ���ȡ
                    if (rows1.getRowNum() == 0) {
                        continue;
                    }
                    for (int i = 0; i < rows1.getLastCellNum(); i++) {
//                        if (rows1.getCell(i) != null) {
//                            rows1.getCell(i).setCellType(CellType.STRING);
//                        }
                        list.add(parseExcel(rows1.getCell(i)));
                    }
                    rows.add(list);
                }
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return rows;
    }
    private static String parseExcel(Cell cell) {
        String result = new String();
        switch (cell.getCellType()) {
            case NUMERIC:// ��������
                if (HSSFDateUtil.isCellDateFormatted(cell)) {// �������ڸ�ʽ��ʱ���ʽ
                    SimpleDateFormat sdf = null;
                    if (cell.getCellStyle().getDataFormat() == HSSFDataFormat
                            .getBuiltinFormat("h:mm")) {
                        sdf = new SimpleDateFormat("HH:mm");
                    } else {// ����
                        sdf = new SimpleDateFormat("yyyy-MM-dd");
                    }
                    Date date = cell.getDateCellValue();
                    result = sdf.format(date);
                } else if (cell.getCellStyle().getDataFormat() == 58) {
                    // �����Զ������ڸ�ʽ��m��d��(ͨ���жϵ�Ԫ��ĸ�ʽid�����id��ֵ��58)
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    double value = cell.getNumericCellValue();
                    Date date = org.apache.poi.ss.usermodel.DateUtil
                            .getJavaDate(value);
                    result = sdf.format(date);
                } else {
                    double value = cell.getNumericCellValue();
                    CellStyle style = cell.getCellStyle();
                    DecimalFormat format = new DecimalFormat();
                    String temp = style.getDataFormatString();
                    // ��Ԫ�����óɳ���
                    if (temp.equals("General")) {
                        format.applyPattern("#");
                    }
                    result = format.format(value);
                }
                break;
            case STRING:// String����
                result = cell.getRichStringCellValue().toString();
                break;
            case BLANK:
                result = "";
            default:
                result = "";
                break;
        }
        return result;
    }



    public static void main(String args[])throws Exception{

        String filePath="/�ڷ������ϵ����·��";
        List<List<String>> rows=excel2List(filePath);
    }
}
