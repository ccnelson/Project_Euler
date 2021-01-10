" C NELSON 2021 "
" If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000. 
(Answer = 233168) "

" solution uses arithmetic series formula with inclusion-exclusion principle "

" ###### Class to calculate and store result #################################"
Object subclass: #SeqClass
    instanceVariableNames: 'result'
    classVariableNames: ''
    poolDictionaries: ''
    category: nil !

SeqClass comment: 'Class to store result of seqsum method' !

!SeqClass class methodsFor: 'instance creation' !
new
    | r |
    r := super new.
    r init.
    ^r
!!

!SeqClass methodsFor: 'instance initialization'!
init
    result := 0.0.
!!

" method for printing - handy for tests "
!SeqClass methodsFor: 'printing'!
printOn: stream
    super printOn: stream.
    ' result: ' printOn: stream.
    result printOn: stream
!!

" arithmetic series formula : Sn = n/2(2a+(n-1)d)
  a = 1st term, d = common difference, n = no. of terms "
!SeqClass methodsFor: 'sequence sum'!
seqsum: a d: dx n: nx
    result := (nx / 2) * (2 * a + ((nx - 1) * dx)).
!!

" allows access to instance variables "
!SeqClass methodsFor: 'result'!
result
    ^ result
!!

" ###### End of class declarations ###########################################"

" instantiate objects "
Smalltalk at: #b put: (SeqClass new) !
Smalltalk at: #c put: (SeqClass new) !
Smalltalk at: #d put: (SeqClass new) !

tic := Time millisecondClockValue.

" perform method - note how 'a' is not explicitly listed while 'd' and 'n' are"
b seqsum: 3 d:3 n:(999//3)!
c seqsum: 5 d:5 n:(999//5)!
d seqsum: 15 d:15 n:(999//15)!

finalAnswer := b result + c result - d result.

toc := Time millisecondClockValue.

Transcript show: 'Answer:   '.
finalAnswer printNl.
Transcript show: 'Started:     '.
tic printNl.
Transcript show: 'Ended:       '.
toc printNl.
