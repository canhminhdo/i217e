PROBLEM1: \forall L \in NatList: fold*(rev(L)) = fold*(L) .
    - LEMMA1: \forall L1 L2 \in NatList: fold*(L1 @ L2) = fold*(L1) * fold*(L2) .
        - LEMMA2 [assoc*]: \forall I J K \in PNat: (I * J) * K = I * (J * K) .
            - LEMMA3: \forall I J K \in PNat: (I + J) * K = (I * K) + (J * K) .
                - LEMMA4 [assoc+]: \forall I J K \in PNat : (I + J) + K = I + (J + K) .
                - LEMMA5 [comm+]: \forall I J \in PNat: I + J = J + I .
                    - LEMMA6: \forall I \in PNat: I + 0 = I .
                    - LEMMA7 : \forall I J \in PNat: I + S(J) = S(I + J) .
                        - LEMMA6
    - LEMMA8 [comm*]: \forall I J \in Nat: I * J = J * I .
        - LEMMA5
        - LEMMA9: \forall I \in PNat: I * 0 = 0 .
        - LEMMA10: \forall I J \in PNat: I * s(J) = I + (I * J) .
            - LEMMA4
            - LEMMA7

PROBLEM2: \forall X \in PNat: rev(mkl1(X)) = mkl2(X) .
    - LEMMA1: \forall X \in PNat, L \in NatList: smkl2(X, L) = smkl2(X, nil) @ L .
        - LEMMA2 [assoc@]: \forall L1 L2 L3 \in NatList: (L1 @ L2) @ L3 = L1 @ (L2 @ L3) . 

PROBLEM3: \forall X \in PNat: fact(X) = fold*(mkl2(X)) .
    - PROLEM1
    - PROLEM2
    - LEMMA1: \forall X \in PNat: fact(X) = fold*(mkl1(X)) .

PROBLEM4: \forall L \in NatList : rev(rev(L)) = L .
    - LEMMA1: \forall L1 L2 \in NatList: rev(L1 @ L2) = rev(L2) @ rev(L1) .
        - LEMMA2: \forall L \in NatList: L @ nil = L .
        - PROBLEM2 - LEMMA2 [assoc@]

PROBLEM5: \forall L \in NatList: size(L) = size(rev(L)) .
    - LEMMA1: \forall L1 L2 \in NatList: size(L1 @ L2) = size(L1) + size(L2) .
    - LEMMA2: \forall X \in PNat: s(X) = X + s(0) .

PROBLEM6: \forall X \in PNat, L \in NatList: has(L, X) = has(rev(L), X) .
    - LEMMA1: \forall X \in PNAT, \forall L1 L2 \in NatList: has(L1 @ L2, X) = (has(L1, X) or has(L2, X)) .

PROBLEM7: \forall L \in NatList: diff(L, rev(L)) = nil .
    - LEMMA1: \forall L1 L2 L3 \in NatList: diff(L1, L2 @ L3) = diff(diff(L1, L2), L3) .
        - PROBLEM6 - LEMMA1
    - PROBLEM6 - LEMMA1 

PROBLEM8: \forall L1 L2 \in NatList: diff(L1, L2) = diff(L1, rev(L2)) .
    - PROBLEM6

PROBLEM9: \forall L1 L2 \in NatList: diff(L1, L2) = rev(diff(rev(L1), L2)) .
    - LEMMA1: \forall L1 L2 L3 \in NatList: diff(L1 @ L2, L3) = diff(L1, L3) @ diff(L2, L3) .
    - PROBLEM4 - LEMMA1
    - PROBLEM4 - LEMMA2

PROBLEM10: \forall X \in PNat, L \in NatList: drop(L, X) = rev(drop(rev(L), X)) .
    - LEMMA1 : \forall X \in PNat, L1 L2 \in NatList: drop(L1 @ L2, X) = drop(L1, X) @ drop(L2, X) .

PROBLEM11: \forall X \in PNat, L \in NatList: has(drop(L, X), X) = false .

PROBLEM12: \forall L \in NatList: sum(L) = sum(rev(L)) .
    - LEMMA1: \forall L1 L2 \in NatList: sum(L1 @ L2) = sum(L1) + sum(L2) .

PROBLEM13: \forall X \in PNat, L \in NatList: count(L, X) = count(rev(L), X) .
    - LEMMA1: \forall X \in PNat \forall L1 L2 \in NatList: count(L1 @ L2) = count(L1, X) + count(L2, X) .
    - PROBLEM1 - LEMMA5
    - PROBLEM1 - LEMMA6

PROBLEM14: \forall X \in PNat \forall L1 L2 \in NatList: diff(L1, X | L2) = drop(diff(L1, L2), X) .

PROBLEM15: \forall L \in NatList : diff(rev(L), L) = nil .
    - PROBLEM9 - LEMMA1
    - PROBLEM14

PROBLEM16: \forall L \in NatList: setEqual(L, rev(L)) = true .
    - PROBLEM9 - LEMMA1
    - PROBLEM7 - LEMMA1
    - PROBLEM4 - LEMMA2
    - PROBLEM6 - LEMMA1
    - PROBLEM7
    - PROBLEM14
    - PROBLEM15

PROBLEM17: \forall L \in NatList: rmDup(rmDup(L)) = rmDup(L) .
    - LEMMA1: \forall X \in PNat, L \in NatList: has(L, X) = has(rmDup(L), X) .
        - LEMMA2: \forall X Y \in PNat, L \in NatList: ((not has(L, X)) and has(L, Y)) implies not (X = Y) .

PROBLEM18: \forall L \in NatList: setEqual(L, rmDup(L)) = true .
    - LEMMA1: \forall L \in NatList: diff(rmDup(L), L) = nil .
        - PROBLEM14
    - LEMMA2: \forall L \in NatList: diff(L, rmDup(L)) = nil .
        - PROBLEM14
        - PROBLEM17 - LEMMA1
    - PROBLEM14
    - PROBLEM17 - LEMMA1