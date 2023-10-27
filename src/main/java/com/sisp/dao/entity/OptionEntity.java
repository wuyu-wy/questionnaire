package com.sisp.dao.entity;

public class OptionEntity {

    private String id;
    private String questionId;
    private String chooseTerm;
    private String fraction;
    private String leftTitle;
    private String orderId;

    @Override
    public String toString() {
        return "OptionEntity{" +
                "id='" + id + '\'' +
                ", questionId='" + questionId + '\'' +
                ", chooseTerm='" + chooseTerm + '\'' +
                ", fraction='" + fraction + '\'' +
                ", leftTitle='" + leftTitle + '\'' +
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

    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }

    public String getChooseTerm() {
        return chooseTerm;
    }

    public void setChooseTerm(String chooseTerm) {
        this.chooseTerm = chooseTerm;
    }

    public String getFraction() {
        return fraction;
    }

    public void setFraction(String fraction) {
        this.fraction = fraction;
    }

    public String getLeftTitle() {
        return leftTitle;
    }

    public void setLeftTitle(String leftTitle) {
        this.leftTitle = leftTitle;
    }
}
