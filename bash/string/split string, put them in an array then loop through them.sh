#You can probably skip the step of explicitly creating an array...One trick that I like to use is to set the inter-field separator (IFS) to the delimiter character. This is especially handy for iterating through the space or return delimited results from the stdout of any of a number of unix commands.
# Below is an example using semicolons (as you had mentioned in your question):

export IFS=";"
sentence="one;two;three"
for word in $sentence; do
  echo "$word"
done

#Note: in regular Bourne-shell scripting setting and exporting the IFS would occur on two separate lines (IFS='x'; export IFS;).
