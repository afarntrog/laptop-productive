#!/bin/bash
echo 'Enter reason for opening computer'
read reason
echo "Opened on: $(date)" >> $HOME/Desktop/laptop_purpose.txt
echo "Reason: $reason" >> $HOME/Desktop/laptop_purpose.txt
