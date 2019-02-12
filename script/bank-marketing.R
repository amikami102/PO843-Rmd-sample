####------------------------
### This script downloads and fits
### logistic regression model on 
### Bank Marketing Data Set from UCI Machine Learning Repos.
###-------------------------

## @knitr download_zip 
# download .zip file and extract to "data" folder
temp <- tempfile()
base_url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/"
download.file(url = paste0(base_url, "00222/bank-additional.zip"),
                destfile = temp)
unzip(temp, exdir = "data")
unlink(temp)

## @knitr load_data
# open "bank-additional.csv"
path <- file.path("data", "bank-additional")
bank <- read.csv(file.path(path, "bank-additional.csv"), 
                 header = TRUE, sep = ";") 
# change month labels to numeric
levels(bank$month) <- c("4", "8", "12", "7", "6", "3", "5", "11", 
                        "10", "9")
# recode 'poutcome'
bank$poutcome <- ifelse(bank$poutcome == "nonexistent", NA, 
                ifelse(bank$poutcome == "success", 1, 0)) %>% 
        as.factor()
# remove na rows
bank <- na.omit(bank)

## @knitr model_comparison 
# base model
base <- glm(y ~ 1, data = bank, family = "binomial")
# nested model: remove client attributes
nest_client <- update(base,
                ~ . + age  + job + marital + education + 
                 default + housing + loan )
# nested model: remove last contact attributes
nest_last <- update(nest_client, 
                    ~ . + contact + month + day_of_week + duration)
# nested model: remove macroeconomic context attributes
nest_macro <- update(nest_last,
                     ~ . + emp.var.rate + cons.price.idx +
                             euribor3m + nr.employed)
## @knitr anova
anova.out <- anova(base, nest_client, nest_last, nest_macro, 
                   test = "Chisq")
colnames(anova.out) <- c("Residual df", 
                         "Deviance", 
                         "Diff. in deviance",
                         "Regresssion df",
                          "p-value")
rownames(anova.out) <- c("Null model",
                         "Model 1: Null + client attributes",
                         "Model 2: model 1 + last-contact var.",
                         "Model 3: model 2 + macroeconomic var.")
gen_table <- function(.){
        #-------------------
        # Format `print.xtable()` output depending
        # on the type of table to produce. 
        #-------------------
        # . (chr, either "latex" or "html")
        #------------------
        require(xtable)
        anova.tab <- xtable(anova.out, comment = FALSE,
                            caption = "ANOVA table comparing nested models")
        if (.== "html"){
                print.xtable(anova.tab, type = ., 
                html.table.attributes = 'align="center",
                        rules = "row",
                        width = 80%, frame = "below"') 
        }
        if (.=="latex"){
                print.xtable(anova.tab, type = ., 
                             floating = TRUE,
                             table.placement = "h!")
        }
}


## @knitr step_selection 
# full model 
full <- glm(y ~ age + job + marital + education + 
                    default + housing + loan + 
                    contact + month + day_of_week + 
                    duration + campaign + pdays + previous + 
                    poutcome + emp.var.rate + cons.price.idx +
                    euribor3m + nr.employed, 
            data = bank, family = "binomial")
# backwards stepwise regression
step.out <- step(full, direction = "backward", 
                 trace = 0) # do not print output to console

