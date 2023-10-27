package com.sisp.dao.entity;

import java.util.Date;

public class AnswerMessageEntity {

    private String id;
    private String questionnaireId;
    private String questionnaireName;
    private String answererId;
    private String answererName;
    private Date answerTime;
    private String projectId;
    private Integer pageSize;
    private Integer offset;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(String questionnaireId) {
        this.questionnaireId = questionnaireId;
    }

    public String getQuestionnaireName() {
        return questionnaireName;
    }

    public void setQuestionnaireName(String questionnaireName) {
        this.questionnaireName = questionnaireName;
    }

    public String getAnswererId() {
        return answererId;
    }

    public void setAnswererId(String answererId) {
        this.answererId = answererId;
    }

    public String getAnswererName() {
        return answererName;
    }

    public void setAnswererName(String answererName) {
        this.answererName = answererName;
    }

    public Date getAnswerTime() {
        return answerTime;
    }

    public void setAnswerTime(Date answerTime) {
        this.answerTime = answerTime;
    }

    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    @Override
    public String toString() {
        return "AnswerMessageEntity{" +
                "id='" + id + '\'' +
                ", questionnaireId='" + questionnaireId + '\'' +
                ", questionnaireName='" + questionnaireName + '\'' +
                ", answererId='" + answererId + '\'' +
                ", answererName='" + answererName + '\'' +
                ", answerTime=" + answerTime +
                ", projectId=" + projectId +
                '}';
    }
}
