## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
     x <<- y
     inv <<- NULL
  }
  get <- function() x 
  getinverse <- function (inv) 
  setinverse <- function (newinv) inv <<- newinv
  
  list(set = set, get = get, getinverse = getinverse, setinverse = setinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- mean(data, ...)
        x$setinverse(i)
        i
        
}
