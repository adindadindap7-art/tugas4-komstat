# Simulasi 1.000 percobaan Binomial
set.seed(123)

n <- 15
p <- 0.4
jumlah_simulasi <- 1000

# Simulasi
hasil_simulasi <- rbinom(
  jumlah_simulasi,
  size = n,
  prob = p
)

# Histogram hasil simulasi
hist(
  hasil_simulasi,
  breaks = seq(-0.5, 15.5, 1),
  probability = TRUE,
  main = "Simulasi Distribusi Binomial",
  xlab = "Jumlah Keberhasilan (X)",
  ylab = "Probabilitas"
)

# PMF teoritis
x <- 0:15
pmf_teoritis <- dbinom(x, size = n, prob = p)

# Tampilkan PMF teoritis
data.frame(
  X = x,
  PMF_Teoritis = pmf_teoritis
)