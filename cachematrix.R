## Put comments here that give an overall description of what your
## functions do:
## First function returns a list of four functions of set, get, setInverse, and get Inverse,
## which can store a matrix and cache its inverse.
## Second function returns and cached the inverse matrix
## according to whether the inverse matrix has already retrieved or not.

## Write a short comment describing this function:
## 'set' updates the matrix and reset the cached inverse to NULL.
## 'get' returns the current matrix.
## 'setInverse' stores the inverse of matrix in the inverse variable.
## 'getInverse' gets the cached inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <- NULL
                }
        get <- function() x
        setInverse <- function(inv) inverse <<- inv
        getInverse <- function() inverse
        list(set = set, get = get, setInverse = setInverse, getInverse = getinverse)
}


## Write a short comment describing this function
## 'inverse' retrieves the cached inverse from the former function.
## If the inverse is not NULL, we can get message "getting cached data".
## If the inverse is NULL, 'data' retrieves matrix,
## 'inverse' retrieves inverse matrix using solve function, and inverse matrix will cache. 

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
        if(!is.null(inverse)){
                message("getting cached data")
                return(inverse)
                }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setInverse(inverse)
        inverse
}
