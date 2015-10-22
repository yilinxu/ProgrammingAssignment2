## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creat a matrix, which is really a list containing a function to create
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse matrix
# get the value of the inverse matrix
makeCacheMatrix <- function(x = matrix()){
  In<-NULL
  setMatrix<-function(newMatrix){
    x<<-newMatrix
    In<<-NULL
  }
  getMatrix<-function()x
  setinverse<-function(solve)
    In<<-solve
  getinverse<-function()In
  list(setMatrix=setMatrix, getMatrix=getMatrix, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
# the following function inverse the matrix created with the above function. 
# it first checks to see if the matrix has already been inversed. If so, it gets the inverse and skips the computation. Otherwide, it inverse the matrix and sets the inverse matrix in the cache via the setinverse function.
   cacheSolve<- function(x,...){## Return a matrix that is the inverse of x
   In<-x$getinverse()
   if(!is.null(In)) {
    message("getting cached data")
    return(In)
  }
    data<-x$getMatrix()
    In<-solve(data)
    x$setinverse(In)
    In
}
