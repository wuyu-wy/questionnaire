package com.sisp.dao.entity;

public class AnswerDetailEntity {

    private String id;
    private String answerMessageId;
    private String optionId;
    private String text;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAnswerMessageId() {
        return answerMessageId;
    }

    public void setAnswerMessageId(String answerMessageId) {
        this.answerMessageId = answerMessageId;
    }

    public String getOptionId() {
        return optionId;
    }

    public void setOptionId(String optionId) {
        this.optionId = optionId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "AnswerDetailEntity{" +
                "id='" + id + '\'' +
                ", answerMessageId='" + answerMessageId + '\'' +
                ", optionId='" + optionId + '\'' +
                ", text='" + text + '\'' +
                '}';
    }
}
