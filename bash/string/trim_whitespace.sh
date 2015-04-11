#!/bin/sh

trim() { echo $1; }

echo ">>$(trim 'right side    ')<<"
echo ">>$(trim '    left side')<<"
echo ">>$(trim '    both sides    ')<<"