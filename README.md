# laptop-productive
Shell script to monitor laptop unlock and prompt user for reason why laptop is being used

Make it an executable:

`chmod 755 input_getter.sh`

Run the file in the background
`nohup path/to/script.sh &`

If you want to update the background script then:
1) Find process
`jobs -l`
2) Kill it
`kill -9 pid`

You may need to kill other listeners if so:
`ps -ef` and kill any pid that is still listening

Rerun it
`nohup path/to/script.sh &`
However, ideally, you should just have your background script call another script (like I did in above example).
This way you can update your "child" script while the caller script runs.
