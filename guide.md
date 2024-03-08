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