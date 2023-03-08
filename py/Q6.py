A = [-5, 9, -3, -2, -9, -2, 2, 11, -1, -4, -10, 21]
B = [-4, -4, -2, -9, -2, 8, 3, 10, -2, -3, -9]

# list to store pairs and list to store each elements possible pairs
pairs_A, pot_pairs_A = [], []

for count_a, ele_a in enumerate(A):
    for count_b, ele_b in enumerate(B):
        pot_pairs_A.append(abs(count_b - count_a) + (ele_a - ele_b)**2)
    pair = min(pot_pairs_A)
    pot_pairs_A = []
    pairs_A.append(pair)
print(pairs_A)

pairs_B, pot_pairs_B = [], []

for count_b, ele_b in enumerate(B):
    for count_a, ele_a in enumerate(A):
        pot_pairs_B.append(abs(count_b - count_a) + (ele_a - ele_b)**2)
    pair = min(pot_pairs_B)
    pot_pairs_B = []
    pairs_B.append(pair)
print(pairs_B)

