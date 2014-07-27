## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function to create the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

## set the matrix to zero
x<-NULL
## set the matrix
set<-fucntion(matrix){

        mtx<<-matrix
        x<<-NULL
}

## get the matrix
get<-function(){
        ##return the matrix
        mtx
}

## set the inverse of the matrix
setinverse <-function(inverse){
           x<-inverse
}

## get the inverse of the matrix
getinverse <-function(inverse){
            ##return the inverse property
           x
}
## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mtx<-x$getinverse()
        
        ##in case of already there, return the value
        if(!is.null(mtx)){
                message("data from cache")
                return(mtx)
        }
        
        ##get the matric from the object
        data<-mtx$get()
        ##Calculate the inverse
        mtk<-solve(data)%*%data
        ## set the inverse tot he object
        x$setinverse(mtx)
        ##return the matric
        mtx
        
}
