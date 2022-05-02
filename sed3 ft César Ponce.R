library(ggplot2)
library(readxl)
library(ggpubr)
file.choose()
mTq<-read_xlsx("/Users/itzelmeneses/Desktop/sed3 grafica de líneas_R.xlsx")
ggplot()+
  geom_line(data = mTq,aes(x=Wavelength,y=Normalize))
mTq[mTq$Tratamiento==0,]
mTq[mTq$Tratamiento==0.5,]
mTq[mTq$Tratamiento==1,]
mTq[mTq$Tratamiento==2,]

ggplot()+
  geom_line(data =mTq[mTq$Tratamiento==0,],aes(x=Wavelength,y=Normalize,color="0"))+
  geom_line(data =mTq[mTq$Tratamiento==0.5,],aes(x=Wavelength,y=Normalize,color="0.5"))+
  geom_line(data =mTq[mTq$Tratamiento==1,],aes(x=Wavelength,y=Normalize, color="1"))+
  geom_line(data =mTq[mTq$Tratamiento==2,],aes(x=Wavelength,y=Normalize,color="2"))+
  theme_classic()+
  labs(x="Wavelength (nm)", y="Normalize fluorescence")+
  theme(axis.title = element_text(size = 14),
        axis.text =element_text(size=12),
        legend.key.size = unit(units = "cm",0.8),
        legend.title = element_text(size=14),
        legend.text = element_text(size=14))+
  scale_color_manual(name="NaCl(M)",values = c("#ffbd00","#f0ff00","#00c5ff","#2a00ff"))