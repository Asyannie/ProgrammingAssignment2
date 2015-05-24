## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatri<-function(x=matrix()){
s<-NULL
set<-function(y){
x<<-y
s<<-NULL
}
get<-function(){
x 
}
setsolve<-function(solve){
s<<-solve
}
getsolve<-function(){
s 
}
b<<-list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)

}
cacheSolve<-function(x,b,...){
s<-b$getsolve() 
if(!is.null(s)){ 
message("getting cached data...") 
return(s)
}
data<-b$get()
s<-solve(data,...)
b$setsolve(s)
s
}
