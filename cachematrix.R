## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix, frankly, is similar to the provided example code except that the set() function
## is removed because it is not used by nor required by cacheSolve

makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    
    get <- function() { x }
    
    setInvMatrix <- function(matrix)  { m <<- matrix }
    
    getInvMatrix <- function() { m }
    
    list(get = get,
         setInvMatrix = setInvMatrix,
         getInvMatrix = getInvMatrix)

    
}


## Write a short comment describing this function

## if anyone has spent time working on this problem successfully, then what more can I say about this
## cacheSolve function... it is prosaic and straightforward. I wish I was already expert enough to
## write some sexy R code but that is still a long way ahead. 

## Maybe I'll just add that I like lots of white space alongside reasonable indenting in my code. And good humorous comments with proper grammar and punctuation.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    m <- x$getInvMatrix()
    
    if(!is.null(m)) {
        
        message("getting cached matrix")
        return(m)
    }
    
    input <- x$get()
    m <- solve(input, ...)
    x$setInvMatrix(m)
    m
}
