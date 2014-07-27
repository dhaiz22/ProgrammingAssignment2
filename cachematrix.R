## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function to create the inverse matrix

makeCacheMatrix <- function(m = matrix()) {

## set the matrix to zero
im<-NULL
## set the matrix
set<-function(matrix){

        mtx<<-matrix
        im<<-NULL
}

## get the matrix
get<-function(){
        ##return the matrix
        mtx
}

## set the inverse of the matrix
setInverse <-function(inverse){
           im<-inverse
}

## get the inverse of the matrix
getInverse <-function(inverse){
            ##return the inverse property
           im
}
## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mtx<-x$getInverse()
        
        ##in case of already there, return the value
        if(!is.null(mtx)){
                message("data from cache")
                return(mtx)
        }
        else{
        mtx<-solve(x$get())
        x$setInverse(mtx)
        ##return the matrix
        return(mtx)
        }
}
