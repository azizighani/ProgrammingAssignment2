## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##makeCacheMatrix <- function(x = matrix()) {

##}


## Write a short comment describing this function

##cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
##}
##Coursera Assignment - R Programming (Week 3)
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
cachesolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}