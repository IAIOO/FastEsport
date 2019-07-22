package com.neusoft.services;

import java.util.List;
import java.util.Map;

public interface BaseServices 
{
     void setMapDto(Map<String,Object> dto);
     
     /**
      * 接口的默认实现
      * @return
      * @throws Exception
      */
     default Map<String,String> findById()throws Exception
     {
    	 return null;
     }
     
     default Map<String,String> findById1()throws Exception
     {
    	 return null;
     }

     
     default List<Map<String,String>> query()throws Exception
     {
    	 return null;
     }
     default List<Map<String,String>> query2()throws Exception
     {
    	 return null;
     }
     
     default List<Map<String,String>> queryTwo()throws Exception
     {
    	 return null;
     }
     
     default List<Map<String,String>> queryT()throws Exception
     {
    	 return null;
     }
     default List<Map<String,String>> queryForPage()throws Exception
     {
    	 return null;
     }
     
     default int queryCount()throws Exception {
    	 return 0;
     }
}
