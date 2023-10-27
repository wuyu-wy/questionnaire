package com.sisp.dao.entity;

public class QuestionEntity {
    private String id;
    private String questionnaireId;
    private String type;
    private String problemName;
    private String mustAnswer;
    private String orderId;

    @Override
    public String toString() {
        return "QuestionEntity{" +
                "id='" + id + '\'' +
                ", questionnaireId='" + questionnaireId + '\'' +
                ", type='" + type + '\'' +
                ", problemName='" + problemName + '\'' +
                ", mustAnswer='" + mustAnswer + '\'' +
                ", orderId='" + orderId + '\'' +
                '}';
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getProblemName() {
        return problemName;
    }

    public void setProblemName(String problemName) {
        this.problemName = problemName;
    }

    public String getMustAnswer() {
        return mustAnswer;
    }

    public void setMustAnswer(String mustAnswer) {
        this.mustAnswer = mustAnswer;
    }


}
