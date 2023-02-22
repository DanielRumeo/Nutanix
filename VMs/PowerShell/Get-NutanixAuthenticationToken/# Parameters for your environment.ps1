# Parameters for your environment
$Username = "admin"
$Password = "nutanix/4u"

########################### Option 1 ###########################
# create the HTTP Basic Authorization header
$pair = $Username + ":" + $Password
$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [System.Convert]::ToBase64String($bytes)
$basicAuthValue = "Basic $base64"

Write-Host ("Auth header: $basicAuthValue")


########################### Option 2 ###########################
$HeaderAuth = [System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($Username  + ":" + $Password)) 
Write-Host $HeaderAuth
