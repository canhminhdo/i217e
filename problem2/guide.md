PROBLEM2: \forall X \in PNat: rev(mkl1(X)) = mkl2(X) .
- LEMMA1: \forall X \in PNat, L \in NatList: smkl2(X, L) = smkl2(X, nil) @ L .
    - LEMMA2 [assoc@]: \forall L1 L2 L3 \in NatList: (L1 @ L2) @ L3 = L1 @ (L2 @ L3) . 