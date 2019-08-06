package com.bbshop.bit.domain;

import lombok.Data;

@Data
public class PageDTO {
   private int startPage;
   private int endPage;
   private boolean prev,next;
   
   private int total;
   private PagingVO pagingvo;
   
   public PageDTO(PagingVO pagingvo, int total) {
      this.pagingvo = pagingvo;
      this.total = total;
      
      this.endPage=(int)(Math.ceil(pagingvo.getPAGENUM()/10.0)) * 10;
      this.startPage= this.endPage -9;
      
      int realEnd = (int) (Math.ceil((total * 1.0) / pagingvo.getAMOUNT()));
      
      if(realEnd < this.endPage) {
         this.endPage = realEnd;
      }
      this.prev = this.startPage > 1;
      this.next = this.endPage < realEnd;
   }  

}