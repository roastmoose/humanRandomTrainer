shinyServer(function(input, output) {
  serverRand<-reactive({data.frame(VALUES=sample(as.character(c(0:9)),nchar(input$vals),replace=TRUE))})
  udat<-reactive({data.frame(VALUES=unlist(strsplit(input$vals,"")))})
  library(ggplot2)
  output$yourPlot <- renderPlot({
    ggplot(data=udat(),aes(VALUES)) + geom_bar() 
  })
  
  output$serverPlot <- renderPlot({
    ggplot(data=serverRand(),aes(VALUES)) + geom_bar()
  })
  
  output$digramFreq <- renderPlot({
      server<-c()
      user<-c()
      sdat<-serverRand()
      u<-udat()
      for(i in 1:(nrow(sdat)-1)){server<-c(server,paste(sdat$VALUES[i],sdat$VALUES[i+1],collapse="",sep=""))}
      for(i in 1:(nrow(u)-1)){user<-c(user,paste(u$VALUES[i],u$VALUES[i+1],collapse="",sep=""))}
      serverrf<-unlist(lapply(server,function(x){length(server[which(server==x)])/length(server)}))
      userrf<-unlist(lapply(user,function(x){length(user[which(user==x)])/length(user)}))
      s<-data.frame(server,serverrf,"server")
      u<-data.frame(user,userrf,"user")
      names(s)<-c("digram","relFrq","origin")
      names(u)<-c("digram","relFrq","origin")
      plotDat<-rbind(s,u)
      
      ggplot(plotDat,aes(digram,relFrq,fill=origin))+geom_bar(stat="identity",position="dodge")
  })
})