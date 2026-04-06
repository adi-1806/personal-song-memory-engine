#!/usr/bin/env bash
set -uo pipefail
mkdir -p songs
FAILED=0
TOTAL=0

# [1/1000] Vizhi Moodi — Karthik
yt-dlp "ytsearch1:Vizhi Moodi Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_vizhi_moodi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [1]: Vizhi Moodi"; FAILED=$((FAILED+1)); }

# [2/1000] Kallu Moosi Yochisthey — Karthik
yt-dlp "ytsearch1:Kallu Moosi Yochisthey Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_kallu_moosi_yochisthey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [2]: Kallu Moosi Yochisthey"; FAILED=$((FAILED+1)); }

# [3/1000] O My Friend — Karthik
yt-dlp "ytsearch1:O My Friend Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_o_my_friend.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [3]: O My Friend"; FAILED=$((FAILED+1)); }

# [4/1000] Hosanna — A.R. Rahman
yt-dlp "ytsearch1:Hosanna A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_hosanna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [4]: Hosanna"; FAILED=$((FAILED+1)); }

# [5/1000] Inkem Inkem Inkem Kaavaale — Sid Sriram
yt-dlp "ytsearch1:Inkem Inkem Inkem Kaavaale Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_inkem_inkem_inkem_kaavaale.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [5]: Inkem Inkem Inkem Kaavaale"; FAILED=$((FAILED+1)); }

# [6/1000] Ide Kalala Vunnadhe — Andrea Jeremiah
yt-dlp "ytsearch1:Ide Kalala Vunnadhe Andrea Jeremiah" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/andrea_jeremiah_ide_kalala_vunnadhe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [6]: Ide Kalala Vunnadhe"; FAILED=$((FAILED+1)); }

# [7/1000] Anuvanuvuu — Sunny M.R.
yt-dlp "ytsearch1:Anuvanuvuu Sunny M.R." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sunny_mr_anuvanuvuu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [7]: Anuvanuvuu"; FAILED=$((FAILED+1)); }

# [8/1000] Hoyna Hoyna — Anirudh Ravichander
yt-dlp "ytsearch1:Hoyna Hoyna Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_hoyna_hoyna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [8]: Hoyna Hoyna"; FAILED=$((FAILED+1)); }

# [9/1000] Karige Loga — Kunal Ganjawala
yt-dlp "ytsearch1:Karige Loga Kunal Ganjawala" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kunal_ganjawala_megha_karige_loga.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [9]: Karige Loga"; FAILED=$((FAILED+1)); }

# [10/1000] Chamkeela Angeelesi — Santhosh Narayanan
yt-dlp "ytsearch1:Chamkeela Angeelesi Santhosh Narayanan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/santhosh_narayanan_chamkeela_angeelesi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [10]: Chamkeela Angeelesi"; FAILED=$((FAILED+1)); }

# [11/1000] My Love is Gone — Ranjith
yt-dlp "ytsearch1:My Love is Gone Ranjith" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_my_love_is_gone.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [11]: My Love is Gone"; FAILED=$((FAILED+1)); }

# [12/1000] Yedurangula Vaana — Sid Sriram
yt-dlp "ytsearch1:Yedurangula Vaana Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_yedurangula_vaana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [12]: Yedurangula Vaana"; FAILED=$((FAILED+1)); }

# [13/1000] Taanu Nenu — Vijay Prakash
yt-dlp "ytsearch1:Taanu Nenu Vijay Prakash" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_prakash_taanu_nenu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [13]: Taanu Nenu"; FAILED=$((FAILED+1)); }

# [14/1000] Bangaru Kalla — Udit Narayan
yt-dlp "ytsearch1:Bangaru Kalla Udit Narayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayan_bangaru_kalla.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [14]: Bangaru Kalla"; FAILED=$((FAILED+1)); }

# [15/1000] Neeve Neeve — Chakri
yt-dlp "ytsearch1:Neeve Neeve Chakri" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chakri_neeve_neeve.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [15]: Neeve Neeve"; FAILED=$((FAILED+1)); }

# [16/1000] Naa Madhi (From Thiru) — Dhanunjay Seepana
yt-dlp "ytsearch1:Naa Madhi (From Thiru) Dhanunjay Seepana" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanunjay_seepana_naa_madhi_from_thiru.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [16]: Naa Madhi (From Thiru)"; FAILED=$((FAILED+1)); }

# [17/1000] Chandamama — Mani Sharma
yt-dlp "ytsearch1:Chandamama Mani Sharma" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mani_sharma_chandamama.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [17]: Chandamama"; FAILED=$((FAILED+1)); }

# [18/1000] Jaamurathiri — S. P. Balasubrahmanyam
yt-dlp "ytsearch1:Jaamurathiri S. P. Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/s_p_balasubrahmanyam_jaamurathiri.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [18]: Jaamurathiri"; FAILED=$((FAILED+1)); }

# [19/1000] 123 Nenoka Kantri — Ntr
yt-dlp "ytsearch1:123 Nenoka Kantri Ntr" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ntr_naveen_karunya_123_nenoka_kantri.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [19]: 123 Nenoka Kantri"; FAILED=$((FAILED+1)); }

# [20/1000] Asale Chalikalam (Language: Telugu; Film: Mr.Mrs Sailaja Krishnamurthy; Film Artists: Sivaji, Laila) — Tippu
yt-dlp "ytsearch1:Asale Chalikalam (Language: Telugu; Film: Mr.Mrs Sailaja Krishnamurthy; Film Artists: Sivaji, Laila) Tippu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tippu_asale_chalikalam_language_telugu_film_mrmrs_sailaja_krishnam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [20]: Asale Chalikalam (Language: Telugu; Film: Mr.Mrs Sailaja Krishnamurthy; Film Artists: Sivaji, Laila)"; FAILED=$((FAILED+1)); }

# [21/1000] O Rendu Prema Meghaalila (First Love Song) [From Baby] — Vijai Bulganin
yt-dlp "ytsearch1:O Rendu Prema Meghaalila (First Love Song) [From Baby] Vijai Bulganin" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijai_bulganin_o_rendu_prema_meghaalila_first_love_song_from_baby.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [21]: O Rendu Prema Meghaalila (First Love Song) [From Baby]"; FAILED=$((FAILED+1)); }

# [22/1000] Idemitamma — Vandemataram Srinivas
yt-dlp "ytsearch1:Idemitamma Vandemataram Srinivas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vandemataram_srinivas_idemitamma.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [22]: Idemitamma"; FAILED=$((FAILED+1)); }

# [23/1000] Pranam Pothunna — Yuvan Shankar Raja
yt-dlp "ytsearch1:Pranam Pothunna Yuvan Shankar Raja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_shankar_raja_pranam_pothunna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [23]: Pranam Pothunna"; FAILED=$((FAILED+1)); }

# [24/1000] La La Bheemla DJ Version — Arun Kaundinya
yt-dlp "ytsearch1:La La Bheemla DJ Version Arun Kaundinya" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arun_kaundinya_la_la_bheemla_dj_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [24]: La La Bheemla DJ Version"; FAILED=$((FAILED+1)); }

# [25/1000] Ranjithame (From Vaarasudu) [Telugu] — Anurag Kulkarni
yt-dlp "ytsearch1:Ranjithame (From Vaarasudu) [Telugu] Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_ranjithame_from_vaarasudu_telugu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [25]: Ranjithame (From Vaarasudu) [Telugu]"; FAILED=$((FAILED+1)); }

# [26/1000] Meghaalu Lekunna — Yazin nizar
yt-dlp "ytsearch1:Meghaalu Lekunna Yazin nizar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yazin_nizar_meghaalu_lekunna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [26]: Meghaalu Lekunna"; FAILED=$((FAILED+1)); }

# [27/1000] Endaro Mahanubhavulu — Uthara Unnikrishnan
yt-dlp "ytsearch1:Endaro Mahanubhavulu Uthara Unnikrishnan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/uthara_unnikrishnan_endaro_mahanubhavulu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [27]: Endaro Mahanubhavulu"; FAILED=$((FAILED+1)); }

# [28/1000] Sree Bhavani Bhujangam — Saindhavi
yt-dlp "ytsearch1:Sree Bhavani Bhujangam Saindhavi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/saindhavi_sree_bhavani_bhujangam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [28]: Sree Bhavani Bhujangam"; FAILED=$((FAILED+1)); }

# [29/1000] Omkaranadhanu — S.Janaki & S.P.Balasubrahmanyam
yt-dlp "ytsearch1:Omkaranadhanu S.Janaki & S.P.Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sjanaki_spbalasubrahmanyam_omkaranadhanu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [29]: Omkaranadhanu"; FAILED=$((FAILED+1)); }

# [30/1000] Oo Antava Oo Oo Antava — Indravathi Chauhan
yt-dlp "ytsearch1:Oo Antava Oo Oo Antava Indravathi Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/indravathi_chauhan_oo_antava_oo_oo_antava.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [30]: Oo Antava Oo Oo Antava"; FAILED=$((FAILED+1)); }

# [31/1000] What's Happening (From Dhamaka) — Bheems Ceciroleo
yt-dlp "ytsearch1:What's Happening (From Dhamaka) Bheems Ceciroleo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bheems_ceciroleo_whats_happening_from_dhamaka.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [31]: What's Happening (From Dhamaka)"; FAILED=$((FAILED+1)); }

# [32/1000] mAyamma, Syama Sastry — Dhanya Subramanian
yt-dlp "ytsearch1:mAyamma, Syama Sastry Dhanya Subramanian" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanya_subramanian_mayamma_syama_sastry.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [32]: mAyamma, Syama Sastry"; FAILED=$((FAILED+1)); }

# [33/1000] Jabilli Nuvve — Ranjith
yt-dlp "ytsearch1:Jabilli Nuvve Ranjith" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_jabilli_nuvve.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [33]: Jabilli Nuvve"; FAILED=$((FAILED+1)); }

# [34/1000] Mokshamu Galadha | Saramati | Adi — Dhanya Subramanian
yt-dlp "ytsearch1:Mokshamu Galadha | Saramati | Adi Dhanya Subramanian" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanya_subramanian_mokshamu_galadha_saramati_adi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [34]: Mokshamu Galadha | Saramati | Adi"; FAILED=$((FAILED+1)); }

# [35/1000] NTR — Bhagya Chakram Telugu Full Movie
yt-dlp "ytsearch1:NTR Bhagya Chakram Telugu Full Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bhagya_chakram_telugu_full_movie_ntr.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [35]: NTR"; FAILED=$((FAILED+1)); }

# [36/1000] swapna venuvedo sangeetamalapinche.. suprabhathavela shubhamastu gaali veeche. Jodaina rendu gundela eka thalamo — Mani Sharma
yt-dlp "ytsearch1:swapna venuvedo sangeetamalapinche.. suprabhathavela shubhamastu gaali veeche. Jodaina rendu gundela eka thalamo Mani Sharma" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mani_sharma_swapna_venuvedo_sangeetamalapinche_suprabhathavela_shubhamas.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [36]: swapna venuvedo sangeetamalapinche.. suprabhathavela shubhamastu gaali veeche. Jodaina rendu gundela eka thalamo"; FAILED=$((FAILED+1)); }

# [37/1000] Muddulata — Devi Sri Prasad
yt-dlp "ytsearch1:Muddulata Devi Sri Prasad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/devi_sri_prasad_muddulata.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [37]: Muddulata"; FAILED=$((FAILED+1)); }

# [38/1000] Baava Baava (Sillymp3.Com) — Siddharth
yt-dlp "ytsearch1:Baava Baava (Sillymp3.Com) Siddharth" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/siddharth_praneetha_baava_baava_sillymp3com.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [38]: Baava Baava (Sillymp3.Com)"; FAILED=$((FAILED+1)); }

# [39/1000] Magadheera || Telugu Full Movie || RamCharan, Kajal Agarwal — Geetha Arts
yt-dlp "ytsearch1:Magadheera || Telugu Full Movie || RamCharan, Kajal Agarwal Geetha Arts" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/geetha_arts_magadheera_telugu_full_movie_ramcharan_kajal_agarwal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [39]: Magadheera || Telugu Full Movie || RamCharan, Kajal Agarwal"; FAILED=$((FAILED+1)); }

# [40/1000] పొట్టేలు పున్నమ్మ తెలుగుపూర్తిసినిమా|శ్రీప్రియ |మురళీమోహన్|మోహన్ బాబు|రావుగోపాలరావు|అల్లు| రాజనాల — All Telugu Movies
yt-dlp "ytsearch1:పొట్టేలు పున్నమ్మ తెలుగుపూర్తిసినిమా|శ్రీప్రియ |మురళీమోహన్|మోహన్ బాబు|రావుగోపాలరావు|అల్లు| రాజనాల All Telugu Movies" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/all_telugu_movies_పటటల_పననమమ_తలగపరతసనమశరపరయ_మరళమహనమహన_బబరవగపలరవఅలల_రజనల.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [40]: పొట్టేలు పున్నమ్మ తెలుగుపూర్తిసినిమా|శ్రీప్రియ |మురళీమోహన్|మోహన్ బాబు|రావుగోపాలరావు|అల్లు| రాజనాల"; FAILED=$((FAILED+1)); }

# [41/1000] Ora Jupu — Aathirai Sivapalan
yt-dlp "ytsearch1:Ora Jupu Aathirai Sivapalan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/aathirai_sivapalan_ora_jupu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [41]: Ora Jupu"; FAILED=$((FAILED+1)); }

# [42/1000] English Dubbed Telugu Movie || Latest Telugu Movies 2016 — Ariana's Quest (Jigarbaaz Hasinaa ) English Dubbed Telugu Movie
yt-dlp "ytsearch1:English Dubbed Telugu Movie || Latest Telugu Movies 2016 Ariana's Quest (Jigarbaaz Hasinaa ) English Dubbed Telugu Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arianas_quest_jigarbaaz_hasinaa_english_dubbed_telugu_movie_english_dubbed_telugu_movie_latest_telugu_movies_2016.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [42]: English Dubbed Telugu Movie || Latest Telugu Movies 2016"; FAILED=$((FAILED+1)); }

# [43/1000] Saahore Baahubali — Bahubali (2017)_Telugu
yt-dlp "ytsearch1:Saahore Baahubali Bahubali (2017)_Telugu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bahubali_2017_telugu_saahore_baahubali.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [43]: Saahore Baahubali"; FAILED=$((FAILED+1)); }

# [44/1000] 1996 Telugu HD Full Movie — Sri Krishnarjuna Vijayam
yt-dlp "ytsearch1:1996 Telugu HD Full Movie Sri Krishnarjuna Vijayam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sri_krishnarjuna_vijayam_1996_telugu_hd_full_movie.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [44]: 1996 Telugu HD Full Movie"; FAILED=$((FAILED+1)); }

# [45/1000] Disco Sanskrit — S.P. Balasubrahmanyam
yt-dlp "ytsearch1:Disco Sanskrit S.P. Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_disco_sanskrit.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [45]: Disco Sanskrit"; FAILED=$((FAILED+1)); }

# [46/1000] Chiranjeevi,Bhoomika — Mani Sharma
yt-dlp "ytsearch1:Chiranjeevi,Bhoomika Mani Sharma" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mani_sharma_chiranjeevibhoomika.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [46]: Chiranjeevi,Bhoomika"; FAILED=$((FAILED+1)); }

# [47/1000] 01.Nee Dookudu — Shankar Mahadevan
yt-dlp "ytsearch1:01.Nee Dookudu Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_01nee_dookudu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [47]: 01.Nee Dookudu"; FAILED=$((FAILED+1)); }

# [48/1000] Viswaprakasunaku — Vinaya Chejerla
yt-dlp "ytsearch1:Viswaprakasunaku Vinaya Chejerla" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vinaya_chejerla_viswaprakasunaku.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [48]: Viswaprakasunaku"; FAILED=$((FAILED+1)); }

# [49/1000] NTR — Palletoori Pilla Telugu Full Movie
yt-dlp "ytsearch1:NTR Palletoori Pilla Telugu Full Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/palletoori_pilla_telugu_full_movie_ntr.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [49]: NTR"; FAILED=$((FAILED+1)); }

# [50/1000] Meluko Srirangaraya_Annamacharya keertana — Harini Darbha
yt-dlp "ytsearch1:Meluko Srirangaraya_Annamacharya keertana Harini Darbha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harini_darbha_meluko_srirangaraya_annamacharya_keertana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [50]: Meluko Srirangaraya_Annamacharya keertana"; FAILED=$((FAILED+1)); }

# [51/1000] Ee Chinni Life — Anoop Rubens
yt-dlp "ytsearch1:Ee Chinni Life Anoop Rubens" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anoop_rubens_alphons_joseph_ee_chinni_life.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [51]: Ee Chinni Life"; FAILED=$((FAILED+1)); }

# [52/1000] Meluko Srirangaraya - Annamacharya Keertana — Harini Darbha
yt-dlp "ytsearch1:Meluko Srirangaraya - Annamacharya Keertana Harini Darbha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harini_darbha_meluko_srirangaraya_annamacharya_keertana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [52]: Meluko Srirangaraya - Annamacharya Keertana"; FAILED=$((FAILED+1)); }

# [53/1000] Vishal, Bhanu — Bharani Telugu Full Movie
yt-dlp "ytsearch1:Vishal, Bhanu Bharani Telugu Full Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bharani_telugu_full_movie_vishal_bhanu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [53]: Vishal, Bhanu"; FAILED=$((FAILED+1)); }

# [54/1000] Carnatic Classical Fusion (Mokshamu Galatha) — Aathirai Sivapalan
yt-dlp "ytsearch1:Carnatic Classical Fusion (Mokshamu Galatha) Aathirai Sivapalan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/aathirai_sivapalan_carnatic_classical_fusion_mokshamu_galatha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [54]: Carnatic Classical Fusion (Mokshamu Galatha)"; FAILED=$((FAILED+1)); }

# [55/1000] Guchchi Guchchi — Shruti Patak
yt-dlp "ytsearch1:Guchchi Guchchi Shruti Patak" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shruti_patak_guchchi_guchchi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [55]: Guchchi Guchchi"; FAILED=$((FAILED+1)); }

# [56/1000] Love Me — Sandeep Chowtha
yt-dlp "ytsearch1:Love Me Sandeep Chowtha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sandeep_chowtha_nikita_nigam_love_me.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [56]: Love Me"; FAILED=$((FAILED+1)); }

# [57/1000] A Vachhi B Pai Valle — Adnan Sami & Mathangi
yt-dlp "ytsearch1:A Vachhi B Pai Valle Adnan Sami & Mathangi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_mathangi_a_vachhi_b_pai_valle.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [57]: A Vachhi B Pai Valle"; FAILED=$((FAILED+1)); }

# [58/1000] Najabhaja (From God Father) — Sri Krishna
yt-dlp "ytsearch1:Najabhaja (From God Father) Sri Krishna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sri_krishna_najabhaja_from_god_father.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [58]: Najabhaja (From God Father)"; FAILED=$((FAILED+1)); }

# [59/1000] Time Ivvu Pilla — Silambarasan TR
yt-dlp "ytsearch1:Time Ivvu Pilla Silambarasan TR" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/silambarasan_tr_time_ivvu_pilla.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [59]: Time Ivvu Pilla"; FAILED=$((FAILED+1)); }

# [60/1000] Meenacchi Meenacchi — Sooraj Santhosh
yt-dlp "ytsearch1:Meenacchi Meenacchi Sooraj Santhosh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sooraj_santhosh_meenacchi_meenacchi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [60]: Meenacchi Meenacchi"; FAILED=$((FAILED+1)); }

# [61/1000] Raalupoola Ragamala... — Shri
yt-dlp "ytsearch1:Raalupoola Ragamala... Shri" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shri_wilson_herald_raalupoola_ragamala.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [61]: Raalupoola Ragamala..."; FAILED=$((FAILED+1)); }

# [62/1000] Ventaade Gaayam — Vivek Sagar
yt-dlp "ytsearch1:Ventaade Gaayam Vivek Sagar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vivek_sagar_ventaade_gaayam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [62]: Ventaade Gaayam"; FAILED=$((FAILED+1)); }

# [63/1000] Yevarive Prema Hrudayama — Sid Sriram
yt-dlp "ytsearch1:Yevarive Prema Hrudayama Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_yevarive_prema_hrudayama.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [63]: Yevarive Prema Hrudayama"; FAILED=$((FAILED+1)); }

# [64/1000] Maaye Maaye — Kapil Kapilan
yt-dlp "ytsearch1:Maaye Maaye Kapil Kapilan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kapil_kapilan_maaye_maaye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [64]: Maaye Maaye"; FAILED=$((FAILED+1)); }

# [65/1000] Zari Zari Panche Katti — Sravana Bhargavi
yt-dlp "ytsearch1:Zari Zari Panche Katti Sravana Bhargavi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sravana_bhargavi_zari_zari_panche_katti.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [65]: Zari Zari Panche Katti"; FAILED=$((FAILED+1)); }

# [66/1000] Ra Ra Reddy I Am Ready — Lipsika
yt-dlp "ytsearch1:Ra Ra Reddy I Am Ready Lipsika" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lipsika_ra_ra_reddy_i_am_ready.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [66]: Ra Ra Reddy I Am Ready"; FAILED=$((FAILED+1)); }

# [67/1000] My Heart (Remix) — KK
yt-dlp "ytsearch1:My Heart (Remix) KK" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kk_my_heart_remix.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [67]: My Heart (Remix)"; FAILED=$((FAILED+1)); }

# [68/1000] Bommali — HEMACHANDRA
yt-dlp "ytsearch1:Bommali HEMACHANDRA" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hemachandra_malavika_bommali.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [68]: Bommali"; FAILED=$((FAILED+1)); }

# [69/1000] Idhi Ranarangam — Ranjith
yt-dlp "ytsearch1:Idhi Ranarangam Ranjith" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_rahul_naveen_idhi_ranarangam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [69]: Idhi Ranarangam"; FAILED=$((FAILED+1)); }

# [70/1000] Pada Pada — Karthik
yt-dlp "ytsearch1:Pada Pada Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_pada_pada.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [70]: Pada Pada"; FAILED=$((FAILED+1)); }

# [71/1000] Chirunavvula Thotaku Swagatham — Sachin-Jigar
yt-dlp "ytsearch1:Chirunavvula Thotaku Swagatham Sachin-Jigar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sachin_jigar_chirunavvula_thotaku_swagatham.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [71]: Chirunavvula Thotaku Swagatham"; FAILED=$((FAILED+1)); }

# [72/1000] Amma Song (From Oke Oka Jeevitham) - From Oke Oka Jeevitham — Jakes Bejoy
yt-dlp "ytsearch1:Amma Song (From Oke Oka Jeevitham) - From Oke Oka Jeevitham Jakes Bejoy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jakes_bejoy_amma_song_from_oke_oka_jeevitham_from_oke_oka_jeevitham.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [72]: Amma Song (From Oke Oka Jeevitham) - From Oke Oka Jeevitham"; FAILED=$((FAILED+1)); }

# [73/1000] Bimbilikki Pilapi — Anirudh Ravichander
yt-dlp "ytsearch1:Bimbilikki Pilapi Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_bimbilikki_pilapi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [73]: Bimbilikki Pilapi"; FAILED=$((FAILED+1)); }

# [74/1000] Premo Yemo (From Lucky Lakshman) — Ramya Behra
yt-dlp "ytsearch1:Premo Yemo (From Lucky Lakshman) Ramya Behra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ramya_behra_premo_yemo_from_lucky_lakshman.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [74]: Premo Yemo (From Lucky Lakshman)"; FAILED=$((FAILED+1)); }

# [75/1000] Madhi Thalupunu Thelupaleka - Meet the Boy — Vijai Bulganin
yt-dlp "ytsearch1:Madhi Thalupunu Thelupaleka - Meet the Boy Vijai Bulganin" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijai_bulganin_madhi_thalupunu_thelupaleka_meet_the_boy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [75]: Madhi Thalupunu Thelupaleka - Meet the Boy"; FAILED=$((FAILED+1)); }

# [76/1000] namakatapani — Devi Sri Prasad
yt-dlp "ytsearch1:namakatapani Devi Sri Prasad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/devi_sri_prasad_namakatapani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [76]: namakatapani"; FAILED=$((FAILED+1)); }

# [77/1000] Indian Romantic Movies — Vasekaranam Telugu  Movie
yt-dlp "ytsearch1:Indian Romantic Movies Vasekaranam Telugu  Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vasekaranam_telugu_movie_indian_romantic_movies.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [77]: Indian Romantic Movies"; FAILED=$((FAILED+1)); }

# [78/1000] Ravi Teja, Trisha — Krishna Telugu Full Movie Part 2/2
yt-dlp "ytsearch1:Ravi Teja, Trisha Krishna Telugu Full Movie Part 2/2" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/krishna_telugu_full_movie_part_22_ravi_teja_trisha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [78]: Ravi Teja, Trisha"; FAILED=$((FAILED+1)); }

# [79/1000] Panchathantram Title Song (From Panchathantram) — Kala Bhairava
yt-dlp "ytsearch1:Panchathantram Title Song (From Panchathantram) Kala Bhairava" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kala_bhairava_panchathantram_title_song_from_panchathantram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [79]: Panchathantram Title Song (From Panchathantram)"; FAILED=$((FAILED+1)); }

# [80/1000] Ringa Ringa — Priya Hemesh
yt-dlp "ytsearch1:Ringa Ringa Priya Hemesh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/priya_hemesh_ringa_ringa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [80]: Ringa Ringa"; FAILED=$((FAILED+1)); }

# [81/1000] udayinchina suryudini — Devi Sri Prasad
yt-dlp "ytsearch1:udayinchina suryudini Devi Sri Prasad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/devi_sri_prasad_udayinchina_suryudini.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [81]: udayinchina suryudini"; FAILED=$((FAILED+1)); }

# [82/1000] Ee Vela (From Raa Raa Penimiti) — Ramya Behra
yt-dlp "ytsearch1:Ee Vela (From Raa Raa Penimiti) Ramya Behra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ramya_behra_ee_vela_from_raa_raa_penimiti.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [82]: Ee Vela (From Raa Raa Penimiti)"; FAILED=$((FAILED+1)); }

# [83/1000] Unnapaatuga (From “14 Days Love”) — Kiran Venna
yt-dlp "ytsearch1:Unnapaatuga (From “14 Days Love”) Kiran Venna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kiran_venna_unnapaatuga_from_14_days_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [83]: Unnapaatuga (From “14 Days Love”)"; FAILED=$((FAILED+1)); }

# [84/1000] Hey (Language: Telugu; Film: Relax; Film Artists: Rohan, Anjai) — Ramana Gogula
yt-dlp "ytsearch1:Hey (Language: Telugu; Film: Relax; Film Artists: Rohan, Anjai) Ramana Gogula" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ramana_gogula_hey_language_telugu_film_relax_film_artists_rohan_anjai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [84]: Hey (Language: Telugu; Film: Relax; Film Artists: Rohan, Anjai)"; FAILED=$((FAILED+1)); }

# [85/1000] Surya — 7th Sense Telugu Full Movie
yt-dlp "ytsearch1:Surya 7th Sense Telugu Full Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/7th_sense_telugu_full_movie_surya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [85]: Surya"; FAILED=$((FAILED+1)); }

# [86/1000] Avunanavaa (From Ori Devuda) — Sid Sriram
yt-dlp "ytsearch1:Avunanavaa (From Ori Devuda) Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_avunanavaa_from_ori_devuda.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [86]: Avunanavaa (From Ori Devuda)"; FAILED=$((FAILED+1)); }

# [87/1000] Nay Geesina Gaganam — Prithvi Chandrasekhar
yt-dlp "ytsearch1:Nay Geesina Gaganam Prithvi Chandrasekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/prithvi_chandrasekhar_nay_geesina_gaganam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [87]: Nay Geesina Gaganam"; FAILED=$((FAILED+1)); }

# [88/1000] Rasi Petti — Sid Sriram
yt-dlp "ytsearch1:Rasi Petti Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_rasi_petti.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [88]: Rasi Petti"; FAILED=$((FAILED+1)); }

# [89/1000] Priyathama Priyathama — Yasaswi Kondepudi
yt-dlp "ytsearch1:Priyathama Priyathama Yasaswi Kondepudi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yasaswi_kondepudi_priyathama_priyathama.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [89]: Priyathama Priyathama"; FAILED=$((FAILED+1)); }

# [90/1000] Pattana O Pattu — Sri Krishna/ Malavika/ Bharadwaj Gali
yt-dlp "ytsearch1:Pattana O Pattu Sri Krishna/ Malavika/ Bharadwaj Gali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sri_krishna_malavika_bharadwaj_gali_pattana_o_pattu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [90]: Pattana O Pattu"; FAILED=$((FAILED+1)); }

# [91/1000] Maate Vinadhuga - From Taxiwaala — Sid Sriram
yt-dlp "ytsearch1:Maate Vinadhuga - From Taxiwaala Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_maate_vinadhuga_from_taxiwaala.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [91]: Maate Vinadhuga - From Taxiwaala"; FAILED=$((FAILED+1)); }

# [92/1000] Pandaga Chesko — K. K
yt-dlp "ytsearch1:Pandaga Chesko K. K" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_k_pandaga_chesko.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [92]: Pandaga Chesko"; FAILED=$((FAILED+1)); }

# [93/1000] Yemayyindo Mansukhi Teninnu Manchhiti — Rashid Ali
yt-dlp "ytsearch1:Yemayyindo Mansukhi Teninnu Manchhiti Rashid Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rashid_ali_yemayyindo_mansukhi_teninnu_manchhiti.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [93]: Yemayyindo Mansukhi Teninnu Manchhiti"; FAILED=$((FAILED+1)); }

# [94/1000] Nadumu (Language: Telugu; Film: Adirandayya Chandram) — S.P. Balu
yt-dlp "ytsearch1:Nadumu (Language: Telugu; Film: Adirandayya Chandram) S.P. Balu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balu_nadumu_language_telugu_film_adirandayya_chandram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [94]: Nadumu (Language: Telugu; Film: Adirandayya Chandram)"; FAILED=$((FAILED+1)); }

# [95/1000] O Lailaa — Rahul
yt-dlp "ytsearch1:O Lailaa Rahul" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rahul_chorus_o_lailaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [95]: O Lailaa"; FAILED=$((FAILED+1)); }

# [96/1000] Neeli Meghamulalo — Vivek Sagar
yt-dlp "ytsearch1:Neeli Meghamulalo Vivek Sagar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vivek_sagar_prithvi_harish_bharadwaj_gali_neeli_meghamulalo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [96]: Neeli Meghamulalo"; FAILED=$((FAILED+1)); }

# [97/1000] Ninu Choostunte — Siddharth
yt-dlp "ytsearch1:Ninu Choostunte Siddharth" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/siddharth_sumangaly_ninu_choostunte.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [97]: Ninu Choostunte"; FAILED=$((FAILED+1)); }

# [98/1000] Niluvaddamu — Karthik
yt-dlp "ytsearch1:Niluvaddamu Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_sumangali_niluvaddamu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [98]: Niluvaddamu"; FAILED=$((FAILED+1)); }

# [99/1000] nee sneham — Manasantanuve
yt-dlp "ytsearch1:nee sneham Manasantanuve" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/manasantanuve_nee_sneham.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [99]: nee sneham"; FAILED=$((FAILED+1)); }

# [100/1000] Oopiraagi Poyela (From Mr. Kalyan) — Sweekar Agasthi
yt-dlp "ytsearch1:Oopiraagi Poyela (From Mr. Kalyan) Sweekar Agasthi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sweekar_agasthi_oopiraagi_poyela_from_mr_kalyan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [100]: Oopiraagi Poyela (From Mr. Kalyan)"; FAILED=$((FAILED+1)); }

# [101/1000] Ayudha Pooja [TELUGU] — Kala Bhairava
yt-dlp "ytsearch1:Ayudha Pooja [TELUGU] Kala Bhairava" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kala_bhairava_ayudha_pooja_telugu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [101]: Ayudha Pooja [TELUGU]"; FAILED=$((FAILED+1)); }

# [102/1000] Inthalo Ennenni Vinthalo Male — Naresh Iyer
yt-dlp "ytsearch1:Inthalo Ennenni Vinthalo Male Naresh Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_inthalo_ennenni_vinthalo_male.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [102]: Inthalo Ennenni Vinthalo Male"; FAILED=$((FAILED+1)); }

# [103/1000] Hoyna — Devi Sri Prasad
yt-dlp "ytsearch1:Hoyna Devi Sri Prasad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/devi_sri_prasad_hoyna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [103]: Hoyna"; FAILED=$((FAILED+1)); }

# [104/1000] Maargazhi Poovea — Shobha Shanker
yt-dlp "ytsearch1:Maargazhi Poovea Shobha Shanker" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shobha_shanker_maargazhi_poovea.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [104]: Maargazhi Poovea"; FAILED=$((FAILED+1)); }

# [105/1000] Happy Days Rock — Naresh Iyer
yt-dlp "ytsearch1:Happy Days Rock Naresh Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_happy_days_rock.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [105]: Happy Days Rock"; FAILED=$((FAILED+1)); }

# [106/1000] Innum Konjam Naeram — A.R. Rahman
yt-dlp "ytsearch1:Innum Konjam Naeram A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_innum_konjam_naeram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [106]: Innum Konjam Naeram"; FAILED=$((FAILED+1)); }

# [107/1000] Dum — Sandeep Chowta
yt-dlp "ytsearch1:Dum Sandeep Chowta" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sandeep_chowta_dum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [107]: Dum"; FAILED=$((FAILED+1)); }

# [108/1000] every body — Chukkallo Chandrudu
yt-dlp "ytsearch1:every body Chukkallo Chandrudu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chukkallo_chandrudu_every_body.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [108]: every body"; FAILED=$((FAILED+1)); }

# [109/1000] jeeva — Jeva
yt-dlp "ytsearch1:jeeva Jeva" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jeva_jeeva.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [109]: jeeva"; FAILED=$((FAILED+1)); }

# [110/1000] Lachuvamma Lachuvamma — Deepu
yt-dlp "ytsearch1:Lachuvamma Lachuvamma Deepu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/deepu_shravana_bhargavi_rahul_lachuvamma_lachuvamma.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [110]: Lachuvamma Lachuvamma"; FAILED=$((FAILED+1)); }

# [111/1000] Bekheyali Mone — Shadaab Hashmi
yt-dlp "ytsearch1:Bekheyali Mone Shadaab Hashmi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shadaab_hashmi_bekheyali_mone.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [111]: Bekheyali Mone"; FAILED=$((FAILED+1)); }

# [112/1000] Ada Machamulla — S.P. பாலசுப்பிரமணியம் & S. ஜானகி
yt-dlp "ytsearch1:Ada Machamulla S.P. பாலசுப்பிரமணியம் & S. ஜானகி" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_பலசபபரமணயம_s_ஜனக_ada_machamulla.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [112]: Ada Machamulla"; FAILED=$((FAILED+1)); }

# [113/1000] Idhi Oka Nandanavanam — Chiranjeevi
yt-dlp "ytsearch1:Idhi Oka Nandanavanam Chiranjeevi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chiranjeevi_radha_idhi_oka_nandanavanam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [113]: Idhi Oka Nandanavanam"; FAILED=$((FAILED+1)); }

# [114/1000] Mere Rang Mein Rangne Wali — SP Balasubrahmanyam
yt-dlp "ytsearch1:Mere Rang Mein Rangne Wali SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_mere_rang_mein_rangne_wali.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [114]: Mere Rang Mein Rangne Wali"; FAILED=$((FAILED+1)); }

# [115/1000] Tumse Milne Ki Tamanna Hai — SP Balasubrahmanyam
yt-dlp "ytsearch1:Tumse Milne Ki Tamanna Hai SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_tumse_milne_ki_tamanna_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [115]: Tumse Milne Ki Tamanna Hai"; FAILED=$((FAILED+1)); }

# [116/1000] Vaangum Panathukkum — SP Balasubrahmanyam
yt-dlp "ytsearch1:Vaangum Panathukkum SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_vaangum_panathukkum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [116]: Vaangum Panathukkum"; FAILED=$((FAILED+1)); }

# [117/1000] Mannil Indha Kaadhal — SP Balasubrahmanyam
yt-dlp "ytsearch1:Mannil Indha Kaadhal SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_mannil_indha_kaadhal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [117]: Mannil Indha Kaadhal"; FAILED=$((FAILED+1)); }

# [118/1000] Tharumukosthundi Samayam [www.AtoZmp3.net] — SP Balasubrahmanyam
yt-dlp "ytsearch1:Tharumukosthundi Samayam [www.AtoZmp3.net] SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_tharumukosthundi_samayam_wwwatozmp3net.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [118]: Tharumukosthundi Samayam [www.AtoZmp3.net]"; FAILED=$((FAILED+1)); }

# [119/1000] Nee Prashnalu — SP Balasubrahmanyam
yt-dlp "ytsearch1:Nee Prashnalu SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_nee_prashnalu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [119]: Nee Prashnalu"; FAILED=$((FAILED+1)); }

# [120/1000] Vaa Vaa Pakkam Vaa (Remix) — SP Balasubrahmanyam
yt-dlp "ytsearch1:Vaa Vaa Pakkam Vaa (Remix) SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_vaa_vaa_pakkam_vaa_remix.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [120]: Vaa Vaa Pakkam Vaa (Remix)"; FAILED=$((FAILED+1)); }

# [121/1000] Bahut Pyar Karte Hai (Male Version) (From Saajan) — SP Balasubrahmanyam
yt-dlp "ytsearch1:Bahut Pyar Karte Hai (Male Version) (From Saajan) SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_bahut_pyar_karte_hai_male_version_from_saajan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [121]: Bahut Pyar Karte Hai (Male Version) (From Saajan)"; FAILED=$((FAILED+1)); }

# [122/1000] Pehli Baar Mile Hain — SP Balasubrahmanyam
yt-dlp "ytsearch1:Pehli Baar Mile Hain SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_pehli_baar_mile_hain.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [122]: Pehli Baar Mile Hain"; FAILED=$((FAILED+1)); }

# [123/1000] Tere Mere Beech Mein — SP Balasubrahmanyam
yt-dlp "ytsearch1:Tere Mere Beech Mein SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_tere_mere_beech_mein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [123]: Tere Mere Beech Mein"; FAILED=$((FAILED+1)); }

# [124/1000] Vathikuchi Pathikadhuda — SP Balasubrahmanyam
yt-dlp "ytsearch1:Vathikuchi Pathikadhuda SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_vathikuchi_pathikadhuda.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [124]: Vathikuchi Pathikadhuda"; FAILED=$((FAILED+1)); }

# [125/1000] En Kadhalae — SP Balasubrahmanyam
yt-dlp "ytsearch1:En Kadhalae SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_en_kadhalae.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [125]: En Kadhalae"; FAILED=$((FAILED+1)); }

# [126/1000] Dance Dance — SP Balasubrahmanyam
yt-dlp "ytsearch1:Dance Dance SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_dance_dance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [126]: Dance Dance"; FAILED=$((FAILED+1)); }

# [127/1000] Sorgam Madhuvile — SP Balasubrahmanyam
yt-dlp "ytsearch1:Sorgam Madhuvile SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_sorgam_madhuvile.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [127]: Sorgam Madhuvile"; FAILED=$((FAILED+1)); }

# [128/1000] Hallo Guru — SP Balasubrahmanyam
yt-dlp "ytsearch1:Hallo Guru SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_hallo_guru.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [128]: Hallo Guru"; FAILED=$((FAILED+1)); }

# [129/1000] Aamani — SP Balasubrahmanyam
yt-dlp "ytsearch1:Aamani SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_aamani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [129]: Aamani"; FAILED=$((FAILED+1)); }

# [130/1000] Taralirada — SP Balasubrahmanyam
yt-dlp "ytsearch1:Taralirada SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_taralirada.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [130]: Taralirada"; FAILED=$((FAILED+1)); }

# [131/1000] Mattiloni Chettu — SP Balasubrahmanyam
yt-dlp "ytsearch1:Mattiloni Chettu SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_mattiloni_chettu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [131]: Mattiloni Chettu"; FAILED=$((FAILED+1)); }

# [132/1000] Maanguyilae — SP Balasubrahmanyam
yt-dlp "ytsearch1:Maanguyilae SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_maanguyilae.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [132]: Maanguyilae"; FAILED=$((FAILED+1)); }

# [133/1000] Vaa! Naailukku Naall — SP Balasubrahmanyam
yt-dlp "ytsearch1:Vaa! Naailukku Naall SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_vaa_naailukku_naall.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [133]: Vaa! Naailukku Naall"; FAILED=$((FAILED+1)); }

# [134/1000] Pehla Pehla Pyar — SP Balasubrahmanyam
yt-dlp "ytsearch1:Pehla Pehla Pyar SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_pehla_pehla_pyar.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [134]: Pehla Pehla Pyar"; FAILED=$((FAILED+1)); }

# [135/1000] Kalyanamalai Video Song HD — SP Balasubrahmanyam
yt-dlp "ytsearch1:Kalyanamalai Video Song HD SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_kalyanamalai_video_song_hd.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [135]: Kalyanamalai Video Song HD"; FAILED=$((FAILED+1)); }

# [136/1000] Yevadu Neevu [www.AtoZmp3.Net] — SP Balasubrahmanyam
yt-dlp "ytsearch1:Yevadu Neevu [www.AtoZmp3.Net] SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_yevadu_neevu_wwwatozmp3net.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [136]: Yevadu Neevu [www.AtoZmp3.Net]"; FAILED=$((FAILED+1)); }

# [137/1000] Vo Rabba Rabba - TeluguWap.Net — SP Balasubrahmanyam
yt-dlp "ytsearch1:Vo Rabba Rabba - TeluguWap.Net SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_vo_rabba_rabba_teluguwapnet.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [137]: Vo Rabba Rabba - TeluguWap.Net"; FAILED=$((FAILED+1)); }

# [138/1000] [iSongs.info] 08 - Okkade Okkade — SP Balasubrahmanyam
yt-dlp "ytsearch1:[iSongs.info] 08 - Okkade Okkade SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_isongsinfo_08_okkade_okkade.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [138]: [iSongs.info] 08 - Okkade Okkade"; FAILED=$((FAILED+1)); }

# [139/1000] Don't Marry — SP Balasubrahmanyam
yt-dlp "ytsearch1:Don't Marry SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_dont_marry.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [139]: Don't Marry"; FAILED=$((FAILED+1)); }

# [140/1000] Aagaayam — SP Balasubrahmanyam
yt-dlp "ytsearch1:Aagaayam SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_aagaayam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [140]: Aagaayam"; FAILED=$((FAILED+1)); }

# [141/1000] Paruvame — SP Balasubrahmanyam
yt-dlp "ytsearch1:Paruvame SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_paruvame.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [141]: Paruvame"; FAILED=$((FAILED+1)); }

# [142/1000] Naan Polladhavan — SP Balasubrahmanyam
yt-dlp "ytsearch1:Naan Polladhavan SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_naan_polladhavan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [142]: Naan Polladhavan"; FAILED=$((FAILED+1)); }

# [143/1000] Ele Ele Maradalaa Annamayya Song with English Subtitles I Telugu Movie Annamayya — SP Balasubrahmanyam
yt-dlp "ytsearch1:Ele Ele Maradalaa Annamayya Song with English Subtitles I Telugu Movie Annamayya SP Balasubrahmanyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubrahmanyam_ele_ele_maradalaa_annamayya_song_with_english_subtitles_i_te.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [143]: Ele Ele Maradalaa Annamayya Song with English Subtitles I Telugu Movie Annamayya"; FAILED=$((FAILED+1)); }

# [144/1000] Samajavaragamana — Sid Sriram
yt-dlp "ytsearch1:Samajavaragamana Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_samajavaragamana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [144]: Samajavaragamana"; FAILED=$((FAILED+1)); }

# [145/1000] Do The Dance — Sid Sriram
yt-dlp "ytsearch1:Do The Dance Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_do_the_dance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [145]: Do The Dance"; FAILED=$((FAILED+1)); }

# [146/1000] Maate Vinadhuga — Sid Sriram
yt-dlp "ytsearch1:Maate Vinadhuga Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_maate_vinadhuga.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [146]: Maate Vinadhuga"; FAILED=$((FAILED+1)); }

# [147/1000] The Hard Way — Sid Sriram
yt-dlp "ytsearch1:The Hard Way Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_the_hard_way.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [147]: The Hard Way"; FAILED=$((FAILED+1)); }

# [148/1000] Parayuvaan - From Ishq — Sid Sriram
yt-dlp "ytsearch1:Parayuvaan - From Ishq Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_parayuvaan_from_ishq.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [148]: Parayuvaan - From Ishq"; FAILED=$((FAILED+1)); }

# [149/1000] Undiporaadhey — Sid Sriram
yt-dlp "ytsearch1:Undiporaadhey Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_undiporaadhey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [149]: Undiporaadhey"; FAILED=$((FAILED+1)); }

# [150/1000] Nira - From Takkar — Sid Sriram
yt-dlp "ytsearch1:Nira - From Takkar Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_nira_from_takkar.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [150]: Nira - From Takkar"; FAILED=$((FAILED+1)); }

# [151/1000] Uyire — Sid Sriram
yt-dlp "ytsearch1:Uyire Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_uyire.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [151]: Uyire"; FAILED=$((FAILED+1)); }

# [152/1000] Thaarame Thaarame — Sid Sriram
yt-dlp "ytsearch1:Thaarame Thaarame Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_thaarame_thaarame.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [152]: Thaarame Thaarame"; FAILED=$((FAILED+1)); }

# [153/1000] Kaadhal En Kaviye - From Salmon 3D — Sid Sriram
yt-dlp "ytsearch1:Kaadhal En Kaviye - From Salmon 3D Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_kaadhal_en_kaviye_from_salmon_3d.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [153]: Kaadhal En Kaviye - From Salmon 3D"; FAILED=$((FAILED+1)); }

# [154/1000] Vachindamma — Sid Sriram
yt-dlp "ytsearch1:Vachindamma Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_vachindamma.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [154]: Vachindamma"; FAILED=$((FAILED+1)); }

# [155/1000] Yaen Ennai Pirindhaai - Male — Sid Sriram
yt-dlp "ytsearch1:Yaen Ennai Pirindhaai - Male Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_yaen_ennai_pirindhaai_male.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [155]: Yaen Ennai Pirindhaai - Male"; FAILED=$((FAILED+1)); }

# [156/1000] Adiga Adiga — Sid Sriram
yt-dlp "ytsearch1:Adiga Adiga Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_adiga_adiga.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [156]: Adiga Adiga"; FAILED=$((FAILED+1)); }

# [157/1000] Yaen Ennai Pirindhaai — Sid Sriram
yt-dlp "ytsearch1:Yaen Ennai Pirindhaai Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_yaen_ennai_pirindhaai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [157]: Yaen Ennai Pirindhaai"; FAILED=$((FAILED+1)); }

# [158/1000] Anbae Peranbae — Sid Sriram
yt-dlp "ytsearch1:Anbae Peranbae Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_anbae_peranbae.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [158]: Anbae Peranbae"; FAILED=$((FAILED+1)); }

# [159/1000] Maruvaarthai — Sid Sriram
yt-dlp "ytsearch1:Maruvaarthai Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_maruvaarthai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [159]: Maruvaarthai"; FAILED=$((FAILED+1)); }

# [160/1000] It Isn't True — Sid Sriram
yt-dlp "ytsearch1:It Isn't True Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_it_isnt_true.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [160]: It Isn't True"; FAILED=$((FAILED+1)); }

# [161/1000] Kadalalle (From Dear Comrade) — Sid Sriram
yt-dlp "ytsearch1:Kadalalle (From Dear Comrade) Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_kadalalle_from_dear_comrade.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [161]: Kadalalle (From Dear Comrade)"; FAILED=$((FAILED+1)); }

# [162/1000] Vellipomaake — Sid Sriram
yt-dlp "ytsearch1:Vellipomaake Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_vellipomaake.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [162]: Vellipomaake"; FAILED=$((FAILED+1)); }

# [163/1000] Srivalli — Sid Sriram
yt-dlp "ytsearch1:Srivalli Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_srivalli.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [163]: Srivalli"; FAILED=$((FAILED+1)); }

# [164/1000] High On Love — Sid Sriram
yt-dlp "ytsearch1:High On Love Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_high_on_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [164]: High On Love"; FAILED=$((FAILED+1)); }

# [165/1000] Dear Sahana — Sid Sriram
yt-dlp "ytsearch1:Dear Sahana Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_dear_sahana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [165]: Dear Sahana"; FAILED=$((FAILED+1)); }

# [166/1000] Quiet Storm — Sid Sriram
yt-dlp "ytsearch1:Quiet Storm Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_quiet_storm.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [166]: Quiet Storm"; FAILED=$((FAILED+1)); }

# [167/1000] Yaen Ennai Pirindhaai - Tamil — Sid Sriram
yt-dlp "ytsearch1:Yaen Ennai Pirindhaai - Tamil Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_yaen_ennai_pirindhaai_tamil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [167]: Yaen Ennai Pirindhaai - Tamil"; FAILED=$((FAILED+1)); }

# [168/1000] Arerey Manasa (From Falaknuma Das) — Sid Sriram
yt-dlp "ytsearch1:Arerey Manasa (From Falaknuma Das) Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_arerey_manasa_from_falaknuma_das.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [168]: Arerey Manasa (From Falaknuma Das)"; FAILED=$((FAILED+1)); }

# [169/1000] Leharaayi — Sid Sriram
yt-dlp "ytsearch1:Leharaayi Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_leharaayi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [169]: Leharaayi"; FAILED=$((FAILED+1)); }

# [170/1000] The One (From Retro) — Sid Sriram
yt-dlp "ytsearch1:The One (From Retro) Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_the_one_from_retro.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [170]: The One (From Retro)"; FAILED=$((FAILED+1)); }

# [171/1000] Friendly Fire — Sid Sriram
yt-dlp "ytsearch1:Friendly Fire Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_friendly_fire.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [171]: Friendly Fire"; FAILED=$((FAILED+1)); }

# [172/1000] Mei Nigara — Sid Sriram
yt-dlp "ytsearch1:Mei Nigara Sid Sriram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sid_sriram_mei_nigara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [172]: Mei Nigara"; FAILED=$((FAILED+1)); }

# [173/1000] Ramuloo Ramulaa - Duet — Anurag Kulkarni
yt-dlp "ytsearch1:Ramuloo Ramulaa - Duet Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_ramuloo_ramulaa_duet.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [173]: Ramuloo Ramulaa - Duet"; FAILED=$((FAILED+1)); }

# [174/1000] Pillaa Raa — Anurag Kulkarni
yt-dlp "ytsearch1:Pillaa Raa Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_pillaa_raa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [174]: Pillaa Raa"; FAILED=$((FAILED+1)); }

# [175/1000] Ramuloo Ramulaa — Anurag Kulkarni
yt-dlp "ytsearch1:Ramuloo Ramulaa Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_ramuloo_ramulaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [175]: Ramuloo Ramulaa"; FAILED=$((FAILED+1)); }

# [176/1000] Samayama (From Hi Nanna) — Anurag Kulkarni
yt-dlp "ytsearch1:Samayama (From Hi Nanna) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_samayama_from_hi_nanna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [176]: Samayama (From Hi Nanna)"; FAILED=$((FAILED+1)); }

# [177/1000] Sirivennela — Anurag Kulkarni
yt-dlp "ytsearch1:Sirivennela Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_sirivennela.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [177]: Sirivennela"; FAILED=$((FAILED+1)); }

# [178/1000] Choosi Chudangane — Anurag Kulkarni
yt-dlp "ytsearch1:Choosi Chudangane Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_choosi_chudangane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [178]: Choosi Chudangane"; FAILED=$((FAILED+1)); }

# [179/1000] Singles Anthem - Telugu — Anurag Kulkarni
yt-dlp "ytsearch1:Singles Anthem - Telugu Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_singles_anthem_telugu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [179]: Singles Anthem - Telugu"; FAILED=$((FAILED+1)); }

# [180/1000] Pranavalaya — Anurag Kulkarni
yt-dlp "ytsearch1:Pranavalaya Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_pranavalaya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [180]: Pranavalaya"; FAILED=$((FAILED+1)); }

# [181/1000] Nee Chitram Choosi — Anurag Kulkarni
yt-dlp "ytsearch1:Nee Chitram Choosi Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_nee_chitram_choosi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [181]: Nee Chitram Choosi"; FAILED=$((FAILED+1)); }

# [182/1000] Asha Pasham — Anurag Kulkarni
yt-dlp "ytsearch1:Asha Pasham Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_asha_pasham.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [182]: Asha Pasham"; FAILED=$((FAILED+1)); }

# [183/1000] Sirivennela (From Shyam Singha Roy) — Anurag Kulkarni
yt-dlp "ytsearch1:Sirivennela (From Shyam Singha Roy) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_sirivennela_from_shyam_singha_roy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [183]: Sirivennela (From Shyam Singha Roy)"; FAILED=$((FAILED+1)); }

# [184/1000] Samayama — Anurag Kulkarni
yt-dlp "ytsearch1:Samayama Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_samayama.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [184]: Samayama"; FAILED=$((FAILED+1)); }

# [185/1000] Ninnele — Anurag Kulkarni
yt-dlp "ytsearch1:Ninnele Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_ninnele.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [185]: Ninnele"; FAILED=$((FAILED+1)); }

# [186/1000] Aagi Aagi — Anurag Kulkarni
yt-dlp "ytsearch1:Aagi Aagi Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_aagi_aagi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [186]: Aagi Aagi"; FAILED=$((FAILED+1)); }

# [187/1000] Kallolam (From Padi Padi Leche Manasu) — Anurag Kulkarni
yt-dlp "ytsearch1:Kallolam (From Padi Padi Leche Manasu) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_kallolam_from_padi_padi_leche_manasu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [187]: Kallolam (From Padi Padi Leche Manasu)"; FAILED=$((FAILED+1)); }

# [188/1000] Mahanati — Anurag Kulkarni
yt-dlp "ytsearch1:Mahanati Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_mahanati.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [188]: Mahanati"; FAILED=$((FAILED+1)); }

# [189/1000] Arere Aakasham - Telugu — Anurag Kulkarni
yt-dlp "ytsearch1:Arere Aakasham - Telugu Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_arere_aakasham_telugu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [189]: Arere Aakasham - Telugu"; FAILED=$((FAILED+1)); }

# [190/1000] Pranavalaya (From Shyam Singha Roy) — Anurag Kulkarni
yt-dlp "ytsearch1:Pranavalaya (From Shyam Singha Roy) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_pranavalaya_from_shyam_singha_roy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [190]: Pranavalaya (From Shyam Singha Roy)"; FAILED=$((FAILED+1)); }

# [191/1000] Kallolam — Anurag Kulkarni
yt-dlp "ytsearch1:Kallolam Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_kallolam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [191]: Kallolam"; FAILED=$((FAILED+1)); }

# [192/1000] Sara Sari - Telugu — Anurag Kulkarni
yt-dlp "ytsearch1:Sara Sari - Telugu Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_sara_sari_telugu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [192]: Sara Sari - Telugu"; FAILED=$((FAILED+1)); }

# [193/1000] Kanne Kanne (From Arjun Suravaram) — Anurag Kulkarni
yt-dlp "ytsearch1:Kanne Kanne (From Arjun Suravaram) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_kanne_kanne_from_arjun_suravaram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [193]: Kanne Kanne (From Arjun Suravaram)"; FAILED=$((FAILED+1)); }

# [194/1000] Chukkala Chunni — Anurag Kulkarni
yt-dlp "ytsearch1:Chukkala Chunni Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_chukkala_chunni.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [194]: Chukkala Chunni"; FAILED=$((FAILED+1)); }

# [195/1000] Kanne Kanne — Anurag Kulkarni
yt-dlp "ytsearch1:Kanne Kanne Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_kanne_kanne.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [195]: Kanne Kanne"; FAILED=$((FAILED+1)); }

# [196/1000] Premalo (From Court) — Anurag Kulkarni
yt-dlp "ytsearch1:Premalo (From Court) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_premalo_from_court.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [196]: Premalo (From Court)"; FAILED=$((FAILED+1)); }

# [197/1000] Mellaga Tellarindoi — Anurag Kulkarni
yt-dlp "ytsearch1:Mellaga Tellarindoi Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_mellaga_tellarindoi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [197]: Mellaga Tellarindoi"; FAILED=$((FAILED+1)); }

# [198/1000] Vaaru Veeru — Anurag Kulkarni
yt-dlp "ytsearch1:Vaaru Veeru Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_vaaru_veeru.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [198]: Vaaru Veeru"; FAILED=$((FAILED+1)); }

# [199/1000] Pillaa Raa(Background Score) — Anurag Kulkarni
yt-dlp "ytsearch1:Pillaa Raa(Background Score) Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_pillaa_raabackground_score.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [199]: Pillaa Raa(Background Score)"; FAILED=$((FAILED+1)); }

# [200/1000] Tanemandhe Tanemandhe — Anurag Kulkarni
yt-dlp "ytsearch1:Tanemandhe Tanemandhe Anurag Kulkarni" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anurag_kulkarni_tanemandhe_tanemandhe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [200]: Tanemandhe Tanemandhe"; FAILED=$((FAILED+1)); }

# [201/1000] Masakali — Mohit Chauhan
yt-dlp "ytsearch1:Masakali Mohit Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mohit_chauhan_masakali.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [201]: Masakali"; FAILED=$((FAILED+1)); }

# [202/1000] Guzarish — A.R. Rahman
yt-dlp "ytsearch1:Guzarish A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_guzarish.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [202]: Guzarish"; FAILED=$((FAILED+1)); }

# [203/1000] Kajra Re — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Kajra Re Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_kajra_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [203]: Kajra Re"; FAILED=$((FAILED+1)); }

# [204/1000] Maula Mere Maula — Roop Kumar Rathod
yt-dlp "ytsearch1:Maula Mere Maula Roop Kumar Rathod" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/roop_kumar_rathod_maula_mere_maula.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [204]: Maula Mere Maula"; FAILED=$((FAILED+1)); }

# [205/1000] Mauja Hi Mauja — Pritam
yt-dlp "ytsearch1:Mauja Hi Mauja Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_mauja_hi_mauja.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [205]: Mauja Hi Mauja"; FAILED=$((FAILED+1)); }

# [206/1000] Tum Hi Ho — Arijit Singh
yt-dlp "ytsearch1:Tum Hi Ho Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_tum_hi_ho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [206]: Tum Hi Ho"; FAILED=$((FAILED+1)); }

# [207/1000] Teri Deewani — Kailash Kher
yt-dlp "ytsearch1:Teri Deewani Kailash Kher" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kailash_kher_teri_deewani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [207]: Teri Deewani"; FAILED=$((FAILED+1)); }

# [208/1000] Pehli Nazar Mein — Atif Aslam
yt-dlp "ytsearch1:Pehli Nazar Mein Atif Aslam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/atif_aslam_pehli_nazar_mein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [208]: Pehli Nazar Mein"; FAILED=$((FAILED+1)); }

# [209/1000] Tere Bina — A.R. Rahman
yt-dlp "ytsearch1:Tere Bina A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_tere_bina.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [209]: Tere Bina"; FAILED=$((FAILED+1)); }

# [210/1000] Jaadu Teri Nazar — Udit Narayan
yt-dlp "ytsearch1:Jaadu Teri Nazar Udit Narayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayan_jaadu_teri_nazar.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [210]: Jaadu Teri Nazar"; FAILED=$((FAILED+1)); }

# [211/1000] Saathiya — A.R. Rahman
yt-dlp "ytsearch1:Saathiya A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_saathiya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [211]: Saathiya"; FAILED=$((FAILED+1)); }

# [212/1000] Tera Chehra — Adnan Sami
yt-dlp "ytsearch1:Tera Chehra Adnan Sami" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_tera_chehra.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [212]: Tera Chehra"; FAILED=$((FAILED+1)); }

# [213/1000] Meri Bheegi Bheegi Si — Kishore Kumar
yt-dlp "ytsearch1:Meri Bheegi Bheegi Si Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_meri_bheegi_bheegi_si.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [213]: Meri Bheegi Bheegi Si"; FAILED=$((FAILED+1)); }

# [214/1000] Dil Laga Na — Pritam
yt-dlp "ytsearch1:Dil Laga Na Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_dil_laga_na.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [214]: Dil Laga Na"; FAILED=$((FAILED+1)); }

# [215/1000] Teri Ore — Pritam
yt-dlp "ytsearch1:Teri Ore Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_teri_ore.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [215]: Teri Ore"; FAILED=$((FAILED+1)); }

# [216/1000] Tanha Dil — Shaan
yt-dlp "ytsearch1:Tanha Dil Shaan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shaan_tanha_dil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [216]: Tanha Dil"; FAILED=$((FAILED+1)); }

# [217/1000] Yaaron — KK
yt-dlp "ytsearch1:Yaaron KK" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kk_yaaron.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [217]: Yaaron"; FAILED=$((FAILED+1)); }

# [218/1000] Beedi — Vishal Bhardwaj
yt-dlp "ytsearch1:Beedi Vishal Bhardwaj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_bhardwaj_beedi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [218]: Beedi"; FAILED=$((FAILED+1)); }

# [219/1000] Dum Maro Dum — Asha Bhosle
yt-dlp "ytsearch1:Dum Maro Dum Asha Bhosle" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/asha_bhosle_dum_maro_dum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [219]: Dum Maro Dum"; FAILED=$((FAILED+1)); }

# [220/1000] Haule Haule — Sukhwinder Singh
yt-dlp "ytsearch1:Haule Haule Sukhwinder Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sukhwinder_singh_haule_haule.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [220]: Haule Haule"; FAILED=$((FAILED+1)); }

# [221/1000] Iktara — Amit Trivedi
yt-dlp "ytsearch1:Iktara Amit Trivedi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/amit_trivedi_iktara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [221]: Iktara"; FAILED=$((FAILED+1)); }

# [222/1000] Tera Nasha — The Bilz & Kashif
yt-dlp "ytsearch1:Tera Nasha The Bilz & Kashif" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_bilz_kashif_tera_nasha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [222]: Tera Nasha"; FAILED=$((FAILED+1)); }

# [223/1000] Yeh Sham Mastani — Kishore Kumar
yt-dlp "ytsearch1:Yeh Sham Mastani Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_yeh_sham_mastani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [223]: Yeh Sham Mastani"; FAILED=$((FAILED+1)); }

# [224/1000] Tune Jo Na Kaha — Mohit Chauhan
yt-dlp "ytsearch1:Tune Jo Na Kaha Mohit Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mohit_chauhan_tune_jo_na_kaha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [224]: Tune Jo Na Kaha"; FAILED=$((FAILED+1)); }

# [225/1000] Aye Khuda — Salim Merchant
yt-dlp "ytsearch1:Aye Khuda Salim Merchant" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/salim_merchant_aye_khuda.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [225]: Aye Khuda"; FAILED=$((FAILED+1)); }

# [226/1000] Aahun Aahun — Pritam
yt-dlp "ytsearch1:Aahun Aahun Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_aahun_aahun.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [226]: Aahun Aahun"; FAILED=$((FAILED+1)); }

# [227/1000] Jimmy Jimmy Jimmy Aaja — Parvati Khan
yt-dlp "ytsearch1:Jimmy Jimmy Jimmy Aaja Parvati Khan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/parvati_khan_jimmy_jimmy_jimmy_aaja.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [227]: Jimmy Jimmy Jimmy Aaja"; FAILED=$((FAILED+1)); }

# [228/1000] Kaise Mujhe — A.R. Rahman
yt-dlp "ytsearch1:Kaise Mujhe A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kaise_mujhe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [228]: Kaise Mujhe"; FAILED=$((FAILED+1)); }

# [229/1000] Breathless — Shankar Mahadevan
yt-dlp "ytsearch1:Breathless Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_breathless.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [229]: Breathless"; FAILED=$((FAILED+1)); }

# [230/1000] Jhalak Dikhlaja — Himesh Reshammiya
yt-dlp "ytsearch1:Jhalak Dikhlaja Himesh Reshammiya" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/himesh_reshammiya_jhalak_dikhlaja.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [230]: Jhalak Dikhlaja"; FAILED=$((FAILED+1)); }

# [231/1000] Arziyan — Javed Ali
yt-dlp "ytsearch1:Arziyan Javed Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/javed_ali_arziyan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [231]: Arziyan"; FAILED=$((FAILED+1)); }

# [232/1000] Kal Ho Naa Ho — Sonu Nigam
yt-dlp "ytsearch1:Kal Ho Naa Ho Sonu Nigam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sonu_nigam_kal_ho_naa_ho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [232]: Kal Ho Naa Ho"; FAILED=$((FAILED+1)); }

# [233/1000] Dil Haara — Vishal-Shekhar
yt-dlp "ytsearch1:Dil Haara Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_dil_haara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [233]: Dil Haara"; FAILED=$((FAILED+1)); }

# [234/1000] Aaja Nachle — Sunidhi Chauhan
yt-dlp "ytsearch1:Aaja Nachle Sunidhi Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sunidhi_chauhan_aaja_nachle.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [234]: Aaja Nachle"; FAILED=$((FAILED+1)); }

# [235/1000] Socha Hai — Farhan Akhtar
yt-dlp "ytsearch1:Socha Hai Farhan Akhtar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/farhan_akhtar_socha_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [235]: Socha Hai"; FAILED=$((FAILED+1)); }

# [236/1000] Tum Se Hi — Pritam
yt-dlp "ytsearch1:Tum Se Hi Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_tum_se_hi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [236]: Tum Se Hi"; FAILED=$((FAILED+1)); }

# [237/1000] Bandeh — Indian Ocean
yt-dlp "ytsearch1:Bandeh Indian Ocean" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/indian_ocean_bandeh.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [237]: Bandeh"; FAILED=$((FAILED+1)); }

# [238/1000] Hai apna dil to aawara — Hemant Kumar
yt-dlp "ytsearch1:Hai apna dil to aawara Hemant Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hemant_kumar_hai_apna_dil_to_aawara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [238]: Hai apna dil to aawara"; FAILED=$((FAILED+1)); }

# [239/1000] Aao Milo Chalo — Pritam
yt-dlp "ytsearch1:Aao Milo Chalo Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_aao_milo_chalo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [239]: Aao Milo Chalo"; FAILED=$((FAILED+1)); }

# [240/1000] Lift Kara De — Adnan Sami
yt-dlp "ytsearch1:Lift Kara De Adnan Sami" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_lift_kara_de.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [240]: Lift Kara De"; FAILED=$((FAILED+1)); }

# [241/1000] Bheegi Bheegi Raton Mein — Adnan Sami
yt-dlp "ytsearch1:Bheegi Bheegi Raton Mein Adnan Sami" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_bheegi_bheegi_raton_mein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [241]: Bheegi Bheegi Raton Mein"; FAILED=$((FAILED+1)); }

# [242/1000] Tere Mere Saath — Lucky Ali
yt-dlp "ytsearch1:Tere Mere Saath Lucky Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lucky_ali_tere_mere_saath.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [242]: Tere Mere Saath"; FAILED=$((FAILED+1)); }

# [243/1000] Tu Kaun Hai — Lucky Ali
yt-dlp "ytsearch1:Tu Kaun Hai Lucky Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lucky_ali_tu_kaun_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [243]: Tu Kaun Hai"; FAILED=$((FAILED+1)); }

# [244/1000] Khwaja Mere Khwaja — A.R. Rahman
yt-dlp "ytsearch1:Khwaja Mere Khwaja A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_khwaja_mere_khwaja.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [244]: Khwaja Mere Khwaja"; FAILED=$((FAILED+1)); }

# [245/1000] Yeh Jo Des Hai Tera — A.R. Rahman
yt-dlp "ytsearch1:Yeh Jo Des Hai Tera A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_yeh_jo_des_hai_tera.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [245]: Yeh Jo Des Hai Tera"; FAILED=$((FAILED+1)); }

# [246/1000] Zara Sa Jhoom Loon Main — Asha Bhosle
yt-dlp "ytsearch1:Zara Sa Jhoom Loon Main Asha Bhosle" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/asha_bhosle_zara_sa_jhoom_loon_main.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [246]: Zara Sa Jhoom Loon Main"; FAILED=$((FAILED+1)); }

# [247/1000] Kitni Haseen Zindagi — Lucky Ali
yt-dlp "ytsearch1:Kitni Haseen Zindagi Lucky Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lucky_ali_kitni_haseen_zindagi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [247]: Kitni Haseen Zindagi"; FAILED=$((FAILED+1)); }

# [248/1000] Tunak Tunak Tun — Daler Mehndi
yt-dlp "ytsearch1:Tunak Tunak Tun Daler Mehndi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/daler_mehndi_tunak_tunak_tun.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [248]: Tunak Tunak Tun"; FAILED=$((FAILED+1)); }

# [249/1000] Aankhein Khuli — Jatin-Lalit
yt-dlp "ytsearch1:Aankhein Khuli Jatin-Lalit" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jatin_lalit_aankhein_khuli.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [249]: Aankhein Khuli"; FAILED=$((FAILED+1)); }

# [250/1000] O Mere Dil Ke Chain — Kishore Kumar
yt-dlp "ytsearch1:O Mere Dil Ke Chain Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_o_mere_dil_ke_chain.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [250]: O Mere Dil Ke Chain"; FAILED=$((FAILED+1)); }

# [251/1000] Koi aanay wala hai — Strings
yt-dlp "ytsearch1:Koi aanay wala hai Strings" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/strings_koi_aanay_wala_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [251]: Koi aanay wala hai"; FAILED=$((FAILED+1)); }

# [252/1000] Zindagi Ka Safar — Kishore Kumar
yt-dlp "ytsearch1:Zindagi Ka Safar Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_zindagi_ka_safar.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [252]: Zindagi Ka Safar"; FAILED=$((FAILED+1)); }

# [253/1000] Jhoom — Shankar Mahadevan
yt-dlp "ytsearch1:Jhoom Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_jhoom.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [253]: Jhoom"; FAILED=$((FAILED+1)); }

# [254/1000] O Humdum Suniyo Re — A.R. Rahman
yt-dlp "ytsearch1:O Humdum Suniyo Re A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_o_humdum_suniyo_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [254]: O Humdum Suniyo Re"; FAILED=$((FAILED+1)); }

# [255/1000] Jumme Ki Raat — Mika Singh
yt-dlp "ytsearch1:Jumme Ki Raat Mika Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mika_singh_jumme_ki_raat.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [255]: Jumme Ki Raat"; FAILED=$((FAILED+1)); }

# [256/1000] Mana Janab Ne Pukara Nahin — Kishore Kumar
yt-dlp "ytsearch1:Mana Janab Ne Pukara Nahin Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_mana_janab_ne_pukara_nahin.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [256]: Mana Janab Ne Pukara Nahin"; FAILED=$((FAILED+1)); }

# [257/1000] Dekha Hai Aise Bhi — Lucky Ali
yt-dlp "ytsearch1:Dekha Hai Aise Bhi Lucky Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lucky_ali_dekha_hai_aise_bhi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [257]: Dekha Hai Aise Bhi"; FAILED=$((FAILED+1)); }

# [258/1000] Chand Sifarish — Jatin-Lalit
yt-dlp "ytsearch1:Chand Sifarish Jatin-Lalit" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jatin_lalit_chand_sifarish.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [258]: Chand Sifarish"; FAILED=$((FAILED+1)); }

# [259/1000] O Meri Jaan — KK
yt-dlp "ytsearch1:O Meri Jaan KK" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kk_o_meri_jaan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [259]: O Meri Jaan"; FAILED=$((FAILED+1)); }

# [260/1000] Main Hoon Don — Shaan
yt-dlp "ytsearch1:Main Hoon Don Shaan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shaan_main_hoon_don.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [260]: Main Hoon Don"; FAILED=$((FAILED+1)); }

# [261/1000] Tu Mile Dil Khile (remix) — Kumar Sanu
yt-dlp "ytsearch1:Tu Mile Dil Khile (remix) Kumar Sanu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kumar_sanu_alka_yagnik_tu_mile_dil_khile_remix.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [261]: Tu Mile Dil Khile (remix)"; FAILED=$((FAILED+1)); }

# [262/1000] Bholi Si Surat — Uttam Singh
yt-dlp "ytsearch1:Bholi Si Surat Uttam Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/uttam_singh_bholi_si_surat.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [262]: Bholi Si Surat"; FAILED=$((FAILED+1)); }

# [263/1000] Aap Jaisa Koi — Nazia Hassan
yt-dlp "ytsearch1:Aap Jaisa Koi Nazia Hassan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nazia_hassan_aap_jaisa_koi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [263]: Aap Jaisa Koi"; FAILED=$((FAILED+1)); }

# [264/1000] Tera Mera Rishta — Mustafa Zahid
yt-dlp "ytsearch1:Tera Mera Rishta Mustafa Zahid" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mustafa_zahid_tera_mera_rishta.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [264]: Tera Mera Rishta"; FAILED=$((FAILED+1)); }

# [265/1000] Kabhi Kabhi Aditi — Rashid Ali
yt-dlp "ytsearch1:Kabhi Kabhi Aditi Rashid Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rashid_ali_kabhi_kabhi_aditi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [265]: Kabhi Kabhi Aditi"; FAILED=$((FAILED+1)); }

# [266/1000] Aaja Nachle — Bally Sagoo
yt-dlp "ytsearch1:Aaja Nachle Bally Sagoo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bally_sagoo_aaja_nachle.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [266]: Aaja Nachle"; FAILED=$((FAILED+1)); }

# [267/1000] Humko Humise Chura Lo — Jatin-Lalit
yt-dlp "ytsearch1:Humko Humise Chura Lo Jatin-Lalit" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jatin_lalit_humko_humise_chura_lo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [267]: Humko Humise Chura Lo"; FAILED=$((FAILED+1)); }

# [268/1000] Agar Tum Mil Jao — Shreya Ghoshal
yt-dlp "ytsearch1:Agar Tum Mil Jao Shreya Ghoshal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_agar_tum_mil_jao.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [268]: Agar Tum Mil Jao"; FAILED=$((FAILED+1)); }

# [269/1000] Lift Karadey — Adnan Sami
yt-dlp "ytsearch1:Lift Karadey Adnan Sami" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_lift_karadey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [269]: Lift Karadey"; FAILED=$((FAILED+1)); }

# [270/1000] Mera Naam Chin Chin Chu — Geeta Dutt
yt-dlp "ytsearch1:Mera Naam Chin Chin Chu Geeta Dutt" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/geeta_dutt_mera_naam_chin_chin_chu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [270]: Mera Naam Chin Chin Chu"; FAILED=$((FAILED+1)); }

# [271/1000] Amplifier — Imran Khan
yt-dlp "ytsearch1:Amplifier Imran Khan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/imran_khan_amplifier.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [271]: Amplifier"; FAILED=$((FAILED+1)); }

# [272/1000] Choo Lo — The Local train
yt-dlp "ytsearch1:Choo Lo The Local train" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_local_train_choo_lo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [272]: Choo Lo"; FAILED=$((FAILED+1)); }

# [273/1000] Om Mangalam — RDB
yt-dlp "ytsearch1:Om Mangalam RDB" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rdb_om_mangalam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [273]: Om Mangalam"; FAILED=$((FAILED+1)); }

# [274/1000] Mausam — Mithoon
yt-dlp "ytsearch1:Mausam Mithoon" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mithoon_mausam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [274]: Mausam"; FAILED=$((FAILED+1)); }

# [275/1000] Phir Se Ud Chala — Mohit Chauhan
yt-dlp "ytsearch1:Phir Se Ud Chala Mohit Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mohit_chauhan_phir_se_ud_chala.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [275]: Phir Se Ud Chala"; FAILED=$((FAILED+1)); }

# [276/1000] Kabhi Khushi Kabhie Gham — Lata Mangeshkar
yt-dlp "ytsearch1:Kabhi Khushi Kabhie Gham Lata Mangeshkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lata_mangeshkar_kabhi_khushi_kabhie_gham.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [276]: Kabhi Khushi Kabhie Gham"; FAILED=$((FAILED+1)); }

# [277/1000] Jiya Lage Na — Sona Mohapatra
yt-dlp "ytsearch1:Jiya Lage Na Sona Mohapatra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sona_mohapatra_jiya_lage_na.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [277]: Jiya Lage Na"; FAILED=$((FAILED+1)); }

# [278/1000] Ye Ishq Hai — Pritam
yt-dlp "ytsearch1:Ye Ishq Hai Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_ye_ishq_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [278]: Ye Ishq Hai"; FAILED=$((FAILED+1)); }

# [279/1000] Jab Se Tere Naina — Shaan
yt-dlp "ytsearch1:Jab Se Tere Naina Shaan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shaan_jab_se_tere_naina.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [279]: Jab Se Tere Naina"; FAILED=$((FAILED+1)); }

# [280/1000] Jiya Dhadak Dhadak Jaye — Rahat Fateh Ali Khan
yt-dlp "ytsearch1:Jiya Dhadak Dhadak Jaye Rahat Fateh Ali Khan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rahat_fateh_ali_khan_jiya_dhadak_dhadak_jaye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [280]: Jiya Dhadak Dhadak Jaye"; FAILED=$((FAILED+1)); }

# [281/1000] Dil Haara — Sukhwinder Singh
yt-dlp "ytsearch1:Dil Haara Sukhwinder Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sukhwinder_singh_dil_haara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [281]: Dil Haara"; FAILED=$((FAILED+1)); }

# [282/1000] O Saki Saki (From Batla House) — Vishal-Shekhar
yt-dlp "ytsearch1:O Saki Saki (From Batla House) Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_o_saki_saki_from_batla_house.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [282]: O Saki Saki (From Batla House)"; FAILED=$((FAILED+1)); }

# [283/1000] Pal — Javed-Mohsin
yt-dlp "ytsearch1:Pal Javed-Mohsin" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/javed_mohsin_pal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [283]: Pal"; FAILED=$((FAILED+1)); }

# [284/1000] Phir Dekhiye — Caralisa Monteiro
yt-dlp "ytsearch1:Phir Dekhiye Caralisa Monteiro" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/caralisa_monteiro_phir_dekhiye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [284]: Phir Dekhiye"; FAILED=$((FAILED+1)); }

# [285/1000] Chittiyaan Kalaiyaan — Meet Bros Anjjan
yt-dlp "ytsearch1:Chittiyaan Kalaiyaan Meet Bros Anjjan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/meet_bros_anjjan_chittiyaan_kalaiyaan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [285]: Chittiyaan Kalaiyaan"; FAILED=$((FAILED+1)); }

# [286/1000] Khoon Chala — Mohit Chauhan
yt-dlp "ytsearch1:Khoon Chala Mohit Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mohit_chauhan_khoon_chala.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [286]: Khoon Chala"; FAILED=$((FAILED+1)); }

# [287/1000] Ghanan Ghanan — A.R. Rahman
yt-dlp "ytsearch1:Ghanan Ghanan A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_ghanan_ghanan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [287]: Ghanan Ghanan"; FAILED=$((FAILED+1)); }

# [288/1000] Yeh Dil Na Hota Bechara — Kishore Kumar
yt-dlp "ytsearch1:Yeh Dil Na Hota Bechara Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_yeh_dil_na_hota_bechara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [288]: Yeh Dil Na Hota Bechara"; FAILED=$((FAILED+1)); }

# [289/1000] Khilte Hain Gul Yahan — Kishore Kumar
yt-dlp "ytsearch1:Khilte Hain Gul Yahan Kishore Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_khilte_hain_gul_yahan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [289]: Khilte Hain Gul Yahan"; FAILED=$((FAILED+1)); }

# [290/1000] Woh Ladki Hai Kahan — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Woh Ladki Hai Kahan Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_woh_ladki_hai_kahan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [290]: Woh Ladki Hai Kahan"; FAILED=$((FAILED+1)); }

# [291/1000] Ajab Si — KK
yt-dlp "ytsearch1:Ajab Si KK" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kk_ajab_si.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [291]: Ajab Si"; FAILED=$((FAILED+1)); }

# [292/1000] Zara Zara — Bombay Jayashri
yt-dlp "ytsearch1:Zara Zara Bombay Jayashri" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bombay_jayashri_zara_zara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [292]: Zara Zara"; FAILED=$((FAILED+1)); }

# [293/1000] Bang Bang — Benny Dayal
yt-dlp "ytsearch1:Bang Bang Benny Dayal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/benny_dayal_bang_bang.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [293]: Bang Bang"; FAILED=$((FAILED+1)); }

# [294/1000] Ranjha (From Shershaah) — Jasleen Royal
yt-dlp "ytsearch1:Ranjha (From Shershaah) Jasleen Royal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jasleen_royal_ranjha_from_shershaah.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [294]: Ranjha (From Shershaah)"; FAILED=$((FAILED+1)); }

# [295/1000] Yakeen — Atif Aslam
yt-dlp "ytsearch1:Yakeen Atif Aslam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/atif_aslam_yakeen.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [295]: Yakeen"; FAILED=$((FAILED+1)); }

# [296/1000] Duniyaa (From Luka Chuppi) — Akhil
yt-dlp "ytsearch1:Duniyaa (From Luka Chuppi) Akhil" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/akhil_duniyaa_from_luka_chuppi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [296]: Duniyaa (From Luka Chuppi)"; FAILED=$((FAILED+1)); }

# [297/1000] Jee Le Zaraa — Vishal Dadlani
yt-dlp "ytsearch1:Jee Le Zaraa Vishal Dadlani" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_dadlani_jee_le_zaraa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [297]: Jee Le Zaraa"; FAILED=$((FAILED+1)); }

# [298/1000] Ainvayi Ainvayi — Salim–Sulaiman
yt-dlp "ytsearch1:Ainvayi Ainvayi Salim–Sulaiman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/salimsulaiman_ainvayi_ainvayi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [298]: Ainvayi Ainvayi"; FAILED=$((FAILED+1)); }

# [299/1000] Labon Ko — Pritam
yt-dlp "ytsearch1:Labon Ko Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_labon_ko.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [299]: Labon Ko"; FAILED=$((FAILED+1)); }

# [300/1000] Dhoom Machale — Pritam
yt-dlp "ytsearch1:Dhoom Machale Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_dhoom_machale.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [300]: Dhoom Machale"; FAILED=$((FAILED+1)); }

# [301/1000] Maahi Ve — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Maahi Ve Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_maahi_ve.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [301]: Maahi Ve"; FAILED=$((FAILED+1)); }

# [302/1000] Nagada Nagada — Pritam
yt-dlp "ytsearch1:Nagada Nagada Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_nagada_nagada.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [302]: Nagada Nagada"; FAILED=$((FAILED+1)); }

# [303/1000] Gori Gori Gori Gori — Anu Malik
yt-dlp "ytsearch1:Gori Gori Gori Gori Anu Malik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anu_malik_gori_gori_gori_gori.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [303]: Gori Gori Gori Gori"; FAILED=$((FAILED+1)); }

# [304/1000] Song: Maar Dala — Kavita Krishnamurthy
yt-dlp "ytsearch1:Song: Maar Dala Kavita Krishnamurthy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kavita_krishnamurthy_song_maar_dala.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [304]: Song: Maar Dala"; FAILED=$((FAILED+1)); }

# [305/1000] Jimmy — M.I.A.
yt-dlp "ytsearch1:Jimmy M.I.A." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mia_jimmy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [305]: Jimmy"; FAILED=$((FAILED+1)); }

# [306/1000] Crazy Kiya Re — Pritam
yt-dlp "ytsearch1:Crazy Kiya Re Pritam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritam_crazy_kiya_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [306]: Crazy Kiya Re"; FAILED=$((FAILED+1)); }

# [307/1000] Song: Bairi Piya — Udit Narayan
yt-dlp "ytsearch1:Song: Bairi Piya Udit Narayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayan_song_bairi_piya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [307]: Song: Bairi Piya"; FAILED=$((FAILED+1)); }

# [308/1000] Jogi — Panjabi MC
yt-dlp "ytsearch1:Jogi Panjabi MC" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/panjabi_mc_jogi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [308]: Jogi"; FAILED=$((FAILED+1)); }

# [309/1000] Mujhko Yaad Sataye Teri — Himesh Reshammiya
yt-dlp "ytsearch1:Mujhko Yaad Sataye Teri Himesh Reshammiya" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/himesh_reshammiya_mujhko_yaad_sataye_teri.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [309]: Mujhko Yaad Sataye Teri"; FAILED=$((FAILED+1)); }

# [310/1000] Aaj Mera Jee Kardaa (Today My Heart Desires) — Mychael Danna
yt-dlp "ytsearch1:Aaj Mera Jee Kardaa (Today My Heart Desires) Mychael Danna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mychael_danna_aaj_mera_jee_kardaa_today_my_heart_desires.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [310]: Aaj Mera Jee Kardaa (Today My Heart Desires)"; FAILED=$((FAILED+1)); }

# [311/1000] Kal Ho Naa Ho — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Kal Ho Naa Ho Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_kal_ho_naa_ho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [311]: Kal Ho Naa Ho"; FAILED=$((FAILED+1)); }

# [312/1000] Bole Chudiyan — Jatin-Lalit
yt-dlp "ytsearch1:Bole Chudiyan Jatin-Lalit" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jatin_lalit_bole_chudiyan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [312]: Bole Chudiyan"; FAILED=$((FAILED+1)); }

# [313/1000] Chaiyya Chaiyya — Sukhwinder Singh & Sapna Awasthi
yt-dlp "ytsearch1:Chaiyya Chaiyya Sukhwinder Singh & Sapna Awasthi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sukhwinder_singh_sapna_awasthi_chaiyya_chaiyya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [313]: Chaiyya Chaiyya"; FAILED=$((FAILED+1)); }

# [314/1000] Pretty Woman — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Pretty Woman Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_pretty_woman.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [314]: Pretty Woman"; FAILED=$((FAILED+1)); }

# [315/1000] Dil Se Re — A.R. Rahman
yt-dlp "ytsearch1:Dil Se Re A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_dil_se_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [315]: Dil Se Re"; FAILED=$((FAILED+1)); }

# [316/1000] Deewangi Deewangi — Vishal-Shekhar
yt-dlp "ytsearch1:Deewangi Deewangi Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_deewangi_deewangi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [316]: Deewangi Deewangi"; FAILED=$((FAILED+1)); }

# [317/1000] Dil Cheez Kya Hai — Asha Bhosle
yt-dlp "ytsearch1:Dil Cheez Kya Hai Asha Bhosle" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/asha_bhosle_dil_cheez_kya_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [317]: Dil Cheez Kya Hai"; FAILED=$((FAILED+1)); }

# [318/1000] Babuji Dheere Chalna — Geeta Dutt
yt-dlp "ytsearch1:Babuji Dheere Chalna Geeta Dutt" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/geeta_dutt_babuji_dheere_chalna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [318]: Babuji Dheere Chalna"; FAILED=$((FAILED+1)); }

# [319/1000] Mitwa — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Mitwa Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_mitwa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [319]: Mitwa"; FAILED=$((FAILED+1)); }

# [320/1000] Rock On!! — Farhan Akhtar
yt-dlp "ytsearch1:Rock On!! Farhan Akhtar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/farhan_akhtar_rock_on.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [320]: Rock On!!"; FAILED=$((FAILED+1)); }

# [321/1000] TRICKY HOUSE — xikers
yt-dlp "ytsearch1:TRICKY HOUSE xikers" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/xikers_tricky_house.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [321]: TRICKY HOUSE"; FAILED=$((FAILED+1)); }

# [322/1000] Nagada Sang Dhol — Shreya Ghoshal
yt-dlp "ytsearch1:Nagada Sang Dhol Shreya Ghoshal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_nagada_sang_dhol.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [322]: Nagada Sang Dhol"; FAILED=$((FAILED+1)); }

# [323/1000] Jai Ho — A.R. Rahman
yt-dlp "ytsearch1:Jai Ho A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jai_ho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [323]: Jai Ho"; FAILED=$((FAILED+1)); }

# [324/1000] PTT (Paint the Town) — Loona
yt-dlp "ytsearch1:PTT (Paint the Town) Loona" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/loona_ptt_paint_the_town.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [324]: PTT (Paint the Town)"; FAILED=$((FAILED+1)); }

# [325/1000] It's the Time to Disco — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:It's the Time to Disco Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_its_the_time_to_disco.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [325]: It's the Time to Disco"; FAILED=$((FAILED+1)); }

# [326/1000] Channo — Ali Zafar
yt-dlp "ytsearch1:Channo Ali Zafar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ali_zafar_channo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [326]: Channo"; FAILED=$((FAILED+1)); }

# [327/1000] Maa — Shankar Mahadevan
yt-dlp "ytsearch1:Maa Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_maa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [327]: Maa"; FAILED=$((FAILED+1)); }

# [328/1000] Chale Chalo — A.R. Rahman
yt-dlp "ytsearch1:Chale Chalo A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_chale_chalo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [328]: Chale Chalo"; FAILED=$((FAILED+1)); }

# [329/1000] Love Mera Hit Hit — Neeraj Shridhar
yt-dlp "ytsearch1:Love Mera Hit Hit Neeraj Shridhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/neeraj_shridhar_love_mera_hit_hit.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [329]: Love Mera Hit Hit"; FAILED=$((FAILED+1)); }

# [330/1000] Zaalima — Arijit Singh
yt-dlp "ytsearch1:Zaalima Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_zaalima.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [330]: Zaalima"; FAILED=$((FAILED+1)); }

# [331/1000] Wada Na Tod — Lata Mangeshkar
yt-dlp "ytsearch1:Wada Na Tod Lata Mangeshkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lata_mangeshkar_wada_na_tod.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [331]: Wada Na Tod"; FAILED=$((FAILED+1)); }

# [332/1000] Khuda Jaane — Vishal-Shekhar
yt-dlp "ytsearch1:Khuda Jaane Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_khuda_jaane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [332]: Khuda Jaane"; FAILED=$((FAILED+1)); }

# [333/1000] Song: Dola Re — Kavita Krishnamurthy
yt-dlp "ytsearch1:Song: Dola Re Kavita Krishnamurthy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kavita_krishnamurthy_song_dola_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [333]: Song: Dola Re"; FAILED=$((FAILED+1)); }

# [334/1000] Noorie — Bally Sagoo
yt-dlp "ytsearch1:Noorie Bally Sagoo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bally_sagoo_noorie.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [334]: Noorie"; FAILED=$((FAILED+1)); }

# [335/1000] My Dil Goes Mmmm — Vishal-Shekhar
yt-dlp "ytsearch1:My Dil Goes Mmmm Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_my_dil_goes_mmmm.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [335]: My Dil Goes Mmmm"; FAILED=$((FAILED+1)); }

# [336/1000] San Sanana — Anu Malik
yt-dlp "ytsearch1:San Sanana Anu Malik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anu_malik_san_sanana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [336]: San Sanana"; FAILED=$((FAILED+1)); }

# [337/1000] Tum Se Hi — Mohit Chauhan
yt-dlp "ytsearch1:Tum Se Hi Mohit Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mohit_chauhan_tum_se_hi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [337]: Tum Se Hi"; FAILED=$((FAILED+1)); }

# [338/1000] Ek Dil Ek Jaan — Shivam Pathak
yt-dlp "ytsearch1:Ek Dil Ek Jaan Shivam Pathak" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shivam_pathak_ek_dil_ek_jaan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [338]: Ek Dil Ek Jaan"; FAILED=$((FAILED+1)); }

# [339/1000] Tere Bina Jiya Jaaye Na — Sunidhi Chauhan
yt-dlp "ytsearch1:Tere Bina Jiya Jaaye Na Sunidhi Chauhan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sunidhi_chauhan_tere_bina_jiya_jaaye_na.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [339]: Tere Bina Jiya Jaaye Na"; FAILED=$((FAILED+1)); }

# [340/1000] Chhabeela — Alka Yagnik
yt-dlp "ytsearch1:Chhabeela Alka Yagnik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alka_yagnik_chhabeela.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [340]: Chhabeela"; FAILED=$((FAILED+1)); }

# [341/1000] Thode Badmash — Shreya Ghoshal
yt-dlp "ytsearch1:Thode Badmash Shreya Ghoshal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_thode_badmash.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [341]: Thode Badmash"; FAILED=$((FAILED+1)); }

# [342/1000] Chura Liya — Bally Sagoo
yt-dlp "ytsearch1:Chura Liya Bally Sagoo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bally_sagoo_chura_liya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [342]: Chura Liya"; FAILED=$((FAILED+1)); }

# [343/1000] Galliyan — Ankit Tiwari
yt-dlp "ytsearch1:Galliyan Ankit Tiwari" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ankit_tiwari_galliyan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [343]: Galliyan"; FAILED=$((FAILED+1)); }

# [344/1000] Ruk Ja O Dil Deewane — Udit Narayan
yt-dlp "ytsearch1:Ruk Ja O Dil Deewane Udit Narayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayan_ruk_ja_o_dil_deewane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [344]: Ruk Ja O Dil Deewane"; FAILED=$((FAILED+1)); }

# [345/1000] Raat Ka Nasha — Chitra
yt-dlp "ytsearch1:Raat Ka Nasha Chitra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_raat_ka_nasha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [345]: Raat Ka Nasha"; FAILED=$((FAILED+1)); }

# [346/1000] Chaiyya Chaiyya — A.R. Rahman
yt-dlp "ytsearch1:Chaiyya Chaiyya A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_chaiyya_chaiyya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [346]: Chaiyya Chaiyya"; FAILED=$((FAILED+1)); }

# [347/1000] Jaane Kyun — Vishal Dadlani
yt-dlp "ytsearch1:Jaane Kyun Vishal Dadlani" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_dadlani_jaane_kyun.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [347]: Jaane Kyun"; FAILED=$((FAILED+1)); }

# [348/1000] Chhoti Si Kahani Se — Asha Bhosle
yt-dlp "ytsearch1:Chhoti Si Kahani Se Asha Bhosle" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/asha_bhosle_chhoti_si_kahani_se.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [348]: Chhoti Si Kahani Se"; FAILED=$((FAILED+1)); }

# [349/1000] Teri Galiyon Mein — Mohammed Rafi
yt-dlp "ytsearch1:Teri Galiyon Mein Mohammed Rafi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mohammed_rafi_teri_galiyon_mein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [349]: Teri Galiyon Mein"; FAILED=$((FAILED+1)); }

# [350/1000] Jaane Kyon — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Jaane Kyon Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_jaane_kyon.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [350]: Jaane Kyon"; FAILED=$((FAILED+1)); }

# [351/1000] Watan Walo (Indian/Soundtrack Version) — Roop Kumar Rathod
yt-dlp "ytsearch1:Watan Walo (Indian/Soundtrack Version) Roop Kumar Rathod" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/roop_kumar_rathod_watan_walo_indiansoundtrack_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [351]: Watan Walo (Indian/Soundtrack Version)"; FAILED=$((FAILED+1)); }

# [352/1000] Ye Ishq Ha — Shreya Ghoshal
yt-dlp "ytsearch1:Ye Ishq Ha Shreya Ghoshal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_ye_ishq_ha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [352]: Ye Ishq Ha"; FAILED=$((FAILED+1)); }

# [353/1000] Main Agar Kahoon — Vishal-Shekhar
yt-dlp "ytsearch1:Main Agar Kahoon Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_main_agar_kahoon.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [353]: Main Agar Kahoon"; FAILED=$((FAILED+1)); }

# [354/1000] Titli — Vishal-Shekhar
yt-dlp "ytsearch1:Titli Vishal-Shekhar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vishal_shekhar_titli.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [354]: Titli"; FAILED=$((FAILED+1)); }

# [355/1000] Tere Naina — Shafqat Amanat Ali
yt-dlp "ytsearch1:Tere Naina Shafqat Amanat Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shafqat_amanat_ali_tere_naina.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [355]: Tere Naina"; FAILED=$((FAILED+1)); }

# [356/1000] Mera Joota Hai Japani — Mukesh
yt-dlp "ytsearch1:Mera Joota Hai Japani Mukesh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mukesh_mera_joota_hai_japani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [356]: Mera Joota Hai Japani"; FAILED=$((FAILED+1)); }

# [357/1000] Bom Diggy Diggy — Zack Knight
yt-dlp "ytsearch1:Bom Diggy Diggy Zack Knight" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/zack_knight_bom_diggy_diggy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [357]: Bom Diggy Diggy"; FAILED=$((FAILED+1)); }

# [358/1000] Chalte Chalte — Jatin-Lalit
yt-dlp "ytsearch1:Chalte Chalte Jatin-Lalit" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jatin_lalit_chalte_chalte.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [358]: Chalte Chalte"; FAILED=$((FAILED+1)); }

# [359/1000] Phir Bhi Dil Hai Hindustani — Udit Narayan
yt-dlp "ytsearch1:Phir Bhi Dil Hai Hindustani Udit Narayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayan_phir_bhi_dil_hai_hindustani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [359]: Phir Bhi Dil Hai Hindustani"; FAILED=$((FAILED+1)); }

# [360/1000] Mitwa — Shafqat Amanat Ali
yt-dlp "ytsearch1:Mitwa Shafqat Amanat Ali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shafqat_amanat_ali_shankar_mahadevan_caralisa_mitwa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [360]: Mitwa"; FAILED=$((FAILED+1)); }

# [361/1000] Hadippa — Mika Singh
yt-dlp "ytsearch1:Hadippa Mika Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mika_singh_hadippa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [361]: Hadippa"; FAILED=$((FAILED+1)); }

# [362/1000] Azeem-O-Shaan Shahenshah — A.R. Rahman
yt-dlp "ytsearch1:Azeem-O-Shaan Shahenshah A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_azeem_o_shaan_shahenshah.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [362]: Azeem-O-Shaan Shahenshah"; FAILED=$((FAILED+1)); }

# [363/1000] Chakna Chakna — Himesh Reshammiya
yt-dlp "ytsearch1:Chakna Chakna Himesh Reshammiya" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/himesh_reshammiya_chakna_chakna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [363]: Chakna Chakna"; FAILED=$((FAILED+1)); }

# [364/1000] Kajra Re — Alisha Chinai
yt-dlp "ytsearch1:Kajra Re Alisha Chinai" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alisha_chinai_kajra_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [364]: Kajra Re"; FAILED=$((FAILED+1)); }

# [365/1000] Tumhe Jo Maine Dekha — Anu Malik
yt-dlp "ytsearch1:Tumhe Jo Maine Dekha Anu Malik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anu_malik_tumhe_jo_maine_dekha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [365]: Tumhe Jo Maine Dekha"; FAILED=$((FAILED+1)); }

# [366/1000] Tujh Mein Rab Dikhta Hai — Roop Kumar Rathod
yt-dlp "ytsearch1:Tujh Mein Rab Dikhta Hai Roop Kumar Rathod" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/roop_kumar_rathod_tujh_mein_rab_dikhta_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [366]: Tujh Mein Rab Dikhta Hai"; FAILED=$((FAILED+1)); }

# [367/1000] Main Hoon Na (Sad) — Anu Malik
yt-dlp "ytsearch1:Main Hoon Na (Sad) Anu Malik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anu_malik_main_hoon_na_sad.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [367]: Main Hoon Na (Sad)"; FAILED=$((FAILED+1)); }

# [368/1000] Hale Dil — Harshit Saxena
yt-dlp "ytsearch1:Hale Dil Harshit Saxena" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harshit_saxena_hale_dil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [368]: Hale Dil"; FAILED=$((FAILED+1)); }

# [369/1000] Tu Kaun Kahan Se Aayi Hai — Udit Narayan
yt-dlp "ytsearch1:Tu Kaun Kahan Se Aayi Hai Udit Narayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayan_tu_kaun_kahan_se_aayi_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [369]: Tu Kaun Kahan Se Aayi Hai"; FAILED=$((FAILED+1)); }

# [370/1000] Aarambh — Piyush Mishra
yt-dlp "ytsearch1:Aarambh Piyush Mishra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/piyush_mishra_aarambh.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [370]: Aarambh"; FAILED=$((FAILED+1)); }

# [371/1000] Yeh Jism — Ali Azmat
yt-dlp "ytsearch1:Yeh Jism Ali Azmat" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ali_azmat_yeh_jism.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [371]: Yeh Jism"; FAILED=$((FAILED+1)); }

# [372/1000] Maula — Ali Azmat
yt-dlp "ytsearch1:Maula Ali Azmat" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ali_azmat_maula.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [372]: Maula"; FAILED=$((FAILED+1)); }

# [373/1000] Sheher — Swanand Kirkire
yt-dlp "ytsearch1:Sheher Swanand Kirkire" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/swanand_kirkire_sheher.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [373]: Sheher"; FAILED=$((FAILED+1)); }

# [374/1000] Hona Hai Kya — Ram Sampath
yt-dlp "ytsearch1:Hona Hai Kya Ram Sampath" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ram_sampath_hona_hai_kya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [374]: Hona Hai Kya"; FAILED=$((FAILED+1)); }

# [375/1000] Beedo — Rekha Bhardwaj
yt-dlp "ytsearch1:Beedo Rekha Bhardwaj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rekha_bhardwaj_beedo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [375]: Beedo"; FAILED=$((FAILED+1)); }

# [376/1000] Kal Ho Naa Ho — Shankar Ehsaan Loy feat. Sonu Nigam
yt-dlp "ytsearch1:Kal Ho Naa Ho Shankar Ehsaan Loy feat. Sonu Nigam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_feat_sonu_nigam_kal_ho_naa_ho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [376]: Kal Ho Naa Ho"; FAILED=$((FAILED+1)); }

# [377/1000] Taar Bijli — Padmashree Sharda Sinha
yt-dlp "ytsearch1:Taar Bijli Padmashree Sharda Sinha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/padmashree_sharda_sinha_taar_bijli.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [377]: Taar Bijli"; FAILED=$((FAILED+1)); }

# [378/1000] Genda Phool — Rekha Bharadwaj
yt-dlp "ytsearch1:Genda Phool Rekha Bharadwaj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rekha_bharadwaj_shraddha_pandit_sujata_majumdar_genda_phool.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [378]: Genda Phool"; FAILED=$((FAILED+1)); }

# [379/1000] Bahut Khoob — Kids Of Musahar Village
yt-dlp "ytsearch1:Bahut Khoob Kids Of Musahar Village" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kids_of_musahar_village_bahut_khoob.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [379]: Bahut Khoob"; FAILED=$((FAILED+1)); }

# [380/1000] Ladki Badi Anjaani Hai — Kumar Sanu
yt-dlp "ytsearch1:Ladki Badi Anjaani Hai Kumar Sanu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kumar_sanu_alka_yagnik_ladki_badi_anjaani_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [380]: Ladki Badi Anjaani Hai"; FAILED=$((FAILED+1)); }

# [381/1000] Main Jahaan Rahoon — Rahat Fateh Ali Khan & Krishna
yt-dlp "ytsearch1:Main Jahaan Rahoon Rahat Fateh Ali Khan & Krishna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rahat_fateh_ali_khan_krishna_main_jahaan_rahoon.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [381]: Main Jahaan Rahoon"; FAILED=$((FAILED+1)); }

# [382/1000] Kabira - www.Songs.PK — Arijit Singh & Harshjeep
yt-dlp "ytsearch1:Kabira - www.Songs.PK Arijit Singh & Harshjeep" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_harshjeep_kabira_wwwsongspk.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [382]: Kabira - www.Songs.PK"; FAILED=$((FAILED+1)); }

# [383/1000] Show 3 — Bollywood's Best with Neel and Esha on www.chutneyradio.com
yt-dlp "ytsearch1:Show 3 Bollywood's Best with Neel and Esha on www.chutneyradio.com" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bollywoods_best_with_neel_and_esha_on_wwwchutneyradiocom_show_3.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [383]: Show 3"; FAILED=$((FAILED+1)); }

# [384/1000] Goom Hai Kisi Ke Pyar Mein — Kishore Kumar & Lata Mangeshkar
yt-dlp "ytsearch1:Goom Hai Kisi Ke Pyar Mein Kishore Kumar & Lata Mangeshkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kishore_kumar_lata_mangeshkar_goom_hai_kisi_ke_pyar_mein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [384]: Goom Hai Kisi Ke Pyar Mein"; FAILED=$((FAILED+1)); }

# [385/1000] Tujhe Kitna Chahne Lage (From Kabir Singh) — Arijit Singh
yt-dlp "ytsearch1:Tujhe Kitna Chahne Lage (From Kabir Singh) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_tujhe_kitna_chahne_lage_from_kabir_singh.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [385]: Tujhe Kitna Chahne Lage (From Kabir Singh)"; FAILED=$((FAILED+1)); }

# [386/1000] Mast Magan — Arijit Singh
yt-dlp "ytsearch1:Mast Magan Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_mast_magan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [386]: Mast Magan"; FAILED=$((FAILED+1)); }

# [387/1000] Mast Magan (From 2 States) — Arijit Singh
yt-dlp "ytsearch1:Mast Magan (From 2 States) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_mast_magan_from_2_states.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [387]: Mast Magan (From 2 States)"; FAILED=$((FAILED+1)); }

# [388/1000] Satranga (From ANIMAL) — Arijit Singh
yt-dlp "ytsearch1:Satranga (From ANIMAL) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_satranga_from_animal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [388]: Satranga (From ANIMAL)"; FAILED=$((FAILED+1)); }

# [389/1000] Humdard (From Ek Villain) — Arijit Singh
yt-dlp "ytsearch1:Humdard (From Ek Villain) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_humdard_from_ek_villain.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [389]: Humdard (From Ek Villain)"; FAILED=$((FAILED+1)); }

# [390/1000] Sooraj Dooba Hain — Arijit Singh
yt-dlp "ytsearch1:Sooraj Dooba Hain Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_sooraj_dooba_hain.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [390]: Sooraj Dooba Hain"; FAILED=$((FAILED+1)); }

# [391/1000] Sooraj Dooba Hain (From Roy) — Arijit Singh
yt-dlp "ytsearch1:Sooraj Dooba Hain (From Roy) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_sooraj_dooba_hain_from_roy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [391]: Sooraj Dooba Hain (From Roy)"; FAILED=$((FAILED+1)); }

# [392/1000] Kabhi Jo Baadal Barse (From Jackpot) — Arijit Singh
yt-dlp "ytsearch1:Kabhi Jo Baadal Barse (From Jackpot) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_kabhi_jo_baadal_barse_from_jackpot.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [392]: Kabhi Jo Baadal Barse (From Jackpot)"; FAILED=$((FAILED+1)); }

# [393/1000] Tum Hi Ho (From Aashiqui 2) — Arijit Singh
yt-dlp "ytsearch1:Tum Hi Ho (From Aashiqui 2) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_tum_hi_ho_from_aashiqui_2.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [393]: Tum Hi Ho (From Aashiqui 2)"; FAILED=$((FAILED+1)); }

# [394/1000] Mast Magan (From 2 States) — Arijit Singh
yt-dlp "ytsearch1:Mast Magan (From 2 States) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_mast_magan_from_2_states.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [394]: Mast Magan (From 2 States)"; FAILED=$((FAILED+1)); }

# [395/1000] Humdard — Arijit Singh
yt-dlp "ytsearch1:Humdard Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_humdard.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [395]: Humdard"; FAILED=$((FAILED+1)); }

# [396/1000] Itni Si Baat Hain (From Azhar) — Arijit Singh
yt-dlp "ytsearch1:Itni Si Baat Hain (From Azhar) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_itni_si_baat_hain_from_azhar.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [396]: Itni Si Baat Hain (From Azhar)"; FAILED=$((FAILED+1)); }

# [397/1000] Tose Naina (From Mickey Virus) — Arijit Singh
yt-dlp "ytsearch1:Tose Naina (From Mickey Virus) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_tose_naina_from_mickey_virus.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [397]: Tose Naina (From Mickey Virus)"; FAILED=$((FAILED+1)); }

# [398/1000] Ve Maahi — Arijit Singh
yt-dlp "ytsearch1:Ve Maahi Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_ve_maahi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [398]: Ve Maahi"; FAILED=$((FAILED+1)); }

# [399/1000] Kabhi Jo Baadal Barse — Arijit Singh
yt-dlp "ytsearch1:Kabhi Jo Baadal Barse Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_kabhi_jo_baadal_barse.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [399]: Kabhi Jo Baadal Barse"; FAILED=$((FAILED+1)); }

# [400/1000] Main Tera Boyfriend (From Raabta) — Arijit Singh
yt-dlp "ytsearch1:Main Tera Boyfriend (From Raabta) Arijit Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arijit_singh_main_tera_boyfriend_from_raabta.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [400]: Main Tera Boyfriend (From Raabta)"; FAILED=$((FAILED+1)); }

# [401/1000] Evano Oruvan — Swarnalatha
yt-dlp "ytsearch1:Evano Oruvan Swarnalatha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/swarnalatha_evano_oruvan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [401]: Evano Oruvan"; FAILED=$((FAILED+1)); }

# [402/1000] Katchi Sera - From Think Indie — Sai Abhyankkar
yt-dlp "ytsearch1:Katchi Sera - From Think Indie Sai Abhyankkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sai_abhyankkar_katchi_sera_from_think_indie.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [402]: Katchi Sera - From Think Indie"; FAILED=$((FAILED+1)); }

# [403/1000] Aasa Kooda - From Think Indie — Sai Abhyankkar
yt-dlp "ytsearch1:Aasa Kooda - From Think Indie Sai Abhyankkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sai_abhyankkar_aasa_kooda_from_think_indie.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [403]: Aasa Kooda - From Think Indie"; FAILED=$((FAILED+1)); }

# [404/1000] Oorum Blood - From Dude — Sai Abhyankkar
yt-dlp "ytsearch1:Oorum Blood - From Dude Sai Abhyankkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sai_abhyankkar_oorum_blood_from_dude.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [404]: Oorum Blood - From Dude"; FAILED=$((FAILED+1)); }

# [405/1000] Karuppaana Kai — TamilBeat.Com
yt-dlp "ytsearch1:Karuppaana Kai TamilBeat.Com" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tamilbeatcom_karuppaana_kai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [405]: Karuppaana Kai"; FAILED=$((FAILED+1)); }

# [406/1000] Kannukkul Kannai — Naresh Iyer
yt-dlp "ytsearch1:Kannukkul Kannai Naresh Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_kannukkul_kannai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [406]: Kannukkul Kannai"; FAILED=$((FAILED+1)); }

# [407/1000] Mental Manadhil — A.R. Rahman
yt-dlp "ytsearch1:Mental Manadhil A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mental_manadhil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [407]: Mental Manadhil"; FAILED=$((FAILED+1)); }

# [408/1000] Pachai Nirame — Hariharan
yt-dlp "ytsearch1:Pachai Nirame Hariharan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_pachai_nirame.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [408]: Pachai Nirame"; FAILED=$((FAILED+1)); }

# [409/1000] Mundhinam — Naresh Iyer
yt-dlp "ytsearch1:Mundhinam Naresh Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_prashanthini_mundhinam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [409]: Mundhinam"; FAILED=$((FAILED+1)); }

# [410/1000] Osaka Muraiya — Karthik Raja
yt-dlp "ytsearch1:Osaka Muraiya Karthik Raja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_raja_osaka_muraiya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [410]: Osaka Muraiya"; FAILED=$((FAILED+1)); }

# [411/1000] Tum Tum (From Enemy - Tamil) — Thaman S
yt-dlp "ytsearch1:Tum Tum (From Enemy - Tamil) Thaman S" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/thaman_s_tum_tum_from_enemy_tamil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [411]: Tum Tum (From Enemy - Tamil)"; FAILED=$((FAILED+1)); }

# [412/1000] Kannukulla - From Dude — Sai Abhyankkar
yt-dlp "ytsearch1:Kannukulla - From Dude Sai Abhyankkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sai_abhyankkar_kannukulla_from_dude.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [412]: Kannukulla - From Dude"; FAILED=$((FAILED+1)); }

# [413/1000] Kanave Kanave — Anirudh Ravichander
yt-dlp "ytsearch1:Kanave Kanave Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_kanave_kanave.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [413]: Kanave Kanave"; FAILED=$((FAILED+1)); }

# [414/1000] Kadal Kadal (Language: Tamil; Film: Kadhal Dot Com) — Hariharan
yt-dlp "ytsearch1:Kadal Kadal (Language: Tamil; Film: Kadhal Dot Com) Hariharan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_kadal_kadal_language_tamil_film_kadhal_dot_com.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [414]: Kadal Kadal (Language: Tamil; Film: Kadhal Dot Com)"; FAILED=$((FAILED+1)); }

# [415/1000] Enna Solla Pogirai — Shankar Mahadevan
yt-dlp "ytsearch1:Enna Solla Pogirai Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_enna_solla_pogirai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [415]: Enna Solla Pogirai"; FAILED=$((FAILED+1)); }

# [416/1000] Oru Maalai — Karthik
yt-dlp "ytsearch1:Oru Maalai Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_oru_maalai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [416]: Oru Maalai"; FAILED=$((FAILED+1)); }

# [417/1000] Azhagana Rakshasiyea (Language: Tamil; Film: Kadalar Dhinam; Film Artists: Kunal, Sonali Bindre) — SPB
yt-dlp "ytsearch1:Azhagana Rakshasiyea (Language: Tamil; Film: Kadalar Dhinam; Film Artists: Kunal, Sonali Bindre) SPB" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/spb_azhagana_rakshasiyea_language_tamil_film_kadalar_dhinam_film.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [417]: Azhagana Rakshasiyea (Language: Tamil; Film: Kadalar Dhinam; Film Artists: Kunal, Sonali Bindre)"; FAILED=$((FAILED+1)); }

# [418/1000] Aaruyire — A.R. Rahman
yt-dlp "ytsearch1:Aaruyire A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_aaruyire.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [418]: Aaruyire"; FAILED=$((FAILED+1)); }

# [419/1000] Unnai Kaanadhu Naan — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Unnai Kaanadhu Naan Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_unnai_kaanadhu_naan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [419]: Unnai Kaanadhu Naan"; FAILED=$((FAILED+1)); }

# [420/1000] Oru Maalai (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin) — Karthik
yt-dlp "ytsearch1:Oru Maalai (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin) Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_oru_maalai_language_tamil_film_ghajini_film_artists_surya_as.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [420]: Oru Maalai (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin)"; FAILED=$((FAILED+1)); }

# [421/1000] Mazhai Kuruvi — A.R. Rahman
yt-dlp "ytsearch1:Mazhai Kuruvi A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mazhai_kuruvi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [421]: Mazhai Kuruvi"; FAILED=$((FAILED+1)); }

# [422/1000] Eppadi Vandhaayo (From Aaromaley) — Siddhu Kumar
yt-dlp "ytsearch1:Eppadi Vandhaayo (From Aaromaley) Siddhu Kumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/siddhu_kumar_eppadi_vandhaayo_from_aaromaley.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [422]: Eppadi Vandhaayo (From Aaromaley)"; FAILED=$((FAILED+1)); }

# [423/1000] Neethanae (From Mersal) — A.R. Rahman
yt-dlp "ytsearch1:Neethanae (From Mersal) A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_neethanae_from_mersal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [423]: Neethanae (From Mersal)"; FAILED=$((FAILED+1)); }

# [424/1000] Munbe Vaa — Naresh Iyer
yt-dlp "ytsearch1:Munbe Vaa Naresh Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_munbe_vaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [424]: Munbe Vaa"; FAILED=$((FAILED+1)); }

# [425/1000] Unakkul Naane — Pritt
yt-dlp "ytsearch1:Unakkul Naane Pritt" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pritt_unakkul_naane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [425]: Unakkul Naane"; FAILED=$((FAILED+1)); }

# [426/1000] Verappa - From Karuppu — Sai Abhyankkar
yt-dlp "ytsearch1:Verappa - From Karuppu Sai Abhyankkar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sai_abhyankkar_verappa_from_karuppu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [426]: Verappa - From Karuppu"; FAILED=$((FAILED+1)); }

# [427/1000] Enjoy Enjaami — Dhee
yt-dlp "ytsearch1:Enjoy Enjaami Dhee" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhee_enjoy_enjaami.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [427]: Enjoy Enjaami"; FAILED=$((FAILED+1)); }

# [428/1000] New York Nagaram — A.R. Rahman
yt-dlp "ytsearch1:New York Nagaram A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_new_york_nagaram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [428]: New York Nagaram"; FAILED=$((FAILED+1)); }

# [429/1000] Pogadhe — Yuvan Shankar Raja
yt-dlp "ytsearch1:Pogadhe Yuvan Shankar Raja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_shankar_raja_pogadhe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [429]: Pogadhe"; FAILED=$((FAILED+1)); }

# [430/1000] Poi Solla (Language: Tamil; Film: April Madhathil; Film Artists: Srikanth, Sneha) — Yuvan Shankar Raja
yt-dlp "ytsearch1:Poi Solla (Language: Tamil; Film: April Madhathil; Film Artists: Srikanth, Sneha) Yuvan Shankar Raja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_shankar_raja_poi_solla_language_tamil_film_april_madhathil_film_artists_s.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [430]: Poi Solla (Language: Tamil; Film: April Madhathil; Film Artists: Srikanth, Sneha)"; FAILED=$((FAILED+1)); }

# [431/1000] Mallipoo — A.R. Rahman
yt-dlp "ytsearch1:Mallipoo A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mallipoo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [431]: Mallipoo"; FAILED=$((FAILED+1)); }

# [432/1000] Kaalam Kalikaalam — Bharadwaj
yt-dlp "ytsearch1:Kaalam Kalikaalam Bharadwaj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bharadwaj_kaalam_kalikaalam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [432]: Kaalam Kalikaalam"; FAILED=$((FAILED+1)); }

# [433/1000] Jinguchaa (From Thug Life) — Vaishali Samant
yt-dlp "ytsearch1:Jinguchaa (From Thug Life) Vaishali Samant" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vaishali_samant_jinguchaa_from_thug_life.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [433]: Jinguchaa (From Thug Life)"; FAILED=$((FAILED+1)); }

# [434/1000] Jothi Nerainchavaa — Sukhwindar Singh
yt-dlp "ytsearch1:Jothi Nerainchavaa Sukhwindar Singh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sukhwindar_singh_jothi_nerainchavaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [434]: Jothi Nerainchavaa"; FAILED=$((FAILED+1)); }

# [435/1000] Vinnaithaandi Varuvaayaa — A.R. Rahman
yt-dlp "ytsearch1:Vinnaithaandi Varuvaayaa A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_vinnaithaandi_varuvaayaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [435]: Vinnaithaandi Varuvaayaa"; FAILED=$((FAILED+1)); }

# [436/1000] Pudhu Vellai Mazhai — Unni Menon
yt-dlp "ytsearch1:Pudhu Vellai Mazhai Unni Menon" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/unni_menon_pudhu_vellai_mazhai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [436]: Pudhu Vellai Mazhai"; FAILED=$((FAILED+1)); }

# [437/1000] Jorthaale — Asal Kolaar
yt-dlp "ytsearch1:Jorthaale Asal Kolaar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/asal_kolaar_jorthaale.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [437]: Jorthaale"; FAILED=$((FAILED+1)); }

# [438/1000] Raja Raja Chozhan — K. J. Yesudas
yt-dlp "ytsearch1:Raja Raja Chozhan K. J. Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_j_yesudas_raja_raja_chozhan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [438]: Raja Raja Chozhan"; FAILED=$((FAILED+1)); }

# [439/1000] Anbe Aaruyire — Rahman A R
yt-dlp "ytsearch1:Anbe Aaruyire Rahman A R" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rahman_a_r_anbe_aaruyire.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [439]: Anbe Aaruyire"; FAILED=$((FAILED+1)); }

# [440/1000] Koi Kahe Kehta Rahe — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Koi Kahe Kehta Rahe Shankar-Ehsaan-Loy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_koi_kahe_kehta_rahe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [440]: Koi Kahe Kehta Rahe"; FAILED=$((FAILED+1)); }

# [441/1000] Endrendrum Punnagai — Praveen
yt-dlp "ytsearch1:Endrendrum Punnagai Praveen" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/praveen_shankar_mahadevan_endrendrum_punnagai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [441]: Endrendrum Punnagai"; FAILED=$((FAILED+1)); }

# [442/1000] Rangola — Shankar Mahadevan
yt-dlp "ytsearch1:Rangola Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_rangola.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [442]: Rangola"; FAILED=$((FAILED+1)); }

# [443/1000] Naan Erikarai — Ilaiyaraaja
yt-dlp "ytsearch1:Naan Erikarai Ilaiyaraaja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ilaiyaraaja_naan_erikarai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [443]: Naan Erikarai"; FAILED=$((FAILED+1)); }

# [444/1000] Kodu Poatta — A.R. Rahman
yt-dlp "ytsearch1:Kodu Poatta A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kodu_poatta.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [444]: Kodu Poatta"; FAILED=$((FAILED+1)); }

# [445/1000] Kaattu Sirukki — A.R. Rahman
yt-dlp "ytsearch1:Kaattu Sirukki A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kaattu_sirukki.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [445]: Kaattu Sirukki"; FAILED=$((FAILED+1)); }

# [446/1000] Vennilavae Vennilavae — Hariharan
yt-dlp "ytsearch1:Vennilavae Vennilavae Hariharan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_sadhana_sargam_vennilavae_vennilavae.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [446]: Vennilavae Vennilavae"; FAILED=$((FAILED+1)); }

# [447/1000] Kaadhal kaditham (From Jodi) — Unni Menon
yt-dlp "ytsearch1:Kaadhal kaditham (From Jodi) Unni Menon" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/unni_menon_kaadhal_kaditham_from_jodi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [447]: Kaadhal kaditham (From Jodi)"; FAILED=$((FAILED+1)); }

# [448/1000] Hey Good Bye Nanba — Sunitha Sarathy
yt-dlp "ytsearch1:Hey Good Bye Nanba Sunitha Sarathy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sunitha_sarathy_shankar_mahadevan_hey_good_bye_nanba.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [448]: Hey Good Bye Nanba"; FAILED=$((FAILED+1)); }

# [449/1000] Pachchai Nirame — Clinton
yt-dlp "ytsearch1:Pachchai Nirame Clinton" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/clinton_hariharan_pachchai_nirame.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [449]: Pachchai Nirame"; FAILED=$((FAILED+1)); }

# [450/1000] Rasa Rasa (Language: Tamil; Film: Manasthan; Film Artists: Sarath Kumar, Sakshi) — Chithra
yt-dlp "ytsearch1:Rasa Rasa (Language: Tamil; Film: Manasthan; Film Artists: Sarath Kumar, Sakshi) Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chithra_rasa_rasa_language_tamil_film_manasthan_film_artists_sarath_.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [450]: Rasa Rasa (Language: Tamil; Film: Manasthan; Film Artists: Sarath Kumar, Sakshi)"; FAILED=$((FAILED+1)); }

# [451/1000] Alaipayuthey Kanna — Harini
yt-dlp "ytsearch1:Alaipayuthey Kanna Harini" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harini_kalyani_menon_neyveli_ramalakshmi_alaipayuthey_kanna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [451]: Alaipayuthey Kanna"; FAILED=$((FAILED+1)); }

# [452/1000] Quarantine Love Mashup — MD Musiq
yt-dlp "ytsearch1:Quarantine Love Mashup MD Musiq" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/md_musiq_quarantine_love_mashup.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [452]: Quarantine Love Mashup"; FAILED=$((FAILED+1)); }

# [453/1000] Thalli Pogathey — A.R. Rahman
yt-dlp "ytsearch1:Thalli Pogathey A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_thalli_pogathey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [453]: Thalli Pogathey"; FAILED=$((FAILED+1)); }

# [454/1000] Unna Ninaichaen — SP. Balasubramaniam
yt-dlp "ytsearch1:Unna Ninaichaen SP. Balasubramaniam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubramaniam_unna_ninaichaen.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [454]: Unna Ninaichaen"; FAILED=$((FAILED+1)); }

# [455/1000] Yaro Yarodi — Mahalakshmi Iyer
yt-dlp "ytsearch1:Yaro Yarodi Mahalakshmi Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mahalakshmi_iyer_richa_sharma_vaishali_yaro_yarodi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [455]: Yaro Yarodi"; FAILED=$((FAILED+1)); }

# [456/1000] Janani — Ilaiyaraaja
yt-dlp "ytsearch1:Janani Ilaiyaraaja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ilaiyaraaja_janani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [456]: Janani"; FAILED=$((FAILED+1)); }

# [457/1000] thandhai thAi, Muthu Thandavar — Dhanya Subramanian
yt-dlp "ytsearch1:thandhai thAi, Muthu Thandavar Dhanya Subramanian" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanya_subramanian_thandhai_thai_muthu_thandavar.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [457]: thandhai thAi, Muthu Thandavar"; FAILED=$((FAILED+1)); }

# [458/1000] Theepidika Theepidika — Anushka
yt-dlp "ytsearch1:Theepidika Theepidika Anushka" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anushka_premji_theepidika_theepidika.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [458]: Theepidika Theepidika"; FAILED=$((FAILED+1)); }

# [459/1000] vandE mAtaram (rAga mAlika), Subramanya Bharathy — Dhanya Subramanian
yt-dlp "ytsearch1:vandE mAtaram (rAga mAlika), Subramanya Bharathy Dhanya Subramanian" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanya_subramanian_vande_mataram_raga_malika_subramanya_bharathy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [459]: vandE mAtaram (rAga mAlika), Subramanya Bharathy"; FAILED=$((FAILED+1)); }

# [460/1000] Naan Varuvene — A.R. Rahman
yt-dlp "ytsearch1:Naan Varuvene A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_naan_varuvene.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [460]: Naan Varuvene"; FAILED=$((FAILED+1)); }

# [461/1000] Gnapagam Varuthae (Language: Tamil; Film: Pudukkottaielerunthusaravanan; Film Artists: Dhanush, Aparna) — Bharadwaj
yt-dlp "ytsearch1:Gnapagam Varuthae (Language: Tamil; Film: Pudukkottaielerunthusaravanan; Film Artists: Dhanush, Aparna) Bharadwaj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bharadwaj_gnapagam_varuthae_language_tamil_film_pudukkottaielerunthusa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [461]: Gnapagam Varuthae (Language: Tamil; Film: Pudukkottaielerunthusaravanan; Film Artists: Dhanush, Aparna)"; FAILED=$((FAILED+1)); }

# [462/1000] Kanave (Dream) — DJSIRAN
yt-dlp "ytsearch1:Kanave (Dream) DJSIRAN" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/djsiran_kanave_dream.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [462]: Kanave (Dream)"; FAILED=$((FAILED+1)); }

# [463/1000] Three in One (Introduction) — Ilaiyaraaja
yt-dlp "ytsearch1:Three in One (Introduction) Ilaiyaraaja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ilaiyaraaja_three_in_one_introduction.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [463]: Three in One (Introduction)"; FAILED=$((FAILED+1)); }

# [464/1000] Rahatulla (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin) — Anupama
yt-dlp "ytsearch1:Rahatulla (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin) Anupama" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anupama_rahatulla_language_tamil_film_ghajini_film_artists_surya_asi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [464]: Rahatulla (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin)"; FAILED=$((FAILED+1)); }

# [465/1000] Ammavum Naane (Language: Tamil; Film: Gajendra; Film Artists: Vijayakanth, Sneha) — Srinivas
yt-dlp "ytsearch1:Ammavum Naane (Language: Tamil; Film: Gajendra; Film Artists: Vijayakanth, Sneha) Srinivas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/srinivas_ammavum_naane_language_tamil_film_gajendra_film_artists_vija.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [465]: Ammavum Naane (Language: Tamil; Film: Gajendra; Film Artists: Vijayakanth, Sneha)"; FAILED=$((FAILED+1)); }

# [466/1000] Good Time — Alpha Something
yt-dlp "ytsearch1:Good Time Alpha Something" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alpha_something_good_time.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [466]: Good Time"; FAILED=$((FAILED+1)); }

# [467/1000] Nee Dhaane — Alpha Something
yt-dlp "ytsearch1:Nee Dhaane Alpha Something" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alpha_something_nee_dhaane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [467]: Nee Dhaane"; FAILED=$((FAILED+1)); }

# [468/1000] Pachchai Nirame — Kalyani Menon
yt-dlp "ytsearch1:Pachchai Nirame Kalyani Menon" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kalyani_menon_harini_neyveli_ramalakshmi_swarnalatha_s_p_b_c_pachchai_nirame.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [468]: Pachchai Nirame"; FAILED=$((FAILED+1)); }

# [469/1000] Mayilirage — Madhushree
yt-dlp "ytsearch1:Mayilirage Madhushree" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/madhushree_naresh_iyer_mayilirage.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [469]: Mayilirage"; FAILED=$((FAILED+1)); }

# [470/1000] Unnaithane (K.J. Yesudas & Manjula) (Language: Tamil; Film: Nallavanukku Nallavan; Film Artists: Rajni Kanth) — K.J. Yesudas
yt-dlp "ytsearch1:Unnaithane (K.J. Yesudas & Manjula) (Language: Tamil; Film: Nallavanukku Nallavan; Film Artists: Rajni Kanth) K.J. Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kj_yesudas_unnaithane_kj_yesudas_manjula_language_tamil_film_nallavanuk.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [470]: Unnaithane (K.J. Yesudas & Manjula) (Language: Tamil; Film: Nallavanukku Nallavan; Film Artists: Rajni Kanth)"; FAILED=$((FAILED+1)); }

# [471/1000] Thazhuvudu Nazhuvudu — Balasubramanyam S P
yt-dlp "ytsearch1:Thazhuvudu Nazhuvudu Balasubramanyam S P" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/balasubramanyam_s_p_shreya_ghosal_thazhuvudu_nazhuvudu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [471]: Thazhuvudu Nazhuvudu"; FAILED=$((FAILED+1)); }

# [472/1000] Dol Dol Dolare — Blazee
yt-dlp "ytsearch1:Dol Dol Dolare Blazee" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/blazee_shaheen_dol_dol_dolare.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [472]: Dol Dol Dolare"; FAILED=$((FAILED+1)); }

# [473/1000] Nijama Nijama (Language: Tamil; Film: Virumbukiren; Film Artists: Prashanth, Sneha) — Sadhana Sargam
yt-dlp "ytsearch1:Nijama Nijama (Language: Tamil; Film: Virumbukiren; Film Artists: Prashanth, Sneha) Sadhana Sargam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sadhana_sargam_nijama_nijama_language_tamil_film_virumbukiren_film_artists_.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [473]: Nijama Nijama (Language: Tamil; Film: Virumbukiren; Film Artists: Prashanth, Sneha)"; FAILED=$((FAILED+1)); }

# [474/1000] Kathali Kathali — Malaysia Vasudevan
yt-dlp "ytsearch1:Kathali Kathali Malaysia Vasudevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/malaysia_vasudevan_kathali_kathali.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [474]: Kathali Kathali"; FAILED=$((FAILED+1)); }

# [475/1000] Pudhu Vellai Mazhai — A.R. Rahman
yt-dlp "ytsearch1:Pudhu Vellai Mazhai A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_pudhu_vellai_mazhai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [475]: Pudhu Vellai Mazhai"; FAILED=$((FAILED+1)); }

# [476/1000] Adhareeni — A.R. Rahman
yt-dlp "ytsearch1:Adhareeni A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_adhareeni.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [476]: Adhareeni"; FAILED=$((FAILED+1)); }

# [477/1000] Aatharam Enakkonden (Language: Tamil) — Chitra
yt-dlp "ytsearch1:Aatharam Enakkonden (Language: Tamil) Chitra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_aatharam_enakkonden_language_tamil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [477]: Aatharam Enakkonden (Language: Tamil)"; FAILED=$((FAILED+1)); }

# [478/1000] Nenjam Ellam Kadhal — Adnan Sami
yt-dlp "ytsearch1:Nenjam Ellam Kadhal Adnan Sami" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_sujatha_nenjam_ellam_kadhal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [478]: Nenjam Ellam Kadhal"; FAILED=$((FAILED+1)); }

# [479/1000] Mainaru Vetti Katti — Santhosh Narayanan
yt-dlp "ytsearch1:Mainaru Vetti Katti Santhosh Narayanan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/santhosh_narayanan_mainaru_vetti_katti.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [479]: Mainaru Vetti Katti"; FAILED=$((FAILED+1)); }

# [480/1000] Onnu Rendu Moo — Grace
yt-dlp "ytsearch1:Onnu Rendu Moo Grace" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/grace_jassie_gift_mukesh_vadivelu_onnu_rendu_moo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [480]: Onnu Rendu Moo"; FAILED=$((FAILED+1)); }

# [481/1000] Poove Poove Sollidu — Vijay Antony
yt-dlp "ytsearch1:Poove Poove Sollidu Vijay Antony" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_antony_poove_poove_sollidu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [481]: Poove Poove Sollidu"; FAILED=$((FAILED+1)); }

# [482/1000] En Kannodu (Language: Tamil; Film: Azagki; Film Artists: Parthiban, Nandita Dass) — Yuvan
yt-dlp "ytsearch1:En Kannodu (Language: Tamil; Film: Azagki; Film Artists: Parthiban, Nandita Dass) Yuvan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_en_kannodu_language_tamil_film_azagki_film_artists_parthiban.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [482]: En Kannodu (Language: Tamil; Film: Azagki; Film Artists: Parthiban, Nandita Dass)"; FAILED=$((FAILED+1)); }

# [483/1000] Kangal Kandadhu (Language: Tamil; Film: Oru Kalluriyin Kadhai; Film Artists: Arya, Sonia Agarwal) — Ranjith
yt-dlp "ytsearch1:Kangal Kandadhu (Language: Tamil; Film: Oru Kalluriyin Kadhai; Film Artists: Arya, Sonia Agarwal) Ranjith" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_kangal_kandadhu_language_tamil_film_oru_kalluriyin_kadhai_fi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [483]: Kangal Kandadhu (Language: Tamil; Film: Oru Kalluriyin Kadhai; Film Artists: Arya, Sonia Agarwal)"; FAILED=$((FAILED+1)); }

# [484/1000] Hey Salaa — Blaaze
yt-dlp "ytsearch1:Hey Salaa Blaaze" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/blaaze_naresh_iyyar_mohd_aslam_hey_salaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [484]: Hey Salaa"; FAILED=$((FAILED+1)); }

# [485/1000] Hosanna — Vijay Prakash
yt-dlp "ytsearch1:Hosanna Vijay Prakash" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_prakash_suzanne_dmello_blaaze_hosanna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [485]: Hosanna"; FAILED=$((FAILED+1)); }

# [486/1000] Chellakileye — Ranjith Govind
yt-dlp "ytsearch1:Chellakileye Ranjith Govind" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_govind_chellakileye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [486]: Chellakileye"; FAILED=$((FAILED+1)); }

# [487/1000] Mental Manadhil — A.R. Rahman & Jonita Gandhi
yt-dlp "ytsearch1:Mental Manadhil A.R. Rahman & Jonita Gandhi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jonita_gandhi_mental_manadhil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [487]: Mental Manadhil"; FAILED=$((FAILED+1)); }

# [488/1000] Pistah — Shabareesh Varma
yt-dlp "ytsearch1:Pistah Shabareesh Varma" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shabareesh_varma_pistah.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [488]: Pistah"; FAILED=$((FAILED+1)); }

# [489/1000] Music Bit — Devi Sri Prasad
yt-dlp "ytsearch1:Music Bit Devi Sri Prasad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/devi_sri_prasad_music_bit.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [489]: Music Bit"; FAILED=$((FAILED+1)); }

# [490/1000] Markazhi Thingal — Unnikrishnan
yt-dlp "ytsearch1:Markazhi Thingal Unnikrishnan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/unnikrishnan_markazhi_thingal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [490]: Markazhi Thingal"; FAILED=$((FAILED+1)); }

# [491/1000] Kedakkari — A.R. Rahman
yt-dlp "ytsearch1:Kedakkari A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kedakkari.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [491]: Kedakkari"; FAILED=$((FAILED+1)); }

# [492/1000] Lajjavathiye Ennai Asathu — Jassie Gift
yt-dlp "ytsearch1:Lajjavathiye Ennai Asathu Jassie Gift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jassie_gift_lajjavathiye_ennai_asathu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [492]: Lajjavathiye Ennai Asathu"; FAILED=$((FAILED+1)); }

# [493/1000] Raha Laska Fik — Hindi
yt-dlp "ytsearch1:Raha Laska Fik Hindi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hindi_raha_laska_fik.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [493]: Raha Laska Fik"; FAILED=$((FAILED+1)); }

# [494/1000] Rangu Rangamma — Harris Jayaraj
yt-dlp "ytsearch1:Rangu Rangamma Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_rangu_rangamma.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [494]: Rangu Rangamma"; FAILED=$((FAILED+1)); }

# [495/1000] Pessamal — Amrita Jayakumar
yt-dlp "ytsearch1:Pessamal Amrita Jayakumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/amrita_jayakumar_pessamal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [495]: Pessamal"; FAILED=$((FAILED+1)); }

# [496/1000] Poi solla intha — Yuvan Shankar Raja
yt-dlp "ytsearch1:Poi solla intha Yuvan Shankar Raja" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_shankar_raja_poi_solla_intha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [496]: Poi solla intha"; FAILED=$((FAILED+1)); }

# [497/1000] Kandukondain Kandukondain — A.R. Rahman
yt-dlp "ytsearch1:Kandukondain Kandukondain A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kandukondain_kandukondain.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [497]: Kandukondain Kandukondain"; FAILED=$((FAILED+1)); }

# [498/1000] Sowkkiyama — Kadri Gopalnath
yt-dlp "ytsearch1:Sowkkiyama Kadri Gopalnath" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kadri_gopalnath_sowkkiyama.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [498]: Sowkkiyama"; FAILED=$((FAILED+1)); }

# [499/1000] Zindagi — Srinivas
yt-dlp "ytsearch1:Zindagi Srinivas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/srinivas_zindagi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [499]: Zindagi"; FAILED=$((FAILED+1)); }

# [500/1000] Nenje Nenje — Harris Jayaraj
yt-dlp "ytsearch1:Nenje Nenje Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_nenje_nenje.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [500]: Nenje Nenje"; FAILED=$((FAILED+1)); }

# [501/1000] Why this kolaveri di — Dhanush
yt-dlp "ytsearch1:Why this kolaveri di Dhanush" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanush_why_this_kolaveri_di.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [501]: Why this kolaveri di"; FAILED=$((FAILED+1)); }

# [502/1000] Rangola Hola Hola — Shankar Mahadevan
yt-dlp "ytsearch1:Rangola Hola Hola Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_sujatha_rangola_hola_hola.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [502]: Rangola Hola Hola"; FAILED=$((FAILED+1)); }

# [503/1000] Rahatulla — Anupama
yt-dlp "ytsearch1:Rahatulla Anupama" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anupama_rahatulla.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [503]: Rahatulla"; FAILED=$((FAILED+1)); }

# [504/1000] Excuse Me Mr. Kanthaswamy — Vikram
yt-dlp "ytsearch1:Excuse Me Mr. Kanthaswamy Vikram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vikram_suchitra_kuma_excuse_me_mr_kanthaswamy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [504]: Excuse Me Mr. Kanthaswamy"; FAILED=$((FAILED+1)); }

# [505/1000] Imsaiye (Language: Tamil; Film: Kannukul Nilavu; Film Artists: Vijay, Shalini) — Srinivas
yt-dlp "ytsearch1:Imsaiye (Language: Tamil; Film: Kannukul Nilavu; Film Artists: Vijay, Shalini) Srinivas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/srinivas_imsaiye_language_tamil_film_kannukul_nilavu_film_artists_vij.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [505]: Imsaiye (Language: Tamil; Film: Kannukul Nilavu; Film Artists: Vijay, Shalini)"; FAILED=$((FAILED+1)); }

# [506/1000] Konjum Mainakkale-StarMusiQ.Com — Sadhana Sargam
yt-dlp "ytsearch1:Konjum Mainakkale-StarMusiQ.Com Sadhana Sargam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sadhana_sargam_konjum_mainakkale_starmusiqcom.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [506]: Konjum Mainakkale-StarMusiQ.Com"; FAILED=$((FAILED+1)); }

# [507/1000] Kuchi Kuchi — Hariharan
yt-dlp "ytsearch1:Kuchi Kuchi Hariharan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_swarnalatha_shweta_mohan_kuchi_kuchi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [507]: Kuchi Kuchi"; FAILED=$((FAILED+1)); }

# [508/1000] Water Packet (From Raayan) — A.R. Rahman
yt-dlp "ytsearch1:Water Packet (From Raayan) A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_shweta_mohan_gana_kadhar_santhosh_narayanan_water_packet_from_raayan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [508]: Water Packet (From Raayan)"; FAILED=$((FAILED+1)); }

# [509/1000] Nallavan Nallavan (Be A Good Boy) — Hamsalekha
yt-dlp "ytsearch1:Nallavan Nallavan (Be A Good Boy) Hamsalekha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hamsalekha_nallavan_nallavan_be_a_good_boy.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [509]: Nallavan Nallavan (Be A Good Boy)"; FAILED=$((FAILED+1)); }

# [510/1000] Vaa Chellam — Udit Narayanan
yt-dlp "ytsearch1:Vaa Chellam Udit Narayanan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayanan_vaa_chellam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [510]: Vaa Chellam"; FAILED=$((FAILED+1)); }

# [511/1000] Un Azhzgukku — Shankar Mahadevan
yt-dlp "ytsearch1:Un Azhzgukku Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_sujatha_un_azhzgukku.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [511]: Un Azhzgukku"; FAILED=$((FAILED+1)); }

# [512/1000] Urvashi Uravashi — a.r. rahman
yt-dlp "ytsearch1:Urvashi Uravashi a.r. rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_suresh_peters_shahul_hameed_urvashi_uravashi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [512]: Urvashi Uravashi"; FAILED=$((FAILED+1)); }

# [513/1000] Gadi Thalupulu — Thaman S.
yt-dlp "ytsearch1:Gadi Thalupulu Thaman S." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/thaman_s_gadi_thalupulu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [513]: Gadi Thalupulu"; FAILED=$((FAILED+1)); }

# [514/1000] Ro Ro Roshini — Nivas
yt-dlp "ytsearch1:Ro Ro Roshini Nivas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nivas_ro_ro_roshini.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [514]: Ro Ro Roshini"; FAILED=$((FAILED+1)); }

# [515/1000] Aaja Meri Soniye — S.P.Charan
yt-dlp "ytsearch1:Aaja Meri Soniye S.P.Charan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/spcharanvijay_yesudaspremgi_amaren_aaja_meri_soniye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [515]: Aaja Meri Soniye"; FAILED=$((FAILED+1)); }

# [516/1000] So Baby — Sivakarthikeyan
yt-dlp "ytsearch1:So Baby Sivakarthikeyan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sivakarthikeyan_so_baby.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [516]: So Baby"; FAILED=$((FAILED+1)); }

# [517/1000] Sirichi Sirichi — Grace Karunas
yt-dlp "ytsearch1:Sirichi Sirichi Grace Karunas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/grace_karunas_sirichi_sirichi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [517]: Sirichi Sirichi"; FAILED=$((FAILED+1)); }

# [518/1000] Aalaala Kandaa — M.S.V.
yt-dlp "ytsearch1:Aalaala Kandaa M.S.V." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/msv_aalaala_kandaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [518]: Aalaala Kandaa"; FAILED=$((FAILED+1)); }

# [519/1000] Kannodu Kaanberallam — Nithyashree
yt-dlp "ytsearch1:Kannodu Kaanberallam Nithyashree" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nithyashree_kannodu_kaanberallam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [519]: Kannodu Kaanberallam"; FAILED=$((FAILED+1)); }

# [520/1000] Alai Payuthey — Kalyani Menon
yt-dlp "ytsearch1:Alai Payuthey Kalyani Menon" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kalyani_menon_harini_neyveli_ramalakshmi_alai_payuthey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [520]: Alai Payuthey"; FAILED=$((FAILED+1)); }

# [521/1000] Manogari — Haricharan & Mohana
yt-dlp "ytsearch1:Manogari Haricharan & Mohana" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/haricharan_mohana_manogari.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [521]: Manogari"; FAILED=$((FAILED+1)); }

# [522/1000] Jai Ho! (You Are My Destiny) — A.R. Rahman
yt-dlp "ytsearch1:Jai Ho! (You Are My Destiny) A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jai_ho_you_are_my_destiny.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [522]: Jai Ho! (You Are My Destiny)"; FAILED=$((FAILED+1)); }

# [523/1000] Enna Sona — A.R. Rahman
yt-dlp "ytsearch1:Enna Sona A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_enna_sona.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [523]: Enna Sona"; FAILED=$((FAILED+1)); }

# [524/1000] Kun Faya Kun — A.R. Rahman
yt-dlp "ytsearch1:Kun Faya Kun A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kun_faya_kun.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [524]: Kun Faya Kun"; FAILED=$((FAILED+1)); }

# [525/1000] Riots — A.R. Rahman
yt-dlp "ytsearch1:Riots A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_riots.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [525]: Riots"; FAILED=$((FAILED+1)); }

# [526/1000] Mumbai Theme Tune — A.R. Rahman
yt-dlp "ytsearch1:Mumbai Theme Tune A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mumbai_theme_tune.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [526]: Mumbai Theme Tune"; FAILED=$((FAILED+1)); }

# [527/1000] Jashn-E-Bahaaraa — A.R. Rahman
yt-dlp "ytsearch1:Jashn-E-Bahaaraa A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jashn_e_bahaaraa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [527]: Jashn-E-Bahaaraa"; FAILED=$((FAILED+1)); }

# [528/1000] Maahi Ve — A.R. Rahman
yt-dlp "ytsearch1:Maahi Ve A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_maahi_ve.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [528]: Maahi Ve"; FAILED=$((FAILED+1)); }

# [529/1000] Mausam & Escape — A.R. Rahman
yt-dlp "ytsearch1:Mausam & Escape A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mausam_escape.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [529]: Mausam & Escape"; FAILED=$((FAILED+1)); }

# [530/1000] Nadaan Parinde — A.R. Rahman
yt-dlp "ytsearch1:Nadaan Parinde A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_nadaan_parinde.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [530]: Nadaan Parinde"; FAILED=$((FAILED+1)); }

# [531/1000] Raanjhanaa (From Raanjhanaa) — A.R. Rahman
yt-dlp "ytsearch1:Raanjhanaa (From Raanjhanaa) A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_raanjhanaa_from_raanjhanaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [531]: Raanjhanaa (From Raanjhanaa)"; FAILED=$((FAILED+1)); }

# [532/1000] Raanjhanaa — A.R. Rahman
yt-dlp "ytsearch1:Raanjhanaa A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_raanjhanaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [532]: Raanjhanaa"; FAILED=$((FAILED+1)); }

# [533/1000] Latika's Theme — A.R. Rahman
yt-dlp "ytsearch1:Latika's Theme A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_latikas_theme.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [533]: Latika's Theme"; FAILED=$((FAILED+1)); }

# [534/1000] Challa — A.R. Rahman
yt-dlp "ytsearch1:Challa A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_challa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [534]: Challa"; FAILED=$((FAILED+1)); }

# [535/1000] Tum Tak (From Raanjhanaa) — A.R. Rahman
yt-dlp "ytsearch1:Tum Tak (From Raanjhanaa) A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_tum_tak_from_raanjhanaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [535]: Tum Tak (From Raanjhanaa)"; FAILED=$((FAILED+1)); }

# [536/1000] Tum Tak — A.R. Rahman
yt-dlp "ytsearch1:Tum Tak A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_tum_tak.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [536]: Tum Tak"; FAILED=$((FAILED+1)); }

# [537/1000] Barso Re — A.R. Rahman
yt-dlp "ytsearch1:Barso Re A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_barso_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [537]: Barso Re"; FAILED=$((FAILED+1)); }

# [538/1000] Param Sundari — A.R. Rahman
yt-dlp "ytsearch1:Param Sundari A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_param_sundari.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [538]: Param Sundari"; FAILED=$((FAILED+1)); }

# [539/1000] Roobaroo — A.R. Rahman
yt-dlp "ytsearch1:Roobaroo A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_roobaroo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [539]: Roobaroo"; FAILED=$((FAILED+1)); }

# [540/1000] The Humma Song — A.R. Rahman
yt-dlp "ytsearch1:The Humma Song A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_the_humma_song.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [540]: The Humma Song"; FAILED=$((FAILED+1)); }

# [541/1000] Ringa Ringa — A.R. Rahman
yt-dlp "ytsearch1:Ringa Ringa A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_ringa_ringa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [541]: Ringa Ringa"; FAILED=$((FAILED+1)); }

# [542/1000] Luka Chuppi — A.R. Rahman
yt-dlp "ytsearch1:Luka Chuppi A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_luka_chuppi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [542]: Luka Chuppi"; FAILED=$((FAILED+1)); }

# [543/1000] Liquid Dance — A.R. Rahman
yt-dlp "ytsearch1:Liquid Dance A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_liquid_dance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [543]: Liquid Dance"; FAILED=$((FAILED+1)); }

# [544/1000] Jiya Re — A.R. Rahman
yt-dlp "ytsearch1:Jiya Re A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jiya_re.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [544]: Jiya Re"; FAILED=$((FAILED+1)); }

# [545/1000] Radha Kaise Na Jale — A.R. Rahman
yt-dlp "ytsearch1:Radha Kaise Na Jale A.R. Rahman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_radha_kaise_na_jale.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [545]: Radha Kaise Na Jale"; FAILED=$((FAILED+1)); }

# [546/1000] CHALEYA — Anirudh Ravichander
yt-dlp "ytsearch1:CHALEYA Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_chaleya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [546]: CHALEYA"; FAILED=$((FAILED+1)); }

# [547/1000] Chaleya (From Jawan) — Anirudh Ravichander
yt-dlp "ytsearch1:Chaleya (From Jawan) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_chaleya_from_jawan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [547]: Chaleya (From Jawan)"; FAILED=$((FAILED+1)); }

# [548/1000] Why This Kolaveri Di? - The Soup of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Why This Kolaveri Di? - The Soup of Love Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_why_this_kolaveri_di_the_soup_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [548]: Why This Kolaveri Di? - The Soup of Love"; FAILED=$((FAILED+1)); }

# [549/1000] Kannazhaga - The Kiss of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Kannazhaga - The Kiss of Love Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_kannazhaga_the_kiss_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [549]: Kannazhaga - The Kiss of Love"; FAILED=$((FAILED+1)); }

# [550/1000] Arabic Kuthu - Halamithi Habibo (From Beast) — Anirudh Ravichander
yt-dlp "ytsearch1:Arabic Kuthu - Halamithi Habibo (From Beast) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_arabic_kuthu_halamithi_habibo_from_beast.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [550]: Arabic Kuthu - Halamithi Habibo (From Beast)"; FAILED=$((FAILED+1)); }

# [551/1000] Idhazhin Oram - The Innocence of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Idhazhin Oram - The Innocence of Love Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_idhazhin_oram_the_innocence_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [551]: Idhazhin Oram - The Innocence of Love"; FAILED=$((FAILED+1)); }

# [552/1000] Hayyoda (From Jawan) — Anirudh Ravichander
yt-dlp "ytsearch1:Hayyoda (From Jawan) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_hayyoda_from_jawan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [552]: Hayyoda (From Jawan)"; FAILED=$((FAILED+1)); }

# [553/1000] Hukum - Thalaivar Alappara — Anirudh Ravichander
yt-dlp "ytsearch1:Hukum - Thalaivar Alappara Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_hukum_thalaivar_alappara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [553]: Hukum - Thalaivar Alappara"; FAILED=$((FAILED+1)); }

# [554/1000] Thangamey — Anirudh Ravichander
yt-dlp "ytsearch1:Thangamey Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_thangamey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [554]: Thangamey"; FAILED=$((FAILED+1)); }

# [555/1000] Naa Ready (From Leo) — Anirudh Ravichander
yt-dlp "ytsearch1:Naa Ready (From Leo) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_naa_ready_from_leo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [555]: Naa Ready (From Leo)"; FAILED=$((FAILED+1)); }

# [556/1000] Nee Paartha Vizhigal - The Touch of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Nee Paartha Vizhigal - The Touch of Love Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_nee_paartha_vizhigal_the_touch_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [556]: Nee Paartha Vizhigal - The Touch of Love"; FAILED=$((FAILED+1)); }

# [557/1000] Maari Thara Local - Here Comes Maari — Anirudh Ravichander
yt-dlp "ytsearch1:Maari Thara Local - Here Comes Maari Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_maari_thara_local_here_comes_maari.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [557]: Maari Thara Local - Here Comes Maari"; FAILED=$((FAILED+1)); }

# [558/1000] Vaathi Coming — Anirudh Ravichander
yt-dlp "ytsearch1:Vaathi Coming Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_vaathi_coming.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [558]: Vaathi Coming"; FAILED=$((FAILED+1)); }

# [559/1000] Dippam Dappam (From Kaathuvaakula Rendu Kaadhal) — Anirudh Ravichander
yt-dlp "ytsearch1:Dippam Dappam (From Kaathuvaakula Rendu Kaadhal) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_dippam_dappam_from_kaathuvaakula_rendu_kaadhal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [559]: Dippam Dappam (From Kaathuvaakula Rendu Kaadhal)"; FAILED=$((FAILED+1)); }

# [560/1000] Udhungada Sangu (From Velai Illa Pattadhaari) — Anirudh Ravichander
yt-dlp "ytsearch1:Udhungada Sangu (From Velai Illa Pattadhaari) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_udhungada_sangu_from_velai_illa_pattadhaari.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [560]: Udhungada Sangu (From Velai Illa Pattadhaari)"; FAILED=$((FAILED+1)); }

# [561/1000] Vikram - Title Track — Anirudh Ravichander
yt-dlp "ytsearch1:Vikram - Title Track Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_vikram_title_track.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [561]: Vikram - Title Track"; FAILED=$((FAILED+1)); }

# [562/1000] Don'u Don'u Don'u - The Don's Romance — Anirudh Ravichander
yt-dlp "ytsearch1:Don'u Don'u Don'u - The Don's Romance Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_donu_donu_donu_the_dons_romance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [562]: Don'u Don'u Don'u - The Don's Romance"; FAILED=$((FAILED+1)); }

# [563/1000] Ordinary Person (From Leo) — Anirudh Ravichander
yt-dlp "ytsearch1:Ordinary Person (From Leo) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_ordinary_person_from_leo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [563]: Ordinary Person (From Leo)"; FAILED=$((FAILED+1)); }

# [564/1000] Lokiverse - Background Score — Anirudh Ravichander
yt-dlp "ytsearch1:Lokiverse - Background Score Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_lokiverse_background_score.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [564]: Lokiverse - Background Score"; FAILED=$((FAILED+1)); }

# [565/1000] Badass (From Leo) — Anirudh Ravichander
yt-dlp "ytsearch1:Badass (From Leo) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_badass_from_leo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [565]: Badass (From Leo)"; FAILED=$((FAILED+1)); }

# [566/1000] Kaavaalaa (From Jailer) — Anirudh Ravichander
yt-dlp "ytsearch1:Kaavaalaa (From Jailer) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_kaavaalaa_from_jailer.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [566]: Kaavaalaa (From Jailer)"; FAILED=$((FAILED+1)); }

# [567/1000] Oh Penne — Anirudh Ravichander
yt-dlp "ytsearch1:Oh Penne Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_oh_penne.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [567]: Oh Penne"; FAILED=$((FAILED+1)); }

# [568/1000] Po Nee Po - The Pain of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Po Nee Po - The Pain of Love Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_po_nee_po_the_pain_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [568]: Po Nee Po - The Pain of Love"; FAILED=$((FAILED+1)); }

# [569/1000] Not Ramaiya Vastavaiya — Anirudh Ravichander
yt-dlp "ytsearch1:Not Ramaiya Vastavaiya Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_not_ramaiya_vastavaiya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [569]: Not Ramaiya Vastavaiya"; FAILED=$((FAILED+1)); }

# [570/1000] Senjitaley — Anirudh Ravichander
yt-dlp "ytsearch1:Senjitaley Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_senjitaley.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [570]: Senjitaley"; FAILED=$((FAILED+1)); }

# [571/1000] Marana Mass - From Petta — Anirudh Ravichander
yt-dlp "ytsearch1:Marana Mass - From Petta Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_marana_mass_from_petta.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [571]: Marana Mass - From Petta"; FAILED=$((FAILED+1)); }

# [572/1000] Once Upon a Time — Anirudh Ravichander
yt-dlp "ytsearch1:Once Upon a Time Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_once_upon_a_time.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [572]: Once Upon a Time"; FAILED=$((FAILED+1)); }

# [573/1000] Vaathi Coming (From Master) — Anirudh Ravichander
yt-dlp "ytsearch1:Vaathi Coming (From Master) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_vaathi_coming_from_master.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [573]: Vaathi Coming (From Master)"; FAILED=$((FAILED+1)); }

# [574/1000] Manasilaayo (From Vettaiyan) — Anirudh Ravichander
yt-dlp "ytsearch1:Manasilaayo (From Vettaiyan) Anirudh Ravichander" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_manasilaayo_from_vettaiyan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [574]: Manasilaayo (From Vettaiyan)"; FAILED=$((FAILED+1)); }

# [575/1000] Unakkul Naane — Harris Jayaraj
yt-dlp "ytsearch1:Unakkul Naane Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_unakkul_naane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [575]: Unakkul Naane"; FAILED=$((FAILED+1)); }

# [576/1000] Nenjukkul Peidhidum — Harris Jayaraj
yt-dlp "ytsearch1:Nenjukkul Peidhidum Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_nenjukkul_peidhidum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [576]: Nenjukkul Peidhidum"; FAILED=$((FAILED+1)); }

# [577/1000] Mundhinam — Harris Jayaraj
yt-dlp "ytsearch1:Mundhinam Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_mundhinam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [577]: Mundhinam"; FAILED=$((FAILED+1)); }

# [578/1000] Vaarayo Vaarayo — Harris Jayaraj
yt-dlp "ytsearch1:Vaarayo Vaarayo Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_vaarayo_vaarayo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [578]: Vaarayo Vaarayo"; FAILED=$((FAILED+1)); }

# [579/1000] Ava Enna — Harris Jayaraj
yt-dlp "ytsearch1:Ava Enna Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_ava_enna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [579]: Ava Enna"; FAILED=$((FAILED+1)); }

# [580/1000] Adiyae Kolluthey — Harris Jayaraj
yt-dlp "ytsearch1:Adiyae Kolluthey Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_adiyae_kolluthey.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [580]: Adiyae Kolluthey"; FAILED=$((FAILED+1)); }

# [581/1000] Annul Maelae — Harris Jayaraj
yt-dlp "ytsearch1:Annul Maelae Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_annul_maelae.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [581]: Annul Maelae"; FAILED=$((FAILED+1)); }

# [582/1000] Ennamo Yeadho — Harris Jayaraj
yt-dlp "ytsearch1:Ennamo Yeadho Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_ennamo_yeadho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [582]: Ennamo Yeadho"; FAILED=$((FAILED+1)); }

# [583/1000] Anbe En Anbe — Harris Jayaraj
yt-dlp "ytsearch1:Anbe En Anbe Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_anbe_en_anbe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [583]: Anbe En Anbe"; FAILED=$((FAILED+1)); }

# [584/1000] Hasili Fisiliye — Harris Jayaraj
yt-dlp "ytsearch1:Hasili Fisiliye Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_hasili_fisiliye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [584]: Hasili Fisiliye"; FAILED=$((FAILED+1)); }

# [585/1000] Ennamo Yeadho (From KO) — Harris Jayaraj
yt-dlp "ytsearch1:Ennamo Yeadho (From KO) Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_ennamo_yeadho_from_ko.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [585]: Ennamo Yeadho (From KO)"; FAILED=$((FAILED+1)); }

# [586/1000] Yethi Yethi — Harris Jayaraj
yt-dlp "ytsearch1:Yethi Yethi Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_yethi_yethi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [586]: Yethi Yethi"; FAILED=$((FAILED+1)); }

# [587/1000] Oh! Shanthi Shanthi — Harris Jayaraj
yt-dlp "ytsearch1:Oh! Shanthi Shanthi Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_oh_shanthi_shanthi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [587]: Oh! Shanthi Shanthi"; FAILED=$((FAILED+1)); }

# [588/1000] Yaaro Manathile — Harris Jayaraj
yt-dlp "ytsearch1:Yaaro Manathile Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_yaaro_manathile.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [588]: Yaaro Manathile"; FAILED=$((FAILED+1)); }

# [589/1000] Mun Andhi — Harris Jayaraj
yt-dlp "ytsearch1:Mun Andhi Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_mun_andhi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [589]: Mun Andhi"; FAILED=$((FAILED+1)); }

# [590/1000] Danga Maari Oodhari — Harris Jayaraj
yt-dlp "ytsearch1:Danga Maari Oodhari Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_danga_maari_oodhari.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [590]: Danga Maari Oodhari"; FAILED=$((FAILED+1)); }

# [591/1000] Mazhai Vara Pogudhae — Harris Jayaraj
yt-dlp "ytsearch1:Mazhai Vara Pogudhae Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_mazhai_vara_pogudhae.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [591]: Mazhai Vara Pogudhae"; FAILED=$((FAILED+1)); }

# [592/1000] Engeyum Kaadhal — Harris Jayaraj
yt-dlp "ytsearch1:Engeyum Kaadhal Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_engeyum_kaadhal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [592]: Engeyum Kaadhal"; FAILED=$((FAILED+1)); }

# [593/1000] Aathangara Orathil — Harris Jayaraj
yt-dlp "ytsearch1:Aathangara Orathil Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_aathangara_orathil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [593]: Aathangara Orathil"; FAILED=$((FAILED+1)); }

# [594/1000] Manjal Veyil — Harris Jayaraj
yt-dlp "ytsearch1:Manjal Veyil Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_manjal_veyil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [594]: Manjal Veyil"; FAILED=$((FAILED+1)); }

# [595/1000] Adhaaru Adhaaru — Harris Jayaraj
yt-dlp "ytsearch1:Adhaaru Adhaaru Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_adhaaru_adhaaru.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [595]: Adhaaru Adhaaru"; FAILED=$((FAILED+1)); }

# [596/1000] Yellae Lama — Harris Jayaraj
yt-dlp "ytsearch1:Yellae Lama Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_yellae_lama.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [596]: Yellae Lama"; FAILED=$((FAILED+1)); }

# [597/1000] Unakkenna Venum Sollu — Harris Jayaraj
yt-dlp "ytsearch1:Unakkenna Venum Sollu Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_unakkenna_venum_sollu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [597]: Unakkenna Venum Sollu"; FAILED=$((FAILED+1)); }

# [598/1000] Thodu Vaanam — Harris Jayaraj
yt-dlp "ytsearch1:Thodu Vaanam Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_thodu_vaanam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [598]: Thodu Vaanam"; FAILED=$((FAILED+1)); }

# [599/1000] Paartha Mudhal — Harris Jayaraj
yt-dlp "ytsearch1:Paartha Mudhal Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_paartha_mudhal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [599]: Paartha Mudhal"; FAILED=$((FAILED+1)); }

# [600/1000] Naaloney Pongaynu — Harris Jayaraj
yt-dlp "ytsearch1:Naaloney Pongaynu Harris Jayaraj" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_naaloney_pongaynu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [600]: Naaloney Pongaynu"; FAILED=$((FAILED+1)); }

# [601/1000] Nagumo — Hesham Abdul Wahab
yt-dlp "ytsearch1:Nagumo Hesham Abdul Wahab" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hesham_abdul_wahab_nagumo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [601]: Nagumo"; FAILED=$((FAILED+1)); }

# [602/1000] Puthu Mazha (From Sarvam Maya) — Justin Prabhakaran
yt-dlp "ytsearch1:Puthu Mazha (From Sarvam Maya) Justin Prabhakaran" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_prabhakaran_puthu_mazha_from_sarvam_maya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [602]: Puthu Mazha (From Sarvam Maya)"; FAILED=$((FAILED+1)); }

# [603/1000] Chiri Thottu (From Sarvam Maya) — Justin Prabhakaran
yt-dlp "ytsearch1:Chiri Thottu (From Sarvam Maya) Justin Prabhakaran" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_prabhakaran_chiri_thottu_from_sarvam_maya.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [603]: Chiri Thottu (From Sarvam Maya)"; FAILED=$((FAILED+1)); }

# [604/1000] Naran (Language: Malayalam; Film: Naran; Film Artists: Mohan Lal, Devyani) — Chitra
yt-dlp "ytsearch1:Naran (Language: Malayalam; Film: Naran; Film Artists: Mohan Lal, Devyani) Chitra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_naran_language_malayalam_film_naran_film_artists_mohan_lal_d.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [604]: Naran (Language: Malayalam; Film: Naran; Film Artists: Mohan Lal, Devyani)"; FAILED=$((FAILED+1)); }

# [605/1000] Kalapakkaara (From King of Kotha) — Jakes Bejoy
yt-dlp "ytsearch1:Kalapakkaara (From King of Kotha) Jakes Bejoy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jakes_bejoy_kalapakkaara_from_king_of_kotha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [605]: Kalapakkaara (From King of Kotha)"; FAILED=$((FAILED+1)); }

# [606/1000] Chanjadi Aadi (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) — Adnan Sami
yt-dlp "ytsearch1:Chanjadi Aadi (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) Adnan Sami" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_chanjadi_aadi_language_malayalam_film_makalkku_film_artists_.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [606]: Chanjadi Aadi (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana)"; FAILED=$((FAILED+1)); }

# [607/1000] Karunya roopanam (Psalm 50 - Miserere) — Jerry Amaldev
yt-dlp "ytsearch1:Karunya roopanam (Psalm 50 - Miserere) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_karunya_roopanam_psalm_50_miserere.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [607]: Karunya roopanam (Psalm 50 - Miserere)"; FAILED=$((FAILED+1)); }

# [608/1000] Para Para — Anoop Mohandas
yt-dlp "ytsearch1:Para Para Anoop Mohandas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anoop_mohandas_para_para.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [608]: Para Para"; FAILED=$((FAILED+1)); }

# [609/1000] Mel Mel — Naresh Iyer
yt-dlp "ytsearch1:Mel Mel Naresh Iyer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_mel_mel.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [609]: Mel Mel"; FAILED=$((FAILED+1)); }

# [610/1000] Parayathe Parayunna — Nikhil Chandran
yt-dlp "ytsearch1:Parayathe Parayunna Nikhil Chandran" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nikhil_chandran_parayathe_parayunna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [610]: Parayathe Parayunna"; FAILED=$((FAILED+1)); }

# [611/1000] Raat — Jackson Vijayan
yt-dlp "ytsearch1:Raat Jackson Vijayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jackson_vijayan_raat.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [611]: Raat"; FAILED=$((FAILED+1)); }

# [612/1000] Anuraghathin Velayil — Vineeth Sreenivasan
yt-dlp "ytsearch1:Anuraghathin Velayil Vineeth Sreenivasan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_anuraghathin_velayil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [612]: Anuraghathin Velayil"; FAILED=$((FAILED+1)); }

# [613/1000] Ente Khalbile — Vineeth Sreenivasan
yt-dlp "ytsearch1:Ente Khalbile Vineeth Sreenivasan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_ente_khalbile.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [613]: Ente Khalbile"; FAILED=$((FAILED+1)); }

# [614/1000] Nandiyalennullam — Sujatha
yt-dlp "ytsearch1:Nandiyalennullam Sujatha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sujatha_nandiyalennullam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [614]: Nandiyalennullam"; FAILED=$((FAILED+1)); }

# [615/1000] Panipaali-2 — NJ
yt-dlp "ytsearch1:Panipaali-2 NJ" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nj_panipaali_2.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [615]: Panipaali-2"; FAILED=$((FAILED+1)); }

# [616/1000] Innaley (Chitra) (Language: Malayalam; Film: Balettan; Film Artists: Mohan Lal, Devyani) — Chitra
yt-dlp "ytsearch1:Innaley (Chitra) (Language: Malayalam; Film: Balettan; Film Artists: Mohan Lal, Devyani) Chitra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_innaley_chitra_language_malayalam_film_balettan_film_artists.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [616]: Innaley (Chitra) (Language: Malayalam; Film: Balettan; Film Artists: Mohan Lal, Devyani)"; FAILED=$((FAILED+1)); }

# [617/1000] Vazhthunnitha (Magnificat) — Jerry Amaldev
yt-dlp "ytsearch1:Vazhthunnitha (Magnificat) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_vazhthunnitha_magnificat.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [617]: Vazhthunnitha (Magnificat)"; FAILED=$((FAILED+1)); }

# [618/1000] Athiraliyum — Vijay Yesudas
yt-dlp "ytsearch1:Athiraliyum Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_athiraliyum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [618]: Athiraliyum"; FAILED=$((FAILED+1)); }

# [619/1000] Paathira Kaalam — Tribemama Marykali
yt-dlp "ytsearch1:Paathira Kaalam Tribemama Marykali" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tribemama_marykali_paathira_kaalam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [619]: Paathira Kaalam"; FAILED=$((FAILED+1)); }

# [620/1000] Arike Ninna — Hesham Abdul Wahab
yt-dlp "ytsearch1:Arike Ninna Hesham Abdul Wahab" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hesham_abdul_wahab_arike_ninna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [620]: Arike Ninna"; FAILED=$((FAILED+1)); }

# [621/1000] Rarify — John Young
yt-dlp "ytsearch1:Rarify John Young" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/john_young_rarify.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [621]: Rarify"; FAILED=$((FAILED+1)); }

# [622/1000] Maa Marubhoomi — Satheeshbabu
yt-dlp "ytsearch1:Maa Marubhoomi Satheeshbabu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/satheeshbabu_maa_marubhoomi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [622]: Maa Marubhoomi"; FAILED=$((FAILED+1)); }

# [623/1000] Theerathe Neelunne — Vineeth Sreenivasan
yt-dlp "ytsearch1:Theerathe Neelunne Vineeth Sreenivasan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_theerathe_neelunne.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [623]: Theerathe Neelunne"; FAILED=$((FAILED+1)); }

# [624/1000] Kaattu Mooliyo — Vineeth Sreenivasan
yt-dlp "ytsearch1:Kaattu Mooliyo Vineeth Sreenivasan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_kaattu_mooliyo.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [624]: Kaattu Mooliyo"; FAILED=$((FAILED+1)); }

# [625/1000] Trance (Title Track) — Vinayakan T K
yt-dlp "ytsearch1:Trance (Title Track) Vinayakan T K" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vinayakan_t_k_neha_s_nair_lee_trance_title_track.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [625]: Trance (Title Track)"; FAILED=$((FAILED+1)); }

# [626/1000] Paavakali (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) — Jassie Gift
yt-dlp "ytsearch1:Paavakali (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) Jassie Gift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jassie_gift_paavakali_language_malayalam_film_makalkku_film_artists_sure.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [626]: Paavakali (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana)"; FAILED=$((FAILED+1)); }

# [627/1000] Kandu Kandu (Repeat) (Language: Malayalam; Film: Mambazhakkalam; Film Artists: Mohan Lal, Shobana) — Nishad
yt-dlp "ytsearch1:Kandu Kandu (Repeat) (Language: Malayalam; Film: Mambazhakkalam; Film Artists: Mohan Lal, Shobana) Nishad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nishad_kandu_kandu_repeat_language_malayalam_film_mambazhakkalam_fi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [627]: Kandu Kandu (Repeat) (Language: Malayalam; Film: Mambazhakkalam; Film Artists: Mohan Lal, Shobana)"; FAILED=$((FAILED+1)); }

# [628/1000] Mukilin Magalaai (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) — Manjari
yt-dlp "ytsearch1:Mukilin Magalaai (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) Manjari" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/manjari_mukilin_magalaai_language_malayalam_film_makalkku_film_artis.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [628]: Mukilin Magalaai (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana)"; FAILED=$((FAILED+1)); }

# [629/1000] Karukara — Avial
yt-dlp "ytsearch1:Karukara Avial" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/avial_karukara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [629]: Karukara"; FAILED=$((FAILED+1)); }

# [630/1000] Njan Aara — Avial
yt-dlp "ytsearch1:Njan Aara Avial" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/avial_njan_aara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [630]: Njan Aara"; FAILED=$((FAILED+1)); }

# [631/1000] Ayalathe — Shreekumar Vakkiyil
yt-dlp "ytsearch1:Ayalathe Shreekumar Vakkiyil" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreekumar_vakkiyil_ayalathe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [631]: Ayalathe"; FAILED=$((FAILED+1)); }

# [632/1000] Kaathirunnu — Shreya Ghoshal
yt-dlp "ytsearch1:Kaathirunnu Shreya Ghoshal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_kaathirunnu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [632]: Kaathirunnu"; FAILED=$((FAILED+1)); }

# [633/1000] Nattucha Nerathu (Revival) — K.J. Yesudas
yt-dlp "ytsearch1:Nattucha Nerathu (Revival) K.J. Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kj_yesudas_nattucha_nerathu_revival.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [633]: Nattucha Nerathu (Revival)"; FAILED=$((FAILED+1)); }

# [634/1000] Otta Thumbi — Shankar Mahadevan
yt-dlp "ytsearch1:Otta Thumbi Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_otta_thumbi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [634]: Otta Thumbi"; FAILED=$((FAILED+1)); }

# [635/1000] Madhuram — K S Chitra
yt-dlp "ytsearch1:Madhuram K S Chitra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_s_chitra_madhuram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [635]: Madhuram"; FAILED=$((FAILED+1)); }

# [636/1000] Puttu paattu — Thakara
yt-dlp "ytsearch1:Puttu paattu Thakara" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/thakara_puttu_paattu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [636]: Puttu paattu"; FAILED=$((FAILED+1)); }

# [637/1000] Poomuthole - From Joseph — Niranj Suresh
yt-dlp "ytsearch1:Poomuthole - From Joseph Niranj Suresh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/niranj_suresh_poomuthole_from_joseph.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [637]: Poomuthole - From Joseph"; FAILED=$((FAILED+1)); }

# [638/1000] Why I'm Serious (Interlude) — T.I.
yt-dlp "ytsearch1:Why I'm Serious (Interlude) T.I." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ti_why_im_serious_interlude.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [638]: Why I'm Serious (Interlude)"; FAILED=$((FAILED+1)); }

# [639/1000] Vinnile Ghandarva — S. P. Venkatesh
yt-dlp "ytsearch1:Vinnile Ghandarva S. P. Venkatesh" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/s_p_venkatesh_vinnile_ghandarva.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [639]: Vinnile Ghandarva"; FAILED=$((FAILED+1)); }

# [640/1000] Jaya ghoshitha (Psalm 94 - Venite exultemus) — Jerry Amaldev
yt-dlp "ytsearch1:Jaya ghoshitha (Psalm 94 - Venite exultemus) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_jaya_ghoshitha_psalm_94_venite_exultemus.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [640]: Jaya ghoshitha (Psalm 94 - Venite exultemus)"; FAILED=$((FAILED+1)); }

# [641/1000] Innariyathe — Roby Abraham
yt-dlp "ytsearch1:Innariyathe Roby Abraham" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/roby_abraham_innariyathe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [641]: Innariyathe"; FAILED=$((FAILED+1)); }

# [642/1000] Neemathi Yenika — Malayalam Christian Songs
yt-dlp "ytsearch1:Neemathi Yenika Malayalam Christian Songs" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/malayalam_christian_songs_neemathi_yenika.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [642]: Neemathi Yenika"; FAILED=$((FAILED+1)); }

# [643/1000] Nee En Sundari (Language: Malayalam; Film: Sathyam; Film Artists: Prithiviraj, Priya Mani) — Chitra
yt-dlp "ytsearch1:Nee En Sundari (Language: Malayalam; Film: Sathyam; Film Artists: Prithiviraj, Priya Mani) Chitra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_nee_en_sundari_language_malayalam_film_sathyam_film_artists_.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [643]: Nee En Sundari (Language: Malayalam; Film: Sathyam; Film Artists: Prithiviraj, Priya Mani)"; FAILED=$((FAILED+1)); }

# [644/1000] Tharalam Malayalam Hot Full Movie — Mallu Films
yt-dlp "ytsearch1:Tharalam Malayalam Hot Full Movie Mallu Films" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mallu_films_tharalam_malayalam_hot_full_movie.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [644]: Tharalam Malayalam Hot Full Movie"; FAILED=$((FAILED+1)); }

# [645/1000] Pistah — Sabareesh Varma
yt-dlp "ytsearch1:Pistah Sabareesh Varma" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabareesh_varma_pistah.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [645]: Pistah"; FAILED=$((FAILED+1)); }

# [646/1000] Thedunnu — Venugopal
yt-dlp "ytsearch1:Thedunnu Venugopal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/venugopal_thedunnu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [646]: Thedunnu"; FAILED=$((FAILED+1)); }

# [647/1000] Irulkkannumay - From Kooman :The Night Rider — Vinayak Sasikumar
yt-dlp "ytsearch1:Irulkkannumay - From Kooman :The Night Rider Vinayak Sasikumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vinayak_sasikumar_irulkkannumay_from_kooman_the_night_rider.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [647]: Irulkkannumay - From Kooman :The Night Rider"; FAILED=$((FAILED+1)); }

# [648/1000] Kizhakku Pookkum — Shreya Ghoshal
yt-dlp "ytsearch1:Kizhakku Pookkum Shreya Ghoshal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_kizhakku_pookkum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [648]: Kizhakku Pookkum"; FAILED=$((FAILED+1)); }

# [649/1000] Kanmani Kanmani — Arvind Venugopal
yt-dlp "ytsearch1:Kanmani Kanmani Arvind Venugopal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arvind_venugopal_kanmani_kanmani.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [649]: Kanmani Kanmani"; FAILED=$((FAILED+1)); }

# [650/1000] Prem Nazir — Aromalunni Malayalam Full Movie
yt-dlp "ytsearch1:Prem Nazir Aromalunni Malayalam Full Movie" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/aromalunni_malayalam_full_movie_prem_nazir.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [650]: Prem Nazir"; FAILED=$((FAILED+1)); }

# [651/1000] Maarivil — Najim Arshad
yt-dlp "ytsearch1:Maarivil Najim Arshad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/najim_arshad_maarivil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [651]: Maarivil"; FAILED=$((FAILED+1)); }

# [652/1000] Jhoomo Re (International Version) — Kailash Kher
yt-dlp "ytsearch1:Jhoomo Re (International Version) Kailash Kher" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kailash_kher_jhoomo_re_international_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [652]: Jhoomo Re (International Version)"; FAILED=$((FAILED+1)); }

# [653/1000] Navyamamoru gaanam (Psalm 97 - Cantate Domino) — Jerry Amaldev
yt-dlp "ytsearch1:Navyamamoru gaanam (Psalm 97 - Cantate Domino) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_navyamamoru_gaanam_psalm_97_cantate_domino.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [653]: Navyamamoru gaanam (Psalm 97 - Cantate Domino)"; FAILED=$((FAILED+1)); }

# [654/1000] Oh Naadhan varavai (Psalm 23 Domini est terra) — Jerry Amaldev
yt-dlp "ytsearch1:Oh Naadhan varavai (Psalm 23 Domini est terra) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_oh_naadhan_varavai_psalm_23_domini_est_terra.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [654]: Oh Naadhan varavai (Psalm 23 Domini est terra)"; FAILED=$((FAILED+1)); }

# [655/1000] Aashichavan — Jayasurya
yt-dlp "ytsearch1:Aashichavan Jayasurya" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jayasurya_aashichavan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [655]: Aashichavan"; FAILED=$((FAILED+1)); }

# [656/1000] Minmini Parvaighal (Language: Tamil; Film: Julee Ganapathi; Film Artists: Jayaram, Ramya Krishnan) — Jesudas
yt-dlp "ytsearch1:Minmini Parvaighal (Language: Tamil; Film: Julee Ganapathi; Film Artists: Jayaram, Ramya Krishnan) Jesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jesudas_minmini_parvaighal_language_tamil_film_julee_ganapathi_film_.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [656]: Minmini Parvaighal (Language: Tamil; Film: Julee Ganapathi; Film Artists: Jayaram, Ramya Krishnan)"; FAILED=$((FAILED+1)); }

# [657/1000] Omana Penne — Benny Dayal
yt-dlp "ytsearch1:Omana Penne Benny Dayal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/benny_dayal_kalyani_menon_omana_penne.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [657]: Omana Penne"; FAILED=$((FAILED+1)); }

# [658/1000] Omana Komala — Abhirami Ajith
yt-dlp "ytsearch1:Omana Komala Abhirami Ajith" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/abhirami_ajith_najeem_arshad_omana_komala.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [658]: Omana Komala"; FAILED=$((FAILED+1)); }

# [659/1000] Sakalesanente Naadha (Psalm 4 - Cum invocarem) — Jerry Amaldev
yt-dlp "ytsearch1:Sakalesanente Naadha (Psalm 4 - Cum invocarem) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_sakalesanente_naadha_psalm_4_cum_invocarem.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [659]: Sakalesanente Naadha (Psalm 4 - Cum invocarem)"; FAILED=$((FAILED+1)); }

# [660/1000] Sanwali Saloni — Yesudas
yt-dlp "ytsearch1:Sanwali Saloni Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_sanwali_saloni.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [660]: Sanwali Saloni"; FAILED=$((FAILED+1)); }

# [661/1000] Pennale — Yesudas
yt-dlp "ytsearch1:Pennale Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_p_leela_pennale.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [661]: Pennale"; FAILED=$((FAILED+1)); }

# [662/1000] Vaathil Melle — Sachin Warrier
yt-dlp "ytsearch1:Vaathil Melle Sachin Warrier" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sachin_warrier_vaathil_melle.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [662]: Vaathil Melle"; FAILED=$((FAILED+1)); }

# [663/1000] Thazhvaram — Hesham
yt-dlp "ytsearch1:Thazhvaram Hesham" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hesham_neha_nair_thazhvaram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [663]: Thazhvaram"; FAILED=$((FAILED+1)); }

# [664/1000] Karukavayal Kuruvi — K.S. Chithra
yt-dlp "ytsearch1:Karukavayal Kuruvi K.S. Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_karukavayal_kuruvi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [664]: Karukavayal Kuruvi"; FAILED=$((FAILED+1)); }

# [665/1000] Pacha Panam Thathe — Yesudas
yt-dlp "ytsearch1:Pacha Panam Thathe Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_pacha_panam_thathe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [665]: Pacha Panam Thathe"; FAILED=$((FAILED+1)); }

# [666/1000] Jar Lagee Churee Koh — Hariharan
yt-dlp "ytsearch1:Jar Lagee Churee Koh Hariharan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_jar_lagee_churee_koh.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [666]: Jar Lagee Churee Koh"; FAILED=$((FAILED+1)); }

# [667/1000] CHEMBARATHI! | LIL PAYYAN | AZWIN | (Official Audio) — Lil PAYYAN
yt-dlp "ytsearch1:CHEMBARATHI! | LIL PAYYAN | AZWIN | (Official Audio) Lil PAYYAN" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lil_payyan_chembarathi_lil_payyan_azwin_official_audio.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [667]: CHEMBARATHI! | LIL PAYYAN | AZWIN | (Official Audio)"; FAILED=$((FAILED+1)); }

# [668/1000] Pavanarachezhuthunnu — Yesudas
yt-dlp "ytsearch1:Pavanarachezhuthunnu Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_pavanarachezhuthunnu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [668]: Pavanarachezhuthunnu"; FAILED=$((FAILED+1)); }

# [669/1000] Pettidaam Aarum — Aalaap Raju
yt-dlp "ytsearch1:Pettidaam Aarum Aalaap Raju" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/aalaap_raju_sankar_sharma_pettidaam_aarum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [669]: Pettidaam Aarum"; FAILED=$((FAILED+1)); }

# [670/1000] Aadhyamay Kanda Naal — Johnson
yt-dlp "ytsearch1:Aadhyamay Kanda Naal Johnson" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/johnson_aadhyamay_kanda_naal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [670]: Aadhyamay Kanda Naal"; FAILED=$((FAILED+1)); }

# [671/1000] Njaan Parayathe — Kannur Shareef
yt-dlp "ytsearch1:Njaan Parayathe Kannur Shareef" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kannur_shareef_njaan_parayathe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [671]: Njaan Parayathe"; FAILED=$((FAILED+1)); }

# [672/1000] Njan Uyarnu Pogum — Ranjith Govind
yt-dlp "ytsearch1:Njan Uyarnu Pogum Ranjith Govind" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_govind_njan_uyarnu_pogum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [672]: Njan Uyarnu Pogum"; FAILED=$((FAILED+1)); }

# [673/1000] Sakala janavali (Psalm 116 - Laudate Dominum) — Jerry Amaldev
yt-dlp "ytsearch1:Sakala janavali (Psalm 116 - Laudate Dominum) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_sakala_janavali_psalm_116_laudate_dominum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [673]: Sakala janavali (Psalm 116 - Laudate Dominum)"; FAILED=$((FAILED+1)); }

# [674/1000] Pavizham pol pavizhaadharam po — Yesudas
yt-dlp "ytsearch1:Pavizham pol pavizhaadharam po Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_pavizham_pol_pavizhaadharam_po.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [674]: Pavizham pol pavizhaadharam po"; FAILED=$((FAILED+1)); }

# [675/1000] Sona Sona — Kalabhavan Mani
yt-dlp "ytsearch1:Sona Sona Kalabhavan Mani" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kalabhavan_mani_sona_sona.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [675]: Sona Sona"; FAILED=$((FAILED+1)); }

# [676/1000] Memories — Sheltn Pinhero
yt-dlp "ytsearch1:Memories Sheltn Pinhero" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sheltn_pinhero_memories.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [676]: Memories"; FAILED=$((FAILED+1)); }

# [677/1000] Naadha kripaalu Idayan (Psalm 22 - Dominus regit me) — Jerry Amaldev
yt-dlp "ytsearch1:Naadha kripaalu Idayan (Psalm 22 - Dominus regit me) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_naadha_kripaalu_idayan_psalm_22_dominus_regit_me.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [677]: Naadha kripaalu Idayan (Psalm 22 - Dominus regit me)"; FAILED=$((FAILED+1)); }

# [678/1000] Aigiri Nandini Eye For an Eye — Govind & Meera
yt-dlp "ytsearch1:Aigiri Nandini Eye For an Eye Govind & Meera" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/govind_meera_aigiri_nandini_eye_for_an_eye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [678]: Aigiri Nandini Eye For an Eye"; FAILED=$((FAILED+1)); }

# [679/1000] Varamanjaladiya (Sujatha) — Vidyasagar
yt-dlp "ytsearch1:Varamanjaladiya (Sujatha) Vidyasagar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vidyasagar_varamanjaladiya_sujatha.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [679]: Varamanjaladiya (Sujatha)"; FAILED=$((FAILED+1)); }

# [680/1000] Jaya jaya(Psalm 150 - Laudate Dominum in sanctis) — Jerry Amaldev
yt-dlp "ytsearch1:Jaya jaya(Psalm 150 - Laudate Dominum in sanctis) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_jaya_jayapsalm_150_laudate_dominum_in_sanctis.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [680]: Jaya jaya(Psalm 150 - Laudate Dominum in sanctis)"; FAILED=$((FAILED+1)); }

# [681/1000] Anuraaga Vilochananayi — Vidyasagar
yt-dlp "ytsearch1:Anuraaga Vilochananayi Vidyasagar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vidyasagar_anuraaga_vilochananayi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [681]: Anuraaga Vilochananayi"; FAILED=$((FAILED+1)); }

# [682/1000] Krisha kripasagaram — Yesudas
yt-dlp "ytsearch1:Krisha kripasagaram Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_krisha_kripasagaram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [682]: Krisha kripasagaram"; FAILED=$((FAILED+1)); }

# [683/1000] Mahitha mahonnathan (Psalm 140) — Jerry Amaldev
yt-dlp "ytsearch1:Mahitha mahonnathan (Psalm 140) Jerry Amaldev" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jerry_amaldev_mahitha_mahonnathan_psalm_140.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [683]: Mahitha mahonnathan (Psalm 140)"; FAILED=$((FAILED+1)); }

# [684/1000] Katha Katha (Language: Malayalam; Film: Raappakal; Film Artists: Mamootty, Nayan Thara) — Vijay Yesudas
yt-dlp "ytsearch1:Katha Katha (Language: Malayalam; Film: Raappakal; Film Artists: Mamootty, Nayan Thara) Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_katha_katha_language_malayalam_film_raappakal_film_artists_m.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [684]: Katha Katha (Language: Malayalam; Film: Raappakal; Film Artists: Mamootty, Nayan Thara)"; FAILED=$((FAILED+1)); }

# [685/1000] Mazhaye Mazhaye — Karthik
yt-dlp "ytsearch1:Mazhaye Mazhaye Karthik" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_abhaya_hiranmayi_mazhaye_mazhaye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [685]: Mazhaye Mazhaye"; FAILED=$((FAILED+1)); }

# [686/1000] Oru Mezhuthiriyude — Shahbaz Aman
yt-dlp "ytsearch1:Oru Mezhuthiriyude Shahbaz Aman" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shahbaz_aman_mridula_warrier_oru_mezhuthiriyude.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [686]: Oru Mezhuthiriyude"; FAILED=$((FAILED+1)); }

# [687/1000] Punchiri Thanchum — Shankar Mahadevan
yt-dlp "ytsearch1:Punchiri Thanchum Shankar Mahadevan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_punchiri_thanchum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [687]: Punchiri Thanchum"; FAILED=$((FAILED+1)); }

# [688/1000] Subhaane — Moossa Eranjoly
yt-dlp "ytsearch1:Subhaane Moossa Eranjoly" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/moossa_eranjoly_subhaane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [688]: Subhaane"; FAILED=$((FAILED+1)); }

# [689/1000] Kilukil Pambaram - Kilukkkam Malayalam M — MalayalamSearch.Com
yt-dlp "ytsearch1:Kilukil Pambaram - Kilukkkam Malayalam M MalayalamSearch.Com" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/malayalamsearchcom_kilukil_pambaram_kilukkkam_malayalam_m.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [689]: Kilukil Pambaram - Kilukkkam Malayalam M"; FAILED=$((FAILED+1)); }

# [690/1000] Paranjhilla Gynaan (Language: Malayalam; Film: Mambazhakkalam; Film Artists: Mohan Lal, Shobana) — K.J. Yesudas
yt-dlp "ytsearch1:Paranjhilla Gynaan (Language: Malayalam; Film: Mambazhakkalam; Film Artists: Mohan Lal, Shobana) K.J. Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kj_yesudas_paranjhilla_gynaan_language_malayalam_film_mambazhakkalam_fi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [690]: Paranjhilla Gynaan (Language: Malayalam; Film: Mambazhakkalam; Film Artists: Mohan Lal, Shobana)"; FAILED=$((FAILED+1)); }

# [691/1000] Pavana Guru — Madhu Balakrishnan
yt-dlp "ytsearch1:Pavana Guru Madhu Balakrishnan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/madhu_balakrishnan_pavana_guru.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [691]: Pavana Guru"; FAILED=$((FAILED+1)); }

# [692/1000] Doore Doore — Suchith Suresan
yt-dlp "ytsearch1:Doore Doore Suchith Suresan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/suchith_suresan_doore_doore.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [692]: Doore Doore"; FAILED=$((FAILED+1)); }

# [693/1000] Kannum Kannum Remix — Yesudas
yt-dlp "ytsearch1:Kannum Kannum Remix Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_kannum_kannum_remix.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [693]: Kannum Kannum Remix"; FAILED=$((FAILED+1)); }

# [694/1000] Kaanthaa — MASALA COFFEE
yt-dlp "ytsearch1:Kaanthaa MASALA COFFEE" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/masala_coffee_kaanthaa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [694]: Kaanthaa"; FAILED=$((FAILED+1)); }

# [695/1000] Mazhaye Toomazhaye — Haricharan
yt-dlp "ytsearch1:Mazhaye Toomazhaye Haricharan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/haricharan_mridula_varier_mazhaye_toomazhaye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [695]: Mazhaye Toomazhaye"; FAILED=$((FAILED+1)); }

# [696/1000] Thaazhvaaram — Sushin Shyam
yt-dlp "ytsearch1:Thaazhvaaram Sushin Shyam" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sushin_shyam_thaazhvaaram.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [696]: Thaazhvaaram"; FAILED=$((FAILED+1)); }

# [697/1000] Pulkoottil Vazhunna — K.J.Yesudas
yt-dlp "ytsearch1:Pulkoottil Vazhunna K.J.Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kjyesudas_pulkoottil_vazhunna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [697]: Pulkoottil Vazhunna"; FAILED=$((FAILED+1)); }

# [698/1000] Malayalam Full Movie 2013 — 7Aum Arivu
yt-dlp "ytsearch1:Malayalam Full Movie 2013 7Aum Arivu" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/7aum_arivu_malayalam_full_movie_2013.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [698]: Malayalam Full Movie 2013"; FAILED=$((FAILED+1)); }

# [699/1000] Aethu Kari Raavilum — Gopi Sundar
yt-dlp "ytsearch1:Aethu Kari Raavilum Gopi Sundar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/gopi_sundar_haricharan_vijay_yesudas_aethu_kari_raavilum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [699]: Aethu Kari Raavilum"; FAILED=$((FAILED+1)); }

# [700/1000] Ajitha Hare — Gowry Lekshmi
yt-dlp "ytsearch1:Ajitha Hare Gowry Lekshmi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/gowry_lekshmi_ajitha_hare.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [700]: Ajitha Hare"; FAILED=$((FAILED+1)); }

# [701/1000] Cherukadhapole — Rex Vijayan
yt-dlp "ytsearch1:Cherukadhapole Rex Vijayan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rex_vijayan_cherukadhapole.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [701]: Cherukadhapole"; FAILED=$((FAILED+1)); }

# [702/1000] Ithale Nee — Najim Arshad
yt-dlp "ytsearch1:Ithale Nee Najim Arshad" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/najim_arshad_ithale_nee.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [702]: Ithale Nee"; FAILED=$((FAILED+1)); }

# [703/1000] Piravi — Vaikom Vijayalakshmi
yt-dlp "ytsearch1:Piravi Vaikom Vijayalakshmi" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vaikom_vijayalakshmi_piravi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [703]: Piravi"; FAILED=$((FAILED+1)); }

# [704/1000] Undu Saghi — K. G. Markose
yt-dlp "ytsearch1:Undu Saghi K. G. Markose" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_g_markose_undu_saghi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [704]: Undu Saghi"; FAILED=$((FAILED+1)); }

# [705/1000] Aji Jhoro Jhoro Mukhoro — Mridula
yt-dlp "ytsearch1:Aji Jhoro Jhoro Mukhoro Mridula" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mridula_aji_jhoro_jhoro_mukhoro.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [705]: Aji Jhoro Jhoro Mukhoro"; FAILED=$((FAILED+1)); }

# [706/1000] Chirimukilum - Female Version — Haritha Balakrishnan
yt-dlp "ytsearch1:Chirimukilum - Female Version Haritha Balakrishnan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/haritha_balakrishnan_chirimukilum_female_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [706]: Chirimukilum - Female Version"; FAILED=$((FAILED+1)); }

# [707/1000] Kannaamoochchi (from the Film 'Kandukondein Kandukondein') — KS Chithra
yt-dlp "ytsearch1:Kannaamoochchi (from the Film 'Kandukondein Kandukondein') KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kannaamoochchi_from_the_film_kandukondein_kandukondein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [707]: Kannaamoochchi (from the Film 'Kandukondein Kandukondein')"; FAILED=$((FAILED+1)); }

# [708/1000] Cheerapoovukal — KS Chithra
yt-dlp "ytsearch1:Cheerapoovukal KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_cheerapoovukal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [708]: Cheerapoovukal"; FAILED=$((FAILED+1)); }

# [709/1000] Olichirikkan — KS Chithra
yt-dlp "ytsearch1:Olichirikkan KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_olichirikkan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [709]: Olichirikkan"; FAILED=$((FAILED+1)); }

# [710/1000] Premashilpi — KS Chithra
yt-dlp "ytsearch1:Premashilpi KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_premashilpi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [710]: Premashilpi"; FAILED=$((FAILED+1)); }

# [711/1000] Oru Naal Mattum — KS Chithra
yt-dlp "ytsearch1:Oru Naal Mattum KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_oru_naal_mattum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [711]: Oru Naal Mattum"; FAILED=$((FAILED+1)); }

# [712/1000] Rajahamsame — KS Chithra
yt-dlp "ytsearch1:Rajahamsame KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_rajahamsame.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [712]: Rajahamsame"; FAILED=$((FAILED+1)); }

# [713/1000] PularkaalaSundara — KS Chithra
yt-dlp "ytsearch1:PularkaalaSundara KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_pularkaalasundara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [713]: PularkaalaSundara"; FAILED=$((FAILED+1)); }

# [714/1000] Poomaname — KS Chithra
yt-dlp "ytsearch1:Poomaname KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_poomaname.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [714]: Poomaname"; FAILED=$((FAILED+1)); }

# [715/1000] Thalolampaithal — KS Chithra
yt-dlp "ytsearch1:Thalolampaithal KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_thalolampaithal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [715]: Thalolampaithal"; FAILED=$((FAILED+1)); }

# [716/1000] Neelakkurinjikal — KS Chithra
yt-dlp "ytsearch1:Neelakkurinjikal KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_neelakkurinjikal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [716]: Neelakkurinjikal"; FAILED=$((FAILED+1)); }

# [717/1000] Vaa Veliye — KS Chithra
yt-dlp "ytsearch1:Vaa Veliye KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_vaa_veliye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [717]: Vaa Veliye"; FAILED=$((FAILED+1)); }

# [718/1000] Vaishakhasandhye — KS Chithra
yt-dlp "ytsearch1:Vaishakhasandhye KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_vaishakhasandhye.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [718]: Vaishakhasandhye"; FAILED=$((FAILED+1)); }

# [719/1000] Kunnimani Cheppu — KS Chithra
yt-dlp "ytsearch1:Kunnimani Cheppu KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kunnimani_cheppu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [719]: Kunnimani Cheppu"; FAILED=$((FAILED+1)); }

# [720/1000] Etho Vaarmukilin female Version — KS Chithra
yt-dlp "ytsearch1:Etho Vaarmukilin female Version KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_etho_vaarmukilin_female_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [720]: Etho Vaarmukilin female Version"; FAILED=$((FAILED+1)); }

# [721/1000] Othiri Othiri Othiri Swapnangal — KS Chithra
yt-dlp "ytsearch1:Othiri Othiri Othiri Swapnangal KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_othiri_othiri_othiri_swapnangal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [721]: Othiri Othiri Othiri Swapnangal"; FAILED=$((FAILED+1)); }

# [722/1000] Vaa Veliye (feat. S.P. Balasubramaniyam) — KS Chithra
yt-dlp "ytsearch1:Vaa Veliye (feat. S.P. Balasubramaniyam) KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_vaa_veliye_feat_sp_balasubramaniyam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [722]: Vaa Veliye (feat. S.P. Balasubramaniyam)"; FAILED=$((FAILED+1)); }

# [723/1000] Raappadithan — KS Chithra
yt-dlp "ytsearch1:Raappadithan KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_raappadithan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [723]: Raappadithan"; FAILED=$((FAILED+1)); }

# [724/1000] Aayiram Kannumayi F — KS Chithra
yt-dlp "ytsearch1:Aayiram Kannumayi F KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_aayiram_kannumayi_f.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [724]: Aayiram Kannumayi F"; FAILED=$((FAILED+1)); }

# [725/1000] Oru Pooncholai feat. S.P.Balasubramaniyam Vaadhyaar Veettu Pillai OST — KS Chithra
yt-dlp "ytsearch1:Oru Pooncholai feat. S.P.Balasubramaniyam Vaadhyaar Veettu Pillai OST KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_oru_pooncholai_feat_spbalasubramaniyam_vaadhyaar_veettu_pill.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [725]: Oru Pooncholai feat. S.P.Balasubramaniyam Vaadhyaar Veettu Pillai OST"; FAILED=$((FAILED+1)); }

# [726/1000] Kunnimanichepputhurannu — KS Chithra
yt-dlp "ytsearch1:Kunnimanichepputhurannu KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kunnimanichepputhurannu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [726]: Kunnimanichepputhurannu"; FAILED=$((FAILED+1)); }

# [727/1000] Ilavayil Viralukalaai — KS Chithra
yt-dlp "ytsearch1:Ilavayil Viralukalaai KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_ilavayil_viralukalaai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [727]: Ilavayil Viralukalaai"; FAILED=$((FAILED+1)); }

# [728/1000] Manjal Prasadavum — KS Chithra
yt-dlp "ytsearch1:Manjal Prasadavum KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_manjal_prasadavum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [728]: Manjal Prasadavum"; FAILED=$((FAILED+1)); }

# [729/1000] Kannaadikkayyil — KS Chithra
yt-dlp "ytsearch1:Kannaadikkayyil KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kannaadikkayyil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [729]: Kannaadikkayyil"; FAILED=$((FAILED+1)); }

# [730/1000] Kannaam Thumpee — KS Chithra
yt-dlp "ytsearch1:Kannaam Thumpee KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kannaam_thumpee.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [730]: Kannaam Thumpee"; FAILED=$((FAILED+1)); }

# [731/1000] Poonthen — KS Chithra
yt-dlp "ytsearch1:Poonthen KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_poonthen.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [731]: Poonthen"; FAILED=$((FAILED+1)); }

# [732/1000] Evergreen Film Song | Ammoomakkili Vayadi | Chandralekha | Malayalam film song. — KS Chithra
yt-dlp "ytsearch1:Evergreen Film Song | Ammoomakkili Vayadi | Chandralekha | Malayalam film song. KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_evergreen_film_song_ammoomakkili_vayadi_chandralekha_malayal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [732]: Evergreen Film Song | Ammoomakkili Vayadi | Chandralekha | Malayalam film song."; FAILED=$((FAILED+1)); }

# [733/1000] Palapoove — KS Chithra
yt-dlp "ytsearch1:Palapoove KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_palapoove.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [733]: Palapoove"; FAILED=$((FAILED+1)); }

# [734/1000] Thiruvaranmula Krishna — KS Chithra
yt-dlp "ytsearch1:Thiruvaranmula Krishna KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_thiruvaranmula_krishna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [734]: Thiruvaranmula Krishna"; FAILED=$((FAILED+1)); }

# [735/1000] Olichirikyan — KS Chithra
yt-dlp "ytsearch1:Olichirikyan KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_olichirikyan.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [735]: Olichirikyan"; FAILED=$((FAILED+1)); }

# [736/1000] Mele Vinnin Muttathaare (F) — KS Chithra
yt-dlp "ytsearch1:Mele Vinnin Muttathaare (F) KS Chithra" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_mele_vinnin_muttathaare_f.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [736]: Mele Vinnin Muttathaare (F)"; FAILED=$((FAILED+1)); }

# [737/1000] Mai Koi Banjara (Language: Hindi; Film: Khwab; Film Artists: Mithun Chakravarty, Yogeeta Bali) — Yesudas
yt-dlp "ytsearch1:Mai Koi Banjara (Language: Hindi; Film: Khwab; Film Artists: Mithun Chakravarty, Yogeeta Bali) Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_mai_koi_banjara_language_hindi_film_khwab_film_artists_mithu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [737]: Mai Koi Banjara (Language: Hindi; Film: Khwab; Film Artists: Mithun Chakravarty, Yogeeta Bali)"; FAILED=$((FAILED+1)); }

# [738/1000] Man Mohini — Yesudas
yt-dlp "ytsearch1:Man Mohini Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_man_mohini.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [738]: Man Mohini"; FAILED=$((FAILED+1)); }

# [739/1000] Tu Jaan Hai — Yesudas
yt-dlp "ytsearch1:Tu Jaan Hai Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_tu_jaan_hai.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [739]: Tu Jaan Hai"; FAILED=$((FAILED+1)); }

# [740/1000] Harivarasanam — Yesudas
yt-dlp "ytsearch1:Harivarasanam Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_harivarasanam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [740]: Harivarasanam"; FAILED=$((FAILED+1)); }

# [741/1000] Vaachalam — Yesudas
yt-dlp "ytsearch1:Vaachalam Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_vaachalam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [741]: Vaachalam"; FAILED=$((FAILED+1)); }

# [742/1000] Ishq Mushq — Yesudas
yt-dlp "ytsearch1:Ishq Mushq Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_ishq_mushq.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [742]: Ishq Mushq"; FAILED=$((FAILED+1)); }

# [743/1000] Unnikale Oru Kadha Parayaam — Yesudas
yt-dlp "ytsearch1:Unnikale Oru Kadha Parayaam Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_unnikale_oru_kadha_parayaam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [743]: Unnikale Oru Kadha Parayaam"; FAILED=$((FAILED+1)); }

# [744/1000] Surmayee Ankhiyon Mein — Yesudas
yt-dlp "ytsearch1:Surmayee Ankhiyon Mein Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_surmayee_ankhiyon_mein.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [744]: Surmayee Ankhiyon Mein"; FAILED=$((FAILED+1)); }

# [745/1000] Gori Tera Gaon — Yesudas
yt-dlp "ytsearch1:Gori Tera Gaon Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_gori_tera_gaon.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [745]: Gori Tera Gaon"; FAILED=$((FAILED+1)); }

# [746/1000] padam namukku padam — Yesudas
yt-dlp "ytsearch1:padam namukku padam Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_padam_namukku_padam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [746]: padam namukku padam"; FAILED=$((FAILED+1)); }

# [747/1000] Gori Tera Gaon Bada Pyara — Yesudas
yt-dlp "ytsearch1:Gori Tera Gaon Bada Pyara Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_gori_tera_gaon_bada_pyara.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [747]: Gori Tera Gaon Bada Pyara"; FAILED=$((FAILED+1)); }

# [748/1000] Chamak Cham Cham — Yesudas
yt-dlp "ytsearch1:Chamak Cham Cham Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_chamak_cham_cham.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [748]: Chamak Cham Cham"; FAILED=$((FAILED+1)); }

# [749/1000] Neermizhipoovil — Yesudas
yt-dlp "ytsearch1:Neermizhipoovil Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_neermizhipoovil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [749]: Neermizhipoovil"; FAILED=$((FAILED+1)); }

# [750/1000] Penninte Chenchundil — Yesudas
yt-dlp "ytsearch1:Penninte Chenchundil Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_penninte_chenchundil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [750]: Penninte Chenchundil"; FAILED=$((FAILED+1)); }

# [751/1000] Chandanalepa — Yesudas
yt-dlp "ytsearch1:Chandanalepa Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_chandanalepa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [751]: Chandanalepa"; FAILED=$((FAILED+1)); }

# [752/1000] Devanganangal — Yesudas
yt-dlp "ytsearch1:Devanganangal Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_devanganangal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [752]: Devanganangal"; FAILED=$((FAILED+1)); }

# [753/1000] Jab Deep Jale Aana — Yesudas
yt-dlp "ytsearch1:Jab Deep Jale Aana Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_jab_deep_jale_aana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [753]: Jab Deep Jale Aana"; FAILED=$((FAILED+1)); }

# [754/1000] Chand Jaise Mukhde Pe — Yesudas
yt-dlp "ytsearch1:Chand Jaise Mukhde Pe Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_chand_jaise_mukhde_pe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [754]: Chand Jaise Mukhde Pe"; FAILED=$((FAILED+1)); }

# [755/1000] aaj se pehle — Yesudas
yt-dlp "ytsearch1:aaj se pehle Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_aaj_se_pehle.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [755]: aaj se pehle"; FAILED=$((FAILED+1)); }

# [756/1000] Iru Hridhayangalilonnal — Yesudas
yt-dlp "ytsearch1:Iru Hridhayangalilonnal Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_iru_hridhayangalilonnal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [756]: Iru Hridhayangalilonnal"; FAILED=$((FAILED+1)); }

# [757/1000] Kannamthaliyum — Yesudas
yt-dlp "ytsearch1:Kannamthaliyum Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_kannamthaliyum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [757]: Kannamthaliyum"; FAILED=$((FAILED+1)); }

# [758/1000] Vellarappoomala Mele — Yesudas
yt-dlp "ytsearch1:Vellarappoomala Mele Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_vellarappoomala_mele.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [758]: Vellarappoomala Mele"; FAILED=$((FAILED+1)); }

# [759/1000] Omane Neeyoromal — Yesudas
yt-dlp "ytsearch1:Omane Neeyoromal Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_omane_neeyoromal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [759]: Omane Neeyoromal"; FAILED=$((FAILED+1)); }

# [760/1000] Dil Ke Tukde Tukde Karke — Yesudas
yt-dlp "ytsearch1:Dil Ke Tukde Tukde Karke Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_dil_ke_tukde_tukde_karke.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [760]: Dil Ke Tukde Tukde Karke"; FAILED=$((FAILED+1)); }

# [761/1000] Indhulekha Kan Thurannu — Yesudas
yt-dlp "ytsearch1:Indhulekha Kan Thurannu Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_indhulekha_kan_thurannu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [761]: Indhulekha Kan Thurannu"; FAILED=$((FAILED+1)); }

# [762/1000] Ka Karoon Sajani Aaye Na Balam — Yesudas
yt-dlp "ytsearch1:Ka Karoon Sajani Aaye Na Balam Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_ka_karoon_sajani_aaye_na_balam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [762]: Ka Karoon Sajani Aaye Na Balam"; FAILED=$((FAILED+1)); }

# [763/1000] Mana Ho Tum Behad Haseen — Yesudas
yt-dlp "ytsearch1:Mana Ho Tum Behad Haseen Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_mana_ho_tum_behad_haseen.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [763]: Mana Ho Tum Behad Haseen"; FAILED=$((FAILED+1)); }

# [764/1000] Kahan Se Aaye Badra — Yesudas
yt-dlp "ytsearch1:Kahan Se Aaye Badra Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_kahan_se_aaye_badra.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [764]: Kahan Se Aaye Badra"; FAILED=$((FAILED+1)); }

# [765/1000] Melleyen Kanni — Yesudas
yt-dlp "ytsearch1:Melleyen Kanni Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_melleyen_kanni.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [765]: Melleyen Kanni"; FAILED=$((FAILED+1)); }

# [766/1000] Malare — Vijay Yesudas
yt-dlp "ytsearch1:Malare Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_malare.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [766]: Malare"; FAILED=$((FAILED+1)); }

# [767/1000] Etho Mazhayil — Vijay Yesudas
yt-dlp "ytsearch1:Etho Mazhayil Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_etho_mazhayil.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [767]: Etho Mazhayil"; FAILED=$((FAILED+1)); }

# [768/1000] Evare — Vijay Yesudas
yt-dlp "ytsearch1:Evare Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_evare.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [768]: Evare"; FAILED=$((FAILED+1)); }

# [769/1000] Kaadhal Vaithu — Vijay Yesudas
yt-dlp "ytsearch1:Kaadhal Vaithu Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_kaadhal_vaithu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [769]: Kaadhal Vaithu"; FAILED=$((FAILED+1)); }

# [770/1000] Neeyam Thanalinu (Duet) — Vijay Yesudas
yt-dlp "ytsearch1:Neeyam Thanalinu (Duet) Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_neeyam_thanalinu_duet.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [770]: Neeyam Thanalinu (Duet)"; FAILED=$((FAILED+1)); }

# [771/1000] Oru Madhura Kinavin - Retro Mix — Vijay Yesudas
yt-dlp "ytsearch1:Oru Madhura Kinavin - Retro Mix Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_oru_madhura_kinavin_retro_mix.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [771]: Oru Madhura Kinavin - Retro Mix"; FAILED=$((FAILED+1)); }

# [772/1000] Uyirin Naadhane - From Joseph — Vijay Yesudas
yt-dlp "ytsearch1:Uyirin Naadhane - From Joseph Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_uyirin_naadhane_from_joseph.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [772]: Uyirin Naadhane - From Joseph"; FAILED=$((FAILED+1)); }

# [773/1000] Thoomanju - From 18am Padi — Vijay Yesudas
yt-dlp "ytsearch1:Thoomanju - From 18am Padi Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thoomanju_from_18am_padi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [773]: Thoomanju - From 18am Padi"; FAILED=$((FAILED+1)); }

# [774/1000] Hemanthamen — Vijay Yesudas
yt-dlp "ytsearch1:Hemanthamen Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_hemanthamen.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [774]: Hemanthamen"; FAILED=$((FAILED+1)); }

# [775/1000] Sahana — Vijay Yesudas
yt-dlp "ytsearch1:Sahana Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_sahana.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [775]: Sahana"; FAILED=$((FAILED+1)); }

# [776/1000] Malare Unplugged — Vijay Yesudas
yt-dlp "ytsearch1:Malare Unplugged Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_malare_unplugged.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [776]: Malare Unplugged"; FAILED=$((FAILED+1)); }

# [777/1000] Poomuthole — Vijay Yesudas
yt-dlp "ytsearch1:Poomuthole Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_poomuthole.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [777]: Poomuthole"; FAILED=$((FAILED+1)); }

# [778/1000] Alliyambal - Remix Version — Vijay Yesudas
yt-dlp "ytsearch1:Alliyambal - Remix Version Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_alliyambal_remix_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [778]: Alliyambal - Remix Version"; FAILED=$((FAILED+1)); }

# [779/1000] Omane — Vijay Yesudas
yt-dlp "ytsearch1:Omane Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_omane.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [779]: Omane"; FAILED=$((FAILED+1)); }

# [780/1000] Hridayathin — Vijay Yesudas
yt-dlp "ytsearch1:Hridayathin Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_hridayathin.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [780]: Hridayathin"; FAILED=$((FAILED+1)); }

# [781/1000] Rangu Rangamma (From Bheema) — Vijay Yesudas
yt-dlp "ytsearch1:Rangu Rangamma (From Bheema) Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_rangu_rangamma_from_bheema.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [781]: Rangu Rangamma (From Bheema)"; FAILED=$((FAILED+1)); }

# [782/1000] Maangalyam — Vijay Yesudas
yt-dlp "ytsearch1:Maangalyam Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_maangalyam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [782]: Maangalyam"; FAILED=$((FAILED+1)); }

# [783/1000] Thavani Pootta (From Sandakozhi) — Vijay Yesudas
yt-dlp "ytsearch1:Thavani Pootta (From Sandakozhi) Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thavani_pootta_from_sandakozhi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [783]: Thavani Pootta (From Sandakozhi)"; FAILED=$((FAILED+1)); }

# [784/1000] Pularoli — Vijay Yesudas
yt-dlp "ytsearch1:Pularoli Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_pularoli.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [784]: Pularoli"; FAILED=$((FAILED+1)); }

# [785/1000] Njan Chendena — Vijay Yesudas
yt-dlp "ytsearch1:Njan Chendena Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_njan_chendena.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [785]: Njan Chendena"; FAILED=$((FAILED+1)); }

# [786/1000] Silu Silu — Vijay Yesudas
yt-dlp "ytsearch1:Silu Silu Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_silu_silu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [786]: Silu Silu"; FAILED=$((FAILED+1)); }

# [787/1000] Alliyambal-Remix — Vijay Yesudas
yt-dlp "ytsearch1:Alliyambal-Remix Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_alliyambal_remix.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [787]: Alliyambal-Remix"; FAILED=$((FAILED+1)); }

# [788/1000] Avalum Naanum — Vijay Yesudas
yt-dlp "ytsearch1:Avalum Naanum Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_avalum_naanum.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [788]: Avalum Naanum"; FAILED=$((FAILED+1)); }

# [789/1000] Thavani Pootta — Vijay Yesudas
yt-dlp "ytsearch1:Thavani Pootta Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thavani_pootta.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [789]: Thavani Pootta"; FAILED=$((FAILED+1)); }

# [790/1000] Kannukkul Yedho — Vijay Yesudas
yt-dlp "ytsearch1:Kannukkul Yedho Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_kannukkul_yedho.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [790]: Kannukkul Yedho"; FAILED=$((FAILED+1)); }

# [791/1000] Pacha Theeyanu Nee — Vijay Yesudas
yt-dlp "ytsearch1:Pacha Theeyanu Nee Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_pacha_theeyanu_nee.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [791]: Pacha Theeyanu Nee"; FAILED=$((FAILED+1)); }

# [792/1000] Thodakkam Mangalyam — Vijay Yesudas
yt-dlp "ytsearch1:Thodakkam Mangalyam Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thodakkam_mangalyam.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [792]: Thodakkam Mangalyam"; FAILED=$((FAILED+1)); }

# [793/1000] Mazhakondu Mathram - Male Version — Vijay Yesudas
yt-dlp "ytsearch1:Mazhakondu Mathram - Male Version Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_mazhakondu_mathram_male_version.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [793]: Mazhakondu Mathram - Male Version"; FAILED=$((FAILED+1)); }

# [794/1000] Piriyadha Enna — Vijay Yesudas
yt-dlp "ytsearch1:Piriyadha Enna Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_piriyadha_enna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [794]: Piriyadha Enna"; FAILED=$((FAILED+1)); }

# [795/1000] Gun-In Kadhal — Vijay Yesudas
yt-dlp "ytsearch1:Gun-In Kadhal Vijay Yesudas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_gun_in_kadhal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [795]: Gun-In Kadhal"; FAILED=$((FAILED+1)); }

# [796/1000] Cherathukal — Sithara Krishnakumar
yt-dlp "ytsearch1:Cherathukal Sithara Krishnakumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_cherathukal.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [796]: Cherathukal"; FAILED=$((FAILED+1)); }

# [797/1000] Wow Song - Ponnin Kanikkonna — Sithara Krishnakumar
yt-dlp "ytsearch1:Wow Song - Ponnin Kanikkonna Sithara Krishnakumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_wow_song_ponnin_kanikkonna.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [797]: Wow Song - Ponnin Kanikkonna"; FAILED=$((FAILED+1)); }

# [798/1000] Moha Mundiri — Sithara Krishnakumar
yt-dlp "ytsearch1:Moha Mundiri Sithara Krishnakumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_moha_mundiri.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [798]: Moha Mundiri"; FAILED=$((FAILED+1)); }

# [799/1000] Kadukumanikkoru Kannundu - From Kappela — Sithara Krishnakumar
yt-dlp "ytsearch1:Kadukumanikkoru Kannundu - From Kappela Sithara Krishnakumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_kadukumanikkoru_kannundu_from_kappela.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [799]: Kadukumanikkoru Kannundu - From Kappela"; FAILED=$((FAILED+1)); }

# [800/1000] Ponnin Kanikkonna - Wow Song — Sithara Krishnakumar
yt-dlp "ytsearch1:Ponnin Kanikkonna - Wow Song Sithara Krishnakumar" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_ponnin_kanikkonna_wow_song.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [800]: Ponnin Kanikkonna - Wow Song"; FAILED=$((FAILED+1)); }

# [801/1000] Locked Out of Heaven — Bruno Mars
yt-dlp "ytsearch1:Locked Out of Heaven Bruno Mars" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_locked_out_of_heaven.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [801]: Locked Out of Heaven"; FAILED=$((FAILED+1)); }

# [802/1000] Love You Like a Love Song — Selena Gomez & the Scene
yt-dlp "ytsearch1:Love You Like a Love Song Selena Gomez & the Scene" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/selena_gomez_the_scene_love_you_like_a_love_song.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [802]: Love You Like a Love Song"; FAILED=$((FAILED+1)); }

# [803/1000] Pink Pony Club — Chappell Roan
yt-dlp "ytsearch1:Pink Pony Club Chappell Roan" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chappell_roan_pink_pony_club.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [803]: Pink Pony Club"; FAILED=$((FAILED+1)); }

# [804/1000] The One That Got Away — Katy Perry
yt-dlp "ytsearch1:The One That Got Away Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_the_one_that_got_away.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [804]: The One That Got Away"; FAILED=$((FAILED+1)); }

# [805/1000] Toxic — Britney Spears
yt-dlp "ytsearch1:Toxic Britney Spears" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_toxic.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [805]: Toxic"; FAILED=$((FAILED+1)); }

# [806/1000] Lush Life — Zara Larsson
yt-dlp "ytsearch1:Lush Life Zara Larsson" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/zara_larsson_lush_life.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [806]: Lush Life"; FAILED=$((FAILED+1)); }

# [807/1000] All the Things She Said — t.A.T.u.
yt-dlp "ytsearch1:All the Things She Said t.A.T.u." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tatu_all_the_things_she_said.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [807]: All the Things She Said"; FAILED=$((FAILED+1)); }

# [808/1000] no tears left to cry — Ariana Grande
yt-dlp "ytsearch1:no tears left to cry Ariana Grande" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_no_tears_left_to_cry.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [808]: no tears left to cry"; FAILED=$((FAILED+1)); }

# [809/1000] Style — Taylor Swift
yt-dlp "ytsearch1:Style Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_style.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [809]: Style"; FAILED=$((FAILED+1)); }

# [810/1000] Maneater — Nelly Furtado
yt-dlp "ytsearch1:Maneater Nelly Furtado" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nelly_furtado_maneater.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [810]: Maneater"; FAILED=$((FAILED+1)); }

# [811/1000] Judas — Lady Gaga
yt-dlp "ytsearch1:Judas Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_judas.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [811]: Judas"; FAILED=$((FAILED+1)); }

# [812/1000] Womanizer — Britney Spears
yt-dlp "ytsearch1:Womanizer Britney Spears" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_womanizer.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [812]: Womanizer"; FAILED=$((FAILED+1)); }

# [813/1000] Last Friday Night (T.G.I.F.) — Katy Perry
yt-dlp "ytsearch1:Last Friday Night (T.G.I.F.) Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_last_friday_night_tgif.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [813]: Last Friday Night (T.G.I.F.)"; FAILED=$((FAILED+1)); }

# [814/1000] Telephone (feat. Beyoncé) — Lady Gaga
yt-dlp "ytsearch1:Telephone (feat. Beyoncé) Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_telephone_feat_beyoncé.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [814]: Telephone (feat. Beyoncé)"; FAILED=$((FAILED+1)); }

# [815/1000] Oops!...I Did It Again — Britney Spears
yt-dlp "ytsearch1:Oops!...I Did It Again Britney Spears" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_oopsi_did_it_again.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [815]: Oops!...I Did It Again"; FAILED=$((FAILED+1)); }

# [816/1000] Espresso — Sabrina Carpenter
yt-dlp "ytsearch1:Espresso Sabrina Carpenter" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_espresso.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [816]: Espresso"; FAILED=$((FAILED+1)); }

# [817/1000] Rock Your Body — Justin Timberlake
yt-dlp "ytsearch1:Rock Your Body Justin Timberlake" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_timberlake_rock_your_body.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [817]: Rock Your Body"; FAILED=$((FAILED+1)); }

# [818/1000] Gimme More — Britney Spears
yt-dlp "ytsearch1:Gimme More Britney Spears" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_gimme_more.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [818]: Gimme More"; FAILED=$((FAILED+1)); }

# [819/1000] thank u, next — Ariana Grande
yt-dlp "ytsearch1:thank u, next Ariana Grande" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_thank_u_next.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [819]: thank u, next"; FAILED=$((FAILED+1)); }

# [820/1000] Paparazzi — Lady Gaga
yt-dlp "ytsearch1:Paparazzi Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_paparazzi.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [820]: Paparazzi"; FAILED=$((FAILED+1)); }

# [821/1000] Promiscuous — Nelly Furtado
yt-dlp "ytsearch1:Promiscuous Nelly Furtado" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nelly_furtado_promiscuous.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [821]: Promiscuous"; FAILED=$((FAILED+1)); }

# [822/1000] Lovefool — The Cardigans
yt-dlp "ytsearch1:Lovefool The Cardigans" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_cardigans_lovefool.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [822]: Lovefool"; FAILED=$((FAILED+1)); }

# [823/1000] Bad Romance — Lady Gaga
yt-dlp "ytsearch1:Bad Romance Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_bad_romance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [823]: Bad Romance"; FAILED=$((FAILED+1)); }

# [824/1000] Call Me Maybe — Carly Rae Jepsen
yt-dlp "ytsearch1:Call Me Maybe Carly Rae Jepsen" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/carly_rae_jepsen_call_me_maybe.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [824]: Call Me Maybe"; FAILED=$((FAILED+1)); }

# [825/1000] Say It Right — Nelly Furtado
yt-dlp "ytsearch1:Say It Right Nelly Furtado" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nelly_furtado_say_it_right.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [825]: Say It Right"; FAILED=$((FAILED+1)); }

# [826/1000] Unwritten — Natasha Bedingfield
yt-dlp "ytsearch1:Unwritten Natasha Bedingfield" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/natasha_bedingfield_unwritten.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [826]: Unwritten"; FAILED=$((FAILED+1)); }

# [827/1000] S&M — Rihanna
yt-dlp "ytsearch1:S&M Rihanna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_sm.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [827]: S&M"; FAILED=$((FAILED+1)); }

# [828/1000] Teenage Dream — Katy Perry
yt-dlp "ytsearch1:Teenage Dream Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_teenage_dream.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [828]: Teenage Dream"; FAILED=$((FAILED+1)); }

# [829/1000] Mirrors — Justin Timberlake
yt-dlp "ytsearch1:Mirrors Justin Timberlake" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_timberlake_mirrors.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [829]: Mirrors"; FAILED=$((FAILED+1)); }

# [830/1000] Pocketful of Sunshine — Natasha Bedingfield
yt-dlp "ytsearch1:Pocketful of Sunshine Natasha Bedingfield" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/natasha_bedingfield_pocketful_of_sunshine.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [830]: Pocketful of Sunshine"; FAILED=$((FAILED+1)); }

# [831/1000] Poker Face — Lady Gaga
yt-dlp "ytsearch1:Poker Face Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_poker_face.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [831]: Poker Face"; FAILED=$((FAILED+1)); }

# [832/1000] ...Baby One More Time — Britney Spears
yt-dlp "ytsearch1:...Baby One More Time Britney Spears" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_baby_one_more_time.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [832]: ...Baby One More Time"; FAILED=$((FAILED+1)); }

# [833/1000] Into You — Ariana Grande
yt-dlp "ytsearch1:Into You Ariana Grande" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_into_you.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [833]: Into You"; FAILED=$((FAILED+1)); }

# [834/1000] deja vu — Olivia Rodrigo
yt-dlp "ytsearch1:deja vu Olivia Rodrigo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/olivia_rodrigo_deja_vu.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [834]: deja vu"; FAILED=$((FAILED+1)); }

# [835/1000] Blank Space — Taylor Swift
yt-dlp "ytsearch1:Blank Space Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_blank_space.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [835]: Blank Space"; FAILED=$((FAILED+1)); }

# [836/1000] The Sweet Escape — Gwen Stefani
yt-dlp "ytsearch1:The Sweet Escape Gwen Stefani" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/gwen_stefani_the_sweet_escape.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [836]: The Sweet Escape"; FAILED=$((FAILED+1)); }

# [837/1000] Only Girl (In the World) — Rihanna
yt-dlp "ytsearch1:Only Girl (In the World) Rihanna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_only_girl_in_the_world.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [837]: Only Girl (In the World)"; FAILED=$((FAILED+1)); }

# [838/1000] Look What You Made Me Do — Taylor Swift
yt-dlp "ytsearch1:Look What You Made Me Do Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_look_what_you_made_me_do.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [838]: Look What You Made Me Do"; FAILED=$((FAILED+1)); }

# [839/1000] One More Night — Maroon 5
yt-dlp "ytsearch1:One More Night Maroon 5" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/maroon_5_one_more_night.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [839]: One More Night"; FAILED=$((FAILED+1)); }

# [840/1000] Since U Been Gone — Kelly Clarkson
yt-dlp "ytsearch1:Since U Been Gone Kelly Clarkson" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kelly_clarkson_since_u_been_gone.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [840]: Since U Been Gone"; FAILED=$((FAILED+1)); }

# [841/1000] Grenade — Bruno Mars
yt-dlp "ytsearch1:Grenade Bruno Mars" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_grenade.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [841]: Grenade"; FAILED=$((FAILED+1)); }

# [842/1000] Beauty and a Beat — Justin Bieber
yt-dlp "ytsearch1:Beauty and a Beat Justin Bieber" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_bieber_beauty_and_a_beat.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [842]: Beauty and a Beat"; FAILED=$((FAILED+1)); }

# [843/1000] The Winner Takes It All — ABBA
yt-dlp "ytsearch1:The Winner Takes It All ABBA" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/abba_the_winner_takes_it_all.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [843]: The Winner Takes It All"; FAILED=$((FAILED+1)); }

# [844/1000] Circus — Britney Spears
yt-dlp "ytsearch1:Circus Britney Spears" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_circus.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [844]: Circus"; FAILED=$((FAILED+1)); }

# [845/1000] California Gurls (feat. Snoop Dogg) — Katy Perry
yt-dlp "ytsearch1:California Gurls (feat. Snoop Dogg) Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_california_gurls_feat_snoop_dogg.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [845]: California Gurls (feat. Snoop Dogg)"; FAILED=$((FAILED+1)); }

# [846/1000] Hot n Cold — Katy Perry
yt-dlp "ytsearch1:Hot n Cold Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_hot_n_cold.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [846]: Hot n Cold"; FAILED=$((FAILED+1)); }

# [847/1000] Billie Jean — Michael Jackson
yt-dlp "ytsearch1:Billie Jean Michael Jackson" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/michael_jackson_billie_jean.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [847]: Billie Jean"; FAILED=$((FAILED+1)); }

# [848/1000] Guilty as Sin? — Taylor Swift
yt-dlp "ytsearch1:Guilty as Sin? Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_guilty_as_sin.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [848]: Guilty as Sin?"; FAILED=$((FAILED+1)); }

# [849/1000] Just Dance — Lady Gaga
yt-dlp "ytsearch1:Just Dance Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_just_dance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [849]: Just Dance"; FAILED=$((FAILED+1)); }

# [850/1000] One Last Time — Ariana Grande
yt-dlp "ytsearch1:One Last Time Ariana Grande" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_one_last_time.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [850]: One Last Time"; FAILED=$((FAILED+1)); }

# [851/1000] Attention — Charlie Puth
yt-dlp "ytsearch1:Attention Charlie Puth" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/charlie_puth_attention.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [851]: Attention"; FAILED=$((FAILED+1)); }

# [852/1000] Taste — Sabrina Carpenter
yt-dlp "ytsearch1:Taste Sabrina Carpenter" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_taste.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [852]: Taste"; FAILED=$((FAILED+1)); }

# [853/1000] Fortnight (feat. Post Malone) — Taylor Swift
yt-dlp "ytsearch1:Fortnight (feat. Post Malone) Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_fortnight_feat_post_malone.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [853]: Fortnight (feat. Post Malone)"; FAILED=$((FAILED+1)); }

# [854/1000] This Love — Maroon 5
yt-dlp "ytsearch1:This Love Maroon 5" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/maroon_5_this_love.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [854]: This Love"; FAILED=$((FAILED+1)); }

# [855/1000] Party in the U.S.A. — Miley Cyrus
yt-dlp "ytsearch1:Party in the U.S.A. Miley Cyrus" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/miley_cyrus_party_in_the_usa.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [855]: Party in the U.S.A."; FAILED=$((FAILED+1)); }

# [856/1000] As It Was — Harry Styles
yt-dlp "ytsearch1:As It Was Harry Styles" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harry_styles_as_it_was.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [856]: As It Was"; FAILED=$((FAILED+1)); }

# [857/1000] Just the Way You Are — Bruno Mars
yt-dlp "ytsearch1:Just the Way You Are Bruno Mars" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_just_the_way_you_are.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [857]: Just the Way You Are"; FAILED=$((FAILED+1)); }

# [858/1000] Blow — Ke$ha
yt-dlp "ytsearch1:Blow Ke$ha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/keha_blow.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [858]: Blow"; FAILED=$((FAILED+1)); }

# [859/1000] Genie in a Bottle — Christina Aguilera
yt-dlp "ytsearch1:Genie in a Bottle Christina Aguilera" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/christina_aguilera_genie_in_a_bottle.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [859]: Genie in a Bottle"; FAILED=$((FAILED+1)); }

# [860/1000] Side to Side — Ariana Grande
yt-dlp "ytsearch1:Side to Side Ariana Grande" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_side_to_side.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [860]: Side to Side"; FAILED=$((FAILED+1)); }

# [861/1000] Sports car — Tate McRae
yt-dlp "ytsearch1:Sports car Tate McRae" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tate_mcrae_sports_car.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [861]: Sports car"; FAILED=$((FAILED+1)); }

# [862/1000] Dark Horse — Katy Perry
yt-dlp "ytsearch1:Dark Horse Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_dark_horse.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [862]: Dark Horse"; FAILED=$((FAILED+1)); }

# [863/1000] traitor — Olivia Rodrigo
yt-dlp "ytsearch1:traitor Olivia Rodrigo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/olivia_rodrigo_traitor.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [863]: traitor"; FAILED=$((FAILED+1)); }

# [864/1000] Wildest Dreams — Taylor Swift
yt-dlp "ytsearch1:Wildest Dreams Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_wildest_dreams.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [864]: Wildest Dreams"; FAILED=$((FAILED+1)); }

# [865/1000] When I Was Your Man — Bruno Mars
yt-dlp "ytsearch1:When I Was Your Man Bruno Mars" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_when_i_was_your_man.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [865]: When I Was Your Man"; FAILED=$((FAILED+1)); }

# [866/1000] PILLOWTALK — ZAYN
yt-dlp "ytsearch1:PILLOWTALK ZAYN" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/zayn_pillowtalk.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [866]: PILLOWTALK"; FAILED=$((FAILED+1)); }

# [867/1000] Maps — Maroon 5
yt-dlp "ytsearch1:Maps Maroon 5" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/maroon_5_maps.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [867]: Maps"; FAILED=$((FAILED+1)); }

# [868/1000] Adventure of a Lifetime — Coldplay
yt-dlp "ytsearch1:Adventure of a Lifetime Coldplay" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/coldplay_adventure_of_a_lifetime.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [868]: Adventure of a Lifetime"; FAILED=$((FAILED+1)); }

# [869/1000] Payphone — Maroon 5
yt-dlp "ytsearch1:Payphone Maroon 5" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/maroon_5_payphone.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [869]: Payphone"; FAILED=$((FAILED+1)); }

# [870/1000] Call It What You Want — Taylor Swift
yt-dlp "ytsearch1:Call It What You Want Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_call_it_what_you_want.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [870]: Call It What You Want"; FAILED=$((FAILED+1)); }

# [871/1000] Kiss Me — Sixpence None the Richer
yt-dlp "ytsearch1:Kiss Me Sixpence None the Richer" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sixpence_none_the_richer_kiss_me.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [871]: Kiss Me"; FAILED=$((FAILED+1)); }

# [872/1000] Never Be the Same — Camila Cabello
yt-dlp "ytsearch1:Never Be the Same Camila Cabello" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/camila_cabello_never_be_the_same.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [872]: Never Be the Same"; FAILED=$((FAILED+1)); }

# [873/1000] What Makes You Beautiful — One Direction
yt-dlp "ytsearch1:What Makes You Beautiful One Direction" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/one_direction_what_makes_you_beautiful.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [873]: What Makes You Beautiful"; FAILED=$((FAILED+1)); }

# [874/1000] Remember the Time — Michael Jackson
yt-dlp "ytsearch1:Remember the Time Michael Jackson" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/michael_jackson_remember_the_time.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [874]: Remember the Time"; FAILED=$((FAILED+1)); }

# [875/1000] Stitches — Shawn Mendes
yt-dlp "ytsearch1:Stitches Shawn Mendes" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shawn_mendes_stitches.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [875]: Stitches"; FAILED=$((FAILED+1)); }

# [876/1000] Please Please Please — Sabrina Carpenter
yt-dlp "ytsearch1:Please Please Please Sabrina Carpenter" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_please_please_please.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [876]: Please Please Please"; FAILED=$((FAILED+1)); }

# [877/1000] Delicate — Taylor Swift
yt-dlp "ytsearch1:Delicate Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_delicate.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [877]: Delicate"; FAILED=$((FAILED+1)); }

# [878/1000] Manchild — Sabrina Carpenter
yt-dlp "ytsearch1:Manchild Sabrina Carpenter" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_manchild.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [878]: Manchild"; FAILED=$((FAILED+1)); }

# [879/1000] Hips Don't Lie (feat. Wyclef Jean) — Shakira
yt-dlp "ytsearch1:Hips Don't Lie (feat. Wyclef Jean) Shakira" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shakira_hips_dont_lie_feat_wyclef_jean.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [879]: Hips Don't Lie (feat. Wyclef Jean)"; FAILED=$((FAILED+1)); }

# [880/1000] We Found Love (feat. Calvin Harris) — Rihanna
yt-dlp "ytsearch1:We Found Love (feat. Calvin Harris) Rihanna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_we_found_love_feat_calvin_harris.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [880]: We Found Love (feat. Calvin Harris)"; FAILED=$((FAILED+1)); }

# [881/1000] Disturbia — Rihanna
yt-dlp "ytsearch1:Disturbia Rihanna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_disturbia.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [881]: Disturbia"; FAILED=$((FAILED+1)); }

# [882/1000] Can't Get You Out of My Head — Kylie Minogue
yt-dlp "ytsearch1:Can't Get You Out of My Head Kylie Minogue" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kylie_minogue_cant_get_you_out_of_my_head.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [882]: Can't Get You Out of My Head"; FAILED=$((FAILED+1)); }

# [883/1000] Wide Awake — Katy Perry
yt-dlp "ytsearch1:Wide Awake Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_wide_awake.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [883]: Wide Awake"; FAILED=$((FAILED+1)); }

# [884/1000] Beat It — Michael Jackson
yt-dlp "ytsearch1:Beat It Michael Jackson" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/michael_jackson_beat_it.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [884]: Beat It"; FAILED=$((FAILED+1)); }

# [885/1000] I Kissed a Girl — Katy Perry
yt-dlp "ytsearch1:I Kissed a Girl Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_i_kissed_a_girl.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [885]: I Kissed a Girl"; FAILED=$((FAILED+1)); }

# [886/1000] Meet Me Halfway — Black Eyed Peas
yt-dlp "ytsearch1:Meet Me Halfway Black Eyed Peas" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/black_eyed_peas_meet_me_halfway.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [886]: Meet Me Halfway"; FAILED=$((FAILED+1)); }

# [887/1000] Sorry — Justin Bieber
yt-dlp "ytsearch1:Sorry Justin Bieber" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_bieber_sorry.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [887]: Sorry"; FAILED=$((FAILED+1)); }

# [888/1000] Just Give Me a Reason (feat. Nate Ruess) — P!nk
yt-dlp "ytsearch1:Just Give Me a Reason (feat. Nate Ruess) P!nk" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/pnk_just_give_me_a_reason_feat_nate_ruess.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [888]: Just Give Me a Reason (feat. Nate Ruess)"; FAILED=$((FAILED+1)); }

# [889/1000] Dynamite — BTS
yt-dlp "ytsearch1:Dynamite BTS" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bts_dynamite.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [889]: Dynamite"; FAILED=$((FAILED+1)); }

# [890/1000] E.T. — Katy Perry
yt-dlp "ytsearch1:E.T. Katy Perry" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_et.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [890]: E.T."; FAILED=$((FAILED+1)); }

# [891/1000] Abracadabra — Lady Gaga
yt-dlp "ytsearch1:Abracadabra Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_abracadabra.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [891]: Abracadabra"; FAILED=$((FAILED+1)); }

# [892/1000] Breakin' Dishes — Rihanna
yt-dlp "ytsearch1:Breakin' Dishes Rihanna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_breakin_dishes.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [892]: Breakin' Dishes"; FAILED=$((FAILED+1)); }

# [893/1000] Alejandro — Lady Gaga
yt-dlp "ytsearch1:Alejandro Lady Gaga" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_alejandro.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [893]: Alejandro"; FAILED=$((FAILED+1)); }

# [894/1000] Dangerous Woman — Ariana Grande
yt-dlp "ytsearch1:Dangerous Woman Ariana Grande" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_dangerous_woman.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [894]: Dangerous Woman"; FAILED=$((FAILED+1)); }

# [895/1000] Down Bad — Taylor Swift
yt-dlp "ytsearch1:Down Bad Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_down_bad.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [895]: Down Bad"; FAILED=$((FAILED+1)); }

# [896/1000] Marry You — Bruno Mars
yt-dlp "ytsearch1:Marry You Bruno Mars" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_marry_you.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [896]: Marry You"; FAILED=$((FAILED+1)); }

# [897/1000] The Man Who Can't Be Moved — The Script
yt-dlp "ytsearch1:The Man Who Can't Be Moved The Script" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_script_the_man_who_cant_be_moved.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [897]: The Man Who Can't Be Moved"; FAILED=$((FAILED+1)); }

# [898/1000] Cake by the Ocean — DNCE
yt-dlp "ytsearch1:Cake by the Ocean DNCE" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dnce_cake_by_the_ocean.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [898]: Cake by the Ocean"; FAILED=$((FAILED+1)); }

# [899/1000] Umbrella — Rihanna
yt-dlp "ytsearch1:Umbrella Rihanna" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_umbrella.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [899]: Umbrella"; FAILED=$((FAILED+1)); }

# [900/1000] Tik Tok — Ke$ha
yt-dlp "ytsearch1:Tik Tok Ke$ha" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/keha_tik_tok.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [900]: Tik Tok"; FAILED=$((FAILED+1)); }

# [901/1000] Space Song — Beach House
yt-dlp "ytsearch1:Space Song Beach House" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/beach_house_space_song.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [901]: Space Song"; FAILED=$((FAILED+1)); }

# [902/1000] Sofia — Clairo
yt-dlp "ytsearch1:Sofia Clairo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/clairo_sofia.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [902]: Sofia"; FAILED=$((FAILED+1)); }

# [903/1000] Out of My League — Fitz and the Tantrums
yt-dlp "ytsearch1:Out of My League Fitz and the Tantrums" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/fitz_and_the_tantrums_out_of_my_league.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [903]: Out of My League"; FAILED=$((FAILED+1)); }

# [904/1000] Buzzcut Season — Lorde
yt-dlp "ytsearch1:Buzzcut Season Lorde" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lorde_buzzcut_season.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [904]: Buzzcut Season"; FAILED=$((FAILED+1)); }

# [905/1000] There Is a Light That Never Goes Out - 2011 Remaster — The Smiths
yt-dlp "ytsearch1:There Is a Light That Never Goes Out - 2011 Remaster The Smiths" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_smiths_there_is_a_light_that_never_goes_out_2011_remaster.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [905]: There Is a Light That Never Goes Out - 2011 Remaster"; FAILED=$((FAILED+1)); }

# [906/1000] Pumped Up Kicks — Foster the People
yt-dlp "ytsearch1:Pumped Up Kicks Foster the People" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/foster_the_people_pumped_up_kicks.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [906]: Pumped Up Kicks"; FAILED=$((FAILED+1)); }

# [907/1000] Diet Mountain Dew — Lana Del Rey
yt-dlp "ytsearch1:Diet Mountain Dew Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_diet_mountain_dew.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [907]: Diet Mountain Dew"; FAILED=$((FAILED+1)); }

# [908/1000] Bags — Clairo
yt-dlp "ytsearch1:Bags Clairo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/clairo_bags.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [908]: Bags"; FAILED=$((FAILED+1)); }

# [909/1000] Not Allowed — TV Girl
yt-dlp "ytsearch1:Not Allowed TV Girl" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tv_girl_not_allowed.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [909]: Not Allowed"; FAILED=$((FAILED+1)); }

# [910/1000] Team — Lorde
yt-dlp "ytsearch1:Team Lorde" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lorde_team.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [910]: Team"; FAILED=$((FAILED+1)); }

# [911/1000] Cigarettes out the Window — TV Girl
yt-dlp "ytsearch1:Cigarettes out the Window TV Girl" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tv_girl_cigarettes_out_the_window.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [911]: Cigarettes out the Window"; FAILED=$((FAILED+1)); }

# [912/1000] A World Alone — Lorde
yt-dlp "ytsearch1:A World Alone Lorde" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lorde_a_world_alone.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [912]: A World Alone"; FAILED=$((FAILED+1)); }

# [913/1000] Shut Up and Dance — Walk the Moon
yt-dlp "ytsearch1:Shut Up and Dance Walk the Moon" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/walk_the_moon_shut_up_and_dance.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [913]: Shut Up and Dance"; FAILED=$((FAILED+1)); }

# [914/1000] National Anthem — Lana Del Rey
yt-dlp "ytsearch1:National Anthem Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_national_anthem.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [914]: National Anthem"; FAILED=$((FAILED+1)); }

# [915/1000] Wildflower — Beach House
yt-dlp "ytsearch1:Wildflower Beach House" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/beach_house_wildflower.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [915]: Wildflower"; FAILED=$((FAILED+1)); }

# [916/1000] Tongue Tied — Grouplove
yt-dlp "ytsearch1:Tongue Tied Grouplove" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/grouplove_tongue_tied.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [916]: Tongue Tied"; FAILED=$((FAILED+1)); }

# [917/1000] Cool Kids — Echosmith
yt-dlp "ytsearch1:Cool Kids Echosmith" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/echosmith_cool_kids.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [917]: Cool Kids"; FAILED=$((FAILED+1)); }

# [918/1000] Black Out Days — Phantogram
yt-dlp "ytsearch1:Black Out Days Phantogram" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/phantogram_black_out_days.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [918]: Black Out Days"; FAILED=$((FAILED+1)); }

# [919/1000] Burning Pile — Mother Mother
yt-dlp "ytsearch1:Burning Pile Mother Mother" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mother_mother_burning_pile.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [919]: Burning Pile"; FAILED=$((FAILED+1)); }

# [920/1000] Young Folks — Peter Bjorn and John
yt-dlp "ytsearch1:Young Folks Peter Bjorn and John" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/peter_bjorn_and_john_young_folks.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [920]: Young Folks"; FAILED=$((FAILED+1)); }

# [921/1000] Like Or Like Like — Miniature Tigers
yt-dlp "ytsearch1:Like Or Like Like Miniature Tigers" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/miniature_tigers_like_or_like_like.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [921]: Like Or Like Like"; FAILED=$((FAILED+1)); }

# [922/1000] My Type — Saint Motel
yt-dlp "ytsearch1:My Type Saint Motel" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/saint_motel_my_type.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [922]: My Type"; FAILED=$((FAILED+1)); }

# [923/1000] Why Do You Let Me Stay Here? — She & Him
yt-dlp "ytsearch1:Why Do You Let Me Stay Here? She & Him" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/she_him_why_do_you_let_me_stay_here.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [923]: Why Do You Let Me Stay Here?"; FAILED=$((FAILED+1)); }

# [924/1000] Andrew In Drag — The Magnetic Fields
yt-dlp "ytsearch1:Andrew In Drag The Magnetic Fields" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_magnetic_fields_andrew_in_drag.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [924]: Andrew In Drag"; FAILED=$((FAILED+1)); }

# [925/1000] Nobody — Mitski
yt-dlp "ytsearch1:Nobody Mitski" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mitski_nobody.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [925]: Nobody"; FAILED=$((FAILED+1)); }

# [926/1000] Circles — Post Malone
yt-dlp "ytsearch1:Circles Post Malone" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/post_malone_circles.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [926]: Circles"; FAILED=$((FAILED+1)); }

# [927/1000] My Moon My Man — Feist
yt-dlp "ytsearch1:My Moon My Man Feist" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/feist_my_moon_my_man.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [927]: My Moon My Man"; FAILED=$((FAILED+1)); }

# [928/1000] the last great american dynasty — Taylor Swift
yt-dlp "ytsearch1:the last great american dynasty Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_the_last_great_american_dynasty.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [928]: the last great american dynasty"; FAILED=$((FAILED+1)); }

# [929/1000] Car Radio — Twenty One Pilots
yt-dlp "ytsearch1:Car Radio Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_car_radio.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [929]: Car Radio"; FAILED=$((FAILED+1)); }

# [930/1000] 1901 — Phoenix
yt-dlp "ytsearch1:1901 Phoenix" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/phoenix_1901.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [930]: 1901"; FAILED=$((FAILED+1)); }

# [931/1000] Arms Tonite — Mother Mother
yt-dlp "ytsearch1:Arms Tonite Mother Mother" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mother_mother_arms_tonite.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [931]: Arms Tonite"; FAILED=$((FAILED+1)); }

# [932/1000] everything i wanted — Billie Eilish
yt-dlp "ytsearch1:everything i wanted Billie Eilish" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/billie_eilish_everything_i_wanted.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [932]: everything i wanted"; FAILED=$((FAILED+1)); }

# [933/1000] Spring — Saint Etienne
yt-dlp "ytsearch1:Spring Saint Etienne" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/saint_etienne_spring.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [933]: Spring"; FAILED=$((FAILED+1)); }

# [934/1000] Please, Please, Please, Let Me Get What I Want - 2011 Remaster — The Smiths
yt-dlp "ytsearch1:Please, Please, Please, Let Me Get What I Want - 2011 Remaster The Smiths" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_smiths_please_please_please_let_me_get_what_i_want_2011_remaster.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [934]: Please, Please, Please, Let Me Get What I Want - 2011 Remaster"; FAILED=$((FAILED+1)); }

# [935/1000] Dreams Tonite — Alvvays
yt-dlp "ytsearch1:Dreams Tonite Alvvays" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alvvays_dreams_tonite.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [935]: Dreams Tonite"; FAILED=$((FAILED+1)); }

# [936/1000] Dark Red — Steve Lacy
yt-dlp "ytsearch1:Dark Red Steve Lacy" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/steve_lacy_dark_red.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [936]: Dark Red"; FAILED=$((FAILED+1)); }

# [937/1000] Tek It — Cafuné
yt-dlp "ytsearch1:Tek It Cafuné" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/cafuné_tek_it.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [937]: Tek It"; FAILED=$((FAILED+1)); }

# [938/1000] Summertime Sadness — Lana Del Rey
yt-dlp "ytsearch1:Summertime Sadness Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_summertime_sadness.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [938]: Summertime Sadness"; FAILED=$((FAILED+1)); }

# [939/1000] Dog Days Are Over — Florence + the Machine
yt-dlp "ytsearch1:Dog Days Are Over Florence + the Machine" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/florence_the_machine_dog_days_are_over.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [939]: Dog Days Are Over"; FAILED=$((FAILED+1)); }

# [940/1000] Body Electric — Lana Del Rey
yt-dlp "ytsearch1:Body Electric Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_body_electric.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [940]: Body Electric"; FAILED=$((FAILED+1)); }

# [941/1000] Here's Where the Story Ends — The Sundays
yt-dlp "ytsearch1:Here's Where the Story Ends The Sundays" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_sundays_heres_where_the_story_ends.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [941]: Here's Where the Story Ends"; FAILED=$((FAILED+1)); }

# [942/1000] Born to Die — Lana Del Rey
yt-dlp "ytsearch1:Born to Die Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_born_to_die.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [942]: Born to Die"; FAILED=$((FAILED+1)); }

# [943/1000] idontwannabeyouanymore — Billie Eilish
yt-dlp "ytsearch1:idontwannabeyouanymore Billie Eilish" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/billie_eilish_idontwannabeyouanymore.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [943]: idontwannabeyouanymore"; FAILED=$((FAILED+1)); }

# [944/1000] Gods & Monsters — Lana Del Rey
yt-dlp "ytsearch1:Gods & Monsters Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_gods_monsters.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [944]: Gods & Monsters"; FAILED=$((FAILED+1)); }

# [945/1000] The Cigarette Duet — Princess Chelsea
yt-dlp "ytsearch1:The Cigarette Duet Princess Chelsea" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/princess_chelsea_the_cigarette_duet.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [945]: The Cigarette Duet"; FAILED=$((FAILED+1)); }

# [946/1000] Thunder — Imagine Dragons
yt-dlp "ytsearch1:Thunder Imagine Dragons" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/imagine_dragons_thunder.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [946]: Thunder"; FAILED=$((FAILED+1)); }

# [947/1000] Where'd All The Time Go? — Dr. Dog
yt-dlp "ytsearch1:Where'd All The Time Go? Dr. Dog" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dr_dog_whered_all_the_time_go.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [947]: Where'd All The Time Go?"; FAILED=$((FAILED+1)); }

# [948/1000] Houdini — Foster the People
yt-dlp "ytsearch1:Houdini Foster the People" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/foster_the_people_houdini.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [948]: Houdini"; FAILED=$((FAILED+1)); }

# [949/1000] my tears ricochet — Taylor Swift
yt-dlp "ytsearch1:my tears ricochet Taylor Swift" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_my_tears_ricochet.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [949]: my tears ricochet"; FAILED=$((FAILED+1)); }

# [950/1000] Golden — Harry Styles
yt-dlp "ytsearch1:Golden Harry Styles" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harry_styles_golden.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [950]: Golden"; FAILED=$((FAILED+1)); }

# [951/1000] Habits (Stay High) — Tove Lo
yt-dlp "ytsearch1:Habits (Stay High) Tove Lo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tove_lo_habits_stay_high.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [951]: Habits (Stay High)"; FAILED=$((FAILED+1)); }

# [952/1000] Washing Machine Heart — Mitski
yt-dlp "ytsearch1:Washing Machine Heart Mitski" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mitski_washing_machine_heart.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [952]: Washing Machine Heart"; FAILED=$((FAILED+1)); }

# [953/1000] The Hype — Twenty One Pilots
yt-dlp "ytsearch1:The Hype Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_the_hype.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [953]: The Hype"; FAILED=$((FAILED+1)); }

# [954/1000] Heaven Knows I'm Miserable Now - 2011 Remaster — The Smiths
yt-dlp "ytsearch1:Heaven Knows I'm Miserable Now - 2011 Remaster The Smiths" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_smiths_heaven_knows_im_miserable_now_2011_remaster.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [954]: Heaven Knows I'm Miserable Now - 2011 Remaster"; FAILED=$((FAILED+1)); }

# [955/1000] Guns for Hands — Twenty One Pilots
yt-dlp "ytsearch1:Guns for Hands Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_guns_for_hands.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [955]: Guns for Hands"; FAILED=$((FAILED+1)); }

# [956/1000] Money — The Drums
yt-dlp "ytsearch1:Money The Drums" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_drums_money.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [956]: Money"; FAILED=$((FAILED+1)); }

# [957/1000] Amoeba — Clairo
yt-dlp "ytsearch1:Amoeba Clairo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/clairo_amoeba.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [957]: Amoeba"; FAILED=$((FAILED+1)); }

# [958/1000] Off to the Races — Lana Del Rey
yt-dlp "ytsearch1:Off to the Races Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_off_to_the_races.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [958]: Off to the Races"; FAILED=$((FAILED+1)); }

# [959/1000] Doin' Time — Lana Del Rey
yt-dlp "ytsearch1:Doin' Time Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_doin_time.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [959]: Doin' Time"; FAILED=$((FAILED+1)); }

# [960/1000] favorite crime — Olivia Rodrigo
yt-dlp "ytsearch1:favorite crime Olivia Rodrigo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/olivia_rodrigo_favorite_crime.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [960]: favorite crime"; FAILED=$((FAILED+1)); }

# [961/1000] I Bet on Losing Dogs — Mitski
yt-dlp "ytsearch1:I Bet on Losing Dogs Mitski" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mitski_i_bet_on_losing_dogs.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [961]: I Bet on Losing Dogs"; FAILED=$((FAILED+1)); }

# [962/1000] Video Games — Lana Del Rey
yt-dlp "ytsearch1:Video Games Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_video_games.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [962]: Video Games"; FAILED=$((FAILED+1)); }

# [963/1000] Are You Satisfied? — Marina
yt-dlp "ytsearch1:Are You Satisfied? Marina" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/marina_are_you_satisfied.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [963]: Are You Satisfied?"; FAILED=$((FAILED+1)); }

# [964/1000] Favourite — Fontaines D.C.
yt-dlp "ytsearch1:Favourite Fontaines D.C." --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/fontaines_dc_favourite.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [964]: Favourite"; FAILED=$((FAILED+1)); }

# [965/1000] Get Me Away from Here, I'm Dying — Belle and Sebastian
yt-dlp "ytsearch1:Get Me Away from Here, I'm Dying Belle and Sebastian" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/belle_and_sebastian_get_me_away_from_here_im_dying.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [965]: Get Me Away from Here, I'm Dying"; FAILED=$((FAILED+1)); }

# [966/1000] Silver Soul — Beach House
yt-dlp "ytsearch1:Silver Soul Beach House" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/beach_house_silver_soul.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [966]: Silver Soul"; FAILED=$((FAILED+1)); }

# [967/1000] No Other Heart — Mac DeMarco
yt-dlp "ytsearch1:No Other Heart Mac DeMarco" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mac_demarco_no_other_heart.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [967]: No Other Heart"; FAILED=$((FAILED+1)); }

# [968/1000] Body — Mother Mother
yt-dlp "ytsearch1:Body Mother Mother" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mother_mother_body.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [968]: Body"; FAILED=$((FAILED+1)); }

# [969/1000] I Love You So — The Walters
yt-dlp "ytsearch1:I Love You So The Walters" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_walters_i_love_you_so.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [969]: I Love You So"; FAILED=$((FAILED+1)); }

# [970/1000] i love you — Billie Eilish
yt-dlp "ytsearch1:i love you Billie Eilish" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/billie_eilish_i_love_you.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [970]: i love you"; FAILED=$((FAILED+1)); }

# [971/1000] Sutphin Boulevard — Blood Orange
yt-dlp "ytsearch1:Sutphin Boulevard Blood Orange" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/blood_orange_sutphin_boulevard.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [971]: Sutphin Boulevard"; FAILED=$((FAILED+1)); }

# [972/1000] Say Something — A Great Big World
yt-dlp "ytsearch1:Say Something A Great Big World" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/a_great_big_world_say_something.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [972]: Say Something"; FAILED=$((FAILED+1)); }

# [973/1000] Chlorine — Twenty One Pilots
yt-dlp "ytsearch1:Chlorine Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_chlorine.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [973]: Chlorine"; FAILED=$((FAILED+1)); }

# [974/1000] Lovers Rock — TV Girl
yt-dlp "ytsearch1:Lovers Rock TV Girl" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tv_girl_lovers_rock.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [974]: Lovers Rock"; FAILED=$((FAILED+1)); }

# [975/1000] take a bite — beabadoobee
yt-dlp "ytsearch1:take a bite beabadoobee" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/beabadoobee_take_a_bite.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [975]: take a bite"; FAILED=$((FAILED+1)); }

# [976/1000] The Boy With the Arab Strap — Belle and Sebastian
yt-dlp "ytsearch1:The Boy With the Arab Strap Belle and Sebastian" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/belle_and_sebastian_the_boy_with_the_arab_strap.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [976]: The Boy With the Arab Strap"; FAILED=$((FAILED+1)); }

# [977/1000] Doubt — Twenty One Pilots
yt-dlp "ytsearch1:Doubt Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_doubt.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [977]: Doubt"; FAILED=$((FAILED+1)); }

# [978/1000] Bel Air — Lana Del Rey
yt-dlp "ytsearch1:Bel Air Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_bel_air.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [978]: Bel Air"; FAILED=$((FAILED+1)); }

# [979/1000] House of Gold — Twenty One Pilots
yt-dlp "ytsearch1:House of Gold Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_house_of_gold.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [979]: House of Gold"; FAILED=$((FAILED+1)); }

# [980/1000] I Don't Want to Get Over You — The Magnetic Fields
yt-dlp "ytsearch1:I Don't Want to Get Over You The Magnetic Fields" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_magnetic_fields_i_dont_want_to_get_over_you.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [980]: I Don't Want to Get Over You"; FAILED=$((FAILED+1)); }

# [981/1000] Vicious — Sabrina Carpenter
yt-dlp "ytsearch1:Vicious Sabrina Carpenter" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_vicious.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [981]: Vicious"; FAILED=$((FAILED+1)); }

# [982/1000] girls — girl in red
yt-dlp "ytsearch1:girls girl in red" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/girl_in_red_girls.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [982]: girls"; FAILED=$((FAILED+1)); }

# [983/1000] Burning — The Whitest Boy Alive
yt-dlp "ytsearch1:Burning The Whitest Boy Alive" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_whitest_boy_alive_burning.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [983]: Burning"; FAILED=$((FAILED+1)); }

# [984/1000] Cannibal Queen — Miniature Tigers
yt-dlp "ytsearch1:Cannibal Queen Miniature Tigers" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/miniature_tigers_cannibal_queen.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [984]: Cannibal Queen"; FAILED=$((FAILED+1)); }

# [985/1000] My Finest Hour — The Sundays
yt-dlp "ytsearch1:My Finest Hour The Sundays" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_sundays_my_finest_hour.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [985]: My Finest Hour"; FAILED=$((FAILED+1)); }

# [986/1000] Call It What You Want — Foster the People
yt-dlp "ytsearch1:Call It What You Want Foster the People" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/foster_the_people_call_it_what_you_want.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [986]: Call It What You Want"; FAILED=$((FAILED+1)); }

# [987/1000] Ode to Sleep — Twenty One Pilots
yt-dlp "ytsearch1:Ode to Sleep Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_ode_to_sleep.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [987]: Ode to Sleep"; FAILED=$((FAILED+1)); }

# [988/1000] Wraith Pinned To The Mist And Other Games — of Montreal
yt-dlp "ytsearch1:Wraith Pinned To The Mist And Other Games of Montreal" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/of_montreal_wraith_pinned_to_the_mist_and_other_games.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [988]: Wraith Pinned To The Mist And Other Games"; FAILED=$((FAILED+1)); }

# [989/1000] Goner — Twenty One Pilots
yt-dlp "ytsearch1:Goner Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_goner.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [989]: Goner"; FAILED=$((FAILED+1)); }

# [990/1000] This Is What Makes Us Girls — Lana Del Rey
yt-dlp "ytsearch1:This Is What Makes Us Girls Lana Del Rey" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lana_del_rey_this_is_what_makes_us_girls.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [990]: This Is What Makes Us Girls"; FAILED=$((FAILED+1)); }

# [991/1000] This Night Has Opened My Eyes - 2011 Remaster — The Smiths
yt-dlp "ytsearch1:This Night Has Opened My Eyes - 2011 Remaster The Smiths" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_smiths_this_night_has_opened_my_eyes_2011_remaster.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [991]: This Night Has Opened My Eyes - 2011 Remaster"; FAILED=$((FAILED+1)); }

# [992/1000] Wet Dream — Wet Leg
yt-dlp "ytsearch1:Wet Dream Wet Leg" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/wet_leg_wet_dream.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [992]: Wet Dream"; FAILED=$((FAILED+1)); }

# [993/1000] 1 step forward, 3 steps back — Olivia Rodrigo
yt-dlp "ytsearch1:1 step forward, 3 steps back Olivia Rodrigo" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/olivia_rodrigo_1_step_forward_3_steps_back.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [993]: 1 step forward, 3 steps back"; FAILED=$((FAILED+1)); }

# [994/1000] I / Me / Myself — Will Wood
yt-dlp "ytsearch1:I / Me / Myself Will Wood" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/will_wood_i_me_myself.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [994]: I / Me / Myself"; FAILED=$((FAILED+1)); }

# [995/1000] Migraine — Twenty One Pilots
yt-dlp "ytsearch1:Migraine Twenty One Pilots" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/twenty_one_pilots_migraine.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [995]: Migraine"; FAILED=$((FAILED+1)); }

# [996/1000] The Love Club — Lorde
yt-dlp "ytsearch1:The Love Club Lorde" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lorde_the_love_club.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [996]: The Love Club"; FAILED=$((FAILED+1)); }

# [997/1000] Summertime — The Sundays
yt-dlp "ytsearch1:Summertime The Sundays" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_sundays_summertime.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [997]: Summertime"; FAILED=$((FAILED+1)); }

# [998/1000] Witches — Alice Phoebe Lou
yt-dlp "ytsearch1:Witches Alice Phoebe Lou" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alice_phoebe_lou_witches.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [998]: Witches"; FAILED=$((FAILED+1)); }

# [999/1000] Daylight — Matt & Kim
yt-dlp "ytsearch1:Daylight Matt & Kim" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/matt_kim_daylight.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [999]: Daylight"; FAILED=$((FAILED+1)); }

# [1000/1000] Waste — Foster the People
yt-dlp "ytsearch1:Waste Foster the People" --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/foster_the_people_waste.mp3" --no-playlist --no-overwrites --sleep-interval 2 && TOTAL=$((TOTAL+1)) || { echo "FAILED [1000]: Waste"; FAILED=$((FAILED+1)); }

echo ""
echo "==============================="
echo "Total attempted : 1000"
echo "Downloaded      : $TOTAL"
echo "Failed          : $FAILED"
echo "==============================="