Veewee::Session.declare({
  :cpu_count => '2', :memory_size=> '2048',
  :disk_size => '20140', :disk_format => 'VDI', :hostiocache => 'off', :ioapic => 'on', :pae => 'on',
  :os_type_id => 'ESXi5',
  :iso_file => "VMware-VMvisor-Installer-5.0.0.update02-914586.x86_64.iso",
  :iso_src => "",
  :iso_download_instructions => "- You need to download this manually as there is no automated way to do it\n"+
  "https://my.vmware.com/web/vmware/details?downloadGroup=ESXI50U2&productId=229&rPId=3282\n" + 
  "Registration is required to complete the download\n"+
  "\n"+
  "- The version tested is 5.0.0 update 2 version 914586\n"+
  "- For other versions: changed the iso filename+checksum\n",
  :iso_md5 => "fa6a00a3f0dd0cd1a677f69a236611e2",
  :iso_download_timeout => 1000,
  :boot_wait => "15", 
  :boot_cmd_sequence => 
  [ 'O',
    ' ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
    :kickstart_port => "7122", :kickstart_timeout => 10000, :kickstart_file => "ks.cfg",
    :ssh_login_timeout => "10000000", :ssh_user => "root", :ssh_password => "vagrant", :ssh_key => "",
    :ssh_host_port => "7222", :ssh_guest_port => "22",
    :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
    :shutdown_cmd => "/bin/halt",
    :postinstall_files => ["vagrant_key.py", "vnc_enable.sh" ], :postinstall_timeout => 10000,
    :vmfusion => { :vm_options => { 'enable_hypervisor_support' => true,  'download_tools' => false } }
})
