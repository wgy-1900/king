package com.wgyws.king.mapper;

import com.wgyws.king.pojo.Alan;

public interface AlanMapper {
    //查询那年那天
    Alan queryStartDate(String date ) throws Exception;
}
