package com.wgyws.king.service.impl;

import com.wgyws.king.mapper.AlanMapper;
import com.wgyws.king.service.AlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service("alanService")
public class AlanServiceImpl implements AlanService {
    @Autowired
    private AlanMapper alanMapper;
    @Override
    public int countDate (String startDate ) throws  Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date beginDate = sdf.parse(startDate);
        long beginDate1 = beginDate.getTime();

        Date today = new Date();
        long today1 = today.getTime();

        Integer days = (int)(today1-beginDate1)/(1000*24*60*60);
        System.out.println(days);
        return days;
    }
}
