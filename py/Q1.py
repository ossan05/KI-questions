DNA = list(input())
bases = 0
print(DNA)

total_length = len(DNA)
print(total_length)

for i in DNA:
    if i == "G" or i == "C":
        bases += 1

print(bases)
print(bases / total_length * 100, "%")