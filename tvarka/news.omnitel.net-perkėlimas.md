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
    - [ ] 4. `news.omnitel.net` klono paleidimas lokaliai.
    - [ ] 5. `news.omnitel.net` klono hostinimas.
