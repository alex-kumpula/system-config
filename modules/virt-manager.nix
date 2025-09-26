{ ... }:
{
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  # Enable TPM support for VMs (particularly useful for Windows 11)
  virtualisation.libvirtd.qemu.swtpm.enable = true;
}