#  i217e Functional Programming

This repository contains the problems and their proofs for the [i217e Functional Programming](https://www.jaist.ac.jp/~ogata/lecture/i217/) course taught by [Professor Kazuhiro Ogata](https://www.jaist.ac.jp/~ogata/) and his co-lecturer, [Assistant Professor Canh Minh Do](https://canhminhdo.github.io/), at JAIST. In this course, we use CafeOBJ, an advanced formal specification language, to formally specify problems and verify them with induction technique by writing proof scores, which can be executed by CafeOBJ automatically.

## Instructions
The formal specification for natural numbers and lists of natural numbers are specified in the `pgm.cafe` file. Based on the specification, we have prepared several problems. Students are supposed to provide their proofs by wirting proof scores. Additionally, students also need to prepare a document to show each step of their proof, detailing the rewriting process.

For each problem, we have provided its proof in two formats: 
- proof scores 
- a detailed document.

For instance, students can refer the proof scores and accompanying document for problem 1 in the `problem1` and `documents/problem1` directories, respectively.

To test proof scores for each problem, students can navigate to `test` directory under each problem folder for proof scores and execute `tester` script as follow:

```console
cd <problem-name>/test && ./tester
```
where `<problem-name>` is replaced by the name of a problem, such as `problem1`. Moreover, they can evaluate all tests at once by executing `tester` scirpt at this current directory.

```console
./tester
```

If there are any problems, students can report them to `canhdo[at]jaist[dot]ac[dot]jp`.