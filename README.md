#  i217e Functional Programming

This repository contains the problems and their proofs for the [i217e Functional Programming](https://www.jaist.ac.jp/~ogata/lecture/i217e/) course taught by [Professor Kazuhiro Ogata](https://www.jaist.ac.jp/~ogata/) and his co-lecturer, [Assistant Professor Canh Minh Do](https://canhminhdo.github.io/), at JAIST. In this course, we use CafeOBJ, an advanced formal specification language, to formally specify problems and verify them with an induction technique by manually writing proof scores, which can be executed by CafeOBJ automatically.

## Instructions
The formal specification for natural numbers and lists of natural numbers are specified in the `pgm.cafe` file. Based on the specification, we have prepared several problems as shown in `problems/problems.pdf` file. Students are supposed to provide their proofs by writing proof scores. Additionally, students also need to prepare a document to show each step of their proof, detailing the rewriting process.

For each problem, we have provided its proof in two formats:
- proof scores,
- a detailed document.

For instance, students can refer to the proof scores and accompanying documents for problem 1 in the `proof-scores/problem1` and `problems/problem1` directories, respectively.

To test proof scores for all problems, students can execute `tester` script in `proof-scores` directory as follows:

```console
cd proof-scores && ./tester
```

If there are any problems, students can report them to `canhdo[at]jaist[dot]ac[dot]jp`.