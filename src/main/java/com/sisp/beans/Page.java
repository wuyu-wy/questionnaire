package com.sisp.beans;

import com.sisp.dao.entity.AnswerMessageEntity;

import java.util.List;

public class Page {

        private List<AnswerMessageEntity> list;
        private int totalPageNum;

        public List<AnswerMessageEntity> getList() {
            return list;
        }

        public void setList(List<AnswerMessageEntity> list) {
            this.list = list;
        }

        public int getTotalPageNum() {
            return totalPageNum;
        }

        public void setTotalPageNum(int totalPageNum) {
            this.totalPageNum = totalPageNum;
        }
}

