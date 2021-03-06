# variable for while loop
$x = 1 

# so that we can use a popup message box
add-type -assemblyname presentationcore,presentationframework

# start a never ending while loop
while ($x -eq 1) {

    # check to make sure things were working
    # [System.Windows.MessageBox]::Show("x = 1")

    # start small sleep timer (incase I need to stop it) 
    # Start-Sleep -s 150

    # grab the current hours in military time and set as a variable
    $time = get-date -Format "HH"
    # [System.Windows.MessageBox]::Show($time)

    # another check to make sure it works
    # write-host($time)

    # if loop to check if it is bed time
    # if variable time is greater than or equal to 9pm (21:00)
    # OR if variable time is less than or equal to 5am (05:00)
    if ([int]$time -ge 21 -Or [int]$time -lt 5) {

        # popuo message box warning it is bedtime
        [System.Windows.MessageBox]::Show('It is Bedtime! Say good night to your friends. We love you. Now go to sleep. This Computer will Shutdown in 5 minutes!!')

        # 5 minute timer
        Start-Sleep -s 300

        # Force shutdown the computer
        Stop-Computer -Force
    }
    # [System.Windows.MessageBox]::Show("sleep for 5 min before restarting the loop")
    Start-Sleep -s 300
}
