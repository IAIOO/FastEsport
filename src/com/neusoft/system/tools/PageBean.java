package com.neusoft.system.tools;

import java.util.List;

public class PageBean<T> {
    private Integer pageNo = 1;     //��ǰҳ����
    private Integer pageSize = 5;      //ÿҳ��ʾ������
    private Integer totalPage;      //��ҳ��
    private Integer rows;           // ������
    private  List<T> lists;            // ��ŵ�ǰҳ�� ���ݵļ���

    public Integer getPageNo() {
        return pageNo;
    }

    /**
     * �����õ�ǰҳ����֮ǰ  ��ҳ��Ҫ��ֵ
     * @param pageNo
     */
    public void setPageNo(Integer pageNo) {
        if (pageNo<1){
            this.pageNo=1;
        }else  if(pageNo>totalPage){
            this.pageNo = totalPage;
        }else{
            this.pageNo = pageNo;
        }
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalPage() {
        return totalPage;
    }


    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
        //�Զ������ҳ��
        this.totalPage= this.rows%pageSize==0?this.rows/pageSize:this.rows/pageSize+1;
    }

    public List<T> getLists() {
        return lists;
    }

    public void setLists(List<T> lists) {
        this.lists = lists;
    }
}
