## Put comments here that give an overall description of what your
## functions do

## These two functions can first make a cache matrix and then
## return the inverse of the matrix

## Write a short comment describing this function

## The first function creates 4 steps
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse matrix
## 4. get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <-function() x
  setinversematrix <- function(inverse) m <<- inverse
  getinversematrix <- function() m
  list(set = set, get = get,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)

}


## Write a short comment describing this function

## The second function calculates the inverse of the matrix
## created above
## If the inverse has already been calculated, then it skip
## computation and get the inverse directly
## Or else, it will compute the inverse via function

cacheSolve <- function(x, ...) {
  m <- x$getinversematrix()
  if(!is.null(m)){
    message("getting cache inverse matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinversematrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
