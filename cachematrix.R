## These two functions together calculate the inverse of a matrix without performing unnecessary calculations, 
## minimizing computation time.
## Write a short comment describing this function
## 1.  Set the value of the matrix
## 2.  Get the value of the matrix
## 3.  Set the inverse of the matrix
## 4.  get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
m<- NULL
set <- function(y) {
x<<-y
m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
## Write a short comment describing this function
## The next code actually calculates, if necessary, the inverse of the matrix.
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}

