package com.sisp.controller;


import com.sisp.beans.HttpResponseEntity;
import com.sisp.common.utils.UUIDUtil;
import com.sisp.dao.entity.ProjectEntity;
import com.sisp.dao.entity.UserEntity;
import com.sisp.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
public class ProjectController {

    @Autowired
    private ProjectService projectService;


    /**
     * 项目列表
     * @param projectEntity
     * @return
     */
    @RequestMapping(value = "/queryProjectList",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity queryProjectList(@RequestBody ProjectEntity projectEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        List<ProjectEntity> hasUser = projectService.queryProjectList(projectEntity);
        if(CollectionUtils.isEmpty(hasUser)){
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("无项目信息");
        }else{
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(hasUser);
            httpResponseEntity.setMessage("查询成功");
        }

        return httpResponseEntity;
    }


    /**
     * 新增项目
     * @param projectEntity
     * @return
     */
    @RequestMapping(value = "/addProjectInfo",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity addProjectInfo(@RequestBody ProjectEntity projectEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();

        // 获取当前时间
        Date now = new Date();

        // 格式化时间
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = formatter.format(now);

//        // 将格式化后的时间转换为Date类型
//        Date date = null;
//        try {
//            date = formatter.parse(formattedDate);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

        projectEntity.setCreationDate(now);
        projectEntity.setLastUpdateDate(now);


        projectEntity.setId(UUIDUtil.getOneUUID());
        int result = projectService.addProjectInfo(projectEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("创建成功");
        }


        return httpResponseEntity;
    }


    /**
     * 修改项目
     * @param projectEntity
     * @return
     */
    @RequestMapping(value = "/modifyProjectInfo",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity modifyProjectInfo(@RequestBody ProjectEntity projectEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();

        // 获取当前时间
        Date now = new Date();

        // 格式化时间
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedDate = formatter.format(now);

//        // 将格式化后的时间转换为Date类型
//        Date date = null;
//        try {
//            date = formatter.parse(now);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
        projectEntity.setLastUpdateDate(now);
        int result = projectService.modifyProjectInfo(projectEntity);
        if(result!=0){
            httpResponseEntity.setCode("10");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("修改成功");
        }else{
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("修改失败");
        }

        return httpResponseEntity;
    }


    /**
     * 用户删除
     * @param projectEntity
     * @return
     */
    @RequestMapping(value = "/deleteProjectById",method = RequestMethod.POST,headers = "Accept=application/json")
    public HttpResponseEntity deleteProjectById(@RequestBody ProjectEntity projectEntity){
        HttpResponseEntity httpResponseEntity = new HttpResponseEntity();
        int result = projectService.deleteProjectById(projectEntity);
        if(result!=0){
            httpResponseEntity.setCode("666");
            httpResponseEntity.setData(result);
            httpResponseEntity.setMessage("删除成功");
        }else{
            httpResponseEntity.setCode("0");
            httpResponseEntity.setData(0);
            httpResponseEntity.setMessage("删除失败");
        }

        return httpResponseEntity;
    }
}
