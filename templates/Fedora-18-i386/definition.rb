Veewee::Session.declare({
  # Minimum RAM requirement for installation is 512MB.
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :hwvirtex => 'on',
  :os_type_id => 'Fedora',
  :iso_file => "Fedora-18-i386-DVD.iso",
  :iso_src => "http://mirrors.kernel.org/fedora/releases/18/Fedora/i386/iso/Fedora-18-i386-DVD.iso",
  :iso_md5 => "d4dcf10a2c98a99dca01b96aefc29590",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [ '<Tab> linux text biosdevname=0 ks=http://%IP%:%PORT%/ks.cfg<Enter><Enter>' ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "ruby.sh",
    "chef.sh",
    "puppet.sh",
    "vagrant.sh",
    "virtualbox.sh",
    #"vmfusion.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})