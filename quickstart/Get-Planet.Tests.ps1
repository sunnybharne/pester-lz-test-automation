BeforeAll {
    #. $PSScriptRoot/Foo-Bar.ps1
     . $PSCommandPath.Replace('.Tests.ps1','.ps1')
}

Describe "Get-Emoji" {
  It "Returns <expected> (<name>)" -ForEach @(
      @{ Name = "cactus"; Expected = '🌵'}
      @{ Name = "giraffe"; Expected = '🦒'}
  ) {
      Get-Emoji -Name $name | Should -Be $expected
  }
}
