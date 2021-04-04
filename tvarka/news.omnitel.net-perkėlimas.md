- [ ] 2. `news.omnitel.net` perkėlimas
    - [x] 1. Naujo domeno tvarkymas:
        - [x] 1. Naujo vardo parinkimas iš keleto:
            - [x] 1. `omniteli.net`
            - [x] 2. `omnite.net`
            - [x] 3. `o-t.lt`
            - [x] 4. `omnitelia.net`
        - [x] 2. Domeno įsigijimas iš **iv.lt**.
        - [x] 3. Laikinas `CNAME` į `194.176.32.141`.
    - [ ] 2. NNTP kliento suderinimas
        - [ ] 1. NNTP kliento pasirinkimas
            - [x] 1. ThunderBird v78.9.0
            - [ ] 2. Alpine
        - [x] 2. NNTP kliento išbandymas
            - [x] 1. su `news.omnitel.net` (veikia, bet nebepriima žinučių).
            - [x] 2. su `news.omniteli.net` (`CNAME` testas).
            - [x] 3. su `trimpas.omnitel.net` (per Subscription matomos grupės, pakaks).
            - [x] 4. su `news.rkm.lt`:
                - [x] 1. Grupių užsakymas;
                - [x] 2. Grupės žinučių nuskaitymas;
                - [x] 3. Atsakymas į žinutę:
                    - [x] a. netiesioginis postinimo instrukcijų suradimas (per `andnrb` ir jo seną tekstą);
                    - [x] b. `Username` = any non-empty string;
                    - [x] c. `Password` = any non-empty string;
                    - [x] d. `Always request authentication when connecting to this server` = On;
                    - [x] e. `Ctrl-Shif-R` išbandymas -- netinka (nes bando siųsti ir paštu, ir per NNTP, ir stringa); `TODO` `BUGREPORT`
                    - [x] f. `Ctrl-R` išbandymas -- tinka, išsiunčia tik per NNTP;
                - [x] 4. Siuntimo ir gavimo Duplex patikrinimas (deja tik Half duplex: kol siunti žinutę, ypač jei stringa, Remote jų medis neatsinaujina).
    - [x] 3. NNTP serverio klonavimas.
        - [x] 1. `news.omnitel.net` klono gamyba.
            - [ ] 1. `TODO`: viso sisteminio disko kopija su `ssh news cat /dev/sda | ssh backup dump cat -`.\
`admin2@trimpasINT:~$ sudo ssh -R localhost:4444:backup-dump:22 news 'rsync -e "ssh -p 4444 -l root" -an --info=progress2 --exclude={"/proc/*","/dev/*","/sys/*","/run/systemd/*"} / localhost:/mnt2/news/'`
            - [ ] 2. `TODO`: visų trijų Image particijų primontavimas `backup-dump` su `losetup` ir `vgchange -ay`.
            - [ ] 3. `TODO`: `rsync` komandinė eilutė iš `trimpasint` į `news` per `ssh`.
            - [ ] 4. `TODO`: `ssh` Reverse tunelio atradimas iš `news` per `trimpasint` į `backup-dump`.
        - [x] 2. `news.omnitel.net` klono parsisiuntimas lokaliai.
            - [x] 1. Sisteminio disko dydžio aptikimas (didokas, 80G, nors failai teužima ~12G).
            - [x] 2. Mano ryšio pralaidumo per LTE įvertinimas (mažokas, iki 20 Mbps).
            - [x] 3. Būdo perduoti dideles pustuštes FS lėtu linku suradimas.
                - [x] a. Panaudojant SSH ir kompresiją? (mintis iš praeities)
                - [x] b. Failo iš nulių sukūrimas. (dd if=/dev/zero of=zeros.bin count=)
                - [x] c. 100M nulių perdavimas su `ssh -C`. (Puikiai, per kelias sekundes)
            - [x] 4. Tuščių FS vietų užpildymas nuliais:
                - [x] a. ddrescue /dev/zero /fs/zeros.bin # iki klaidos
                - [x] b. Pildymo spartos stebėjimas ir analizė:
                    - [x] a. `ddrescue` trūkčioja;
                    - [x] b. I/O Path eina per:
                        - [x] 1. XFS on
                        - [x] 2. Loopback device offset on a file on
                        - [x] 3. NTFS on
                        - [x] 4. USB disk
                    - [x] c. Senas Debian 7 su senu kerneliu.
                - [x] c. `rm /fs/zeros.bin`
            - [x] 5. Paskutinės 3 `rsync` iteracijos:
                - [x] a. `innd` sustabdymas;
                - [x] b. `rsync` kartojimas per t. p. Reverse tunelį;
                - [x] c. `OV1` ir `OV2` didžiulių (DB po kelis 1.5G?) failų atsinaujinimo pastebėjimas:
                    - [x] a. Galbūt rašė naują turinį į tuščią FS vietą?
                    - [x] b. `TODO` ateičiai: pirma Final Sync, o tik tada pildymas nuliais;
                - [x] d. `rsync` dar 2-3 pakartojimai, kol paskutinis tetruko mažiau sekundės (nei vienas failas nebepakitęs);
            - [x] 6. Image persikopijavimas iš `backup-dump` lokaliai per CArk + su kompresija:
                - [x] 1. Pirmas bandymas su `cat /mnt2/_BACKUP/news` ir stebint pralaidą su `pv` per LTE:\
`$ (time ssh -C -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no saukrs@admin2@trimpasint.omnitel.lan@srpsmpps2.in.telecom.lt "sudo ssh backup-dump cat /mnt2/_BACKUP/news" | pv > /D/_work/news/news.img)`\
`Warning: Permanently added 'srpsmpps2.in.telecom.lt,10.75.8.248' (ECDSA) to the list of known hosts.`\
`saukrs@admin2@trimpasint.omnitel.lan@srpsmpps2.in.telecom.lt's password:`\
`0.00 B 0:00:08 [0.00 B/s] [<=>                                                                    ]`\
`This session is being recorded`\
`49.5GiB 2:13:06 [0.00 B/s] [                                       <=>                            ]`\
`Recorder Internal Error [7] PSPIN033E Failed to add a record to the recorder. Error: [PSPRC019E [65113880-923d-11eb-aa8a-00155d5c253a.SSH] Recording component failed to write record to recording file /var/opt/CARKpsmp/recordings/65113880-923d-11eb-aa8a-00155d5c253a.SSH.txt (Error: 28)]`\
`FATAL ERROR: Closing the session`\
` `\
`49.5GiB 2:13:17 [6.34MiB/s] [                                               <=>                   ]`\
` `\
`real    133m17.807s`\
`user    14m9.936s`\
`sys     12m40.654s`
                - [x] 2. Antras bandymas su `dd if=/mnt2/_BACKUP/news skip=...`:
`$ (time ssh -C -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no saukrs@admin2@trimpasint.omnitel.lan@srpsmpps2.in.telecom.lt "sudo ssh backup-dump dd if=/mnt2/_BACKUP/news bs=10M skip=5070" | pv >> /D/_work/news/news.img)`\
`Warning: Permanently added 'srpsmpps2.in.telecom.lt,10.75.8.248' (ECDSA) to the list of known hosts.`\
`saukrs@admin2@trimpasint.omnitel.lan@srpsmpps2.in.telecom.lt's password:`\
`This session is being recorded`\
`0.00 B 0:00:09 [0.00 B/s] [<=>                                                                    ]`\
`5.73GiB 0:31:13 [90.4KiB/s] [                                                            <=>      ]`\
`16.1GiB 1:10:42 [1.33MiB/s] [                        <=>                                          ]`\
`23.3GiB 1:28:23 [8.99MiB/s] [                <=>                                                  ]`\
`3122+0 records in`\
`3122+0 records out`\
`32736542720 bytes (33 GB) copied, 6283.94 s, 5.2 MB/s`\
`30.5GiB 1:44:56 [4.96MiB/s] [                                               <=>                   ]`\
` `\
`real    104m59.655s`\
`user    6m8.467s`\
`sys     5m31.077s`
                - [x] 3. `TODO`: Image Checksum patikrinimas:
        - [ ] 3. `news.omnitel.net` klono atnaujinimas lokaliai?
            - [x] 1. `rsync` + `ssh` per CArk tiesiogiai neveikia:\
`protocol version mismatch -- is your shell clean?`\
`(see the rsync man page for an explanation)`\
`rsync error: protocol incompatibility (code 2) at compat.c(178) [sender=3.1.2]`
            - [x] 2. `ssh` Local Port Fwd per CArk tiesiogiai irgi neveikia:\
`$ ssh -L 4444:194.176.32.141:22 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no saukrs@admin2@trimpasint.omnitel.lan@srpsmpps2.in.telecom.lt`\
`Warning: Permanently added 'srpsmpps2.in.telecom.lt,10.75.8.248' (ECDSA) to the list of known hosts.`\
`saukrs@admin2@trimpasint.omnitel.lan@srpsmpps2.in.telecom.lt's password:`\
` `\
`This session is being recorded`\
` `\
`Using username "admin2".`\
...\
`Last login: Sat Apr  3 09:02:47 2021 from 10.75.8.237`\
`                     `\
`admin2@trimpasINT:~$ `\
`channel 3: open failed: connect failed: open failed`\
`channel 3: open failed: connect failed: open failed`\
...\
`$ ssh localhost -p 4444`\
`kex_exchange_identification: read: Connection reset by peer`\
`Connection reset by ::1 port 4444`
            - [x] 3. `ssh` Local Port Fwd ir per CArk `PSMConnect` neveikia:\
`$ ssh -L 4444:194.176.32.141:22 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -t PSMConnect@srpsmpps2.in.telecom.lt saukrs admin2 trimpasint.omnitel.lan -tunnel 22`\
`Warning: Permanently added 'srpsmpps2.in.telecom.lt,10.75.8.248' (ECDSA) to the list of known hosts.`\
`Vault password is required in order to continue.`\
`Vault password:`\
` `\
`This session is being recorded`\
` `\
`Using username "admin2".`\
...\
`Last login: Sun Apr  4 15:23:08 2021 from 10.75.8.239`\
` `\
`admin2@trimpasINT:~$ `\
`channel 3: open failed: connect failed: open failed`
            - [x] 4. `ssh` Local Port Fwd ir per CArk `PSMConnect` + `SRPSMP` balanserį netgi uždrautas:\
`$ ssh -L 4444:194.176.32.141:22 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -t PSMConnect@srpsmp.in.telecom.lt saukrs admin2 trimpasint.omnitel.lan -tunnel 22`\
...\
`admin2@trimpasINT:~$`\
`admin2@trimpasINT:~$ channel 3: open failed: administratively prohibited: open failed`
        - [ ] 4. `news.omnitel.net` originalo paskutinė apžiūra.
    - [ ] 4. `news.omnitel.net` klono paleidimas lokaliai.
        - [ ] 1. VMM platformos pasirinkimas:
            - [x] 1. VirtualBox:
                - [x] 1. Privalumai:
                    - [x] 1. Praverstų studijoms (M2).
                    - [x] 2. Formaliai jau instaliuotas.
                - [x] 2. Trūkumai:
                    - [x] 1. Nežinia, ar pakaks vietos.
                    - [x] 2. Neveikia kažkuris/virtualizavimo Kernel Module ar pan. \
                          (Galimai tektų persikompiliuot).
            - [x] 2. KVM:
                - [x] 1. Privalumai:
                    - [x] 1. Taip pat naudojamas pas `iv.lt`.
                    - [x] 2. Labiau integruotas su CLI.
                    - [x] 3. Turi užtikrintesnę ateitį.
                    - [x] 4. Praverstų karjerai.
                - [x] 2. Trūkumai:
                    - [x] 1. Nežinia, ar pakaks vietos.
                    - [x] 2. Neturiu jokios patirties.
            - [ ] 3. Virtual Hardware (abiejų VMM) artimumo `VMware` platformai palyginimas.
                - [ ] 1. Dabartinės VM konfigūracijos eksportas iš `ESXi`/`vSphere`.
                    - [x] 1. Tyrimas, kokio formato failas reikalingas, turbūt `.ovf`:
                          https://communities.vmware.com/t5/Open-Virtualization-Format-Tool/How-to-merge-extracted-ova-containing-vmdk-mf-and-ovf/td-p/1837810
                          https://nolabnoparty.com/en/vmware-fix-invalid-ovf-manifest-entry-error/#:~:text=mf%20%2D%20is%20a%20manifest%20file,image%20of%20the%20virtual%20machine
                    - [ ] 2. Įrankio konfigo eksportui paieška.
                        - [x] 1. Turbūt `vifs.pl` 
                          https://kb.vmware.com/s/article/1017022
                        - [x] 2. Hosto naudojamų Datastore ir Admino kredencialų užrašymo/formato paieška.
                          https://vdc-repo.vmware.com/vmwb-repository/dcr-public/37dc6c55-7dc3-444b-973e-9290ffad06ab/1e788ab5-854b-409f-ad54-3305085674f4/doc/cli_manage_files.5.9.html
                          https://code.vmware.com/docs/151/vsphere-cli/doc/cli_manage_files.5.8.html
                        - [x] 3. `.vmx` failo turbūt negausiu, bet jei reiktų, įmanoma perkonvertuot: 
                          https://help.skytap.com/Using_OVF_Converter_Tool.html
                        - [x] 4. Tyrimas, ar įmanoma pasiimti `.ovf` failą.
                            - [x] 1. Pagrindinis diskas yra `[ICP_DS_Z141_03] news/news.vmdk`.
                            - [ ] 2. Gal konfigas tada bus `[ICP_DS_Z141_03] news/news.ovf` ?
                        - [x] 5. Bet kokiu atveju "menu > Template > Export OVF Template" neveikia.
                    - [ ] 3. Turbūt reikia teisių, o neturiu.
                    - [x] 4. Išsisaugau rankiniu būdu:\
` CPU: 1`\
` Memory: 4 GB`\
` Hard disk 1: 80 GB`\
`    Disk File: [ICP_DS_Z141_03] news/news.vmdk`\
` SCSI controller 0: VMware Paravirtual`\
` Network adapter 1: VLAN-2705 | [x] Connected `\
`	Status: [x] Connect At Power On`\
`	Port ID: 651`\
`	Adapter Type: VMXNET 3`\
`    DirectPath I/O: [x] Enable`\
`    Shares: Normal | 50`\
`    Reservation: 0 | Mbit/s`\
`    Limit: Unlimited | Mbit/s`\
`    MAC Address: 00:50:56:ad:84:d4`\
` CD/DVD drive 1: Client Device | [ ] Connected `\
` Video card: <Specify custom settings>`\
`    Number of displays: 1`\
`	Total video memory: 8 MB`\
`    3D Graphics: [ ] Enable 3D Support`\
`    3D Renderer: Automatic`\
`    3D Memory: 256 MB`\
` VMCI device: Device on the virtual machine PCI bus that provides support for the virtual machine communication interface`\
` Other: Additional Hardware`\
`    Controllers:`\
`        PCI controller 0`\
`        IDE 0`\
`        IDE 1`\
`        PS2 controller 0`\
`        SIO controller 0`\
`    SCSI Adapters: SCSI controller 0 (VMware paravirtual SCSI)`\
`    Input Devices:`\
`	    Keyboard`\
`        Pointing device`\
+\
`-[0000:00]-+-00.0  Intel Corporation 440BX/ZX/DX - 82443BX/ZX/DX Host bridge`\
`           +-01.0-[01]--`\
`           +-07.0  Intel Corporation 82371AB/EB/MB PIIX4 ISA`\
`           +-07.1  Intel Corporation 82371AB/EB/MB PIIX4 IDE`\
`           +-07.3  Intel Corporation 82371AB/EB/MB PIIX4 ACPI`\
`           +-07.7  VMware Virtual Machine Communication Interface`\
`           +-0f.0  VMware SVGA II Adapter`\
`           +-11.0-[02]--`\
`           +-15.0-[03]----00.0  VMware PVSCSI SCSI Controller`\
`           +-15.1-[04]--`\
`           +-15.2-[05]--`\
`           +-15.3-[06]--`\
`           +-15.4-[07]--`\
`           +-15.5-[08]--`\
`           +-15.6-[09]--`\
`           +-15.7-[0a]--`\
`           +-16.0-[0b]----00.0  VMware VMXNET3 Ethernet Controller`
                - [x] 2. Lyginu tik su KVM:
                    - [x] 1. NIC: VMXNET3 => VirtIO: https://corneschi.ro/posts/convert-esx-to-kvm/#modifying-network-configuration
                    - [x] 2. NIC: VMXNET3 OK-2-stay: https://pve.proxmox.com/wiki/Qemu/KVM_Virtual_Machines#qm_network_device
                    - [x] 3. SCSI: vmw_pvscsi => virtio: https://www.sysorchestra.com/migrate-vmware-esxi-virtual-machines-to-proxmox-kvm-with-lvm-thin-logical-volumes/
                - [x] 3. Nelyginu su VirtualBox. (Dėl laiko stokos)
            - [x] 4. Pasirenku KVM.
        - [ ] 2. Disko RAW-Image atsarginė kopija.
        - [ ] 3. VM konfigūracijos kopijavimas, atkūrimas (klonuoti į identišką virtualią geležį turbūt nepavyks).
            - [x] 1. Domain XML formato tyrimas, per kiek laiko įkandama: https://libvirt.org/formatdomain.html
                - [x] 1. Per sudėtingi sisteminiai elementai, pvz.:
                    - [x] 1. CPU resursai;
                    - [x] 2. UUIDai;
                    - [x] 3. BIOS.
                - [x] 2. Atmetu.
            - [x] 2. Jei įkandama, testas su `virt-v2v`: \
                - [x] 1. URL: https://libguestfs.org/virt-v2v.1.html#convert-disk-image-to-disk-image
                - [x] 2. Atmetu dėl XML sudėtingumo.
            - [ ] 3. Jei ne, kūrimas rankomis.
                - [ ] 1. `TODO`
        - [ ] 4. Testinė keltis iš CentOS 7.9 `.iso` failo.
        - [ ] 5. Sisteminio disko Image prijungimas.
        - [ ] 6. NIC interfeisų ir kitų geležies aspektų palyginimas su originalia mašina.
        - [ ] 7. Reikiamų sisteminių failų pataisymas:
            - [ ] 1. `/etc/resolv.conf`;
            - [ ] 2. IP adresacijai;
            - [ ] 3. Hostname(?);
            - [ ] 4. `/etc/hosts`.
            - [ ] 5. Pakeitimų sąrašo sudarymas (pravers migruojant į `iv.lt` infrą).
        - [ ] 8. `innd` startupo išjungimas.
        - [ ] 9. Testinė keltis iš prijungto sisteminio disko.
        - [ ] 10. Reikiamų aplikacinių, `innd` failų pataisymas:
            - [ ] 1. `TODO` kuriuos via `andnrb`.
            - [ ] 2. Ar tikrai keičiame `pathhost: trimpas.omnitel.net`? \
                  Palikus jį galbūt viskas (Message DB) išsisaugotų, ir pakaktų tepakeisti `news.omnitel.net` (papildyti viena raide).
        - [ ] 11. `innd` pirminė apžiūra, testavimas ir debuginimas.
        - [ ] 12. `innd` lokalus klientinis testavimas.
        - [ ] 13. VM išjungimas ir atsarginė kopija.
        - [ ] 14. Disko RAW-Image konvertavimas į Copy-on-Write/gimtąjį VMM formatą.
            - [ ] 1. https://libguestfs.org/virt-v2v.1.html#convert-disk-image-to-disk-image
        - [ ] 15. VM klonavimas į mažesnį diską:
            - [ ] 1. arba pasinaudojant COW formato galimybėmis (80G -> 12G) + pvz. Clonezilla,
            - [ ] 2. arba atliekant FS kopiją `xfsdump` ir `xfsrestore` pagalba + GRUB2 reinstall.
        - [ ] 16. OS ir `innd` testavimas naujoje VM (su nauju sisteminio disko formatu).
    - [ ] 5. `news.omnitel.net` klono hostinimas.
        - [ ] 1. VM įsigijimas pas `iv.lt`:
            - [ ] 1. `TODO`
        - [ ] 2. V2V Offline perkėlimo tyrimas.
        - [ ] 3. ?
