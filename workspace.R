library(bnutil)
library(vcomp2)
library(shiny)
library(lme4)
library(plyr)
library(dplyr)
library(data.table)
library(ggplot2)
library(pgMulticore)

getData = function() {
  res = AnnotatedData$new(data=tam.df, metadata=tam.mdf)
  return(res)
}

getFolder = function() file.path(getwd(), 'run')

setResult = function(annotatedResult){

}

bnMessageHandler = bnshiny::BNMessageHandler$new()
bnMessageHandler$getFolderHandler = getFolder
bnMessageHandler$getRunFolderHandler = getFolder
bnMessageHandler$getDataHandler = getData
bnMessageHandler$setResultHandler = setResult

bnshiny::startBNTestShiny('vcomp2', sessionType='run', bnMessageHandler=bnMessageHandler)
