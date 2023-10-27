package com.sisp.dao.entity;

import java.util.Date;

public class QuestionnaireEntity {
    private String id;
    private String projectId;
    private String surveyType;
    private String surveyName;
    private String surveyDescription;
    private Date startTime;
    private Date endTime;
    private String templateId;
    private Date releaseTime;

    private String state;

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    private String times;
    private String group;

    @Override
    public String toString() {
        return "QuestionnaireEntity{" +
                "id='" + id + '\'' +
                ", projectId='" + projectId + '\'' +
                ", surveyType='" + surveyType + '\'' +
                ", surveyName='" + surveyName + '\'' +
                ", surveyDescription='" + surveyDescription + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", templateId='" + templateId + '\'' +
                ", releaseTime=" + releaseTime +
                ", state='" + state + '\'' +
                ", times='" + times + '\'' +
                ", group='" + group + '\'' +
                '}';
    }


    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public String getSurveyType() {
        return surveyType;
    }

    public void setSurveyType(String surveyType) {
        this.surveyType = surveyType;
    }

    public String getSurveyName() {
        return surveyName;
    }

    public void setSurveyName(String surveyName) {
        this.surveyName = surveyName;
    }

    public String getSurveyDescription() {
        return surveyDescription;
    }

    public void setSurveyDescription(String surveyDescription) {
        this.surveyDescription = surveyDescription;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getTemplateId() {
        return templateId;
    }

    public void setTemplateId(String templateId) {
        this.templateId = templateId;
    }
}
