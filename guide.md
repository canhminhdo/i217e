PROBLEM1: \forall L \in NatList: fold*(rev(L)) = fold*(L) .
    - LEMMA1: \forall L \in NatList: fold*(L1 @ L2) = fold*(L1) * fold*(L2) .
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
    - LEMMA1: \forall L1, L2 \in NatList: rev(L1 @ L2) = rev(L2) @ rev(L1) .
        - LEMMA2: \forall L \in NatList: L @ nil = L .
        - PROBLEM2 - LEMMA2 [assoc@]

PROBLEM5: \forall L \in NatList: size(L) = size(rev(L)) .
    - LEMMA1: \forall L1, L2 \in NatList: size(L1 @ L2) = size(L1) + size(L2) .
        - PROBLEM1 - LEMMA4 [assoc+]
        - PROBLEM1 - LEMMA5 [comm+]
    - LEMMA2: \forall X \in PNat: s(X) = X + s(0) .

PROBLEM6: \forall L1 L2 \in NatList: diff(L, rev(L)) = nil .
    - LEMMA1: \forall L1, L2 \in NatList: diff(L1, L2 @ L3) = diff(diff(L1, L2), L3) .
        - LEMMA1
    - LEMMA2: \forall X \in PNAT, \forall L1, L2 \in NatList: has(L1 @ L2, X) = has(L1, X) or has(L2, X) .    

PROBLEM7: \forall X \in PNat, L1, L2 \in NatList: drop(L1 @ L2, X) = drop(L1, X) @ drop(L2, X) .

PROBLEM8: \forall L1, L2 \in NatList: diff(L1, L2) = diff(L1, rev(L2)) .
    - LEMMA1: \forall X \in PNat, L \in NatList: has(L, X) = has(rev(L), X) .
        - PROBLEM6 - LEMMA2

PROBLEM9: \forall L1, L2 \in NatList: diff(L1, L2) = rev(diff(rev(L1), L2)) .
    - LEMMA1: \forall L1, L2, L3 \in NatList: diff(L1 @ L2, L3) = diff(L1, L3) @ diff(L2, L3) .
    - PROBLEM4 - LEMMA1
    - PROBLEM4 - LEMMA2

<!--
PROBLEM7: \forall L1 L2 \in NatList : min(L1 @ L2) = min(min(L1) @ min(L2)) .

PROBLEM8: \forall L1 L2 \in NatList : max(L1 @ L2) = max(max(L1) @ max(L2)) .

PROBLEM10: \forall L1 L2 \in NatList : diff(L1, L2) = diff(L2, L1) . -->