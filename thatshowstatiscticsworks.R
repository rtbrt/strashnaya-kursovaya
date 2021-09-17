dataf=read.csv(file="r1z1.csv", header = TRUE)
x=dataf$X
results=data.frame(
  p_ln=length(x),
  p_max=max(x),
  p_min=min(x),
  p_range=max(x)-min(x),
  p_mean=mean(x),
  p_disp=var(x),
  p_sto=sd(x),
  p_asim=mean((x-mean(x))^3)/(sd(x)^3),
  p_ex=mean((x-mean(x))^4)/(sd(x)^4)-3,
  p_med=median(x)
)
write.csv(results, file="results.csv")
png(file="pic1.png")
p_hs=hist(x,breaks=length(x)/10)
dev.off()
png(file="pic2.png")
p_fr=plot(ecdf(x))
dev.off()