# dalykai

## Siekiai

Asmeninių tvarkymų medis.

- [ ] 1. **Tvarka:**
    - [ ] 1. Fizinėje aplinkoje
        - [ ] 1. Bute
            - [ ] 1. Pakuotės, perdirbamos atliekos:
                - [ ] 1, surūšiuoti;
                    - [ ] a, `TODO` kaip?
                - [ ] 2, išgabenti;
                - [ ] 3, dokumentuoti procesą;
                - [ ] 4, pradėti kartojimą;
                - [ ] 5, registruoti trukdžius;
    - [ ] 2. Su sveikata
        - [ ] 1. Akių ilsinimas:
            - [ ] 1. `TODO` kaip?
            - [ ] 2. Dažniau žiūrėti į tolį:
                - [ ] 1. `TODO` kaip dažnai?
            - [ ] 3. Mažiau žiūrėti į ekranus:
                - [ ] 1. `TODO` kaip?
        - [ ] 2. Daugiau deguonies kvėpuojant:
            - [ ] `TODO` vėdinimas
            - [ ] `TODO` vaikščiojimas?
    - [ ] 3. Skaitmeninėje aplinkoje
        - [ ] 1. Pirmos būtinybės poreikiai
            - [x] 0. Užduočių ir problemų žymėjimasis + versijavimas (https://github.com/sskras/dalykai).
            - [ ] 1. Bekupai
                - [ ] 1. Susirinkti visus savo Ad-hoc darytus bekupus
                    - [ ] 1. Sukaupti senas naudotas savo duomenų talpyklas:
                        - [ ] 1. 3.5" PATA diskus
                        - [ ] 2. 2.5" SATA diskus
                        - [ ] 3. 2.5" USB diskus
                    - [ ] `BLOCKER`: [DCIM + hardware asset management](#DCIM---hardware-asset-management) suderinimas
                    - [ ] 3. Sužymėti sukauptas duomenų talpyklas
                - [ ] 2. Susikurti naują (turbūt centralizuotą) bekupavimo sistemą.
                - [ ] 3. Į ją perkelti visus savo randamus bekupus
            - [ ] 2. Pašto programos
            - [ ] 3. Desktopų CMDB
            - [ ] 4. UE Management (Sailfish OS)
            - [ ] 5. Studijų įrankiai
                - [ ] 1. Dokumentavimui (būtinai versijuotam)
                - [ ] 2. Tiesiogiam mokymuisi
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
                - [ ] 3. Patikima 2.5" Dual-Bay SATA-USB lentynėlė.
                    - [x] 1. Lentynėlių sąrašas: https://twitter.com/sskras/status/1376979608051060738
                    - [ ] 2. Spekų, privalumų ir trūkumų sąrašas.
                    - [ ] 3. Bent poros modelių pirkimas.
                    - [ ] 4. Skirtingų modelių sukombinavimas į vieną (jei pavieniai prastai veiktų).
        - [ ] 2. Skaitmeninio paveldo išsaugojimas
            - [ ] 1. `led.ot.lt` perkėlimas
            - [ ] 2. [`news.omnitel.net` perkėlimas](tvarka/news.omnitel.net-perkėlimas.md)
        - [ ] 3. Patobulinimai, nepatogumo mažinimas, automatizavimai
            - [ ] 1. DC tvarkymas
                - [ ] 1. DCIM
                    - [ ] `BLOCKER`: [DCIM + hardware asset management](#DCIM---hardware-asset-management) suderinimas
                    - [ ] 1. CI žymėjimas
        - [ ] 4. Sunkūs atvejai, iššūkiai, RnD, revoliucijos
            - [ ] 1. Hypervisors
                - [ ] 1. Mokymaisi, tyrimai, dokumentavimas
                - [ ] 2. Kūrimas:
                    - [ ] 1, ODD emuliacija (xordivm)
                    - [ ] 2, Remote-mgmt (iLO) emuliacija
                    - [ ] 3, Split-screen emuliacija (debuginimo paraštės ekrane, VGA-para-passthrough)
    - [ ] `TODO` kitus punktus

.
- [ ] 2. **Aiškumas:**
    - [ ] `TODO` punktus

# Iššūkiai, blokeriai ir problemos

Strigimų (jų priežąsčių ar net RCA) medis.

  <a id="MSYS----WDM-draiveriai"></a>
- [ ] 1. MSYS2 + WDM draiveriai

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
