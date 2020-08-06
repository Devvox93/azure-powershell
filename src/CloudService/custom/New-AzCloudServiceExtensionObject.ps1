
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a in-memory object for Extension
.Description
Create a in-memory object for Extension

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20200601.Extension
.Link
https://docs.microsoft.com/en-us/powershell/module/az.CloudService/new-AzCloudServiceExtensionObject
#>
function New-AzCloudServiceExtensionObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20200601.Extension')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Indicates this extension can be auto upgraded by automatic platform upgrades.")]
        [bool]
        $EnableAutomaticUpgrade,
        [Parameter()]
        [string]
        $Name,
        [Parameter(HelpMessage="Protected settings for the extension which are encrypted before sent to the VM.")]
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20200601.ICloudServiceExtensionPropertiesProtectedSettings]
        $ProtectedSetting,
        [Parameter()]
        [string]
        $Publisher,
        [Parameter()]
        [string[]]
        $RolesAppliedTo,
        [Parameter(HelpMessage="Public settings for the extension.")]
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20200601.ICloudServiceExtensionPropertiesSettings]
        $Setting,
        [Parameter()]
        [string]
        $Type,
        [Parameter()]
        [string]
        $TypeHandlerVersion
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20200601.Extension]::New()

        $Object.EnableAutomaticUpgrade = $EnableAutomaticUpgrade
        $Object.Name = $Name
        $Object.ProtectedSetting = $ProtectedSetting
        $Object.Publisher = $Publisher
        $Object.RolesAppliedTo = $RolesAppliedTo
        $Object.Setting = $Setting
        $Object.Type = $Type
        $Object.TypeHandlerVersion = $TypeHandlerVersion
        return $Object
    }
}

