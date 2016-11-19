SnpCountPlot<-function(data,col='gray60',border='white',xlim=c(0,max(data[,1])+max(data[,1])/10)){
     #绘制boxplot，但不显示坐标轴，通过asex控制
     p<-barplot(data[,1],axes = F,horiz = 1,border = 'white',col=col,xlim=xlim)
     #逐步添加坐标轴
     axis(2,labels = rownames(data),at = p[,1],tick = 0,pos = 4)
     axis(1)
     #添加标签
     text(data[,1]+7000,p[,1],labels = data[,1])}
