# dalykai

## Siekiai

Asmeninių tvarkymų medis.

- [ ] 1. **Tvarka:**
    - [ ] 1. Fizinėje aplinkoje
        - [ ] 1. Bute
            - [ ] 1. Pakuotės, perdirbamos atliekos:
                - [ ] 0, optimalus rūšiavimas: būdai ir kriterijai:
                    - [ ] 1. Užklausos (ir diskusijos) soc. tinkluose
                        - [ ] 1. Twitter
                            - [x] 1. Apie stiklainių metimą į laužą: https://twitter.com/sskras/status/1382649493406035971 \
                                  https://bitbucket-archive.softwareheritage.org/projects/gr/GregorR/
                        - [ ] X. Aptarimai baigti
                    - [ ] X. Optimalus rūšiavimas rastas
                - [ ] 2, išgabenti;
                - [ ] 3, dokumentuoti procesą;
                - [ ] 4, pradėti kartojimą;
                - [ ] 5, registruoti trukdžius;
            - [ ] X. Bute baigta
        - [ ] 2. Popierinės medžiagos skaitmeninimas
            - [ ] 1. `BLOCKER`: [Įrankiai skaitmeninti popierinei medžiagai](#Įrankiai-skaitmeninti-popierinei-medžiagai)
            - [x] 2. VTU-ELF-1995, Kursinis projektas „Jonų intenstyvumo matuoklis“, Vaidas Sipavičius
        - [ ] X. Fizinėje aplinkoje baigta
        ---
    - [ ] 2. Su sveikata
        - [ ] 1. Akių ilsinimas:
            - [ ] 1. `TODO` kaip?
            - [ ] 2. Dažniau žiūrėti į tolį:
                - [ ] 1. `TODO` kaip dažnai?
            - [ ] 3. Mažiau žiūrėti į ekranus:
                - [ ] 1. `TODO` kaip?
            - [ ] X. Akys jau ilsinamos
        - [ ] 2. Daugiau deguonies kvėpuojant:
            - [ ] `TODO` vėdinimas
            - [ ] 2. Vaikščiojimas:
                - [ ] 12. `2021-05-08`: 5h su `dmislv` Ribiškių taku
                - [ ] 13. `2021-05-11`: 1h su `dmislv` nuo TRParko per Žirmūnų tiltą iki Šilo tilto ir atgal
            - [ ] X. Turim daugiau deguonies
        - [ ] X. Pasirūpinta sveikata
        ---
    - [ ] 3. Skaitmeninėje aplinkoje
        - [ ] 1. Pirmos būtinybės poreikiai
            - [ ] 1. Skaitmeninių veiksmų žymėjimasis + versijavimas
                - [x] 1. Pasirinktas formatas = ASCII
                  <a id="Užduotys-ir-problemos"></a>
                - [ ] 2. Užduotys ir problemos
                    - [x] 1. Sukūrimas iš akies, https://github.com/sskras/dalykai
                    - [x] 2. Pildymas
                    - [ ] 3. Struktūros keitimas
                        - [x] 1. `---` žymės įvedimas tarp stambių punktų (kad lengva būtų naršyti)
                        - [ ] 2. Uždarančiojo punktą `X. ...` įvedimas, kad sub-punktų pradžios sudarytų simetrišką `>` formą
                    - [x] 4. Trūkumai
                        - [x] 1. Max. level of nesting = 10 (GitHube)
                    - [ ] X. Užduotys pilnai žymimos
                - [ ] 3. Veiksmai + smulkmenos
                    - [ ] 1. Bendrai
                        - [ ] 1. Laikas ir užduotys
                            - [x] 1. Laiko ir darbų sekimas kartu, pirmieji bandymai:
                                - [x] 1. Tekstinis failas (neversijuotas `@mf.vu.lt`)
                                - [x] 2. Tekstinis failas (neversijuotas `@mb.vu.lt`)
                                - [x] 3. `Redmine` darbai `@mb.vu.lt`
                                - [x] 4. `TrackingTime.co`
                            - [ ] 2. Darbų medis: `Task Warrior`
                                - [x] 1. Pradėjau naudoti ~2019 m.
                                - [ ] 2. `TODO` patobulinimai
                                    - [ ] 1. Atskirti darbdavio veiksmus nuo asmeninių, studijų ir kt.
                                    - [ ] 2. Atsinaujinti versiją
                                    - [ ] 3. Importuotis darbus per RESTapi iš `TrackingTime.co`
                                - [ ] X. Darbų medžio įrankis sutvarkytas
                            - [ ] 3. Laiko žymėjimas: `TimeWarrior`
                                - [x] 1. Pradėjau naudoti ~2019 m.
                                - [ ] 2. `TODO` patobulinimai
                                    - [ ] 1. patogesni _Bash-wrapper_-iai:
                                        - [ ] 1. `timew_fronted.sh` perdarymas
                                    - [ ] 2. Atsinaujinti versiją
                                    - [ ] 3. Importuotis intervalus per RESTapi iš `TrackingTime.co`
                                    - [ ] 4. Sukurti   paketą (MinGW versiją)
                                - [ ] X. Laiko žymėjimasis sutvarkytas
                            - [ ] X. Laikas ir užduotys žymimi
                        - [ ] 2. IaC
                              <a id="-VirtualBox--skriptinimas"></a>
                            - [ ] 1. `VirtualBox` skriptinimas
                                - [ ] 1. Dokumentacija:
                                    - [x] 1. https://www.oracle.com/technical-resources/articles/it-infrastructure/admin-manage-vbox-cli.html
                                - [ ] 2. Bandymai:
                                    - [x] 1. [kita repo](https://github.com/sskras/dalykai/blob/main/tvarka/scripting-VirtualBox.asciidoc)
                                    - [x] 2. VM sąrašas
                                    - [x] 3. VM išjungimas
                                    - [ ] 4. CPU skiltikumo keitimas: 32 => 64
                                - [x] 3. Gedimo taisymas:  \
                                      `VBoxManage: error: VT-x is disabled in the BIOS for all CPU modes (VERR_VMX_MSR_ALL_VMX_DISABLED)`
                                    - [x] 1. Forumai:
                                        - [x] 1. How to determine if CPU VT extensions are enabled in bios?  \
                                              https://askubuntu.com/questions/103965/how-to-determine-if-cpu-vt-extensions-are-enabled-in-bios
                                        - [x] 2. Problems with Hardware Accelerator with win10:  \
                                              https://forums.virtualbox.org/viewtopic.php?f=6&t=95143
                                        - [x] 3. VT-x is disabled in the BIOS for both all CPU modes (VERR_VMX_MSR_ALL_VMX_DISABLED):  \
                                              https://stackoverflow.com/questions/33304393/vt-x-is-disabled-in-the-bios-for-both-all-cpu-modes-verr-vmx-msr-all-vmx-disabl
                                        - [x] 4. Check if virtualization is enabled without sudo on Centos 7?  \
                                              https://stackoverflow.com/questions/36397351/check-if-virtualization-is-enabled-without-sudo-on-centos-7
                                        - [x] 5. Error Failed To Initialize:  \
                                              https://stackoverflow.com/questions/34485163/error-failed-to-initialize  \
                                              => Check detailed machine logs!
                                        - [x] 6. https://sites.google.com/site/jacnoteslinux/home/virtualization/misc/find-out-if-cpu-support-intel-vt-and-amd-v-virtualization-support
                                        - [x] 7. VT-x option not available:  \
                                              https://forums.virtualbox.org/viewtopic.php?f=7&t=98184
                                        - [x] 8. `[ 2143.441510] kvm: disabled by bios`  \
                                            - [x] 1. http://www.linux-kvm.org/page/FAQ#.22KVM:_disabled_by_BIOS.22_error  \
                                            - [x] 2. https://unix.stackexchange.com/questions/27174/how-to-check-if-vt-x-is-enabled-in-bios/27177#27177
                                            - [x] 3. Hint => `dmidecode`!
                                        - [x] X. Peržvelgti forumai
                                    - [x] 2. Virtualizacijos patikrinimas:
                                        - [x] 1. CPU itself:
                                            - [x] 1. https://www.cyberciti.biz/faq/linux-xen-vmware-kvm-intel-vt-amd-v-support/
                                            - [x] 2. https://github.com/weaveworks/ignite/blob/main/docs/installation.md#checking-for-kvm-support
                                            - [x] 3. https://vitux.com/how-to-check-if-your-processor-supports-virtualization-technology/
                                            - [x] 4. https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/virtualization/sect-virtualization-tips_and_tricks-verifying_virtualization_extensions
                                        - [x] 2. BIOS / `dmidecode` !
                                            - [x] 1. https://stackoverflow.com/questions/11116704/check-if-vt-x-is-activated-without-having-to-reboot-in-linux/11118147#comment70537069_19464184
                                            - [x] 2. Hint => `virt-host-validate` provided by `libvirt-client`
                                            - [x] 3. Tikrinimas fiziškai persijungiant į BIOS
                                                - [x] 1. Buvo išjungta, įjungiau:
                                                    - [x] 1. `VT-x`
                                                    - [x] 2. `VT-d`
                                                - [x] 2. Patikrinau `dmidecode` išvedimo skirtumą: nieko aiškaus
                                                - [ ] 3. Dokumentavimas:
                                                    - [ ] 1. https://unix.stackexchange.com/questions/27174/how-to-check-if-vt-x-is-enabled-in-bios/27177#27177
                                                    - [ ] 2. Twitter / blog
                                                - [ ] X. BIOSas patikrintas ir dokumentuotas
                                            - [x] X. BIOS sutvarkytas
                                        - [x] 3. Išvada: CPU palaiko iškart, o BIOS nustatymuose buvo uždrausta.
                                        - [x] X. Patikrintas `VT-x` palaikymas
                                    - [x] 3. Logų vieta: https://blogs.oracle.com/scoter/virtualbox-log-files-v2
                                    - [ ] 4. Source code
                                        - [x] 1. https://github.com/Ratio2/vbox/blob/master/src/VBox/VMM/VMMR3/HM.cpp#L214 | HMR3Init()
                                        - [x] 2. https://github.com/Ratio2/vbox/blob/master/src/VBox/HostDrivers/Support/SUPLib.cpp#L1677 | SUPR3QueryVTCaps()
                                        - [ ] 3. `TODO`: `vboxdrv/linux/SUPDrv-linux.c`
                                    - [x] X. Klaida pataisyta
                                - [ ] 4. Implementavimas:
                                    - [x] `2.1.2.6`:  \
                                          [`s2 > IiSA: Informacijos ir sistemų apsauga > Laboratoriniai darbai > Pasiruošti infrą`](#Pasiruošti-infrą)
                                    - [ ] X. Baigtos VBox skriptinimo implementacijos
                                - [ ] X. Suskriptintas `VirtualBox` valdymas
                            - [ ] X. Įgyvendinta IaC
                        - [ ] X. Bendrų dalykų žymėjimas sutvarkytas
                    - [ ] 2. Asmeniškai
                        - [ ] 1. Android įrankiai:
                            - [ ] 1. Microsoft To Do:  \
                                  https://todo.microsoft.com/tasks/
                            - [ ] 2. TickTick:  \
                                  https://ticktick.com/
                            - [ ] X. Paruošti Android įrankiai
                        - [ ] X. Sutvarkytas asmeniškų veiksmų žymėjimas
                    - [ ] 3. Darbui
                        - [ ] 1. Kuo didesnio sk. veiksmų perkėlimas KDV į tekstinę konsolę:
                            - [x] 1. `Msys2` naudojimas
                        - [x] 2. Kiekvienos svarbesnės `Bash`-sesijos įrašymas KDV:
                            - [x] 1. `llog` aljasas/skriptas
                        - [ ] X. Darbo veiksmai loginami
                    - [ ] 4. Studijoms
                        - [ ] 1. Studijų medžiagai
                        - [ ] 2. Studijų metu atliktiems darbams
                    - [ ] X. Norimi veiksmai yra žymimi
                - [ ] X. Skaitmeninis gyvenimas jau žymimas
            - [ ] 2. Bekupai
                - [ ] 1. Susirinkti visus savo Ad-hoc darytus bekupus
                    - [ ] 1. Kaupti senas naudotas savo duomenų talpyklas vienoje vietoje:
                        - [ ] 1. 3.5" PATA diskus
                        - [ ] 2. 2.5" SATA diskus
                        - [ ] 3. 2.5" USB diskus
                    - [ ] `BLOCKER`: [DCIM + hardware asset management](#DCIM---hardware-asset-management) suderinimas
                    - [ ] 3. Sužymėti sukauptas duomenų talpyklas
                - [ ] 2. Susikurti naują (turbūt centralizuotą) bekupavimo sistemą.
                - [ ] 3. Į ją perkelti visus savo randamas failų ar diskų Image-kopijas
                - [ ] 4. Pašto bekupai
                    - [ ] 1. Gmail.com
                    - [ ] 2. `ar`?`fi.lt`
                    - [ ] X. Subekupuoti visi laiškai
            - [ ] 3. Pašto programos
            - [ ] 4. Desktopų CMDB
            - [ ] 5. UE Management (Sailfish OS)
                - [x] 1. _Sailfish OS_ pasaulis
                    - [x] 1. Naujienos
                        - [x] 1. https://blog.jolla.com/kvarken-xperia-10-ii/
                        - [ ] X. Apžvelgtos _Sailfish OS_ naujienos
                    - [ ] X. Sukauptas įdirbis _Sailfish OS_ pasaulyje
                - [ ] X. Sutvarkytas _User Equipment_ valdymas
            - [ ] 6. Tvarka darbe
                - [ ] 1. KDV
                - [ ] 2. Infrastruktūroje
                    - [ ] 0. Skriptų ir kodo versijavimas
                        - [ ] 1. `TODO` kaip dalintis visai komandai?
                    - [ ] 1. omniukis-CMDB tobulinimas
                        - [ ] 1. In-place redagavimas
                            - [ ] 1. Pavyzdžių paieška
                            - [ ] 2. `TODO` HTML5 + CSS3 mokinimasis
                            - [ ] 3. Testai
                            - [ ] 4. Taisymas
                    - [ ] 2. Anomalijų tvarkymas
                        - [ ] 1. Pastebėjimas
                        - [ ] 2. Rankinis sužymėjimas
                            - [ ] 1. `TODO` Kur? Jei Confluence, tada:
                                - [ ] a, `TODO` Confluence versijavimas
                        - [ ] 3. Probo sukūrimas
                        - [ ] 4. Probo automatizavimas
                        - [ ] 5. Integravimas į omniuki ar pan.
                    - [ ] 3. Ansible
                        - [ ] 1. Pramokimas, pageidautina Under the Hood + KISS + Hands-on
                            - [ ] 1. RH Ansible + SAP Automation kurso pabaigimas
                        - [ ] 2. Strategijos parinkimas:
                            - [ ] 1. `TODO` kur naudojame `raw`
                            - [ ] 2. `TODO` kur naudojame `shell`
                            - [ ] 3. `TODO` kur liko, naudojame `Py-based`
                - [ ] 3. Organizacijoje
                    - [ ] 0. Vieningas tekstų taisymo versijavimas
                        - [ ] 1. RnD su `vim` + `gite.sh`
                            - [ ] 1. `TODO` kaip dirbant failų medyje apjungti į vieną repozitoriją / nesuskaldyti jos į keletą mažų `.di3fs`?
                            - [ ] 2. `TODO` kaip atjungti/vėl įjungti versijavimą vienu paspaudimu? (turbūt per `.vimrc`)
                    - [ ] 1. Laiku deklaruojamas laikas
                    - [ ] 2. Įrankiai laiko sekimui
                        - [ ] 1. `tit` ir `tw` Bash-skriptų apjungimas.
                        - [ ] 2. Task Warrior ir Time Warrior integracijos patobulinimas
                            - [ ] 1. `task modify` turi keisti ne tik dabartinį `timew track`-ą, bet ir visus praeity.
                        - [ ] 3. `TrackingTime.co` istorinių duomenų importas:
                            - [ ] 1. REST inferfeiso pramokimas.
                            - [ ] 2. Testai.
                            - [ ] 3. Importavimas.
                            - [ ] 4. Dublikatų suradimas ir susiejimas / apjungimas.
                        - [ ] 4. Senų taskų tvarkymas:
                            - [ ] 1. Pavadinimų taisymas.
                            - [ ] 2. Dublikatų tvarkymas.
                            - [ ] 3. Padarytųjų uždarymas.
            - [ ] 7. Debesinė saugykla
            - [ ] 8. Patikima nešiojama USB-talpykla.
                - [ ] 1. OpenZFS pramokimas.
                    - [x] 1. Apžvalginių straipsnių skaitymas.
                    - [ ] 2. Naudojimas linukse.
                        - [x] 1. Instaliavimas CentOS 7.
                        - [x] 2. OmniOS rpool prijungimas CentOSe.
                        - [ ] 3. Linux-importo automatizavimas/skriptas.
                    - [ ] 3. Naudojimas iliumose.
                - [ ] 2. OpenZFS-on-Windows paruošimas.
                    - [x] 1. ZFSin bugreportų skaitymas.
                    - [ ] 2. ZFSin testavimas.
                    - [ ] 3. OpenZFS-on-Windows testavimas.
                    - [ ] `BLOCKER`: [MSYS2 + WDM draiveriai](#MSYS---WDM-draiveriai).
                    - [ ] 4. Bent vieno portinimas į MSYS2.
                        - [x] 1. "Compilers used in the project #3" \
                              https://github.com/openzfsonwindows/openzfs/issues/3
                        - [ ] X. Portinimas į MSYS2 baigtas
                    - [ ] X. OpenZFS jau veikia on-Windows
                - [ ] 3. Patikima 2.5" Dual-Bay SATA-USB lentynėlė.
                    - [x] 1. Lentynėlių sąrašas
                        - [x] 1. https://twitter.com/sskras/status/1376979608051060738
                          <a id="Lietuvoje--CAMYSAFEDUAL25"></a>
                        - [x] 2. Lietuvoje: CAMYSAFEDUAL25
                            - [x] 1. 44,49 € https://www.topocentras.lt/isorine-baterija-i-tec-camysafedual25.html
                            - [x] 2. 47.00 € https://www.varle.lt/dezutes-diskams/itec-i-tec-mysafe-speichergehause-mit-netzanzeige--9979205.html
                            - [x] 3. 47.29 € http://www.skytech.lt/camysafedual25-itec-usbc-3130-mysafe-external-enclosure-for-65cm-25inch-sata-hdd-p-422660.html
                          <a id="Lietuvoje--IB-RD2253-U31"></a>
                        - [x] 3. Lietuvoje: IB-RD2253-U31
                            - [x] 1. 47.39 € https://www.skytech.lt/ibrd2253u31-icybox-ibrd2253u31-icybox-external-raid-system-for-sata-iiiiii-ssd-a-p-330920.html
                            - [x] 2. 47,39 € https://www.1a.lt/p/icy-box-2-bay-raid-system-sata-hdd-ssd-ib-rd2253-u31/
                            - [x] 3. 48,29 € https://www.varle.lt/dezutes-diskams/raidsonic-external-raid-system-fo-ssd-and-hdd-ib-rd2253-u31--3259472.html
                        - [x] X. Lentynėlių sąrašas baigtas.
                    - [ ] 2. Spekų (čipsetų), privalumų ir trūkumų sąrašas.
                        - [ ] 1. `TODO` iš Amazon komentarų:
                        - [x] 2. Teigia, kad `IB-RD2253-U31` nepalaiko TRIM:\
                              https://www.amazon.co.uk/product-reviews/B01BHR3VPA/ref=cm_cr_arp_d_viewopt_kywd?_encoding=UTF8&showViewpoints=1&pageNumber=1&filterByKeyword=trim
                    - [x] 3. Bent poros modelių pirkimas.
                        - [x] 1. 2021-05-08 [CAMYSAFEDUAL25](#Lietuvoje--CAMYSAFEDUAL25): 47.29 €
                        - [x] 2. 2021-05-08 [IB-RD2253-U31](#Lietuvoje--IB-RD2253-U31): 47.39 €
                        - [x] X. Nupirkta
                    - [x] 4. Apžiūra
                        - [x] 1. Išpakavimas
                        - [x] 2. Maitinimo grandinė:
                            - [x] 1. PSU galingesnis pas `CAMYSAFEDUAL25` (2A vs 1,5A)
                            - [x] 2. Kištukai lyg kiekvieno iš dviejų tinka abiems.
                            - [x] 3. `IB-RD2253-U31` turi maitinimo jungiklį (bet ar naudinga?)
                        - [x] 3. Korpusas:
                            - [x] 1. Prieinamumas prie kontrolerio plokštės lankstesnis pas`IB-RD2253-U31`.
                        	- [x] 2. Surinkto korpuso klibėjimas mažesnis pas `IB-RD2253-U31`.
                        	- [x] 3. Lengvesnis diskiuko pakeitimas pas `CAMYSAFEDUAL25` (nelaiko varžtai).
                        	- [x] 4. Patikimesnis diskų tvirtinimas pas `IB-RD2253-U31` (kelionėms, ypač jei HDD).
                        	- [x] 5. Storesni diskiukai (iki 9.5 mm) telpa tik į `IB-RD2253-U31`.
                        - [x] 4. Instrukcijų skaitymas:
                            - [x] 1. CAMYSAFEDUAL25
                            - [x] 2. IB-RD2253-U31
                        - [x] 5. Supakavimas
                        - [x] X. Apžiūra baigta
                    - [ ] 5. Bandymai
                        - [ ] 1. USB kontrolerio ID (pagal `lsusb` ?)
                        - [ ] 2. TRIM palaikymas
                        - [ ] 3. Hot Swap palaikymas
                        - [ ] 4. Pralaidos bandymai:
                        	- [ ] 1. Single Disk testai
                        	- [ ] 2. Dual Disk testai
                        	- [ ] 3. Abiejų lentynų palyginimas
                        - [ ] X. Bandymai baigti
                    - [ ] X. Skirtingų modelių sukombinavimas į vieną (jei pavieniai prastai veiktų).
                - [ ] 4. RAIDams tinkantys Storage Device
                    - [ ] 0. Dydžio ir tipo parinkimas:
                        - [x] 1T ?
                        - [x] 2T ?
                        - [x] 3. HDD ar SSD ?
                        - [ ] 4. Kriterijai:
                            - [x] 1. Power consumption
                                - [ ] 1. SSD valgo lyg vienodai, ir lyg visi iki 10 W:
                                - [ ] 2. HDD neaišku:
                            - [x] 2. Gedimų taisymas
                                - [x] 1. Jei RAID-1, SSD mirtis nebaisi (lengva pakeisti)
                                - [x] 2. Jei RAID-0 arba Single, tada HDD tinka labiau
                                - [x] 3. Jei nešiojimui (ar ant lovos), SSD atsparesni (smūgiams, kritimams)
                            - [x] 3. Tipas
                                - [x] 1. SSD lyg valgo mažiau nei HDD
                                - [x] 2. SMR-HDD pigūs ir nelabai tinkami, CMR-HDD kainuoja 80% SSD
                                - [x] 3. SSD Random IOPS puikūs
                                - [x] X. Baigti kriterijai
                            - [ ] 4. Random IOPS
                            - [ ] X. Kriterijai parinkti
                        - [x] 5. Apsisprendimai:
                            - [x] 1. CMR-HDD tyrimas lėtas, imu SSD.
                            - [x] 2. Pradžiai patikimumas, imu RAID-1.
                            - [x] 3. RAID-1 jei numirs SSD, pakeisim.
                            - [x] X. Apsispręsta
                        - [x] X. Dydžiai ir tipai parinkti: pradžiai SSD + RAID-1
                    - [ ] 1. HDD paieška
                        - [ ] 1. `TODO` analizė: SMR vs CMR for ZFS?
                        - [ ] X. HDD rasti (jei išvis reikalingi)
                    - [x] 2. SSD paieška
                        - [x] 1. **1T**
                            - [x] 1. T253X1960G0C101, Teamgroup GX1 960GB 2.5":
                                - [x] 1.  90,99 € https://www.topocentras.lt/vidinis-kietasis-diskas-ssd-team-group-t253x1960g0c101.html
                                - [x] 2.  94.19 € http://www.skytech.lt/t253x1960g0c101-team-group-ssd-gx1-960gb-sata-iii-6gbs-530480-mbs-p-449414.html
                                - [x] 3.  93.69 € https://www.rde.lt/products/lt/416/209085/sort/1/filter/0_0_0_0/GX1-960GB-2.5-T253X1960G0C101-SSD-diskas.html
                            - [x] 2. CT1000MX500SSD1, Crucial MX500 SSD , 2.5", 1TB, SATA/600, 3D NAND:
                                - [x] 1.  98,49 € https://www.topocentras.lt/vidinis-kietasis-diskas-ssd-crucial-ct1000mx500ssd1.html
                                - [x] 2.  98.59 € http://www.skytech.lt/ct1000mx500ssd1-crucial-mx500-ssd-1tb-sata600-nand-p-379573.html
                                - [x] 3. 101,82 € https://www.kilobaitas.lt/Kietieji_diskai/Crucial/SSDCRUCIALMX5001TBSATA_30/CT1000MX500SSD1/CatalogStoreDetail.aspx?CatID=PL_663&ID=746165
                            - [x] 3. MZ-77E1T0B/EU, SAMSUNG SSD 870 EVO 1TB 2.5"
                                - [x] 1. 115.99 € https://www.rde.lt/products/lt/416/227869/sort/1/filter/0_0_0_0/870-Evo-1TB-2.5-MZ-77E1T0B-EU-SSD-diskas.html
                                - [x] 2. 122,90 € https://www.varle.lt/kietieji-diskai/samsung-ssd-870-evo-1000-gb-ssd-form-factor-25--15122101.html
                                - [x] 3. 125.69 € http://www.skytech.lt/mz77e1t0beu-samsung-ssd-870-evo-1tb-25inch-sata-560mbs-read-530mbs-write-p-536088.html
                        - [x] 2. **2T**
                            - [x] 1. CT2000MX500SSD1, CRUCIAL MX500 2TB SATA 3.0 TLC:
                                - [x] 1. 220,28 € https://www.varle.lt/kietieji-diskai/ssdcrucialmx5002tbsata-30tlcrasymo-greitis--8167910.html
                                - [x] 2. 220.28 € https://www.rde.lt/products/lt/416/96380/sort/1/filter/0_0_0_0/MX500-2TB-SATAIII-TLC-SSD-diskas.html
                                - [x] 3. 225.69 € http://www.skytech.lt/ct2000mx500ssd1-crucial-mx500-ssd-2tb-sata600-nand-p-379574.html
                            - [x] 2. MZ-77E2T0B/EU, SAMSUNG 870 EVO 2TB SATA 3.0 MLC:
                                - [x] 1. 213.49 € https://www.rde.lt/products/lt/416/227663/sort/1/filter/0_0_0_0/870-EVO-2TB-MZ-77E2T0B-EU-SSD-diskas.html
                                - [x] 2. 232,83 € https://www.varle.lt/kietieji-diskai/samsung-ssd-870-evo-2t-sata-iii-25-inch--15150407.html
                            - [x] X. Baigta 2T SSD paieška
                        - [x] X. SSD rasti
                    - [x] 3. Rekomendacijų paieška
                        - [x] 1. `olemlk` pasiteiravimas dėl T253X1960G0C101 ir kt.
                            - [x] 00. SSD: Team Group gamintojas nežinomas, naujas, reikia laukti ir stebėti gedimus/atsiliepimus
                            - [x] 01. SSD: jei QLC, tik 5m. garantijos (Crucial)
                            - [x] 02. SSD: jei TLC, Samsung EVO arba PRO
                            - [x] 03. HDD: tik Seagate (WD nupušo)
                        - [x] 2. Forumai
                            - [x] 01. https://www.eevblog.com/forum/general-computing/low-cost-sata-ssds-for-zfs/25/
                            - [x] 02. https://serverfault.com/questions/1034739/use-qlc-ssds-as-raidz-scientific-archive
                            - [x] 03. https://www.reddit.com/r/zfs/comments/fa73xd/how_to_coalesce_writes_to_qlc_ssds/
                            - [x] 04. https://zfsonlinux.topicbox.com/groups/zfs-discuss/Tcd8117c2fc006c46-M2879a4a0ce197bb9d805bf34/qlc-ssd-and-zfs
                            - [x] 05. https://www.reddit.com/r/zfs/comments/jixi2n/sata_ssd_dram_or_dramless_cache/
                            - [x] 06. https://www.truenas.com/community/threads/large-qlc-ssds-will-they-freenas.81283/
                            - [x] 07. https://forum.level1techs.com/t/ssd-for-all-ssd-freenas-pool/160302
                        - [x] 3. ~~SSD apžvalgos~~
                        - [x] X. Rekomendacijos rastos
                    - [x] 4. Diskai įsigyti:
                        - [x] 1. 1T, `2021-05-21`: T253X1960G0C101, Teamgroup GX1 960GB 2.5":
                        - [x] 2. 1T, `2021-05-21`: CT1000MX500SSD1, Crucial MX500 SSD , 2.5", 1TB, SATA/600, 3D NAND:
                        - [x] 3. 1T, `2021-05-21`: MZ-77E1T0B/EU, SAMSUNG SSD 870 EVO 1TB 2.5"
                        - [x] 4. 2T, `2021-05-21`: CT2000MX500SSD1, CRUCIAL MX500 2TB SATA 3.0 TLC:
                        - [x] 5. 2T, `2021-05-21`: MZ-77E2T0B/EU, SAMSUNG 870 EVO 2TB SATA 3.0 MLC:
                    - [x] X. RAID diskai rasti
                - [ ] 5. Diskų bandymai
                    - [ ] 1. Pralaida:
                        - [ ] 1. Testinės mašinos parinkimas (pageidautina labai naujos)
                        - [ ] 2. Native SATA pralaida
                        - [ ] 3. Single SATA-USB pralaida
                        - [ ] 4. Dual SATA-USB Single pralaida
                        - [ ] 5. Dual SATA-USB Dual pralaida
                    - [ ] X. Bandymai baigti
                - [ ] 6. Cross-platform OpenZFS Features parinkimas
                    - [ ] 1. Turi veikti su Windows
                    - [ ] 2. Turi veikti su CentOS
                    - [ ] 3. Turi veikti su OmniOS
                    - [ ] 4. Ar turi veikti su Solaris 11.4 ?
                    - [ ] 5. Ar turi veikti su Solaris 10 6/06+ ?
                - [ ] 7. OpenZFS vdev Block Device išdėstymo parinkimas:
                    - [ ] 1. Whole-disk volumes?
                    - [ ] 2. Volume on partitions?
                        - [x] 1. Skirtingo, bet panašaus dydžio diskai leistų didesniajame turėti particiją, pvz. prieinamą visoms OS ir saugančią ZFS draiverius.
                    - [ ] 3. Pralaidos bandymai su RAID-1 ir abiem scenarijais
                    - [ ] X. Block Device išdėstymas parinktas
                - [ ] W. 
                - [ ] X. USB-talpykla baigta.
            - [ ] 9. Portable Desktop-on-UFD
                - [x] 1. Spartaus UFD susiradimas
                    - [x] 1. SanDisk Ultra Fit 32 GB:
                        - [x] 1. SDCZ43-064G-G46 ?
                        - [x] 2. SDCZ43-032G-GAM46 ?
                        - [x] 3. `TODO`: kurį tiksliai dabar naudoju
                    - [x] X. Surastas spartus UFD (jau gal iki `2018-11-29`)
                - [x] 2. Linux OS distribucijos išsirinkimas
                    - [x] 1. CentOS, nes:
                        - [x] 1. Naudoju darbe
                        - [x] 2. Desktop apžvalgos labai teigiamos
                    - [x] X. Pasirinkta reikiama distribucija
                - [x] 3. Skirsnių susiplanavimas
                    - [x] 1. Cross-platform failų keitimuisi
                    - [x] 2. Pvz. NTFS
                - [x] 4. CentOS įdiegimas
                - [x] 5. CentOS paruošimas darbui
                  <a id="CentOS-root-FS-vietos-praplėtimas"></a>
                - [x] 6. CentOS root-FS vietos praplėtimas
                    - [ ] 1. Planas
                        - [ ] 1. Migruoti į ZFS
                        - [ ] X. Sudarytas ilgaamžis CentOS root-FS plėtimo planas
                    - [x] 2. Laikinas sprendimas
                        - [x] 1. Sutraukti NTFS skirsnį `sdb1`
                            - [x] 1. Patikrinti maksimalias galimybes su `ntfsresize`: `freeing 1346 MB`
                            - [x] 2. Peržiūrėti FS failų turinį
                            - [x] 3. Iškelti jau kadaise laikinai įkeltus root-FS failus išvis lauk į išorinę laikmeną
                                - [x] 1. Iškėliau pasinaudodamas `rsync` ir `rash`.
                            - [x] 4. Laisvos vietos `8.3G`, `Used=236M`
                            - [x] 5. Patikrinti maksimalias galimybes su `ntfsresise`: `Needed relocations : 4990 (21 MB)`
                            - [x] 6. Sutraukti FS
                            - [x] 7. Sutraukti skirsnį (`sfdisk` + `vim`)
                            - [x] X. Portable UFD NTFS skirsnis sutrauktas
                        - [x] 2. Atlaisvintoje vietoje sukurti naują `sdb4`
                        - [x] 3. `sdb4` panaudoti kaip naują `PV`
                            - [x] `pvcreate -v /dev/sdb4`
                        - [x] 4. Prijungti prie `VG="centos"`
                            - [x] `vgextend centos /dev/sdb4`
                        - [x] 5. Praplėsti `LV=root`
                            - [x] `lvextend -t -r -l +100%FREE`
                        - [x] X. Įvykdytas laikinas sprendimas
                    - [ ] 3. Kitas žingsnis po pirmo LVM plėtimo ?
                    - [x] x. Praplėsta 
                - [x] X. Pasiruoštas _Portable Desktop-on-UFD_
            - [ ] X. Sutvarkyti pirmos būtinybės poreikiai
        - [ ] 2. Skaitmeninio paveldo išsaugojimas
            - [ ] 1. site rehosting:
                - [ ] 1. `led.ot.lt` perkėlimas
                - [ ] 2. [`news.omnitel.net` perkėlimas](tvarka/news.omnitel.net-perkėlimas.md)
            - [ ] 2. FOSS mirroring/revival:
                - [ ] 0. `TODO` GitHub repo for the mirroring
                    - [x] 1. https://www.softwareheritage.org/
                - [ ] 1. DataRecovery version 2.4.7, http://software.tokiwa.qcweb.jp/EN/dr.html
                - [ ] 2. TinyVisor, https://osdn.net/projects/tinyvisor/downloads/66690/tinyvisor-1.8.tar.gz/
                - [ ] 3. TVMM,  \
                      http://www.yl.is.s.u-tokyo.ac.jp/~kaneda/tvmm/tvmm-2006-6-2.tar.gz  \
                      https://github.com/kkaneda/tvmm
                - [ ] 4. IanOS, http://www.ijack.org.uk/Downloads/IanOS.tar.gz
                - [ ] 5. win-bash 1.14.2, https://sourceforge.net/p/win-bash/code/
            - [ ] 3. *nix bendruomenė
                - [ ] 1. `Solaris` OS gerbėjai:
                    - [x] 1. http://thegreyblog.blogspot.com/2010/10/some-reasons-why-solaris-is-great-java.html
                    - [x] 2. https://vermaden.wordpress.com/2021/05/10/valuable-news-2021-05-10/
                    - [ ] X. Surinkti `Solaris` OS gerbėjai
                - [ ] 2. `Solaris` projektai:
                    - [x] 1. https://www.pbdigital.org/post/2020-11-23-gitea-migrate-to-new-host/
                    - [ ] X. Surinkti `Solaris` projektai
                - [ ] 3. `Solaris` istorija:
                    - [x] 1. Cassini Ethernet (ce): \
                          https://docs.oracle.com/cd/E23823_01/html/816-5177/ce-7d.html
                    - [ ] X. Surinkta `Solaris` istorija
                - [ ] X. Suburta ar bent apžvelgta *nix bendruomenė
            - [ ] X. Sutvarkytas paveldas
        - [ ] 3. Patobulinimai, nepatogumo mažinimas, automatizavimai
            - [ ] 1. DC tvarkymas
                - [ ] 1. DCIM
                    - [ ] `BLOCKER`: [DCIM + hardware asset management](#DCIM---hardware-asset-management) suderinimas
                    - [ ] 1. CI žymėjimas
                - [ ] X. DC sutvarkytas
            - [ ] 2. Excel hierarchinis projekto/užduočių žymėjimas
                - [ ] 0. Maždaug kaip [2. Užduotys ir problemos](#Užduotys-ir-problemos), tik su Excel.
                - [ ] 1. Paieška:  
                      https://www.google.com/search?q=hierarchical+view+in+excel+cells&tbm=isch
                - [ ] 2. Būdas su "Group Members":  
                      https://blogs.sap.com/2017/09/01/local-hierarchy-in-analysis-for-office-grouping/
                - [ ] 3. Būdas su "Auto Outline":  
                      https://support.microsoft.com/en-ie/office/outline-group-data-in-a-worksheet-08ce98c4-0063-4d42-8ac7-8278c49e9aff
                - [ ] 4. Būdas su "Pivot Table":  
                      https://en.wikipedia.org/wiki/Pivot_table#Mechanics  
                      https://www.mrexcel.com/excel-tips/creating-a-hierarchy-in-a-pivot-table/  
                      https://www.tutorialspoint.com/excel_power_pivot/excel_power_pivot_hierarchies.htm
                - [ ] X. Baigtas Excel hierarchiškumas
              <a id="Įrankiai-skaitmeninti-popierinei-medžiagai"></a>
            - [ ] 3. Įrankiai skaitmeninti popierinei medžiagai
                - [x] 1. Skenerio pirkimas
                    - [x] 1. Avision `FB2280E`
                - [ ] 2. Programinės įrangos parinkimas
                    - [x] 1. `NAPS2`
                    - [x] 2. `2021-05-22` rastas trūkumas: `NAPS2` + `A4` nukerpa apie 20-25 mm. nuo nuožulniojo krašto.
                    - [ ] 3. `TODO`: patikrinti, ar nukirpimas priklauso nuo:
                        - [ ] 1. `NAPS2` nustatymų,
                        - [ ] 2. nuo API (Twain vs WIA) ar gal 
                        - [ ] 3. nuo skenavimo programos
                    - [ ] X. Skenavimo programa veikia tinkamai
                - [ ] X. Pasiruošta skaitmeninti popierinę medžiagą
            - [ ] 4. `ZFS` studijos
                - [ ] 1. Bootloading:
                    - [x] 1. https://wiki.freebsd.org/RootOnZFS/GPTZFSBoot
                    - [x] 2. https://zfsbootmenu.org/
                    - [x] 3. http://wiki.netbsd.org/projects/project/zfs_root/
                    - [x] 4. https://www.funtoo.org/ZFS_as_Root_Filesystem#Configuring_the_Bootloader
                    - [x] 5. https://wiki.archlinux.org/title/Install_Arch_Linux_on_ZFS#Install_and_configure_the_bootloader
                    - [x] 6. https://pve.proxmox.com/wiki/ZFS:_Switch_Legacy-Boot_to_Proxmox_Boot_Tool#2._Check_which_bootloader_is_used
                    - [ ] 7. Unroll: https://twitter.com/sskras/status/1340725781027311619
                - [ ] 2. Pažeidžiamiausiųjų (vis dar neatsparių Memory klaidoms) `ZFS` mechanizmų tobulinimas
                    - [ ] 1. Analizė:
                        - [ ] 1. [End-to-end Data Integrity for File Systems: A ZFS Case Study](https://www.usenix.org/legacy/event/fast10/tech/full_papers/zhang.pdf)
                    - [ ] 2. Planavimas patobulinti
                    - [ ] X. Baigti tobulinti pažeidžiamiausi `ZFS` mechanizmai
                - [ ] 3. Gerųjų `Reiser5` savybių perėmimo tyrimas
                    - [ ] 1. Susipažinimas su `Reiser5` savybėmis
                        - [x] 1. [Второе интервью с разработчиком Reiser4 Эдуардом Шишкиным](https://habr.com/ru/post/559014/)
                        - [ ] 2. Gal koks Wiki ar LWN.net straipsnis?
                    - [ ] 2. Palyginimas su ZFS
                    - [ ] 3. Planavimas, ką būtų įmanoma perimti
                        - [x] 1. Low-level VDEV management vs High-level volume management:
                            - [x] 1. "низкоуровневый менеджер томов тут не помогает, а только мешает. Дело в том, что с таким менеджером ваша ФС будет хранить карту свободных блоков только одного девайса - виртуального. Соответственно, дефрагментировать вы сможете только виртуальный девайс."
                            - [x] 2. "Но сделать это можно, лишь обладая высокоуровневым менеджером логических томов. Локальных ФС с такими менеджерами ранее не существовало (по крайней мере, я о них не знаю). Такими менеджерами обладали только сетевые ФС (например GlusterFS)."
                            - [x] 3. "ZFS в этом плане безнадёжна: своими виртуальными девайсами ребята перекрыли себе и будущим поколениям кислород для дальнейших разработок. ZFS - это вчерашний день."
                        - [x] X. Baigtas planas perimti architektūrines `Reiser4` savybes
                    - [ ] X. Baigtas `Reiser4` savybių perėmimas
                - [ ] X. Išstudijuotas `ZFS`
            - [ ] 5. _Security_ studijos:
                - [ ] 1. Konceptai:
                    - [x] 1. https://en.wikipedia.org/wiki/Software_Defined_Perimeter
                    - [x] 2. DARE: \
                          https://en.wikipedia.org/wiki/Data_at_rest \
                          https://www.ibm.com/docs/en/essm/10.1.1?topic=security-data-rest-encryption
                    - [ ] X. Baigtas _Security_ konceptų sąrašas
                - [ ] X. Baigtos _Security_ studijos
            - [ ] 6. Web-hostinimo treniruotės
                  <a id="GitHub-Pages-mokinimasis"></a>
                - [ ] 1. GitHub Pages mokinimasis
                    - [x] 1. https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#publishing-sources-for-github-pages-sites
                    - [x] 2. https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site#creating-your-site
                    - [ ] 3. Skaitymas
                    - [ ] 4. Bandymai
                - [ ] X. Web-hostingas pramoktas
            - [ ] 7. _\ Management_ tobulinimasis
                - [ ] 1. `.rpm` paketai
                      <a id="-.rpm--paketų-kūrimas"></a>
                    - [x] 1. `.rpm` paketų kūrimas
                        - [x] 1. Tyrimai:
                            - [x] 1. Ar įmanoma sukurt paketą tik turint `.spec` failą?
                                - [x] 1. https://www.google.com/search?q=build+rpm+from+.spec
                                - [x] 2. https://www.thegeekstuff.com/2015/02/rpm-build-package-example/#:~:text=4.%20Create%20the%20SPEC%20File
                                - [x] 3. https://developer.ibm.com/tutorials/l-rpm1/
                                - [x] 4. https://oracle-base.com/articles/linux/linux-build-simple-rpm-packages
                                - [x] 5. https://opensource.com/article/18/9/how-build-rpm-packages#:~:text=There%20is%20also%20a%20complete%20spec%20file,%20which%20you%20can%20use%20to%20build%20the%20rpm
                                - [x] 6. https://tldp.org/HOWTO/RPM-HOWTO/build.html
                                - [x] 7. http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html
                                - [x] 8. Taip!
                            - [x] X. Baigti `.rpm` paketų kūrimo tyrimai
                        - [x] 2. Bandymai
                            - [x] 1. Implementacija: [NS-2 ir susijusių RPM-paketų kompiliavimas](#NS-2-ir-susijusių-RPM-paketų-kompiliavimas)
                        - [ ] X. Pramoktas `.rpm` paketų kūrimas
                    - [ ] X. Išsiaiškinta su `.rpm` paketine sistema
                - [ ] 2. Įrankių palyginimo matas
                    - [ ] 1. Esamos lentelės (savybių grupavimas, galima hierarchija), pavyzdžiai
                          <a id="Pvz.-https-//wiki.archlinux.org/title/Pacman/Rosetta"></a>
                        - [x] 1. Pvz. https://wiki.archlinux.org/title/Pacman/Rosetta
                            - [x] 1. Basic operations
                            - [x] 2. Querying specific packages
                            - [x] 3. Querying package lists
                            - [x] 4. Querying package dependencies
                            - [x] 5. Installation sources management
                            - [x] 6. Overrides
                            - [x] 7. Verification and repair
                            - [x] 8. Using package files and building packages
                            - [x] 9. Log file rotation
                        - [ ] X. Baigtos grupuoti aktualios _Package Management_ sistemų savybės ir sudaryta jų hierarchija
                    - [ ] 2. Naujos lentelės sudarymas
                        - [ ] 1. Kriterijai:
                            - [x] 1. https://dev.haiku-os.org/wiki/R1/Beta3/ReleaseNotes#Packagemanagement
                              > * The system update can now resume downloads in case it is interrupted.
                              > * Support for running a script on package uninstall
                              > * Performance improvements for package icons handling in HaikuDepot
                              > 
                            - [x] 2. https://www.netbsd.org/gallery/pkgsrc-interviews.html#:~:text=What%20do%20you%20plan%20for%20the%20future%20development%20of%20Zero%20Install?
                              > Automatic support for mirrors. Peer-to-peer downloads, binary deltas, more sandboxing.
                              > 
                            - [x] 3. http://0install.net/roadmap.html#idm135
                              > * Cross-compilation
                              > * Support for multiple ABIs (for C++ on Windows)
                              > * Alternatives for dependencies
                              > * App support for XDG launchers
                              > * HTTP connection pooling, pipelining and DNS caching
                              > * More flexible <recipe\>s
                              > * An app-store style interface
                              > * Feed search
                              > * Custom bug-report address
                              > * Support for services
                              > * Sandboxing
                              > * Better desktop integration
                              > * wxWidgets GUI for Mac and Windows
                              > * Automatic cache cleaning
                              > * Managing instances (configurations/profiles) of programs
                              > * Lazy dependencies
                              > * Plug-ins
                              > * More meta-data
                              > * Peer-to-peer downloads
                              > * Binary patches
                              > * Kiosk mode
                              > * Third-party sign-off
                              > 
                            - [x] 4. https://wiki.netbsd.org/pkgsrc/hardening/
                              > A number of mechanisms are available in pkgsrc to improve the security of the resulting system.
                              > * PKGSRC_USE_FORTIFY
                              > * PKGSRC_USE_SSP
                              > * PKGSRC_MKPIE
                              > * PKGSRC_MKREPRO
                              > * PKGSRC_USE_RELRO
                              > * PKGSRC_USE_STACK_CHECK
                              > 
                            - [x] 5. https://www.pkgsrc.org/#index3h1
                              > For getting the latest package vulnerabilities database and checking your installed packages against it, use \
                              > ... \
                              > The vulnerabilities database and package EOL database are both signed with the pkgsrc-security GPG key. \
                              > 
                            - [x] 6. https://twitter.com/hqqns/status/1385214741245698051
                              > The scripting part of RPMs are quite good
                              > 
                            - [ ] X. Surinkti aktualūs kriterijai _Package Management_ įrankių palyginimo lentelei
                        - [ ] 2. Formatas
                            - [x] 1. Kaip [Pacman/Rosetta](#Pvz.-https-//wiki.archlinux.org/title/Pacman/Rosetta) ?
                        - [ ] 3. Talpinimas
                            - [x] 1. ? https://pkgin.net/
                            - [x] 2. ? https://www.pkgsrc.org/
                            - [x] 3. ? https://www.netbsd.org/gallery/pkgsrc-interviews.html
                        - [ ] X. Sudaryta nauja _Package Management_ sistemų palyginimo lentelė
                    - [ ] X. Sukurtas _Package Management_ sistemų palyginimo matas
                - [ ] 3. `pkgsrc` + `pkgin` analizė ir taikymai
                    - [ ] 1. Vizijos
                        - [x] 1. https://www.netbsd.org/gallery/pkgsrc-interviews.html
                    - [ ] 2. Privalumai, pavyzdžiai
                        - [x] 1. https://rubenerd.com/using-netbsds-pkgsrc-everywhere-i-can/
                        - [x] 2. https://www.anserinae.net/setting-up-a-pkgsrc-repository.html#setting-up-a-pkgsrc-repository
                    - [ ] X. Išanalizuoti `pkgsrc` + `pkgin` ir padirbėta ties jų taikymu
                - [ ] X. Jau pramokti aktualūs Package Management dalykai
            - [ ] X. Baigti visi patobulinimai
        - [ ] 4. Sunkūs atvejai, iššūkiai, RnD, revoliucijos
            - [ ] 1. Hypervisors
                - [ ] 1. Mokymaisi, tyrimai
                    - [x] 01. About ACPI and DMA, IOMMU:  \
                          https://translate.google.com/translate?hl=en&sl=ja&u=https://zenn.dev/oshibori/scraps/478be45c3fae3e
                    - [x] 02. How to make a hypervisor-Virtualization technology to understand properly-The 16th PCI Passthrough Part 2 "Details of VT-d":  \
                          https://translate.google.com/translate?hl=en&sl=ja&u=https://syuu1228.github.io/howto_implement_hypervisor/part16.html
                    - [x] 03. How to make a hypervisor  \
                          http://syuu1228.github.io/howto_implement_hypervisor/
                    - [x] 04. ACPI DMAR memo:  \
                          https://translate.google.com/translate?hl=en&sl=ja&u=https://mmi.hatenablog.com/entry/2018/03/10/215742
                    - [x] 05. Reading the code of TinyVisor's IOMMU:  \
                          https://translate.google.com/translate?hl=en&sl=ja&u=https://qiita.com/YsuOS/items/a6deab2e92fb77be7006
                    - [x] 06. Tiny Virtual Machine Monitor:  \
                          http://www.yl.is.s.u-tokyo.ac.jp/~kaneda/tvmm/
                    - [x] 07. MAVMM: Lightweight and Purpose Built VMM for Malware Analysis:  \
                          https://sites.google.com/site/bletchleypark2/3-operating-system/vmi/mavmm
                    - [x] 08. Who watches the watcher? Detecting hypervisor introspection from unprivileged guests:  \
                          https://www.researchgate.net/publication/345646485_Who_watches_the_watcher_Detecting_hypervisor_introspection_from_unprivileged_guests
                    - [x] 09. Checkpointing an Operating System Using a Parapass-through Hypervisor:  \
                          https://www.researchgate.net/publication/273895166_Checkpointing_an_Operating_System_Using_a_Parapass-through_Hypervisor
                    - [x] 10. HyperLeech: Stealthy System Virtualization with Minimal Target Impact through DMA-Based Hypervisor Injection:  \
                          https://www.usenix.org/system/files/raid20-palutke.pdf
                    - [x] 11. rVMI; Hypervisor-Level Debugger Benefits & Challenges:  \
                          http://archive.hack.lu/2018/Hypervisor-Level%20Debugger%20Benefits%20&%20Challenges%20-%20Hack.lu%202018.pdf
                    - [x] 12. VMmark: A Scalable Benchmark for Virtualized Systems:  \
                          https://www.vmware.com/pdf/vmmark_intro.pdf \
                          https://en.wikipedia.org/wiki/VMmark
                    - [x] 13. Chapter 30. Using virtualization: QEMU and NVMM:  \
                          https://netbsd.org/docs/guide/en/chap-virt.html
                    - [ ] XX. Baigti hipervizorių tyrimai
                - [ ] 2. Dokumentavimas
                    - [ ] 1. https://github.com/Wenzel/awesome-virtualization
                        - [ ] 1. PulseDBG: \
                              https://github.com/honorarybot/PulseDbg \
                              https://pulsedbg.com/
                        - [ ] X. Papildytas `awesome-virtualization` sąrašas
                    - [ ] X. Sudokumentuota
                - [ ] 3. Kūrimas:
                    - [ ] 1, ODD emuliacija (xordivm)
                        - [ ] 1. Test-cases, idėjos, tolimi titikmenys:
                            - [x] 1. Ventoy: https://www.ventoy.net/en/doc_start.html
                                - [x] Puikus `.iso` imedžų rinkinys `/issues`.
                                - [x] Puikus pavyzdys, kiek sunku yra korektiškai aptikti/perimti _Boot-sequence_.
                            - [ ] X. Surinktas panašių dalykų sąrašiukas
                        - [ ] X. Sukurta ODD emuliacija VMM lygmeny.
                    - [ ] 2, Remote-mgmt (iLO) emuliacija
                        - [ ] 1. Virtualus iLO/MP/iBMC/DRAC
                        - [ ] 2. Out-of-band ryšys emuliuojamas per In-Band tinklą
                    - [ ] 3, `kexec`-assistant VMM:
                        - [x] 1. The issue, https://en.wikipedia.org/wiki/Kexec
                          > * Memory of the currently running kernel is overwritten by the new kernel, while the old one is still executing.
                          > * The new kernel will usually expect all hardware devices to be in a well defined state, in which they are after a system reboot because the system firmware resets them to a "sane" state. Bypassing a real reboot may leave devices in an unknown state, and the new kernel will have to recover from that.
                        - [ ] 2. Sprendimo idėjos:
                            - [x] 1. Plonas VMM dalį fizinės atminties pasiima sau ir Guestui nebeatiduoda
                            - [x] 2. Plonas VMM perima Reboot inicijavimą, jį patvirtina, bet viską padaro savaip.
                            - [x] 3. Gal tiktų taip pavadinti _Hot-reboot_ papildant: \
                                  https://en.wikipedia.org/wiki/Reboot#Cold_vs._warm_reboot
                        - [ ] X. Baigti darbai su `kexec` VMM
                    - [ ] 4, Split-screen emuliacija (debuginimo paraštės ekrane, VGA-para-passthrough)
                    - [ ] 5, `VT-x` identifikavimas (CPU palaikymas, BIOS nustatymai)
                        - [ ] 1. Galbūt integracija su egzistuojančiu kažkokius Bootable CPUID įrankiu
                    - [ ] 6, `Valgrind/Memcheck`-like iškėlimas į VMM/Hipervizor lygį:
                        - [ ] 1. Idėjos, prototipai:
                            - [x] 1. https://xenproject.org/2013/01/18/using-valgrind-to-debug-xen-toolstacks/
                            - [x] 2. https://twitter.com/richinseattle/status/1187231029892792320 \
                                  error detection in ASAN is using byte level taint tracking (like valgrind) vs VMM page protections (relocating allocations to be adjacent to page boundary and allocating a noaccess/guard page via allocator api hooks) ala page heap/electric fence \
                                  7:55 AM · Oct 24, 2019
                            - [x] 3. https://www.riscosopen.org/forum/forums/2/topics/10149?page=1
                                    "valgrind 'memcheck', for ROM"
                            - [x] 4. https://github.com/Thalium/IceBox
                            - [ ] 5. https://github.com/Wenzel/pyvmidbg
                            - [ ] 6. https://github.com/Zentific/vmidbg
                            - [ ] 7. https://github.com/gamozolabs/orange_slice
                            - [ ] 8. https://github.com/HyperDbg/HyperDbg
                            - [ ] X. Idėjų prisirinkta
                        - [ ] X. `Valgrind` implementuotas VMM lygmeny
                    - [ ] X. Hipervizorių kūryba baigta
                - [ ] X. Baigta su hypervizoriais
            - [ ] 2. x86 mašinų System Firmware (BIOS) nustatymų prieiga iš OS:
                - [ ] 1. Nustatymų skaitymas
                - [ ] 2. Nustatymų keitimas
                - [ ] 3. Pvz.: https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/virtualization_deployment_and_administration_guide/sect-troubleshooting-enabling_intel_vt_x_and_amd_v_virtualization_hardware_extensions_in_bios
            - [ ] 3. `VT-x` BIOS nustatymų identifikavimas iš OS (nesikreipiant į BIOS):
                - [ ] 1. Kaip tiksliai tai daro `vboxdrv`?
                - [ ] 2. Kaip tiksliai tai daro `kvm`?
                - [ ] 3. The Bootable image
            - [ ] 4. Cross-platform Storage eksperimentai
                - [ ] 1. LVM on Windows:
                    - [x] 1. Poreikis:
                        - [x] 1. https://superuser.com/questions/706521/lvm-dual-boot-windows
                        - [x] 2. https://askubuntu.com/questions/1140272/how-can-i-access-my-lvm-partition-from-windows-10
                        - [x] 3. http://www.chrysocome.net/virtualvolumes-usage
                        - [x] 4. https://superuser.com/questions/1492183/can-i-mount-an-lvm-under-windows
                        - [x] 5. https://superuser.com/questions/235776/booting-windows-any-version-from-an-lvm-volume
                    - [ ] 2. `TOTEST`
                    - [ ] X. LVM on Windows jau veikia
                - [ ] X. Baigti eksperimentai su Cross-platform Storage
            - [ ] 5. Remote Linux desktop
                - [ ] 1. Using plain X11:
                    - [x] 01. Poreikis: https://twitter.com/JacksonSabey/status/1393325745292726276
                    - [x] 02. https://www.google.com/search?q=full+screen+X11
                    - [x] 03. https://www.google.com/search?q=full+screen+X11+forwarding
                    - [x] 04. https://www.google.com/search?rlz=1CAZBMY_enLT939&q=bhyve+%22fullscreen%22+guest
                    - [x] 05. https://www.google.com/search?q=bhyve+%22fullscreen%22+desktop
                    - [x] 06. https://www.google.com/search?q=X11+Forwarding+for+Desktop+over+SSH
                    - [x] 07. https://www.google.com/search?q=X11+making+a+window+root
                    - [x] 08. https://www.google.com/search?q=remote+X11+desktop+as+root++window
                    - [x] 09. https://www.google.com/search?q=remote+X11+window+manager
                    - [x] 10. https://www.google.com/search?q=whole+remote+desktop+X11+window+manager
                    - [x] 11. https://web.archive.org/web/20160318000143/http://xmodulo.com/remote-control-raspberry-pi.html#:~:text=Method%20#3:%20X11%20Forwarding%20for%20Desktop%20over%20SSH
                    - [x] 12. https://blog.ssdnodes.com/blog/remote-linux-desktop-vps-ssh-vnc/#:~:text=Forwarding%20an%20entire%20remote%20Linux%20desktop
                    - [x] 13. https://www.linuxjournal.com/content/remote-window-managers
                    - [x] 14. `XDMCP !`: https://unix.stackexchange.com/questions/327532/how-to-remotely-log-in-with-full-graphical-desktop-over-x11/327535#327535
                    - [ ] 15. `TOTEST` bent kai kuriuos būdus
                    - [ ] XX. Išspręsti X11 Remote Desktop klausimai
                - [ ] X. Išspręsti visi Remote Linux desktop klausimai
            - [ ] 6. Microkernel OS apžvalgos
                - [ ] 1. LibrettOS: A Dynamically Adaptable Multiserver-Library OS∗ \
                      https://arxiv.org/pdf/2002.08928.pdf
                - [ ] X. Apžvelgtos Microkernel OS
            - [ ] 7. Vieningas įrankis daryti Package Management
                - [ ] 1. Kriterijai:
                    - [ ] 1. Ability to install multiple versions of the same package:
                        - [x] 01. pkgsrc, https://uwm.edu/hpc/software-management/
                          > Pkgsrc readily supports installing multiple package collections (trees) on the same system under different prefixes.  No need for chroots, jails, virtual machines, or other containers.  Just set your PATH for a given tree, and you’re on your way.  Each collection is fully contained in its own directory, separate from the others and from software installed via Yum or other means.  This allows older software to remain in-place indefinitely for long-term studies, while newer software can be easily deployed under another prefix.
                        - [x] 02. npm, https://medium.com/weekly-webtips/how-to-install-multiple-versions-of-the-same-package-in-npm-71c29b12e253
                        - [x] 03. pip, https://discuss.python.org/t/installing-multiple-versions-of-a-package/4862
                        - [x] 04. julia, https://discourse.julialang.org/t/is-any-way-to-install-multiple-versions-of-same-package/20898
                        - [x] 05. installpkg, https://github.com/henri/installpkg
                        - [x] 06. pkgutil, https://jacobrprice.github.io/2019/09/19/Installing-multiple-parallel-R-versions.html
                        - [x] 07. rpm, https://rpm.org/user_doc/multiple_versions.html
                        - [x] 08. Ubuntu, https://askubuntu.com/questions/758502/can-multiple-versions-of-the-same-package-co-exist-on-the-same-system
                        - [x] 09. pacman, https://bbs.archlinux.org/viewtopic.php?id=158830
                        - [x] 10. stow, https://www.gnu.org/software/stow/
                        - [x] 11. CPAN, http://novosial.org/perl/life-with-cpan/depot/index.html
                        - [x] 12. scoop, https://github.com/lukesampson/scoop/issues/3262 \
                              https://github.com/lukesampson/scoop/wiki/Switching-Ruby,-Python-and-PHP-Versions
                        - [x] 13. SDKman, https://dzone.com/articles/how-to-install-multiple-versions-of-java-on-the-sa
                        - [x] 14. Arch Linux, https://unix.stackexchange.com/questions/152597/is-it-possible-to-use-multiple-branch-of-the-same-library-to-make-multiple-sofwa/152619#152619
                        - [x] 15. FreeBSD, https://forums.freebsd.org/threads/pkgng-how-to-maintain-several-packages-of-the-same-port.42329/
                        - [x] 16. staging, https://web.archive.org/web/20150905074202/http://blogs.freebsdish.org/portmgr/2013/10/03/staging/
                        - [x] 17. quattor, https://www.quattor.org/documentation/2013/04/05/package-management.html#package-management#pkg_repl
                          > If given the multi flag, versions already defined in the profile are preserved. This is useful if you need to declare multiple kernel versions, for instance.
                        - [x] 18. apk, https://stackoverflow.com/questions/64005202/run-multiple-php-versions-in-alpine-linux
                        - [x] 19. choco, https://superuser.com/questions/1437061/chocolatey-how-to-retain-certain-version-of-a-package-but-install-new-version-w \
                              https://docs.chocolatey.org/en-us/choco/commands/install#examples \
                              https://superuser.com/questions/1401661/does-chocolatey-allow-to-have-multiple-versions-of-same-packages-side-by-side/1401799#1401799
                          > Install multiple versions of a package using -m (AllowMultiple versions)
                        - [ ] XY. Išsiaiškintas Multiple-version palaikymas
                    - [ ] 2. _Plugin_ architektūra emuliuoti kitų paketų veikimui
                    	- [ ] 1. Apjungiamų (per pluginus) kandidatų sąrašas:
                    	    - [x] 1. https://www.fatalerrors.org/a/count-the-number-of-code-lines.html
                    	    - [ ] 2. winget, https://github.com/microsoft/winget-cli ?
                    	    - [x] 3. https://www.reddit.com/r/windows/comments/8nq62b/freeopensource_package_managers_for_windows/
                    	    - [ ] X. Surasti kandidatai
                        - [ ] X. Sutvarkyta _Plugin_ architektūra
                    - [ ] 3. Krosplatformiškumas
                        - [ ] 1. `pkgin`:
                            - [x] 1. FreeBSD, https://forums.freebsd.org/threads/pkgin-ported-to-feebsd.11447/
                            - [x] 2. `BINPKG_SITES`: https://www.perkin.org.uk/pages/pkgsrc-binary-packages-for-osx.html
                            - [ ] X. Aptartas `pkgin` krosplatformiškumas
                        - [ ] X. Sustrateguotas apskritai krosplaformiškumas
                    - [ ] X. Parinkti reikalingi kriterijai
                - [ ] 2. Apžvalgos:
                    - [x] 1. https://eerielinux.wordpress.com/2017/08/15/the-history-of-nix-package-management/
                    - [x] 2. https://github.com/jmmv/pkg_comp \
                          ["pkg_comp auto" fails: pkg_add: A different version of ... is already installed | #19](https://github.com/jmmv/pkg_comp/issues/19)
                    - [x] 3. scoop, https://news.ycombinator.com/item?id=25535018
                      > I wonder why the author recommend winget but not scoop. Scoop obviously has more community support and that's the most important part of a package manager (more packages, more frequent update, etc).
                    - [x] 4. https://github.com/lukesampson/scoop/wiki/Chocolatey-Comparison
                    - [x] 5. https://www.slant.co/options/24160/~just-install-review
                    - [ ] X. Apžvelgti paketų valdymo įrankiai
                - [ ] 3. Panašūs sprendimai
                    - [x] 1. upm: Universal Package Manager: https://github.com/epitron/upm
                    - [x] X. Rasta alternatyvų
                - [ ] X. Vieningas paketų valdymo įrankis paruoštas
            - [ ] 8. `illumos` tyrimai, tobulinimas, viešinimas
                - [ ] 1. Trūkumai
                    - [x] 1. https://www.phoronix.com/forums/forum/software/oracle-solaris/1254376-openindiana-hipster-2021-04-released-for-this-solaris-illumos-based-os
                      > I have only tried it in a VM a few times. And it is a bit old fashioned, but it works ok.
                      > 
                    - [x] 2. https://www.phoronix.com/forums/forum/software/oracle-solaris/1254376-openindiana-hipster-2021-04-released-for-this-solaris-illumos-based-os/page3
                      > No. It's not working pretty well as you said. Unless, you run it on VirtualBox. On real hardware, it sucked hard.
                      > https://illumos.topicbox.com/groups/discuss/Tf485390ebc9d5df2/there-is-something-inherently-wrong-with-this-system
                      > 
                    - [x] 3. Toxic/inert community: https://blahg.josefsipek.net/?p=591
                      > * Note that this is well beyond the typical “please do due diligence” where the reviewers tend to help out with the reasoning or even testing. The approach the illumos community takes feels more like a malicious “let’s throw every imaginable thought at the contributor, maybe some of them stick.” Needless to say, this is a huge motivation killer that makes contributors leave—something that a small-to-begin-with community cannot afford.
                      > * Elsewhere in the same thread, another person chimed in with his typical verbiage that could be summarized as “why don’t you do something productive with your time instead, and work on issues that I think are important.” While his list of projects was valid, being condescending to anyone willing to spend their free time to help out your project or telling them that they’re wasting their time unless they work on something that scratches your or your employer’s itch is…well…stupid. Yet, this has happened many times on the mailing list and on IRC over the years.
                      > * For new contributors it is even worse as they have no idea if the feedback is coming from someone that has spent a lot of time developing the project (and should be taken seriously) or if it is coming from an obnoxiously loud user or even a troll (and should be ignored).
                      > * All this combined results in a potent mix that drives contributors away. Over the years, I’ve seen people come, put in reasonable effort to attempt to contribute, hit this wall of insanity, and quietly leave.
                      > 
                    - [ ] X. Surašyti `illumos` trūkumai
                - [ ] X. Baigtas `illumos` tobulinimas
            - [ ] 09. Nepopuliarių OS kolekcija:
                - [ ] 01. Rust-based
                - [ ] 02. Zig-based
                - [ ] 03. 64-bit only
                - [ ] XX. Surinkta nepopuliarių OS kolekcija
            - [ ] 10. OS Bootloaders tyrimai
                - [ ] 01. Device emulation
                    - [ ] 1. PLOP Boot Manager
                - [ ] 02. 64-bit only
                - [ ] XX. Baigti tirto Bootloaders
            - [ ] X. Baigtos revoliucijos
        - [ ] X. Baigta tvarka skaitmeninėje erdvėje
        ---
      <a id="Studijose"></a>
    - [ ] 4. Studijose
        - [ ] 1. Užbaigti VGTU ELF magistrantūrą
            - [ ] 1. Skaitmeniniai įrankiai:
                - [ ] 1. Konferencingui:
                    - [ ] 1. `Zoom`: OK
                    - [ ] 2. `Teams`: NOK
                    - [ ] 3. F/LOSS sistema:
                        - [x] 1. URL: https://alternativeto.net/software/zoom-cloud-meetings/?license=opensource&platform=online
                        - [ ] 2. `TODO` peržiūrėti ir apžvelgti
                        - [ ] X. Baigta F/LOSS programų atranka
                    - [ ] X. Rasti konferencingo softai.
                - [ ] 2. Įrašams
                    - [ ] 1. Capture
                        - [x] 1. ~~Nimbus~~
                            - [x] 1. NOK, Chromebook CPU per silpnas
                        - [ ] 2. `OBS Studio`
                            - [x] 1. `saukrs`: OK
                            - [x] 2. `povstp`: NOK, Inter-frame sugadinimai/artefaktai
                            - [ ] 3. `TODO`: sulyginti nustatymus ir gal pakoreguoti
                    - [ ] 2. Talpykla
                        - [ ] 1. Mega.nz:
                            - [x] 1. Talpa: OK
                            - [x] 2. Preview: OK
                            - [ ] 3. Pradėjo riboti talpą per user? (`povstp` padarė splitą s2)
                                - [ ] 1. `TODO`: susitikrinti talpas, galbūt paskaityti EULA naujinimus
                            - [x] 4. Pradėjo riboti Download apimtis per IP per laiko vnt.
                    - [ ] 3. Kiekvieno užsiėmimo pavadinimas ir jų epizodų Timestamp žymėjimas: `TODO`
                    - [ ] 4. Užsiėmimų (paskaitų, LD) pavadinimų įkėlimas čia
                - [ ] 3. Dokumentams
                    - [x] 1. Talpykla = GitHub
                    - [ ] 2. ASCII-based formato parinkimas:
                        - [x] 1. Github Falvored Markdown (GFM)
                        - [ ] 2. AsciiDoc
                        - [ ] 3. ReStructured Text
                    - [ ] 3. Web redaktorius:
                        - [x] 1. http://jbt.github.io/markdown-editor/
                        - [ ] 2. `TODO`-kitas
                    - [x] 4. Redaktoriaus ir talpyklos integracija
                        - [ ] 1. `TODO`-kitas
                    - [x] 5. Vertimas į `.pdf`
                        - [x] 1. `jbt`
                    - [ ] X. Baigta
                - [ ] 4. Skaidrėms
                  <a id="Skaidrėms"></a>
                    - [x] 1. Talpykla = GitHub
                    - [x] 2. Variklių pavyzdžiai:  
                          https://github.com/robbie-cao/awesome-slides#javascript-and-html5-presentation-frameworks  
                          https://github.com/astefanutti/decktape#decktape
                        - [ ] • Bespoke.js
                        - [ ] • deck.js
                        - [ ] • DZSlides
                        - [ ] • Flowtime.js
                        - [ ] • impress.js
                        - [ ] • Inspire.js
                        - [ ] • NueDeck
                        - [x] • remark
                        - [x] • reveal.js
                        - [ ] • RISE
                        - [ ] • Shower
                        - [ ] • Slidy
                        - [x] • WebSlides
                    - [x] 3. HTML/CSS sintaksės varikliai:
                        - [x] 1. Pure CSS slides:  
                              https://chenhuijing.com/blog/html-slides-without-frameworks/
                        - [x] 2. W3.CSS Slideshow:
                            - [x] 1. https://www.w3schools.com/w3css/w3css_slideshow.asp  
                            - [x] 2. https://www.w3schools.com/howto/howto_js_slideshow.asp
                        - [x] 3. reveal.js:  
                              https://revealjs.com/
                            - [x] 1. https://huijing.github.io/slides/06-git-bomb/
                            - [x] 2. https://huijing.github.io/slides/10-tl-workshop-2/
                        - [x] 4. Talk.CSS:  
                              https://github.com/SingaporeCSS/talk.css
                            - [x] 1. https://singaporecss.github.io/talk.css/
                        - [x] 5. WebSlides:  
                              https://github.com/webslides/webslides/
                            - [x] 1. https://webslides.tv/demos/keynote
                        - [x] X. Baigta
                    - [x] 4. Markdown sintaksės varikliai:
                        - [x] 1. remark:  
                              https://remarkjs.com/
                            - [x] 1. https://joshbode.github.io/remark/ansi.html
                        - [x] 2. marp:  
                              https://github.com/marp-team/marp
                            - [x] 1. https://speakerdeck.com/yhatt/marp-basic-example
                            - [x] 2. https://marpit.marp.app/?id=how-to-use
                        - [x] 3. spectacle:  
                              https://formidable.com/open-source/spectacle/docs/basic-concepts/
                            - [x] 1. https://raw.githack.com/FormidableLabs/spectacle/main/examples/one-page.html
                        - [x] X. Baigta
                    - [x] 5. Eksportas į `.pdf`
                        - [x] 1. https://github.com/astefanutti/decktape#examples
                        - [x] 2. https://web.marp.app/ (Print to "Save as PDF")
                    - [ ] 6. Pasirinkimas
                        - [ ] 1. `TODO` Šaunu užsimerkęs?
                    - [ ] 7. Hostinimas
                        - [ ] 1. `BLOCKER`: [GitHub Pages mokinimasis](#GitHub-Pages-mokinimasis)
                    	- [ ] 2. GitHub pages?
                    - [ ] 8. Bandymai
                    - [ ] X. Baigta
                - [x] 5. Konspektams
                    - [x] 1. Talpykla = GitHub
                    - [x] 2. Formatas = Github Flavoured Markdown
                - [x] 6. Mašina su Linux OS
                    - [x] 1. Asmeninio UFD panaudojimas
                - [ ] X. Baigta
            - [ ] 2. Susitvarkyti 2020 m. kursą
                - [x] 1. s1
                    - [ ] 1. `TODO` punktus  \
                          (daug kas atlikta nekokybiškai | tiek iš universiteto, tiek vėliau ir iš mano pusės)
                - [ ] 2. s2
                    - [ ] 1. IiSA: Informacijos ir sistemų apsauga
                        - [ ] 1. Paskaitos
                            - [x] 1. Prasidėjo
                            - [x] 2. Aiškūs įrankiai, pradžios laikas, trukmė
                            - [x] 3. Vyksta
                            - [x] 4. ~~Konspekto sudarymas~~
                            - [x] 5. Paskaitų peržiūra
                              <a id="Paskaitu-perziura-IiSA"></a>
                                - [x] 1. ~~Sąrašas, kurį 2021-04-26 pavyko peržiūrėti (~2/3)~~
                                - [x] 2. Peržiūrėjau tik apie VPN ir Windows OS saugumą
                                - [x] X. ~~.mp4 pavadinimų (ir poskyrių Relative laikų) sužymėjimas~~
                            - [x] 6. Pasibaigė
                        - [ ] 2. Laboratoriniai darbai
                            - [x] 1. Prasidėjo
                            - [ ] 2. Aiški užduotis
                                - [x] 1. Aiškūs įrankiai:
                                    - [x] 1. VMM = VirtualBox
                                    - [x] 2. Guest OS = Ubuntu
                                    - [x] 3. Guest URL = https://sourceforge.net/projects/osboxes/files/v/vb/55-U-u/20.04/20.04.2/
                                - [x] 2. Darbų skaičius = 5
                                - [x] 3. Temos:  
                                    - [x] URL: https://moodle.garsva.lt/course/view.php?id=4#section-8
                                    - [x] 1LD: Pažintis su Ubuntu (Debian šeimos) linux
                                    - [x] 2LD: Ubuntu tinklo komandos
                                    - [x] 3LD: Ugniasienė iptables pagrindai
                                    - [x] 4LD: Atakų atpažinimo sistemos Snort tyrimas
                                    - [x] 5LD: Virtualaus privataus tinklo konfigūravimas
                                - [ ] 4. `BLOCKER` [Peržiūrėti aptarimus paskaitų pradžioje](#Paskaitu-perziura-IiSA)
                                - [ ] 5. Pristatymo forma:
                            - [ ] 3. Aiški eiga žemiau: (iki "X. Baigti ...")
                            - [ ] 4. Pervesti užduotis į .md (ar kitą Markup kalbą grupės repozitorijoje)
                                - [x] 1LD:
                                    - [x] 01. Užduotis
                                    - [x] 02. Tikslas
                                    - [x] 03. Linux OS pagrindinės komandos, direktorijos ir programos
                                    - [x] 04. Bazinės Linux OS komandos
                                    - [x] 05. ~~Trumpas darbo su Linux komandomis aprašas~~
                                    - [x] 06. ~~Katalogų struktūra ir paskirtis~~
                                    - [x] 07. ~~Failų sistemų ar papildomų informacijos saugojimo įrenginių prijungimas~~
                                    - [x] 08. ~~Failų ir katalogų pasiekimo teisės~~
                                    - [x] 09. Darbo eiga
                                    - [x] 10. Ataskaitos turinys
                                    - [x] XX. Baigtas 1LD aprašas
                                - [x] 2LD:
                                - [ ] X. Baigti visi LD aprašai
                            - [ ] 5. `BLOCKER`: [`VirtualBox` skriptinimas](#-VirtualBox--skriptinimas)
                              <a id="Pasiruošti-infrą"></a>
                            - [ ] 6. Pasiruošti infrą
                            - [ ] 7. Atlikti
                            - [ ] 8. Įrašyti į `asciinema`
                            - [ ] 9. Paruošti ataskaitą, jei pasirodys, kad reikia
                            - [ ] X. Pasibaigė IiSA LD
                        - [x] 3. Namų darbai
                            - [x] 1. Tipas: mini-referatas
                            - [x] 2. Tema: MPTCP protokolo saugumo klausimai
                            - [x] 3. URL: http://www.tinklusaugumas.lt/Duomen%C5%B3%20saugos%20nam%C5%B3%20darb%C5%B3%20u%C5%BEduotys%20magistrantams%202021
                            - [x] 4. Idėjos:
                                - [x] 1. "some security issues in relation to the creation of sub flows":  \
                                      https://github.com/multipath-tcp/mptcp/issues/169#issuecomment-325566650
                                - [x] X. Pakaks idėjų
                            - [x] 5. ~~Skaidrės pristatymui~~
                            - [x] X. `2021-04-26` Failed
                        - [x] 4. Tarpinis egzaminas
                            - [x] 1. ~~Pasiruošimas~~
                            - [x] 2. 20 klausimų laikymas ekspromtu
                            - [x] 3. Savęs įvertinimas = 8,5
                            - [x] 4. Dėstytojo vertinimas = 10 (po patempimo)
                        - [x] 5. Galutinis egzaminas
                            - [x] 1. Pasiruošimas
                                - [x] 1. Dviejų video peržiūra
                                    - [x] 1. Apie VPN
                                    - [x] 2. Apie Windows
                                    - [x] 3. ~~Apie ActiveDirectory~~
                                - [x] X. Prastai, bet dalinai pasiruošta
                            - [x] 2. Dviejų atvirų klausimų atsakymas
                                - [x] 1. Klausimų perskaitymas
                                - [x] 2. Breinstorminimas su grupiokais
                                - [x] 3. Neaiškumų apibrėžimas
                                - [x] 4. Pasirinkimas pateikti po du atsakymus kiekvienam klausimui:
                                    - [x] 1. Kokį pasiūlytumėte VPN sprendimą keliaujančiam darbuotojui?
                                        - [x] 1. Spartus, naujoviškas, 3rd Party: Wireguard
                                        - [x] 2. Integruotas į w10: ~~L2TP~~
                                    - [x] 2. Kokios trys Windows priemonės mažai koproracijai labiausiai padidina saugumą?
                                        - [x] 1. Built-in (Updates, Firewwall, Defender) + su kokiu tikslu.
                                        - [x] 2. Kitų šalių (NAT-router/firewall [nusišnekėjau], Office365 + Cloud Exchange, 3rd party Anvirus + Antimalware)
                                    - [x] X. Parinkta atsakymo struktūra
                                - [x] 5. Atsakymų teksto rašymas ir taisymas atskirame redaktoriuje
                                - [x] 6. Laiško išsiuntimas
                                - [x] 7. Galvos poilsis
                                - [x] 8. Atsakymo peržiūra
                                - [x] 9. Patikslinimas, kad norėjau įvardinti ne `L2TP`, o kitą protokolą, kuris paprastas ir šifruotas be jokių IPsec, t.y.  `SSTP` (bet realiai pradinį rašydamas atsakymą ir guglindamas neįsitikinau, koks protokolas yra toks / kad būtent SSTP tinkamiausias)...
                                - [x] X. Egzamino klausimai atsakyti
                            - [x] 3. Savęs įvertinimas = 8
                            - [ ] 4. Dėstytojo vertinimas = 
                        - [ ] X. Baigtas ISAd kursas
                    - [ ] 2. PIPr: Pažangūs interneto protokolai
                        - [ ] 1. Paskaitos
                            - [x] 1. Prasidėjo
                            - [x] 2. Aiškūs įrankiai (Zoom), pradžios laikas, trukmė
                            - [x] 3. Vyksta
                            - [x] 4. ~~Konspekto sudarymas~~
                            - [ ] 5. Paskaitų peržiūra
                              <a id="Paskaitu-perziura-PIPr"></a>
                                - [ ] 1. `TODO` sąrašas
                                - [ ] X. .mp4 pavadinimų (ir poskyrių Relative laikų) sužymėjimas
                            - [ ] 6. Pasibaigė
                        - [x] 2. Laboratoriniai darbai
                            - [x] 1. Tokių nebuvo
                        - [x] 3. Namų darbai
                            - [x] 1. `RFC 813` analizė
                                - [x] 1. Dokumento performatavimas
                                - [x] 2. Skaitymas
                                    - [x] 1. Pradžia
                                    - [x] 2. Tęsimas
                                    - [x] 3. ~~Pabaiga~~
                                        - [x] 1. spėjau tik pirmus tris skyrelius išsiverst
                                        - [x] 2. Žiauriai man sudėtingas stilius ir nepilno paveikslo aprašymas
                                        - [x] 3. Failed: nuo vidurio iki pabaigos nebespėjau perskaityt
                                    - [x] Failed
                                - [x] 3. Pastabų žymėjimasis
                                    - [x] 1. Tam naudoju Github + Markdown
                                    - [x] 2. Viską skaidau į minisakinius
                                    - [x] 3. Failed: nebespėjau susikonspektuot nuo ketvirto skyrelio (SWS) iki vidurio (kiek perskaičiau)
                                - [x] 4. Reziume
                                    - [x] 1. Improvizuotas mintyse
                                - [x] X. `RFC 813` analizė baigta, dalinai Failed
                            - [x] 2. Pristatymo ruošimas
                                - [x] 1. Formatas
                                    - [x] 1. Skipped: Interactive HTML / Mouse Hovering?
                                    - [x] 2. Skipped: Highlighting Overlay?
                                    - [x] 3. Skipped: Skaidrės?
                                    - [x] 4. Pasirinkimas (dėl laiko stokos) pristatyti:
                                        - [x] 1. surašytus minisakinius tiesiai iš GitHub;
                                        - [x] 2. persikeltą tiesioginį RFC tekstą.
                                    - [x] X. Pristatymo formatas improvizuotas
                                - [x] 2. Turinys
                            - [x] 3. ~~Treniruotė~~ Failed
                            - [x] 4. Pristatymas
                                - [x] 1. Improvizuotas (gana nekokybiškai)
                                - [x] 2. Per daug šnekėjau apie nesuprastas vietas
                                - [x] 3. Per daug reagavau kol dėstytojas bandė paaiškint nesuprastas vietas
                            - [x] X. Dėl RFC atsiskaityta
                        - [ ] 4. Kursinis darbas
                            - [x] 1. Tema: Tinklo simuliacija panaudojant NS-2
                            - [x] 2. NS-2 (įrankių) ruošimas
                                - [x] 1. NS-2 ir susijusių RPM-paketų paieška CentOS mašinai
                                    - [x] 1. Pirmi šūviai
                                        - [x] 1. https://repology.org/project/ns2/versions
                                        - [x] 2. http://rpm.pbone.net/results_srodzaj_2_search_ns2-2.35-3.32.src.rpm.html
                                        - [x] 3. https://www.rpmseek.com/rpm-pl/ns2.html?hl=com&cx=0:
                                        - [x] 4. https://download.opensuse.org/repositories/home:/RedDwarf/openSUSE_Factory/src/ns2-2.35-3.32.src.rpm.mirrorlist
                                    - [x] 2. Kokių yra `.spec` failų?
                                        - [x] 1. https://github.com/ThanosApostolou/fedora-ns2-nam/tree/master/otcl/SPECS
                                        - [x] 2. https://git-os.flux.utah.edu/moate/emulab-devel/-/blob/portal-css/install/rpms/otcl.spec
                                        - [x] 3. https://gitlab.com/ThanosApostolou/fedora-specs/-/blob/master/SPECS/ns2.spec
                                        - [x] 4. https://copr-dist-git.fedorainfracloud.org/cgit/thanosapostolou/ns2-nam-xgraph/ns2.git/tree/
                                    - [x] X. Baigta NS-2 RPM paketų paieška
                                - [x] 2. `BLOCKER`: [`.rpm` paketų kūrimas](#-.rpm--paketų-kūrimas)
                                  <a id="NS-2-ir-susijusių-RPM-paketų-kompiliavimas"></a>
                                - [x] 3. `BLOCKER`: [CentOS root-FS vietos praplėtimas](#CentOS-root-FS-vietos-praplėtimas)
                                  <a id="NS-2-ir-susijusių-RPM-paketų-kompiliavimas"></a>
                                - [x] 4. NS-2 ir susijusių RPM-paketų kompiliavimas
                                    - [x] URL = https://github.com/VGTU-ELF/TETfm-20/blob/main/Semestras-2/2-Pa%C5%BEang%C5%ABs-interneto-protokolai/kursinis-darbas/tools/NS-2/
                                - [x] 5. Testavimas: 
                                    - [x] 1. TCL testas: https://www.absingh.com/ns2/#check-your-installation
                                    - [x] 2. NS testas: https://www.absingh.com/ns2/#running-a-simple-simulation
                                - [x] X. Paruošti NS-2 įrankiai
                            - [x] 3. Užduoties supratimas
                                - [x] 1. Perrašymas `VGTU-ELF/TETfm-20` repozitorijoje
                                    - [x]  1. Pasirenku `asciidoc` formatą
                                - [x] 2. Perskaitymas iš naujo
                                - [x] X. Suprasta užduotis
                            - [ ] 4. `NS-2` valdymo perpratimas
                                - [x] 1. Testinės simuliacijos skripto perskaitymas
                                - [x] 2. Testinės simuliacijos komandų analizė
                                    - [x] 1. http://nile.wpi.edu/NS/simple_ns.html
                                - [ ] 3. Dokumentacijos skaitymas
                                    - [ ] 1. https://www.isi.edu/nsnam/ns/doc/node2.html
                                - [x] 4. `NS-2` Komandų sistemos perpratimas
                                    - [x] 1. Teorinis pagrindas jau atsirado (ačiū `simple_ns.html`)
                                    - [x] 2. Konsultacijos video (Aretos demo) peržiūrėjimas ir konspektavimas
                                    - [x] 3. `simple.tcl` pataisymas: `.tr` Trace failo įjungimas šalia jau generuojamo `.nam` failo
                                    - [x] 4. `simple.tcl` struktūros perrašymas savu stilium ir savais (aiškesniais vardais)
                                - [x] X. Perprastas `NS-2` įrankio valdymas
                            - [x] 5. Teorinės dalies aprašymas
                                - [x] 1. HSTCP
                                - [x] 2. TCP-BIC
                            - [ ] 6. Tinklo simuliavimas
                                - [x] 1. Ar prisikopijuojant krūvas `.tcl` failų, ar suskriptinant viską į vieną?
                                - [x] 2. `kursinis-saukrs.tcl` pradėtas
                                    - [x] 1. Sukurtas pagal `simple.tcl` struktūrą
                                    - [x] 2. Panaudoti savi, suprantami kitamųjų/objektų vardai
                                    - [x] 3. "trace-all" rezultatas identiškas `simple.tcl` atvejui
                                - [x] 3. `kursinis-saukrs.tcl` tęsiamas
                                    - [x] 01. Vizualizacijos įdėjimas
                                    - [x] 02. antrojo TCP šaltinio pridėjimas;
                                    - [x] 03. UDP šaltinio ir imtuvo išmetimas;
                                    - [x] 04. antrojo maršruto parinktyvo pridėjimas;
                                    - [x] 05. praradimų mechanizmo įtraukimas;
                                    - [x] 06. svarbių konstantų agregavimas į skripto kintamuosius;
                                    - [x] 07. vėlinimo ir paradimo parametrų nuskaitymas iš komandinės eilutės;
                                    - [x] 08. duotųjų TCP grūsties valdymo algoritmų (HSTCP ir BIC) priskyrimas abiems TCP srauto siuntėjams;
                                    - [x] 09. patikrinimas, ar tiriamojoje linijoje dažnai pasiekiami 100 Mbps – ne, yra kažkokių kliūčių;
                                    - [x] 10. teorinė priežasčių analizė ir praktinė parametrų paieška literatūroje bei keitimai skripte:
                                        - [x] 0x. kanalo buferių Queue Size;
                                        - [x] 0x. maks. Congestion Window dydžio;
                                        - [x] 0x. MSS;
                                    - [x] 11. MSS padidinimas nuo `1000 B` iki `1448 B` ir priartėjimas prie 100 Mbps tiriamojoje linijoje.
                                    - [ ] XX. Suformuota `kursinis-saukrs.tcl` struktūra
                                - [ ] 4. Supaprastintų užduoties sąlygų suskriptinimas
                                - [ ] 5. Reikiamų duomenų ištraukimas
                                - [ ] 6. Diagramų braižymas
                                - [ ] X. Susimuliuotas tinklo veikimas
                            - [ ] 7. Rezultatų apiforminimas
                            - [ ] X. Baigtas kursinis darbas
                        - [x] 5. Galutinis egzaminas
                            - [x] 1. Pasiruošimas
                                - [x] 1. Keleto video peržiūra
                                    - [x] 1. Apie BGP
                                    - [x] 2. Apie SPB + TRILL (dalinai)
                                    - [x] 3. Konsultacijos pabaiga (dalinai), apie Docker
                                - [x] 2. Išankstinių klausimų atsakinėjamas
                                	- [x] #15: Kur naudotinas OSPF ir kur BGP?
                                	- [x] #16: Kokius maršrutizavimo protokolus žinote, kuo jie skiriasi?
                                - [x] 3. Išankstinių klausimų papildymas ir patikslinimas
                                	- [x] #18: Ugniasienės, jų tipai, kokias žinote?
                                	- [x] #20: Kur verta naudoti Docker (konteinerių) sistemas?
                                - [x] 4. Atsakymų į likusius klausimus skaitymas
                                - [x] 5. Išankstinių klausimų guglinimas:
                                	- [x] #01: TCP sesijos užmezgimo procesas (Three-way Handshake)
                                	- [x] #02: TCP sesijos nutraukimo procesas
                                	- [x] #03: TCP sesijos Sekos numeris: paskirtis, veikimas
                                	- [x] #04: TCP sesijos Patvirtinamos sekos numeris: ką jis nurodo
                                	- [x] #05: TCP lango dydis: paskirtis ir veikimas
                                	- [x] #07: TCP perkrovos valdymo algoritmai
                                	- [x] #10: VRRP protokolas ir paskirtis
                                - [x] X. Vidutiniškai pasiruošta
                            - [x] 2. FB-Heartbeat su grupiokais
                                - [x] 1. Atsakymai, kuriuos papildžiau
                                - [x] 2. Kiek klausimų gaunate?
                                - [x] 3. Kokius gaunate?
                                - [x] 4. Ar sunku?
                                - [x] 5. Kaip bandote suprasti kursinį?
                            - [x] 3. Gyvas atsakinėjimas
                                - [x] 1. Dėstytojo plano išklausymas + užuomina, kad kursinį atidedu perlaikymui, + diskusija, kad be perlaikymų
                                - [x] 2. #15: Kur naudotinas OSPF ir kur BGP?
                                - [x] 3. #01: TCP sesijos užmezgimo procesas (Three-way Handshake)
                                - [x] 4. #20: Kur verta naudoti Docker (konteinerių) sistemas?
                                - [x] 5. #09: Kas yra HTTP, veikimo principas, esminiai trūkumai
                                - [x] 6. #07: TCP perkrovos valdymo algoritmai
                                - [x] 7. Įvertinimas žodžiu: egzaminas tikrai išlaikytas
                                - [x] 8. Patarimai supaprastinti kursinio užduotį
                                - [x] 9. Susitarimas priduoti kursinį iki 2021-06-08 pietų (ar net 15:00)
                            - [x] 4. Savęs įvertinimas = 8,5
                        - [ ] X. Baigtas PIPr kursas
                    - [x] 3. ISAd: Informacinių sistemų administravimas
                        - [x] 1. Paskaitos
                            - [x] 1. Prasidėjo
                            - [x] 2. Aiškūs įrankiai, pradžios laikas, trukmė
                                - [x] 1. ~~`Teams`~~: NOK, lagina dėstytojui, antras įrankis magistrantams
                                - [x] 2. `Zoom`: OK, nors ir tenka persijungti kas 45 min.
                            - [x] 3. Vyksta
                            - [x] 4. ~~Konspekto sudarymas~~ Failed
                            - [x] 5. Paskaitų peržiūra
                              <a id="Paskaitu-perziura-ISAd"></a>
                                - [x] 1. ~~`TODO` sąrašas~~
                                - [x] 2. Video sudėlioti
                                - [x] 3. Maža dalis peržiūrėta
                                - [x] 4. .mp4 pavadinimų (ir poskyrių Relative laikų) sužymėjimas
                                - [x] X. Baigta TPKV įrašų peržiūra
                            - [x] 6. Pasibaigė
                        - [x] 2. Namų darbai – Linux komandos/pasistemės pristatymas
                            - [x] 1. Parinkta tema: `/proc` FS
                            - [x] 2. Analizė
                                - [x] 1. Straipsnių/apžvalgų paieška
                                    - [x] 00. https://www.google.com/search?q=procfs+slides&tbm=isch
                                    - [x] 01. 2001-12-03, https://tldp.org/LDP/sag/html/proc-fs.html  
                                    - [x] 02. 2004-07-30, https://tldp.org/LDP/Linux-Filesystem-Hierarchy/html/proc.html
                                    - [x] 03. 2009-06-09, https://www.kernel.org/doc/html/latest/filesystems/proc.html
                                    - [x] 04. 2014-10-09, https://present5.com/cs-6431-security-issues-in-web-applications-vitaly/
                                    - [x] 05. 2018-10-10, https://ops.tips/blog/a-month-of-proc/
                                    - [x] 06. 2018-10-25, https://ops.tips/blog/what-is-that-proc-thing/
                                    - [x] 07. 2019-01-31, https://www.geeksforgeeks.org/proc-file-system-linux/
                                    - [x] 08. 2019-04-27, https://speakerdeck.com/samuelkarp/linux-container-primitives-cgroups-namespaces-and-more-linuxfest-northwest-2019
                                    - [x] 09. 2020-03-16, https://www.redhat.com/sysadmin/linux-proc-filesystem
                                    - [x] 10. 2020-04-02, https://opensource.com/article/20/4/proc-filesystem
                                    - [x] 11. 2020-06-24, https://www.journaldev.com/41537/proc-file-system-in-linux
                                    - [x] 12. 2021-01-14, https://en.wikipedia.org/wiki/Procfs
                                    - [x] 13. 1996-03-07, TLDP straipsniai:  
                                              Net-2: https://tldp.org/LDP/nag/node59.html  
                                              DEVPTS: https://tldp.org/LDP/lfs/5.0/html/chapter06/proc.html  
                                              SCSI: https://tldp.org/HOWTO/SCSI-2.4-HOWTO/procfs.html  
                                              TCPIP: https://tldp.org/HOWTO/TCP-Keepalive-HOWTO/usingkeepalive.html  
                                              IPv6: https://tldp.org/HOWTO/Linux+IPv6-HOWTO/ch11s01.html  
                                              LKM-2-USER: https://tldp.org/LDP/lkmpg/2.6/html/x710.html  
                                              USER-2-LKM: https://tldp.org/LDP/lkmpg/2.4/html/x770.html
                                    - [x] X. Straipsnių pakaks
                                - [x] 2. Išsirinkimas iš daugelio
                                    - [x] 1. Permetimas akimis
                                    - [x] 2. ~~Struktūrų konspektas~~ Failed
                                    - [x] 3. ~~Rinkimasis~~ Failed
                                    - [x] X. Straipsniai pasirinkti
                                - [x] 3. Parsirinktųjų skaitymas
                                    - [x] 1. Perskaityti tik tris-keturi iš visų
                                - [x] 4. ~~Reziume mintyse~~
                            - [x] 3. `BLOCKER`: ~~[Skaidrių įrankis](#Skaidrėms)~~ Failed
                                - [x] 1. Worked around by using local Mardown-generated anchors + NBSPs
                            - [x] 4. Skaidrės
                                - [x] 1. Reziume raštu
                                - [x] 2. Minčių struktūravimas
                                    - [x] 1. Privalumai
                                    - [x] 1a. Greičiau nei `sysctl`?
                                    - [x] 2. Trūkumai
                                    - [x] 2a. "No permissions needed to read any world readable file in ProcFS …"
                                    - [x] 3. "Viskas yra procesas" ?
                                    - [x] 4. Aktualumo scenarijai:
                                    - [x] 4a. ~~Must: LKM-2-USER komunikacijai, TCP stekui~~ Failed to mention
                                    - [x] 4b. ~~Advanced user: kai lipdai kernelį iš gabalėlių (ir pvz. neveikia DEVPTS)~~ Failed to mention
                                    - [x] 4c. Regular user: pasitikrinti kasdienius poreikius, pvz. CPU galimybes, dažnį, Core skaičių
                                    - [x] X. Mintys sustruktūruotos
                                - [x] 3. Skaidrių emuliavimas ir maketavimas naudojantis .md-to-HTML
                                    - [x] 1. Local anchors
                                    - [x] 2. HTML-escaped NBSPs
                                    - [x] 3. URL = [Semestras-2/3-.../Nam%C5%B3-darbas/Saulius-Krasuckas/README.md](https://github.com/VGTU-ELF/TETfm-20/blob/main/Semestras-2/3-Informacini%C5%B3-sistem%C5%B3-administravimas/Nam%C5%B3-darbas/Saulius-Krasuckas/README.md#1)
                                - [x] X. Skaidrės paruoštos (nors ir nekokybiškai)
                            - [x] 5. Treniruotė
                            - [x] 6. Pristatymas
                        - [x] 3. Egzaminas
                            - [x] 1. ~~Pasiruošimas~~ Failed
                                - [x] 1. Konsultacija
                                - [x] 2. Knygos parsisiuntimas: \
                                      "The Practice of System and Network Administration", 2017
                                - [x] 3. ~~Klausimų paieška/peržiūra~~
                                    - [x] 1. Papildžiau apie VDI
                                    - [x] 2. Skipped
                                - [x] 4. ~~Knygos apibendrinimų peržiūra~~ Failed
                                - [x] 5. ~~Skaidrių peržiūra~~
                                    - [x] 1. Kelios peržiūrėtos
                                    - [x] 2. Failed
                                - [x] X. Beveik nepasiruošta
                            - [x] 2. Laikymas
                                - [x] 0. Vaizdo įrašas
                                - [x] 1. Spėliojimas
                                - [x] 2. IT4IT verčių sričių ir aprašymų guglinimas
                                - [x] 3. Nusižiūrėjimas
                                - [x] 4. Peržiūra su dėstytoju
                                    - [x] 1. Su kai kuriais požiūriais apibrėžimais (pvz. konteinerių) nesutinku
                                    - [x] 2. Su kai kuriais įvertinimais nesutinku (manau, kad savais žodžiais atsakiau tą patį, ko prašoma)
                                    - [x] 3. Įvertis = 6
                                - [x] X. ISAd laikymas baigtas
                            - [x] 5. Galutinio įvertinimas laukimas, saukrs = 9*0.3 + 6*0.7 = 7
                            - [x] X. ISAd egzaminas išlaikytas
                        - [x] X. ISAd dalykas atsiskaitytas
                    - [x] 4. TPKV: Telekomunikacijos ir paslaugų kokybės valdymas
                        - [x] 1. Paskaitos
                            - [ ] `TODO`
                        - [x] 2. ~~Savarankiškos pratybos:~~ srauto analizė naudojant Wireshark
                            - [x] 1. _Failed_ laiku atlikti
                        - [x] 3. Egzaminas
                            - [x] 1. Pasiruošimas
                                - [x] 1. Konsultacija
                                - [x] 2. Knygos parsisiuntimas: \
                                      "QoS OVER HETEROGENEOUS NETWORKS", 2017
                                - [x] 3. ~~Klausimų paieška/peržiūra~~
                                    - [x] 1. Įveikta vien per `2021-05-31´
                                    - [x] 2. Dalį klausimų pavyko peržiūrėt
                                    - [x] 3. Saviškius du išankstinius klausimus irgi lyg spėjau supildyt
                                    - [x] 4. Half-skipped
                                - [x] 4. ~~Knygos apibendrinimų peržiūra~~
                                    - [x] 1. Bet spėjau persižiūrėti kai kuriuos išankstinius klausimus
                                - [x] 5. Skaidrių peržiūra
                                    - [x] 1. Skaidres beveik iš visų 6 spėjau prabėgt
                                    - [x] 2. Labai įtemptai, stiprus duomenų srautas
                                - [x] X. Pusiau pasiruošta
                            - [x] 2. Laikymas
                                - [x] 1. Vaizdo įrašas
                                - [x] 2. Klausimų perbėgimas akimis
                                - [x] 3. Užtikrintai žinomų klausimų atsakinėjimas
                                - [x] 4. Neužtikrintai žinomų klausimų apmastymas
                                - [x] 5. Detalių apie pastaruosius prisiminimas ir improvizavimas
                                - [x] 6. Peržiūra su dėstytoju
                                    - [x] 1. Vertino sparčiau nei ISAd ir lyg atlaidžiau
                                    - [x] 2. Įvertis = 8.5 ~= 9
                                - [x] X. TPKV laikymas baigtas
                            - [x] 3. Galutinio įvertinimas laukimas, saukrs = (p-5)*0.3 + 9*0.7 = pagal įsiskolintas pratybas
                            - [x] 4. TPKV egzaminas išlaikytas (euforija ir pažadas paruošti pratybas rytojui, antradieniui)
                            - [x] 5. Savarankiškų pratybų skola: **srauto analizė naudojant Wireshark**
                                - [x] 1. Užduoties perrašymas
                                - [x] 2. Grupioko ataskaitos peržiūra
                                - [x] 3. Savo ataskaita
                                    - [x] 1. Formato parinkimas
                                        - [x] 1. MD (GFM)
                                        - [x] 2. AsciiDoc (on Git)
                                        - [x] X. Ataskaitos maketavimo formatas pasirinktas
                                    - [x] 2. Pavertimas .pdf
                                        - [x] 1. Paste into AsciiDocLive
                                        - [x] 2. Export as HTML
                                        - [x] 3. Open in Chrome
                                        - [x] 4. `Ctrl`-`P`
                                        - [x] 5. Tune settings
                                        - [x] 6. Press `Print` and save as .pdf
                                    - [x] 3. Maketavimas
                                        - [x] 1. Formatavimo priemonių parinkimas
                                            - [x] 1. Page-break
                                            - [x] 2. Centravimas
                                            - [x] 3. Centravimo _Scope_ tyrimas
                                        - [x] 2. Šrifto dydžių parinkimas
                                    - [x] 4. Turinys
                                        - [x] 1. Titulinis puslapis
                                        - [x] 2. Darbo tikslas (perkopijuotas iš bendros užduoties)
                                        - [x] 3. _Capture_-failo statistika (iš capinfo)
                                        - [x] 4. ~~Išsamūs rezultatai~~
                                            - [x] 1. Šaltinio ir paskirties mazgų dumpas
                                            - [x] 2. Mazgų sąrašas
                                            - [x] 3. Mazgų grupavimo pagal srautus dumpas
                                            - [x] 4. Daugiau nespėta
                                        - [x] X. Ataskaitos turinys suformuotas
                                    - [x] X. Baigta ataskaita
                                - [x] 4. Įrankių pasirinkimas
                                    - [x] 1. CentOS-default _Wireshark_ versija
                                        - [x] 1. Per sena
                                    - [x] 2. Naujesnių .rpm paieška
                                    - [x] 3. Naujos (2021 m. pradžios) versijos .rpm paketas
                                    	- [x] 1. Kompiliavimo HowTo suradimas
                                    	- [x] 2. _root-FS_ (UFD) vietos laisvinimas
                                        - [x] 3. Senos versijos išmetimas
                                    	- [x] 4. `mock` įrankio diegimas
                                    	- [x] 5. _root-FS_ (UFD) vietos papildomas laisvinimas
                                    	- [x] 6. Per ilgai užsitęsusio bandymo stabdymas
                                    	- [x] 7. HowTo autoriaus sukompiliuotų paketų parsisiuntimas ir įdiegimas (saugumo rizika)
                                    - [x] 4. Naujesnio _Wireshark_ GUI pabandymas
                                    - [x] 5. `tshark` ir kitų CLI įrankių pabandymas (gal pagal kažkurį HowTo)
                                    - [x] X. _Wireshark-based_ įrankiai pasirinkti
                                - [x] 5. Atsiskaitymas
                                    - [x] 1. Pasikalbėjimas, kad beveik neatlikau pratybų
                                        - [x] 1. Gal kiek per daug emocijų sakiau dėl ko, pvz. kad:
                                            - [x] 1. Demotyvuoja seni neužbaigimai
                                            - [x] 2. Daug iššūkių rašant turinį ASCII-based pavidalu (Markdown + GitHub)
                                        - [x] X. Pasikalbėta apie prastą mano pratybų situaciją
                                    - [x] 2. Pasitikslinimas: ar mazgai buvo reikalingi buvo pagal L2, ar pagal L3
                                        - [x] 1. L2, nes L3 tas pats mazgas gali turėti daug IP adresų (OK...)
                                    - [x] 3. Peržiūra kas gavosi su dėstytoju, ką spėjau (dar ir kreivai susiformatavo/susimaketavo)
                                    - [x] 4. Dėstytojo reakcija
                                        - [x] 1. Labai liūdna
                                        - [x] 2. Kažkas parašyta
                                        - [x] 3. Pažymys = 5
                                        - [x] 4. Atsakymas į mano pasiūlymą, kad gal galėčiau ir pasigerinti, jei tikrai manau, kad verta
                                    - [x] 5. Įkeliu į TECH Moodle
                                    - [x] X. Atsiskaičiau (ir gėda, ir nepasitenkinimas jau antru semestru iš eilės)
                                - [x] X. Atsiskaityta savarankiškų pratybų skola
                            - [x] 5. Galutinis įvertinimas, saukrs = 2*(5-5)*0.3 + 9*0.7 = 6
                        - [x] X. TPKV dalykas atsiskaitytas
                    - [ ] 5. MTD2: `TODO
                    - [ ] X. Užbaigtas s2
                - [ ] 3. s3
                - [ ] X. Užbaigtas 2020 m. kursas
            - [ ] 3. Jei nepatiks, pabandyti jį pakartoti.
            - [ ] 4. Grąžinti senas Magistrantūros bandymų skolas:
                - [ ] 1. „Signalai ir jų apdorojimas“ (ELREM01002) Romanui Martavičiui
                    - [ ] 1. Referatas „Signalų suspaudimas“
                    - [ ] X. Atsiskaityta su Romanu Martavičiumi
                - [ ] 2. „Stochastiniai procesai elektronikoje“ (ELTLM02004) Ričardui V. Pociui
                    - [ ] 1. Referatas „Stochastiniai procesai kompiuterių geležyje ir programinėje įrangoje“
                        - [x] 1. Network Architecture (R02) | IP Multipath – Path Selection&CC  
                              Jon Crowcroft  
                              https://www.cl.cam.ac.uk/teaching/1213/R02/slides/r02-mpath.ppt#page=5
                          > See M. Mitzenmacher, A. Richa, and R.  
                          > Sitaraman. The power of two random choices:  
                          > A survey of the techniques and results. In P.  
                          > Pardalos, S. Rajasekaran, and J. Rolim,  
                          > editors, **Handbook of Randomized Computing**,  
                          > pages 255 {312. 2001 
                    - [ ] X. Atsiskaityta su Ričardu V. Pociumi
                - [ ] 3. „Mikrobangų ir optinės elektronikos įtaisai“ (ELESM01001) Stanislovui Štarui
                    - [ ] 1. Referatas apie „Elektromagnetinio lauko modeliavimo įrankius“
                        - [x] 1. Maždaug apie "Microwave Office" ir pan. modeliavimo programas
                        - [x] 2. Galbūt apie FEM metodo panaudojimą ELM modeliavime
                    - [ ] X. Atsiskaityta su Stanislovu Štaru
                - [ ] X. Grąžintos senos Magistrantūros bandymų skolos
            - [ ] X. Užbaigta VGTU ELF magistrantūra
        - [ ] 2. Pasvarstyti apie kompiuterinę lingvistiką.
        ---
    - [ ] 5. `TODO` kitus punktus

.
- [ ] 2. **Aiškumas:**
    - [ ] `TODO` punktus

# Iššūkiai, blokeriai ir problemos

Strigimų (jų priežąsčių ar net RCA) medis.

  <a id="MSYS----WDM-draiveriai"></a>
- [ ] 1. MSYS2 + WDM draiveriai
    - [ ] 1. Pavyzdžiai ir mintys:
        - [x] 1. [Errors while using Zydis.lib in windows driver | #16](https://github.com/zyantific/zydis/issues/16#issuecomment-346680851)
          
          > However it has been possible to compile drivers with Clang/LLVM for quite some time :) (both Clang/C2 and the 'proper' LLVM toolchain.) It's not something I would recommend for production drivers, but Clang's static analysis is unparalleled so I make very frequent use of it. Unfortunately the clang-cl frontend does not recognise MSVC's `/kernel` switch, so you have to manually define `_KERNEL_MODE`. Naturally, doing this in an MSVC project results in a fatal error for defining a reserved macro.
        - [ ] X. Surasta pakankamai pavyzdžių
    - [ ] X. Jau WDM draiveriai kompiliuojami su atviru kompileriu

  <a id="DCIM---hardware-asset-management"></a>
- [ ] 2. DCIM + hardware asset management suderinimas
    - [ ] 1. Poreikio apibrėžimas:
        - [x] 1. DC įrangai
        - [x] 2. Namų įrangai
        - [ ] 3. Kriterijų sąrašas:
    - [ ] 2. Įrankio suradimas
        - [x] 1. Keywords:
            - [x] `OpenSource` 
            - [x] `DCIM`
            - [x] `hardware asset management`
        - [ ] 2. Suguglinimai: 
            - [x] 1. https://github.com/little-brother/dcim-list
        - [ ] 3. App kandidatai:
            - [ ] 1. 
        - [ ] 4. App palyginimas ir išrinkimas
    - [ ] 3. Įrankio suderinimas
    - [ ] 4. Įrankio startas

### Spec. simboliai:

:heavy_check_mark:  \
:white_check_mark:
