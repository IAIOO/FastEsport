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
 * 文件上传相关
 */
public class ExcelExportNImport {


    //将所有的报名参赛的选手导入到excel中
    public static void List2Excel(List<Map<String,String>> rows,String aaf101)throws Exception{

        //文件保存路径
        String path="D:/";
        //创建HSSFWorkbook对象
        HSSFWorkbook hssfWorkbook=new HSSFWorkbook();
        //创建工作簿
        HSSFSheet sheet=hssfWorkbook.createSheet();
        //创建标题行
        HSSFRow titleRow=sheet.createRow(0);
        titleRow.createCell(0).setCellValue("流水号");
        titleRow.createCell(1).setCellValue("比赛序列号");
        titleRow.createCell(2).setCellValue("aac502");
        titleRow.createCell(3).setCellValue("选手序列号");

        //遍历数据，创建数据行
        for(int i=0;i<rows.size();i++){
            //创建数据行
            HSSFRow row=sheet.createRow(i+1);
            //添加数据
            row.createCell(0).setCellValue(rows.get(i).get("aac501"));
            row.createCell(1).setCellValue(rows.get(i).get("aaf101"));
            row.createCell(2).setCellValue(rows.get(i).get("aac502"));
            row.createCell(3).setCellValue(rows.get(i).get("aab101"));
        }

        //创建文件名
        String fileName=aaf101+"比赛报名人员表.xls";
        //获取输出流对象


        FileOutputStream fileOutputStream=new FileOutputStream(path+fileName);
        hssfWorkbook.write(fileOutputStream);
        hssfWorkbook.close();

    }
    
    //将赛程表导出
    public static void List2ExcelS(List<Map<String,String>> rows,String aaf101)throws Exception{

        //文件保存路径
        String path="D:/";
        //创建HSSFWorkbook对象
        HSSFWorkbook hssfWorkbook=new HSSFWorkbook();
        //创建工作簿
        HSSFSheet sheet=hssfWorkbook.createSheet();
        //创建标题行
        HSSFRow titleRow=sheet.createRow(0);
        titleRow.createCell(0).setCellValue("流水号");
        titleRow.createCell(1).setCellValue("比赛序列号");
        titleRow.createCell(2).setCellValue("队伍A");
        titleRow.createCell(3).setCellValue("队伍B");
        titleRow.createCell(4).setCellValue("比赛时间");
        titleRow.createCell(5).setCellValue("A得分");
        titleRow.createCell(6).setCellValue("B得分");

        //遍历数据，创建数据行
        for(int i=0;i<rows.size();i++){
            //创建数据行
            HSSFRow row=sheet.createRow(i+1);
            //添加数据
            row.createCell(0).setCellValue(rows.get(i).get("aaf201"));
            row.createCell(1).setCellValue(rows.get(i).get("aaf101"));
            row.createCell(2).setCellValue(rows.get(i).get("aaf202"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf203"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf204"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf205"));
            row.createCell(3).setCellValue(rows.get(i).get("aaf206"));
        }

        //创建文件名
        String fileName=aaf101+"已完成赛程表.xls";
        //获取输出流对象


        FileOutputStream fileOutputStream=new FileOutputStream(path+fileName);
        hssfWorkbook.write(fileOutputStream);
        hssfWorkbook.close();

    }

    public static List<List<String>> excel2List(String filePath)throws Exception{


        //String filePath="D://赛程.xlsx";
        List<List<String>> rows=new ArrayList<>();

        //获取文件输入流
        InputStream inputStream=new FileInputStream(filePath);
        //获取Excel工作对象

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
                //循环读取表格数据

                for (Row rows1 : sheetAt) {
                    List list = new ArrayList();
                    //表头数据不读取
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
            case NUMERIC:// 数字类型
                if (HSSFDateUtil.isCellDateFormatted(cell)) {// 处理日期格式、时间格式
                    SimpleDateFormat sdf = null;
                    if (cell.getCellStyle().getDataFormat() == HSSFDataFormat
                            .getBuiltinFormat("h:mm")) {
                        sdf = new SimpleDateFormat("HH:mm");
                    } else {// 日期
                        sdf = new SimpleDateFormat("yyyy-MM-dd");
                    }
                    Date date = cell.getDateCellValue();
                    result = sdf.format(date);
                } else if (cell.getCellStyle().getDataFormat() == 58) {
                    // 处理自定义日期格式：m月d日(通过判断单元格的格式id解决，id的值是58)
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
                    // 单元格设置成常规
                    if (temp.equals("General")) {
                        format.applyPattern("#");
                    }
                    result = format.format(value);
                }
                break;
            case STRING:// String类型
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

        String filePath="/在服务器上的相对路径";
        List<List<String>> rows=excel2List(filePath);
    }
}
