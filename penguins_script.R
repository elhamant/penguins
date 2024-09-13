

view(penguins)

dim(penguins)
colnames(penguins)

?geom_density

ggplot(penguins)+
  geom_density(aes(bill_length_mm, color=species), alpha=.5)+
  theme_bw()

ggplot(penguins)+
  geom_boxplot(aes(species, body_mass_g))+
  labs(title="Body Mass of Penguins", y="Body Mass")+
  theme_bw()

ggplot(penguins)+
  geom_dotplot(aes(body_mass_g), dotsize=.5, binwidth = 150)+
  labs(title="Body Mass of Pegnuins", x="Body Mass", y="Number")+
  theme_bw()

?geom_boxplot

ggplot(penguins, aes(body_mass_g, flipper_length_mm))+
  geom_smooth(method="lm")+
  geom_point(aes(color=species))

ggplot(penguins)+
  geom_point(aes(body_mass_g, flipper_length_mm, color=species, shape=sex))

ggplot(penguins)+
  geom_boxplot(aes(species, body_mass_g, fill=sex))+
  labs(y="Body Mass")+
  theme_bw()

ggplot(penguins)+
  geom_boxplot(aes(species, flipper_length_mm, fill=sex))+
  labs(y="Flipper Length")+
  theme_bw()
