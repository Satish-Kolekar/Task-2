<#Task 2
1) What will happen in below commands#>

Get-Service | Export-Csv services.csv | out-file

<# Ans) It will give error as we already exported result of get-service command
As pipeline is not providing any input to another command #>

<#2) How can we create the pipe-delimited file instead of the comma-seperated csv file#>

Get-Service | Export-Csv services1.csv -Delimiter "|"

<# 3) Check out if there is any way we can eliminate the #information about the type of the object from the top of an exported csv file #>

Get-Service | Export-Csv services2.csv -NoTypeInformation 

<# 
4) Will provide expected output, give details Why or Why not?

Get-ADComputer -Filter * | get-hotfix

Get-ADComputer -Filter * 
 So output object of data type of [Microsoft.ActiveDirectory.Management.ADComputer]
 then we will get Distinguished Name, DNSHOSTName, Name etc..

 Here "Name" is parameter which send pipeline input.
 
 Get-hotFix 
    In this command "ComputerName" is only parameter which accepts the Pipline Input. 
    It accepts input by propery name.
    
    Get-ADComputer -Filter * | Get-hotFix 

    Above command produces the output and will show all the patches installed on that computer

    #>

<# 5) Write a command to list the processes from a list of computer from any txt file #>
   <# PsudoCode
   Create a text file of computers
   Assign a variable for getting list of computers
   Use For-each Loop
   For getting the process
   #>
 $text=Get-Content computers.txt
Get-Process -ComputerName $text 




   






