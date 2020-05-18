rsq <- function (obs, pred) cor(obs, pred) ^ 2
RMSE <- function(obs, pred){sqrt(mean((pred - obs)^2, na.rm = TRUE))}
plot_fitness <- function(obs, pred, name){
  r2 <- rsq(obs, pred) %>% round(digits = 3)
  rmse <- RMSE(obs, pred) %>% round(digits = 3)
  
  plot(x = obs, pred,
       main = paste0(name, ". RMSE=", rmse, ". r2=", r2))
  abline(a=0, b=1)
}