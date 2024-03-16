mkdir Lillian
mkdir biocomputing
pwd
cd biocomputing
pwd
mv wildtype.fna.txt Lillian
rm wildtype.gbk.txt
grep -n "tatatata" wildtype.fna.txt
grep -n "tatatata" wildtype.fna.txt > new_file.txt
grep -v ">" 16Sb.fasta | grep -v "^\s*$" | wc -l

#!/bin/bash


# Read the sequence from a file into a variable
sequence=$(<16Sb.fasta)

# Count the occurrences of each nucleotide
A_count=$(echo "$sequence" | tr -dc 'Aa' | wc -m)
G_count=$(echo "$sequence" | tr -dc 'Gg' | wc -m)
C_count=$(echo "$sequence" | tr -dc 'Cc' | wc -m)
T_count=$(echo "$sequence" | tr -dc 'Tt' | wc -m)

# Calculate the total nucleotide count
total_count=$((A_count + G_count + C_count + T_count))

# Calculate the GC content percentage
GC_percentage=$(echo "scale=2; ($G_count + $C_count) * 100 / $total_count" | bc)

# Print the counts of each nucleotide
echo "Occurrences of A: $A_count"
echo "Occurrences of G: $G_count"
echo "Occurrences of C: $C_count"
echo "Occurrences of T: $T_count"

# Print the GC content percentage
echo "GC content percentage: $GC_percentage%"

#!/bin/bash

# Define the filename for the target file
target_file="targetfile.sh"

# Use cat and output redirection to append the script content to the target file
cat "$0" >> "$target_file"

# Display a message indicating that the content was appended
echo "Script content has been appended to $target_file"

history >> compilation.txt

cat compilation.txt



