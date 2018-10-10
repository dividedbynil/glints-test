# Part 1

All answers are written in Haskell, compiled and tested on MacOS High Sierra with stack 1.6.1 and GHC 8.2.2

# Instructions

1. Follow the instruction to install `stack` or `Haskell Platform` at [here](https://www.haskell.org/downloads)
2. `git clone https://github.com/dividedbynil/glints-test`
3. `cd glints-test`
4. `stack setup && stack install`
5. run the program with
   * `factorial 99` or `factorial <your input>`
   * `sorting < list.txt` or `sorting < <your input file location>`
   * `matrix-rotation < matrix.txt` or `matrix-rotation < <your input file location>`
6. Ask me anything that is unclear.

# Testing
`stack test`

## Time taken:
* factorial - 1 hour
* sorting - 4 hours
* matrix-rotation - 3 hours

# Questions

## 1. Factorials

You are given an integer N. Print the factorial of N, as defined below.

N! = N * (N-1) * (N-2) * ... * 3 * 2 * 1

### Input

Input is a single integer N, where 1 <= N <= 100.

### Output

Print the factorial of N.

### Example

For an input N = 25, output will be 15511210043330985984000000.


## 2. Sorting

Given an array with n elements, sort this array in ascending order using only one of the following operations.

1. Swap two elements.
2. Reverse one sub-segment.

### Input Format

The first line contains a single integer, n, which indicates the size of the array.

The next line contains n integers separated by spaces.

>n
>
>d<sub>1</sub> d<sub>2</sub> ... d<sub>n</sub>

### ​Constraints

* ​2 <= n <= 100,000​
* 0 <= d<sub>i</sub> <= 1,000,000
* All d<sub>i</sub> are distinct.

### Output Format

1. If the array is already sorted, output yes on the first line. You do not need to output anything else.

2. If you can sort this array using one single operation (from the two permitted operations) then output yes on the first line and then:

	a. If you can sort the array by swapping d<sub>l</sub> and d<sub>r</sub>, output *swap l r* in the second line. l and r are the indices of the elements to be swapped, assuming that the array is indexed from 1 to n.

	b. Else if it is possible to sort the array by reversing the segment *d[l...r]*, output *reverse l r* in the second line. l and r are the indices of the first and last elements of the subsequence to be reversed, assuming that the array is indexed from 1 to n.

	*d[l...r]* represents the sub-sequence of the array, beginning at index l and r ending at index, both inclusive.

	If an array can be sorted by either swapping or reversing, stick to the swap-based method.

3. If you cannot sort the array in either of the above ways, output no in the first line.

### Sample Input #1

> 2
>
> 4 2

### Sample Output #1

> yes
>
> swap 1 2

### Sample Input #2

> 3
>
> 3 1 2

### Sample Output #2

> no

### Sample Input #3

> 6
>
> 1 5 4 3 2 6

### Sample Output #3

> yes
>
> reverse 2 5

### Explanation

For #1, you can both swap(1, 2) and reverse(1, 2), but if you can sort the array using swap, output swap only.

For #2, it is impossible to sort by one single operation (among those permitted).

For #3, you can reverse the sub-array d[2...5] = "5 4 3 2", then the array becomes sorted.

## 3. Matrix Rotation

You are given a 2D matrix, a, of dimension MxN and a positive integer R. You have to rotate the matrix R times and print the resultant matrix. Rotation should be in anti-clockwise direction.

Rotation of a 4x5 matrix is represented by the following figure. Note that in one rotation, you have to shift elements by one step only (refer sample tests for more clarity).

![](https://hr-challenge-images.s3.amazonaws.com/2517/matrix-rotation.png)

It is guaranteed that the minimum of M and N will be even.

### Input Format
First line contains three space separated integers, M, N and R, where M is the number of rows, N is number of columns in matrix, and R is the number of times the matrix has to be rotated.
Then M lines follow, where each line contains N space separated positive integers. These M lines represent the matrix.

### Constraints

* 2 <= M, N <= 300
* 1 <= R <= 109
* min(M, N) % 2 == 0
* 1 <= a<sub>ij</sub> <= 10<sup>8</sup>, where i ∈ [1..M] & j ∈ [1..N]

### Output Format

Print the rotated matrix.

### Sample Input #00

> 4 4 1
>
> 1 2 3 4
>
> 5 6 7 8
>
> 9 10 11 12
>
> 13 14 15 16

### Sample Output #00

> 2 3 4 8

> 1 7 11 12

> 5 6 10 16

> 9 13 14 15

### Sample Input #01

> 4 4 2

> 1 2 3 4

> 5 6 7 8

> 9 10 11 12

> 13 14 15 16

### Sample Output #01

> 3 4 8 12

> 2 11 10 16

> 1 7 6 15

> 5 9 13 14

### Sample Input #02

> 5 4 7

> 1 2 3 4

> 7 8 9 10

> 13 14 15 16

> 19 20 21 22

> 25 26 27 28

### Sample Output #02

> 28 27 26 25

> 22 9 15 19

> 16 8 21 13

> 10 14 20 7

> 4 3 2 1

### Sample Input #03

> 2 2 3

> 1 1

> 1 1

### Sample Output #03

> 1 1

> 1 1

### Explanation

*Sample Case #00: Here is an illustration of what happens when the matrix is rotated once.*
> &nbsp;&nbsp;1&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;3&nbsp;&nbsp;4&nbsp;&nbsp;8

> &nbsp;&nbsp;5&nbsp;&nbsp;6&nbsp;&nbsp;&nbsp;7&nbsp;&nbsp;8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;7&nbsp;11&nbsp;12

> &nbsp;9&nbsp;&nbsp;10 11 12&nbsp;->  5&nbsp;&nbsp;6 10 16

> 13 14 15 16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9 13 14 15

*Sample Case #01: Here is what happens when to the matrix after two rotations.*
> &nbsp;1 &nbsp;2 &nbsp;3 &nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 &nbsp;3 &nbsp;4 &nbsp;8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 &nbsp;4 &nbsp;8 12
>
> &nbsp;5 &nbsp;6 &nbsp;7 &nbsp;&nbsp;8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 &nbsp;7 &nbsp;11 12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 11 10 16
>
> &nbsp;9 10 11 12&nbsp;&nbsp;->&nbsp;&nbsp;5  6 10 16&nbsp;&nbsp;->&nbsp;&nbsp;&nbsp;&nbsp;1 &nbsp;7 &nbsp;6 15
>
> 13 14 15 16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9 13 14 15&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5 &nbsp;9 13 14

*Sample Case #02: Following are the intermediate states.*
> 1 &nbsp;2 &nbsp;3 &nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 &nbsp;3 &nbsp;4 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 &nbsp;4 10 16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 10 16 22

> 7 &nbsp;8 &nbsp;9 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1 &nbsp;9 15 16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 15 21 22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 21 20 28

> 13 14 15 16 &nbsp;&nbsp;->&nbsp;&nbsp;  7  8 21 22 &nbsp;&nbsp;->&nbsp;&nbsp; 1  9 20 28 &nbsp;&nbsp;->&nbsp;&nbsp; 2 15 14 27 ->

> 19 20 21 22&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13 14 20 28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7  8 14 27    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1  9  8 26

> 25 26 27 28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;19 25 26 27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;13 19 25 26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7 13 19 25

&nbsp;

> 10 16 22 28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16 22 28 27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;22 28 27 26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;28 27 26 25

>  4&nbsp; 20 14 27&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10 14 &nbsp;8 26&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16 &nbsp;8 &nbsp;9 25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;22 &nbsp;9 15 19

>  3 21 &nbsp;8 26&nbsp;&nbsp;&nbsp;->&nbsp;&nbsp;&nbsp;4 20  9 25&nbsp;&nbsp;&nbsp;->&nbsp;&nbsp;&nbsp;10 14 15 19&nbsp;&nbsp;&nbsp;->&nbsp;&nbsp;&nbsp;16 &nbsp;8 21 13

>  2&nbsp; 15  9 25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 21 15 19&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 20 21 13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10 14 20 &nbsp;7

>  1&nbsp; 7 13 19&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2 &nbsp;1 &nbsp;7 13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3 &nbsp;2 &nbsp;1 &nbsp;7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4 &nbsp;3 &nbsp;2 &nbsp;1

*Sample Case #03: As all elements are same, any rotation will reflect the same matrix.*
