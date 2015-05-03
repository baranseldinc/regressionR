saatler = c(1.0,1.5,0.5,4.5,3.5,2.5,3.0,1.0,2.5,3.5,4.5,5.0,1.0,2.5,0.5,2.0,3.5,2.0,1.5,4.5)

notlar = c(1.8,1.9,0.7,3.7,2.5,2.1,2.8,2.0,2.2,3.4,3.5,3.1,1.0,0.8,0.7,1.8,2.9,2.0,1.7,2.9)

df = data.frame(saatler,notlar)

regresyon = lm(notlar~saatler,data = df)

tahmin = predict(regresyon,interval = "prediction")

yeni_giris = data.frame(saatler = 3)

yeniTahmin = predict(regresyon,interval = "prediction",newdata = yeni_giris)
