#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create user

.DESCRIPTION

No description available.

.PARAMETER User
Created user object

.OUTPUTS

None
#>
function New-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${User}
    )

    Process {
        'Calling method: New-PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user'

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling createUser."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Creates list of users with given input array

.DESCRIPTION

No description available.

.PARAMETER User
List of user object

.OUTPUTS

None
#>
function New-PSUsersWithArrayInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${User}
    )

    Process {
        'Calling method: New-PSUsersWithArrayInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user/createWithArray'

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling createUsersWithArrayInput."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Creates list of users with given input array

.DESCRIPTION

No description available.

.PARAMETER User
List of user object

.OUTPUTS

None
#>
function New-PSUsersWithListInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${User}
    )

    Process {
        'Calling method: New-PSUsersWithListInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user/createWithList'

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling createUsersWithListInput."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Delete user

.DESCRIPTION

No description available.

.PARAMETER Username
The name that needs to be deleted

.OUTPUTS

None
#>
function Remove-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username}
    )

    Process {
        'Calling method: Remove-PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        $LocalVarUri = '/user/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling deleteUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', $Username)

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Get user by user name

.DESCRIPTION

No description available.

.PARAMETER Username
The name that needs to be fetched. Use user1 for testing.

.OUTPUTS

User
#>
function Get-PSUserByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username}
    )

    Process {
        'Calling method: Get-PSUserByName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/xml', 'application/json')

        $LocalVarUri = '/user/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling getUserByName."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', $Username)

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "User"

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Logs user into the system

.DESCRIPTION

No description available.

.PARAMETER Username
The user name for login

.PARAMETER Password
The password for login in clear text

.OUTPUTS

String
#>
function Invoke-PSLoginUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Password}
    )

    Process {
        'Calling method: Invoke-PSLoginUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/xml', 'application/json')

        $LocalVarUri = '/user/login'

        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling loginUser."
        }
        $LocalVarQueryParameters['username'] = $Username

        if (!$Password) {
            throw "Error! The required parameter `Password` missing when calling loginUser."
        }
        $LocalVarQueryParameters['password'] = $Password

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "String"

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Logs out current logged in user session

.DESCRIPTION

No description available.

.OUTPUTS

None
#>
function Invoke-PSLogoutUser {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: Invoke-PSLogoutUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        $LocalVarUri = '/user/logout'

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Updated user

.DESCRIPTION

No description available.

.PARAMETER Username
name that need to be deleted

.PARAMETER User
Updated user object

.OUTPUTS

None
#>
function Update-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${User}
    )

    Process {
        'Calling method: Update-PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/user/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling updateUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', $Username)

        if (!$User) {
            throw "Error! The required parameter `User` missing when calling updateUser."
        }

        $LocalVarBodyParameter = $User | ConvertTo-Json

        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['auth_cookie'] = $Configuration["Cookie"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

