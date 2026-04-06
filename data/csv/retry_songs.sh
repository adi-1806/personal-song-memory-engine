#!/usr/bin/env bash
set -uo pipefail
mkdir -p songs
FAILED=0
TOTAL=0

# Retry failed downloads using Safari cookies to bypass bot detection

# [1/404] Indian Romantic Movies — Vasekaranam Telugu  Movie
yt-dlp "ytsearch1:Indian Romantic Movies Vasekaranam Telugu  Movie" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vasekaranam_telugu_movie_indian_romantic_movies.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [1]: Indian Romantic Movies"; FAILED=$((FAILED+1)); }

# [2/404] Jinguchaa (From Thug Life) — Vaishali Samant
yt-dlp "ytsearch1:Jinguchaa (From Thug Life) Vaishali Samant" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vaishali_samant_jinguchaa_from_thug_life.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [2]: Jinguchaa (From Thug Life)"; FAILED=$((FAILED+1)); }

# [3/404] Vinnaithaandi Varuvaayaa — A.R. Rahman
yt-dlp "ytsearch1:Vinnaithaandi Varuvaayaa A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_vinnaithaandi_varuvaayaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [3]: Vinnaithaandi Varuvaayaa"; FAILED=$((FAILED+1)); }

# [4/404] Pudhu Vellai Mazhai — Unni Menon
yt-dlp "ytsearch1:Pudhu Vellai Mazhai Unni Menon" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/unni_menon_pudhu_vellai_mazhai.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [4]: Pudhu Vellai Mazhai"; FAILED=$((FAILED+1)); }

# [5/404] Jorthaale — Asal Kolaar
yt-dlp "ytsearch1:Jorthaale Asal Kolaar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/asal_kolaar_jorthaale.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [5]: Jorthaale"; FAILED=$((FAILED+1)); }

# [6/404] Raja Raja Chozhan — K. J. Yesudas
yt-dlp "ytsearch1:Raja Raja Chozhan K. J. Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_j_yesudas_raja_raja_chozhan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [6]: Raja Raja Chozhan"; FAILED=$((FAILED+1)); }

# [7/404] Anbe Aaruyire — Rahman A R
yt-dlp "ytsearch1:Anbe Aaruyire Rahman A R" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rahman_a_r_anbe_aaruyire.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [7]: Anbe Aaruyire"; FAILED=$((FAILED+1)); }

# [8/404] Koi Kahe Kehta Rahe — Shankar-Ehsaan-Loy
yt-dlp "ytsearch1:Koi Kahe Kehta Rahe Shankar-Ehsaan-Loy" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_ehsaan_loy_koi_kahe_kehta_rahe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [8]: Koi Kahe Kehta Rahe"; FAILED=$((FAILED+1)); }

# [9/404] Endrendrum Punnagai — Praveen
yt-dlp "ytsearch1:Endrendrum Punnagai Praveen" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/praveen_shankar_mahadevan_endrendrum_punnagai.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [9]: Endrendrum Punnagai"; FAILED=$((FAILED+1)); }

# [10/404] Rangola — Shankar Mahadevan
yt-dlp "ytsearch1:Rangola Shankar Mahadevan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_rangola.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [10]: Rangola"; FAILED=$((FAILED+1)); }

# [11/404] Naan Erikarai — Ilaiyaraaja
yt-dlp "ytsearch1:Naan Erikarai Ilaiyaraaja" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ilaiyaraaja_naan_erikarai.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [11]: Naan Erikarai"; FAILED=$((FAILED+1)); }

# [12/404] Kodu Poatta — A.R. Rahman
yt-dlp "ytsearch1:Kodu Poatta A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kodu_poatta.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [12]: Kodu Poatta"; FAILED=$((FAILED+1)); }

# [13/404] Kaattu Sirukki — A.R. Rahman
yt-dlp "ytsearch1:Kaattu Sirukki A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kaattu_sirukki.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [13]: Kaattu Sirukki"; FAILED=$((FAILED+1)); }

# [14/404] Vennilavae Vennilavae — Hariharan
yt-dlp "ytsearch1:Vennilavae Vennilavae Hariharan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_sadhana_sargam_vennilavae_vennilavae.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [14]: Vennilavae Vennilavae"; FAILED=$((FAILED+1)); }

# [15/404] Kaadhal kaditham (From Jodi) — Unni Menon
yt-dlp "ytsearch1:Kaadhal kaditham (From Jodi) Unni Menon" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/unni_menon_kaadhal_kaditham_from_jodi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [15]: Kaadhal kaditham (From Jodi)"; FAILED=$((FAILED+1)); }

# [16/404] Hey Good Bye Nanba — Sunitha Sarathy
yt-dlp "ytsearch1:Hey Good Bye Nanba Sunitha Sarathy" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sunitha_sarathy_shankar_mahadevan_hey_good_bye_nanba.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [16]: Hey Good Bye Nanba"; FAILED=$((FAILED+1)); }

# [17/404] Pachchai Nirame — Clinton
yt-dlp "ytsearch1:Pachchai Nirame Clinton" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/clinton_hariharan_pachchai_nirame.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [17]: Pachchai Nirame"; FAILED=$((FAILED+1)); }

# [18/404] Rasa Rasa (Language: Tamil; Film: Manasthan; Film Artists: Sarath Kumar, Sakshi) — Chithra
yt-dlp "ytsearch1:Rasa Rasa (Language: Tamil; Film: Manasthan; Film Artists: Sarath Kumar, Sakshi) Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chithra_rasa_rasa_language_tamil_film_manasthan_film_artists_sarath_.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [18]: Rasa Rasa (Language: Tamil; Film: Manasthan; Film Artists: Sarath Kumar, Sakshi)"; FAILED=$((FAILED+1)); }

# [19/404] Alaipayuthey Kanna — Harini
yt-dlp "ytsearch1:Alaipayuthey Kanna Harini" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harini_kalyani_menon_neyveli_ramalakshmi_alaipayuthey_kanna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [19]: Alaipayuthey Kanna"; FAILED=$((FAILED+1)); }

# [20/404] Quarantine Love Mashup — MD Musiq
yt-dlp "ytsearch1:Quarantine Love Mashup MD Musiq" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/md_musiq_quarantine_love_mashup.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [20]: Quarantine Love Mashup"; FAILED=$((FAILED+1)); }

# [21/404] Thalli Pogathey — A.R. Rahman
yt-dlp "ytsearch1:Thalli Pogathey A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_thalli_pogathey.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [21]: Thalli Pogathey"; FAILED=$((FAILED+1)); }

# [22/404] Unna Ninaichaen — SP. Balasubramaniam
yt-dlp "ytsearch1:Unna Ninaichaen SP. Balasubramaniam" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sp_balasubramaniam_unna_ninaichaen.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [22]: Unna Ninaichaen"; FAILED=$((FAILED+1)); }

# [23/404] Yaro Yarodi — Mahalakshmi Iyer
yt-dlp "ytsearch1:Yaro Yarodi Mahalakshmi Iyer" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mahalakshmi_iyer_richa_sharma_vaishali_yaro_yarodi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [23]: Yaro Yarodi"; FAILED=$((FAILED+1)); }

# [24/404] Janani — Ilaiyaraaja
yt-dlp "ytsearch1:Janani Ilaiyaraaja" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ilaiyaraaja_janani.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [24]: Janani"; FAILED=$((FAILED+1)); }

# [25/404] thandhai thAi, Muthu Thandavar — Dhanya Subramanian
yt-dlp "ytsearch1:thandhai thAi, Muthu Thandavar Dhanya Subramanian" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanya_subramanian_thandhai_thai_muthu_thandavar.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [25]: thandhai thAi, Muthu Thandavar"; FAILED=$((FAILED+1)); }

# [26/404] Theepidika Theepidika — Anushka
yt-dlp "ytsearch1:Theepidika Theepidika Anushka" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anushka_premji_theepidika_theepidika.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [26]: Theepidika Theepidika"; FAILED=$((FAILED+1)); }

# [27/404] vandE mAtaram (rAga mAlika), Subramanya Bharathy — Dhanya Subramanian
yt-dlp "ytsearch1:vandE mAtaram (rAga mAlika), Subramanya Bharathy Dhanya Subramanian" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanya_subramanian_vande_mataram_raga_malika_subramanya_bharathy.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [27]: vandE mAtaram (rAga mAlika), Subramanya Bharathy"; FAILED=$((FAILED+1)); }

# [28/404] Naan Varuvene — A.R. Rahman
yt-dlp "ytsearch1:Naan Varuvene A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_naan_varuvene.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [28]: Naan Varuvene"; FAILED=$((FAILED+1)); }

# [29/404] Kanave (Dream) — DJSIRAN
yt-dlp "ytsearch1:Kanave (Dream) DJSIRAN" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/djsiran_kanave_dream.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [29]: Kanave (Dream)"; FAILED=$((FAILED+1)); }

# [30/404] Three in One (Introduction) — Ilaiyaraaja
yt-dlp "ytsearch1:Three in One (Introduction) Ilaiyaraaja" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ilaiyaraaja_three_in_one_introduction.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [30]: Three in One (Introduction)"; FAILED=$((FAILED+1)); }

# [31/404] Rahatulla (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin) — Anupama
yt-dlp "ytsearch1:Rahatulla (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin) Anupama" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anupama_rahatulla_language_tamil_film_ghajini_film_artists_surya_asi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [31]: Rahatulla (Language: Tamil; Film: Ghajini; Film Artists: Surya, Asin)"; FAILED=$((FAILED+1)); }

# [32/404] Ammavum Naane (Language: Tamil; Film: Gajendra; Film Artists: Vijayakanth, Sneha) — Srinivas
yt-dlp "ytsearch1:Ammavum Naane (Language: Tamil; Film: Gajendra; Film Artists: Vijayakanth, Sneha) Srinivas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/srinivas_ammavum_naane_language_tamil_film_gajendra_film_artists_vija.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [32]: Ammavum Naane (Language: Tamil; Film: Gajendra; Film Artists: Vijayakanth, Sneha)"; FAILED=$((FAILED+1)); }

# [33/404] Good Time — Alpha Something
yt-dlp "ytsearch1:Good Time Alpha Something" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alpha_something_good_time.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [33]: Good Time"; FAILED=$((FAILED+1)); }

# [34/404] Nee Dhaane — Alpha Something
yt-dlp "ytsearch1:Nee Dhaane Alpha Something" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/alpha_something_nee_dhaane.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [34]: Nee Dhaane"; FAILED=$((FAILED+1)); }

# [35/404] Pachchai Nirame — Kalyani Menon
yt-dlp "ytsearch1:Pachchai Nirame Kalyani Menon" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kalyani_menon_harini_neyveli_ramalakshmi_swarnalatha_s_p_b_c_pachchai_nirame.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [35]: Pachchai Nirame"; FAILED=$((FAILED+1)); }

# [36/404] Mayilirage — Madhushree
yt-dlp "ytsearch1:Mayilirage Madhushree" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/madhushree_naresh_iyer_mayilirage.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [36]: Mayilirage"; FAILED=$((FAILED+1)); }

# [37/404] Unnaithane (K.J. Yesudas & Manjula) (Language: Tamil; Film: Nallavanukku Nallavan; Film Artists: Rajni Kanth) — K.J. Yesudas
yt-dlp "ytsearch1:Unnaithane (K.J. Yesudas & Manjula) (Language: Tamil; Film: Nallavanukku Nallavan; Film Artists: Rajni Kanth) K.J. Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kj_yesudas_unnaithane_kj_yesudas_manjula_language_tamil_film_nallavanuk.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [37]: Unnaithane (K.J. Yesudas & Manjula) (Language: Tamil; Film: Nallavanukku Nallavan; Film Artists: Rajni Kanth)"; FAILED=$((FAILED+1)); }

# [38/404] Thazhuvudu Nazhuvudu — Balasubramanyam S P
yt-dlp "ytsearch1:Thazhuvudu Nazhuvudu Balasubramanyam S P" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/balasubramanyam_s_p_shreya_ghosal_thazhuvudu_nazhuvudu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [38]: Thazhuvudu Nazhuvudu"; FAILED=$((FAILED+1)); }

# [39/404] Dol Dol Dolare — Blazee
yt-dlp "ytsearch1:Dol Dol Dolare Blazee" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/blazee_shaheen_dol_dol_dolare.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [39]: Dol Dol Dolare"; FAILED=$((FAILED+1)); }

# [40/404] Nijama Nijama (Language: Tamil; Film: Virumbukiren; Film Artists: Prashanth, Sneha) — Sadhana Sargam
yt-dlp "ytsearch1:Nijama Nijama (Language: Tamil; Film: Virumbukiren; Film Artists: Prashanth, Sneha) Sadhana Sargam" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sadhana_sargam_nijama_nijama_language_tamil_film_virumbukiren_film_artists_.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [40]: Nijama Nijama (Language: Tamil; Film: Virumbukiren; Film Artists: Prashanth, Sneha)"; FAILED=$((FAILED+1)); }

# [41/404] Kathali Kathali — Malaysia Vasudevan
yt-dlp "ytsearch1:Kathali Kathali Malaysia Vasudevan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/malaysia_vasudevan_kathali_kathali.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [41]: Kathali Kathali"; FAILED=$((FAILED+1)); }

# [42/404] Pudhu Vellai Mazhai — A.R. Rahman
yt-dlp "ytsearch1:Pudhu Vellai Mazhai A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_pudhu_vellai_mazhai.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [42]: Pudhu Vellai Mazhai"; FAILED=$((FAILED+1)); }

# [43/404] Adhareeni — A.R. Rahman
yt-dlp "ytsearch1:Adhareeni A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_adhareeni.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [43]: Adhareeni"; FAILED=$((FAILED+1)); }

# [44/404] Aatharam Enakkonden (Language: Tamil) — Chitra
yt-dlp "ytsearch1:Aatharam Enakkonden (Language: Tamil) Chitra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_aatharam_enakkonden_language_tamil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [44]: Aatharam Enakkonden (Language: Tamil)"; FAILED=$((FAILED+1)); }

# [45/404] Nenjam Ellam Kadhal — Adnan Sami
yt-dlp "ytsearch1:Nenjam Ellam Kadhal Adnan Sami" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_sujatha_nenjam_ellam_kadhal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [45]: Nenjam Ellam Kadhal"; FAILED=$((FAILED+1)); }

# [46/404] Mainaru Vetti Katti — Santhosh Narayanan
yt-dlp "ytsearch1:Mainaru Vetti Katti Santhosh Narayanan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/santhosh_narayanan_mainaru_vetti_katti.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [46]: Mainaru Vetti Katti"; FAILED=$((FAILED+1)); }

# [47/404] Onnu Rendu Moo — Grace
yt-dlp "ytsearch1:Onnu Rendu Moo Grace" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/grace_jassie_gift_mukesh_vadivelu_onnu_rendu_moo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [47]: Onnu Rendu Moo"; FAILED=$((FAILED+1)); }

# [48/404] Poove Poove Sollidu — Vijay Antony
yt-dlp "ytsearch1:Poove Poove Sollidu Vijay Antony" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_antony_poove_poove_sollidu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [48]: Poove Poove Sollidu"; FAILED=$((FAILED+1)); }

# [49/404] En Kannodu (Language: Tamil; Film: Azagki; Film Artists: Parthiban, Nandita Dass) — Yuvan
yt-dlp "ytsearch1:En Kannodu (Language: Tamil; Film: Azagki; Film Artists: Parthiban, Nandita Dass) Yuvan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_en_kannodu_language_tamil_film_azagki_film_artists_parthiban.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [49]: En Kannodu (Language: Tamil; Film: Azagki; Film Artists: Parthiban, Nandita Dass)"; FAILED=$((FAILED+1)); }

# [50/404] Kangal Kandadhu (Language: Tamil; Film: Oru Kalluriyin Kadhai; Film Artists: Arya, Sonia Agarwal) — Ranjith
yt-dlp "ytsearch1:Kangal Kandadhu (Language: Tamil; Film: Oru Kalluriyin Kadhai; Film Artists: Arya, Sonia Agarwal) Ranjith" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_kangal_kandadhu_language_tamil_film_oru_kalluriyin_kadhai_fi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [50]: Kangal Kandadhu (Language: Tamil; Film: Oru Kalluriyin Kadhai; Film Artists: Arya, Sonia Agarwal)"; FAILED=$((FAILED+1)); }

# [51/404] Hey Salaa — Blaaze
yt-dlp "ytsearch1:Hey Salaa Blaaze" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/blaaze_naresh_iyyar_mohd_aslam_hey_salaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [51]: Hey Salaa"; FAILED=$((FAILED+1)); }

# [52/404] Hosanna — Vijay Prakash
yt-dlp "ytsearch1:Hosanna Vijay Prakash" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_prakash_suzanne_dmello_blaaze_hosanna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [52]: Hosanna"; FAILED=$((FAILED+1)); }

# [53/404] Mental Manadhil — A.R. Rahman & Jonita Gandhi
yt-dlp "ytsearch1:Mental Manadhil A.R. Rahman & Jonita Gandhi" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jonita_gandhi_mental_manadhil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [53]: Mental Manadhil"; FAILED=$((FAILED+1)); }

# [54/404] Pistah — Shabareesh Varma
yt-dlp "ytsearch1:Pistah Shabareesh Varma" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shabareesh_varma_pistah.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [54]: Pistah"; FAILED=$((FAILED+1)); }

# [55/404] Music Bit — Devi Sri Prasad
yt-dlp "ytsearch1:Music Bit Devi Sri Prasad" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/devi_sri_prasad_music_bit.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [55]: Music Bit"; FAILED=$((FAILED+1)); }

# [56/404] Markazhi Thingal — Unnikrishnan
yt-dlp "ytsearch1:Markazhi Thingal Unnikrishnan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/unnikrishnan_markazhi_thingal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [56]: Markazhi Thingal"; FAILED=$((FAILED+1)); }

# [57/404] Kedakkari — A.R. Rahman
yt-dlp "ytsearch1:Kedakkari A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kedakkari.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [57]: Kedakkari"; FAILED=$((FAILED+1)); }

# [58/404] Lajjavathiye Ennai Asathu — Jassie Gift
yt-dlp "ytsearch1:Lajjavathiye Ennai Asathu Jassie Gift" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jassie_gift_lajjavathiye_ennai_asathu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [58]: Lajjavathiye Ennai Asathu"; FAILED=$((FAILED+1)); }

# [59/404] Raha Laska Fik — Hindi
yt-dlp "ytsearch1:Raha Laska Fik Hindi" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hindi_raha_laska_fik.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [59]: Raha Laska Fik"; FAILED=$((FAILED+1)); }

# [60/404] Rangu Rangamma — Harris Jayaraj
yt-dlp "ytsearch1:Rangu Rangamma Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_rangu_rangamma.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [60]: Rangu Rangamma"; FAILED=$((FAILED+1)); }

# [61/404] Pessamal — Amrita Jayakumar
yt-dlp "ytsearch1:Pessamal Amrita Jayakumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/amrita_jayakumar_pessamal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [61]: Pessamal"; FAILED=$((FAILED+1)); }

# [62/404] Poi solla intha — Yuvan Shankar Raja
yt-dlp "ytsearch1:Poi solla intha Yuvan Shankar Raja" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yuvan_shankar_raja_poi_solla_intha.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [62]: Poi solla intha"; FAILED=$((FAILED+1)); }

# [63/404] Kandukondain Kandukondain — A.R. Rahman
yt-dlp "ytsearch1:Kandukondain Kandukondain A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kandukondain_kandukondain.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [63]: Kandukondain Kandukondain"; FAILED=$((FAILED+1)); }

# [64/404] Sowkkiyama — Kadri Gopalnath
yt-dlp "ytsearch1:Sowkkiyama Kadri Gopalnath" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kadri_gopalnath_sowkkiyama.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [64]: Sowkkiyama"; FAILED=$((FAILED+1)); }

# [65/404] Zindagi — Srinivas
yt-dlp "ytsearch1:Zindagi Srinivas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/srinivas_zindagi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [65]: Zindagi"; FAILED=$((FAILED+1)); }

# [66/404] Nenje Nenje — Harris Jayaraj
yt-dlp "ytsearch1:Nenje Nenje Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_nenje_nenje.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [66]: Nenje Nenje"; FAILED=$((FAILED+1)); }

# [67/404] Why this kolaveri di — Dhanush
yt-dlp "ytsearch1:Why this kolaveri di Dhanush" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/dhanush_why_this_kolaveri_di.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [67]: Why this kolaveri di"; FAILED=$((FAILED+1)); }

# [68/404] Rangola Hola Hola — Shankar Mahadevan
yt-dlp "ytsearch1:Rangola Hola Hola Shankar Mahadevan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_sujatha_rangola_hola_hola.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [68]: Rangola Hola Hola"; FAILED=$((FAILED+1)); }

# [69/404] Rahatulla — Anupama
yt-dlp "ytsearch1:Rahatulla Anupama" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anupama_rahatulla.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [69]: Rahatulla"; FAILED=$((FAILED+1)); }

# [70/404] Excuse Me Mr. Kanthaswamy — Vikram
yt-dlp "ytsearch1:Excuse Me Mr. Kanthaswamy Vikram" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vikram_suchitra_kuma_excuse_me_mr_kanthaswamy.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [70]: Excuse Me Mr. Kanthaswamy"; FAILED=$((FAILED+1)); }

# [71/404] Imsaiye (Language: Tamil; Film: Kannukul Nilavu; Film Artists: Vijay, Shalini) — Srinivas
yt-dlp "ytsearch1:Imsaiye (Language: Tamil; Film: Kannukul Nilavu; Film Artists: Vijay, Shalini) Srinivas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/srinivas_imsaiye_language_tamil_film_kannukul_nilavu_film_artists_vij.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [71]: Imsaiye (Language: Tamil; Film: Kannukul Nilavu; Film Artists: Vijay, Shalini)"; FAILED=$((FAILED+1)); }

# [72/404] Kuchi Kuchi — Hariharan
yt-dlp "ytsearch1:Kuchi Kuchi Hariharan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_swarnalatha_shweta_mohan_kuchi_kuchi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [72]: Kuchi Kuchi"; FAILED=$((FAILED+1)); }

# [73/404] Water Packet (From Raayan) — A.R. Rahman
yt-dlp "ytsearch1:Water Packet (From Raayan) A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_shweta_mohan_gana_kadhar_santhosh_narayanan_water_packet_from_raayan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [73]: Water Packet (From Raayan)"; FAILED=$((FAILED+1)); }

# [74/404] Nallavan Nallavan (Be A Good Boy) — Hamsalekha
yt-dlp "ytsearch1:Nallavan Nallavan (Be A Good Boy) Hamsalekha" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hamsalekha_nallavan_nallavan_be_a_good_boy.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [74]: Nallavan Nallavan (Be A Good Boy)"; FAILED=$((FAILED+1)); }

# [75/404] Vaa Chellam — Udit Narayanan
yt-dlp "ytsearch1:Vaa Chellam Udit Narayanan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/udit_narayanan_vaa_chellam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [75]: Vaa Chellam"; FAILED=$((FAILED+1)); }

# [76/404] Urvashi Uravashi — a.r. rahman
yt-dlp "ytsearch1:Urvashi Uravashi a.r. rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_suresh_peters_shahul_hameed_urvashi_uravashi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [76]: Urvashi Uravashi"; FAILED=$((FAILED+1)); }

# [77/404] Gadi Thalupulu — Thaman S.
yt-dlp "ytsearch1:Gadi Thalupulu Thaman S." --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/thaman_s_gadi_thalupulu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [77]: Gadi Thalupulu"; FAILED=$((FAILED+1)); }

# [78/404] Ro Ro Roshini — Nivas
yt-dlp "ytsearch1:Ro Ro Roshini Nivas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nivas_ro_ro_roshini.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [78]: Ro Ro Roshini"; FAILED=$((FAILED+1)); }

# [79/404] Aaja Meri Soniye — S.P.Charan
yt-dlp "ytsearch1:Aaja Meri Soniye S.P.Charan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/spcharanvijay_yesudaspremgi_amaren_aaja_meri_soniye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [79]: Aaja Meri Soniye"; FAILED=$((FAILED+1)); }

# [80/404] So Baby — Sivakarthikeyan
yt-dlp "ytsearch1:So Baby Sivakarthikeyan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sivakarthikeyan_so_baby.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [80]: So Baby"; FAILED=$((FAILED+1)); }

# [81/404] Sirichi Sirichi — Grace Karunas
yt-dlp "ytsearch1:Sirichi Sirichi Grace Karunas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/grace_karunas_sirichi_sirichi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [81]: Sirichi Sirichi"; FAILED=$((FAILED+1)); }

# [82/404] Aalaala Kandaa — M.S.V.
yt-dlp "ytsearch1:Aalaala Kandaa M.S.V." --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/msv_aalaala_kandaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [82]: Aalaala Kandaa"; FAILED=$((FAILED+1)); }

# [83/404] Kannodu Kaanberallam — Nithyashree
yt-dlp "ytsearch1:Kannodu Kaanberallam Nithyashree" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nithyashree_kannodu_kaanberallam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [83]: Kannodu Kaanberallam"; FAILED=$((FAILED+1)); }

# [84/404] Alai Payuthey — Kalyani Menon
yt-dlp "ytsearch1:Alai Payuthey Kalyani Menon" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kalyani_menon_harini_neyveli_ramalakshmi_alai_payuthey.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [84]: Alai Payuthey"; FAILED=$((FAILED+1)); }

# [85/404] Manogari — Haricharan & Mohana
yt-dlp "ytsearch1:Manogari Haricharan & Mohana" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/haricharan_mohana_manogari.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [85]: Manogari"; FAILED=$((FAILED+1)); }

# [86/404] Jai Ho! (You Are My Destiny) — A.R. Rahman
yt-dlp "ytsearch1:Jai Ho! (You Are My Destiny) A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jai_ho_you_are_my_destiny.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [86]: Jai Ho! (You Are My Destiny)"; FAILED=$((FAILED+1)); }

# [87/404] Enna Sona — A.R. Rahman
yt-dlp "ytsearch1:Enna Sona A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_enna_sona.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [87]: Enna Sona"; FAILED=$((FAILED+1)); }

# [88/404] Kun Faya Kun — A.R. Rahman
yt-dlp "ytsearch1:Kun Faya Kun A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_kun_faya_kun.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [88]: Kun Faya Kun"; FAILED=$((FAILED+1)); }

# [89/404] Riots — A.R. Rahman
yt-dlp "ytsearch1:Riots A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_riots.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [89]: Riots"; FAILED=$((FAILED+1)); }

# [90/404] Mumbai Theme Tune — A.R. Rahman
yt-dlp "ytsearch1:Mumbai Theme Tune A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mumbai_theme_tune.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [90]: Mumbai Theme Tune"; FAILED=$((FAILED+1)); }

# [91/404] Jashn-E-Bahaaraa — A.R. Rahman
yt-dlp "ytsearch1:Jashn-E-Bahaaraa A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jashn_e_bahaaraa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [91]: Jashn-E-Bahaaraa"; FAILED=$((FAILED+1)); }

# [92/404] Maahi Ve — A.R. Rahman
yt-dlp "ytsearch1:Maahi Ve A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_maahi_ve.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [92]: Maahi Ve"; FAILED=$((FAILED+1)); }

# [93/404] Mausam & Escape — A.R. Rahman
yt-dlp "ytsearch1:Mausam & Escape A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_mausam_escape.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [93]: Mausam & Escape"; FAILED=$((FAILED+1)); }

# [94/404] Nadaan Parinde — A.R. Rahman
yt-dlp "ytsearch1:Nadaan Parinde A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_nadaan_parinde.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [94]: Nadaan Parinde"; FAILED=$((FAILED+1)); }

# [95/404] Raanjhanaa (From Raanjhanaa) — A.R. Rahman
yt-dlp "ytsearch1:Raanjhanaa (From Raanjhanaa) A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_raanjhanaa_from_raanjhanaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [95]: Raanjhanaa (From Raanjhanaa)"; FAILED=$((FAILED+1)); }

# [96/404] Raanjhanaa — A.R. Rahman
yt-dlp "ytsearch1:Raanjhanaa A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_raanjhanaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [96]: Raanjhanaa"; FAILED=$((FAILED+1)); }

# [97/404] Latika's Theme — A.R. Rahman
yt-dlp "ytsearch1:Latika's Theme A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_latikas_theme.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [97]: Latika's Theme"; FAILED=$((FAILED+1)); }

# [98/404] Challa — A.R. Rahman
yt-dlp "ytsearch1:Challa A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_challa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [98]: Challa"; FAILED=$((FAILED+1)); }

# [99/404] Tum Tak (From Raanjhanaa) — A.R. Rahman
yt-dlp "ytsearch1:Tum Tak (From Raanjhanaa) A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_tum_tak_from_raanjhanaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [99]: Tum Tak (From Raanjhanaa)"; FAILED=$((FAILED+1)); }

# [100/404] Tum Tak — A.R. Rahman
yt-dlp "ytsearch1:Tum Tak A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_tum_tak.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [100]: Tum Tak"; FAILED=$((FAILED+1)); }

# [101/404] Barso Re — A.R. Rahman
yt-dlp "ytsearch1:Barso Re A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_barso_re.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [101]: Barso Re"; FAILED=$((FAILED+1)); }

# [102/404] Param Sundari — A.R. Rahman
yt-dlp "ytsearch1:Param Sundari A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_param_sundari.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [102]: Param Sundari"; FAILED=$((FAILED+1)); }

# [103/404] Roobaroo — A.R. Rahman
yt-dlp "ytsearch1:Roobaroo A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_roobaroo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [103]: Roobaroo"; FAILED=$((FAILED+1)); }

# [104/404] The Humma Song — A.R. Rahman
yt-dlp "ytsearch1:The Humma Song A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_the_humma_song.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [104]: The Humma Song"; FAILED=$((FAILED+1)); }

# [105/404] Ringa Ringa — A.R. Rahman
yt-dlp "ytsearch1:Ringa Ringa A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_ringa_ringa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [105]: Ringa Ringa"; FAILED=$((FAILED+1)); }

# [106/404] Luka Chuppi — A.R. Rahman
yt-dlp "ytsearch1:Luka Chuppi A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_luka_chuppi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [106]: Luka Chuppi"; FAILED=$((FAILED+1)); }

# [107/404] Liquid Dance — A.R. Rahman
yt-dlp "ytsearch1:Liquid Dance A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_liquid_dance.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [107]: Liquid Dance"; FAILED=$((FAILED+1)); }

# [108/404] Jiya Re — A.R. Rahman
yt-dlp "ytsearch1:Jiya Re A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_jiya_re.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [108]: Jiya Re"; FAILED=$((FAILED+1)); }

# [109/404] Radha Kaise Na Jale — A.R. Rahman
yt-dlp "ytsearch1:Radha Kaise Na Jale A.R. Rahman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ar_rahman_radha_kaise_na_jale.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [109]: Radha Kaise Na Jale"; FAILED=$((FAILED+1)); }

# [110/404] CHALEYA — Anirudh Ravichander
yt-dlp "ytsearch1:CHALEYA Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_chaleya.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [110]: CHALEYA"; FAILED=$((FAILED+1)); }

# [111/404] Chaleya (From Jawan) — Anirudh Ravichander
yt-dlp "ytsearch1:Chaleya (From Jawan) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_chaleya_from_jawan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [111]: Chaleya (From Jawan)"; FAILED=$((FAILED+1)); }

# [112/404] Why This Kolaveri Di? - The Soup of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Why This Kolaveri Di? - The Soup of Love Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_why_this_kolaveri_di_the_soup_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [112]: Why This Kolaveri Di? - The Soup of Love"; FAILED=$((FAILED+1)); }

# [113/404] Kannazhaga - The Kiss of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Kannazhaga - The Kiss of Love Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_kannazhaga_the_kiss_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [113]: Kannazhaga - The Kiss of Love"; FAILED=$((FAILED+1)); }

# [114/404] Arabic Kuthu - Halamithi Habibo (From Beast) — Anirudh Ravichander
yt-dlp "ytsearch1:Arabic Kuthu - Halamithi Habibo (From Beast) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_arabic_kuthu_halamithi_habibo_from_beast.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [114]: Arabic Kuthu - Halamithi Habibo (From Beast)"; FAILED=$((FAILED+1)); }

# [115/404] Idhazhin Oram - The Innocence of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Idhazhin Oram - The Innocence of Love Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_idhazhin_oram_the_innocence_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [115]: Idhazhin Oram - The Innocence of Love"; FAILED=$((FAILED+1)); }

# [116/404] Hayyoda (From Jawan) — Anirudh Ravichander
yt-dlp "ytsearch1:Hayyoda (From Jawan) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_hayyoda_from_jawan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [116]: Hayyoda (From Jawan)"; FAILED=$((FAILED+1)); }

# [117/404] Hukum - Thalaivar Alappara — Anirudh Ravichander
yt-dlp "ytsearch1:Hukum - Thalaivar Alappara Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_hukum_thalaivar_alappara.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [117]: Hukum - Thalaivar Alappara"; FAILED=$((FAILED+1)); }

# [118/404] Thangamey — Anirudh Ravichander
yt-dlp "ytsearch1:Thangamey Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_thangamey.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [118]: Thangamey"; FAILED=$((FAILED+1)); }

# [119/404] Naa Ready (From Leo) — Anirudh Ravichander
yt-dlp "ytsearch1:Naa Ready (From Leo) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_naa_ready_from_leo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [119]: Naa Ready (From Leo)"; FAILED=$((FAILED+1)); }

# [120/404] Nee Paartha Vizhigal - The Touch of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Nee Paartha Vizhigal - The Touch of Love Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_nee_paartha_vizhigal_the_touch_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [120]: Nee Paartha Vizhigal - The Touch of Love"; FAILED=$((FAILED+1)); }

# [121/404] Maari Thara Local - Here Comes Maari — Anirudh Ravichander
yt-dlp "ytsearch1:Maari Thara Local - Here Comes Maari Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_maari_thara_local_here_comes_maari.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [121]: Maari Thara Local - Here Comes Maari"; FAILED=$((FAILED+1)); }

# [122/404] Vaathi Coming — Anirudh Ravichander
yt-dlp "ytsearch1:Vaathi Coming Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_vaathi_coming.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [122]: Vaathi Coming"; FAILED=$((FAILED+1)); }

# [123/404] Dippam Dappam (From Kaathuvaakula Rendu Kaadhal) — Anirudh Ravichander
yt-dlp "ytsearch1:Dippam Dappam (From Kaathuvaakula Rendu Kaadhal) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_dippam_dappam_from_kaathuvaakula_rendu_kaadhal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [123]: Dippam Dappam (From Kaathuvaakula Rendu Kaadhal)"; FAILED=$((FAILED+1)); }

# [124/404] Udhungada Sangu (From Velai Illa Pattadhaari) — Anirudh Ravichander
yt-dlp "ytsearch1:Udhungada Sangu (From Velai Illa Pattadhaari) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_udhungada_sangu_from_velai_illa_pattadhaari.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [124]: Udhungada Sangu (From Velai Illa Pattadhaari)"; FAILED=$((FAILED+1)); }

# [125/404] Vikram - Title Track — Anirudh Ravichander
yt-dlp "ytsearch1:Vikram - Title Track Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_vikram_title_track.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [125]: Vikram - Title Track"; FAILED=$((FAILED+1)); }

# [126/404] Don'u Don'u Don'u - The Don's Romance — Anirudh Ravichander
yt-dlp "ytsearch1:Don'u Don'u Don'u - The Don's Romance Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_donu_donu_donu_the_dons_romance.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [126]: Don'u Don'u Don'u - The Don's Romance"; FAILED=$((FAILED+1)); }

# [127/404] Ordinary Person (From Leo) — Anirudh Ravichander
yt-dlp "ytsearch1:Ordinary Person (From Leo) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_ordinary_person_from_leo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [127]: Ordinary Person (From Leo)"; FAILED=$((FAILED+1)); }

# [128/404] Lokiverse - Background Score — Anirudh Ravichander
yt-dlp "ytsearch1:Lokiverse - Background Score Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_lokiverse_background_score.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [128]: Lokiverse - Background Score"; FAILED=$((FAILED+1)); }

# [129/404] Badass (From Leo) — Anirudh Ravichander
yt-dlp "ytsearch1:Badass (From Leo) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_badass_from_leo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [129]: Badass (From Leo)"; FAILED=$((FAILED+1)); }

# [130/404] Kaavaalaa (From Jailer) — Anirudh Ravichander
yt-dlp "ytsearch1:Kaavaalaa (From Jailer) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_kaavaalaa_from_jailer.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [130]: Kaavaalaa (From Jailer)"; FAILED=$((FAILED+1)); }

# [131/404] Oh Penne — Anirudh Ravichander
yt-dlp "ytsearch1:Oh Penne Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_oh_penne.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [131]: Oh Penne"; FAILED=$((FAILED+1)); }

# [132/404] Po Nee Po - The Pain of Love — Anirudh Ravichander
yt-dlp "ytsearch1:Po Nee Po - The Pain of Love Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_po_nee_po_the_pain_of_love.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [132]: Po Nee Po - The Pain of Love"; FAILED=$((FAILED+1)); }

# [133/404] Not Ramaiya Vastavaiya — Anirudh Ravichander
yt-dlp "ytsearch1:Not Ramaiya Vastavaiya Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_not_ramaiya_vastavaiya.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [133]: Not Ramaiya Vastavaiya"; FAILED=$((FAILED+1)); }

# [134/404] Senjitaley — Anirudh Ravichander
yt-dlp "ytsearch1:Senjitaley Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_senjitaley.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [134]: Senjitaley"; FAILED=$((FAILED+1)); }

# [135/404] Marana Mass - From Petta — Anirudh Ravichander
yt-dlp "ytsearch1:Marana Mass - From Petta Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_marana_mass_from_petta.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [135]: Marana Mass - From Petta"; FAILED=$((FAILED+1)); }

# [136/404] Once Upon a Time — Anirudh Ravichander
yt-dlp "ytsearch1:Once Upon a Time Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_once_upon_a_time.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [136]: Once Upon a Time"; FAILED=$((FAILED+1)); }

# [137/404] Vaathi Coming (From Master) — Anirudh Ravichander
yt-dlp "ytsearch1:Vaathi Coming (From Master) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_vaathi_coming_from_master.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [137]: Vaathi Coming (From Master)"; FAILED=$((FAILED+1)); }

# [138/404] Manasilaayo (From Vettaiyan) — Anirudh Ravichander
yt-dlp "ytsearch1:Manasilaayo (From Vettaiyan) Anirudh Ravichander" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anirudh_ravichander_manasilaayo_from_vettaiyan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [138]: Manasilaayo (From Vettaiyan)"; FAILED=$((FAILED+1)); }

# [139/404] Unakkul Naane — Harris Jayaraj
yt-dlp "ytsearch1:Unakkul Naane Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_unakkul_naane.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [139]: Unakkul Naane"; FAILED=$((FAILED+1)); }

# [140/404] Nenjukkul Peidhidum — Harris Jayaraj
yt-dlp "ytsearch1:Nenjukkul Peidhidum Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_nenjukkul_peidhidum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [140]: Nenjukkul Peidhidum"; FAILED=$((FAILED+1)); }

# [141/404] Mundhinam — Harris Jayaraj
yt-dlp "ytsearch1:Mundhinam Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_mundhinam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [141]: Mundhinam"; FAILED=$((FAILED+1)); }

# [142/404] Vaarayo Vaarayo — Harris Jayaraj
yt-dlp "ytsearch1:Vaarayo Vaarayo Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_vaarayo_vaarayo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [142]: Vaarayo Vaarayo"; FAILED=$((FAILED+1)); }

# [143/404] Ava Enna — Harris Jayaraj
yt-dlp "ytsearch1:Ava Enna Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_ava_enna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [143]: Ava Enna"; FAILED=$((FAILED+1)); }

# [144/404] Adiyae Kolluthey — Harris Jayaraj
yt-dlp "ytsearch1:Adiyae Kolluthey Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_adiyae_kolluthey.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [144]: Adiyae Kolluthey"; FAILED=$((FAILED+1)); }

# [145/404] Annul Maelae — Harris Jayaraj
yt-dlp "ytsearch1:Annul Maelae Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_annul_maelae.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [145]: Annul Maelae"; FAILED=$((FAILED+1)); }

# [146/404] Ennamo Yeadho — Harris Jayaraj
yt-dlp "ytsearch1:Ennamo Yeadho Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_ennamo_yeadho.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [146]: Ennamo Yeadho"; FAILED=$((FAILED+1)); }

# [147/404] Anbe En Anbe — Harris Jayaraj
yt-dlp "ytsearch1:Anbe En Anbe Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_anbe_en_anbe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [147]: Anbe En Anbe"; FAILED=$((FAILED+1)); }

# [148/404] Hasili Fisiliye — Harris Jayaraj
yt-dlp "ytsearch1:Hasili Fisiliye Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_hasili_fisiliye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [148]: Hasili Fisiliye"; FAILED=$((FAILED+1)); }

# [149/404] Ennamo Yeadho (From KO) — Harris Jayaraj
yt-dlp "ytsearch1:Ennamo Yeadho (From KO) Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_ennamo_yeadho_from_ko.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [149]: Ennamo Yeadho (From KO)"; FAILED=$((FAILED+1)); }

# [150/404] Yethi Yethi — Harris Jayaraj
yt-dlp "ytsearch1:Yethi Yethi Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_yethi_yethi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [150]: Yethi Yethi"; FAILED=$((FAILED+1)); }

# [151/404] Oh! Shanthi Shanthi — Harris Jayaraj
yt-dlp "ytsearch1:Oh! Shanthi Shanthi Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_oh_shanthi_shanthi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [151]: Oh! Shanthi Shanthi"; FAILED=$((FAILED+1)); }

# [152/404] Yaaro Manathile — Harris Jayaraj
yt-dlp "ytsearch1:Yaaro Manathile Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_yaaro_manathile.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [152]: Yaaro Manathile"; FAILED=$((FAILED+1)); }

# [153/404] Mun Andhi — Harris Jayaraj
yt-dlp "ytsearch1:Mun Andhi Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_mun_andhi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [153]: Mun Andhi"; FAILED=$((FAILED+1)); }

# [154/404] Danga Maari Oodhari — Harris Jayaraj
yt-dlp "ytsearch1:Danga Maari Oodhari Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_danga_maari_oodhari.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [154]: Danga Maari Oodhari"; FAILED=$((FAILED+1)); }

# [155/404] Mazhai Vara Pogudhae — Harris Jayaraj
yt-dlp "ytsearch1:Mazhai Vara Pogudhae Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_mazhai_vara_pogudhae.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [155]: Mazhai Vara Pogudhae"; FAILED=$((FAILED+1)); }

# [156/404] Engeyum Kaadhal — Harris Jayaraj
yt-dlp "ytsearch1:Engeyum Kaadhal Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_engeyum_kaadhal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [156]: Engeyum Kaadhal"; FAILED=$((FAILED+1)); }

# [157/404] Aathangara Orathil — Harris Jayaraj
yt-dlp "ytsearch1:Aathangara Orathil Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_aathangara_orathil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [157]: Aathangara Orathil"; FAILED=$((FAILED+1)); }

# [158/404] Manjal Veyil — Harris Jayaraj
yt-dlp "ytsearch1:Manjal Veyil Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_manjal_veyil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [158]: Manjal Veyil"; FAILED=$((FAILED+1)); }

# [159/404] Adhaaru Adhaaru — Harris Jayaraj
yt-dlp "ytsearch1:Adhaaru Adhaaru Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_adhaaru_adhaaru.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [159]: Adhaaru Adhaaru"; FAILED=$((FAILED+1)); }

# [160/404] Yellae Lama — Harris Jayaraj
yt-dlp "ytsearch1:Yellae Lama Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_yellae_lama.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [160]: Yellae Lama"; FAILED=$((FAILED+1)); }

# [161/404] Unakkenna Venum Sollu — Harris Jayaraj
yt-dlp "ytsearch1:Unakkenna Venum Sollu Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_unakkenna_venum_sollu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [161]: Unakkenna Venum Sollu"; FAILED=$((FAILED+1)); }

# [162/404] Thodu Vaanam — Harris Jayaraj
yt-dlp "ytsearch1:Thodu Vaanam Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_thodu_vaanam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [162]: Thodu Vaanam"; FAILED=$((FAILED+1)); }

# [163/404] Paartha Mudhal — Harris Jayaraj
yt-dlp "ytsearch1:Paartha Mudhal Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_paartha_mudhal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [163]: Paartha Mudhal"; FAILED=$((FAILED+1)); }

# [164/404] Naaloney Pongaynu — Harris Jayaraj
yt-dlp "ytsearch1:Naaloney Pongaynu Harris Jayaraj" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harris_jayaraj_naaloney_pongaynu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [164]: Naaloney Pongaynu"; FAILED=$((FAILED+1)); }

# [165/404] Nagumo — Hesham Abdul Wahab
yt-dlp "ytsearch1:Nagumo Hesham Abdul Wahab" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hesham_abdul_wahab_nagumo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [165]: Nagumo"; FAILED=$((FAILED+1)); }

# [166/404] Puthu Mazha (From Sarvam Maya) — Justin Prabhakaran
yt-dlp "ytsearch1:Puthu Mazha (From Sarvam Maya) Justin Prabhakaran" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_prabhakaran_puthu_mazha_from_sarvam_maya.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [166]: Puthu Mazha (From Sarvam Maya)"; FAILED=$((FAILED+1)); }

# [167/404] Chiri Thottu (From Sarvam Maya) — Justin Prabhakaran
yt-dlp "ytsearch1:Chiri Thottu (From Sarvam Maya) Justin Prabhakaran" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_prabhakaran_chiri_thottu_from_sarvam_maya.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [167]: Chiri Thottu (From Sarvam Maya)"; FAILED=$((FAILED+1)); }

# [168/404] Naran (Language: Malayalam; Film: Naran; Film Artists: Mohan Lal, Devyani) — Chitra
yt-dlp "ytsearch1:Naran (Language: Malayalam; Film: Naran; Film Artists: Mohan Lal, Devyani) Chitra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_naran_language_malayalam_film_naran_film_artists_mohan_lal_d.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [168]: Naran (Language: Malayalam; Film: Naran; Film Artists: Mohan Lal, Devyani)"; FAILED=$((FAILED+1)); }

# [169/404] Kalapakkaara (From King of Kotha) — Jakes Bejoy
yt-dlp "ytsearch1:Kalapakkaara (From King of Kotha) Jakes Bejoy" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jakes_bejoy_kalapakkaara_from_king_of_kotha.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [169]: Kalapakkaara (From King of Kotha)"; FAILED=$((FAILED+1)); }

# [170/404] Chanjadi Aadi (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) — Adnan Sami
yt-dlp "ytsearch1:Chanjadi Aadi (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana) Adnan Sami" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/adnan_sami_chanjadi_aadi_language_malayalam_film_makalkku_film_artists_.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [170]: Chanjadi Aadi (Language: Malayalam; Film: Makalkku; Film Artists: Suresh Gopi, Shobana)"; FAILED=$((FAILED+1)); }

# [171/404] Para Para — Anoop Mohandas
yt-dlp "ytsearch1:Para Para Anoop Mohandas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/anoop_mohandas_para_para.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [171]: Para Para"; FAILED=$((FAILED+1)); }

# [172/404] Mel Mel — Naresh Iyer
yt-dlp "ytsearch1:Mel Mel Naresh Iyer" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/naresh_iyer_mel_mel.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [172]: Mel Mel"; FAILED=$((FAILED+1)); }

# [173/404] Parayathe Parayunna — Nikhil Chandran
yt-dlp "ytsearch1:Parayathe Parayunna Nikhil Chandran" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nikhil_chandran_parayathe_parayunna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [173]: Parayathe Parayunna"; FAILED=$((FAILED+1)); }

# [174/404] Raat — Jackson Vijayan
yt-dlp "ytsearch1:Raat Jackson Vijayan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jackson_vijayan_raat.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [174]: Raat"; FAILED=$((FAILED+1)); }

# [175/404] Anuraghathin Velayil — Vineeth Sreenivasan
yt-dlp "ytsearch1:Anuraghathin Velayil Vineeth Sreenivasan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_anuraghathin_velayil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [175]: Anuraghathin Velayil"; FAILED=$((FAILED+1)); }

# [176/404] Ente Khalbile — Vineeth Sreenivasan
yt-dlp "ytsearch1:Ente Khalbile Vineeth Sreenivasan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_ente_khalbile.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [176]: Ente Khalbile"; FAILED=$((FAILED+1)); }

# [177/404] Nandiyalennullam — Sujatha
yt-dlp "ytsearch1:Nandiyalennullam Sujatha" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sujatha_nandiyalennullam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [177]: Nandiyalennullam"; FAILED=$((FAILED+1)); }

# [178/404] Panipaali-2 — NJ
yt-dlp "ytsearch1:Panipaali-2 NJ" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nj_panipaali_2.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [178]: Panipaali-2"; FAILED=$((FAILED+1)); }

# [179/404] Innaley (Chitra) (Language: Malayalam; Film: Balettan; Film Artists: Mohan Lal, Devyani) — Chitra
yt-dlp "ytsearch1:Innaley (Chitra) (Language: Malayalam; Film: Balettan; Film Artists: Mohan Lal, Devyani) Chitra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_innaley_chitra_language_malayalam_film_balettan_film_artists.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [179]: Innaley (Chitra) (Language: Malayalam; Film: Balettan; Film Artists: Mohan Lal, Devyani)"; FAILED=$((FAILED+1)); }

# [180/404] Athiraliyum — Vijay Yesudas
yt-dlp "ytsearch1:Athiraliyum Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_athiraliyum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [180]: Athiraliyum"; FAILED=$((FAILED+1)); }

# [181/404] Paathira Kaalam — Tribemama Marykali
yt-dlp "ytsearch1:Paathira Kaalam Tribemama Marykali" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tribemama_marykali_paathira_kaalam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [181]: Paathira Kaalam"; FAILED=$((FAILED+1)); }

# [182/404] Arike Ninna — Hesham Abdul Wahab
yt-dlp "ytsearch1:Arike Ninna Hesham Abdul Wahab" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hesham_abdul_wahab_arike_ninna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [182]: Arike Ninna"; FAILED=$((FAILED+1)); }

# [183/404] Rarify — John Young
yt-dlp "ytsearch1:Rarify John Young" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/john_young_rarify.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [183]: Rarify"; FAILED=$((FAILED+1)); }

# [184/404] Maa Marubhoomi — Satheeshbabu
yt-dlp "ytsearch1:Maa Marubhoomi Satheeshbabu" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/satheeshbabu_maa_marubhoomi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [184]: Maa Marubhoomi"; FAILED=$((FAILED+1)); }

# [185/404] Theerathe Neelunne — Vineeth Sreenivasan
yt-dlp "ytsearch1:Theerathe Neelunne Vineeth Sreenivasan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_theerathe_neelunne.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [185]: Theerathe Neelunne"; FAILED=$((FAILED+1)); }

# [186/404] Kaattu Mooliyo — Vineeth Sreenivasan
yt-dlp "ytsearch1:Kaattu Mooliyo Vineeth Sreenivasan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vineeth_sreenivasan_kaattu_mooliyo.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [186]: Kaattu Mooliyo"; FAILED=$((FAILED+1)); }

# [187/404] Trance (Title Track) — Vinayakan T K
yt-dlp "ytsearch1:Trance (Title Track) Vinayakan T K" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vinayakan_t_k_neha_s_nair_lee_trance_title_track.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [187]: Trance (Title Track)"; FAILED=$((FAILED+1)); }

# [188/404] Karukara — Avial
yt-dlp "ytsearch1:Karukara Avial" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/avial_karukara.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [188]: Karukara"; FAILED=$((FAILED+1)); }

# [189/404] Njan Aara — Avial
yt-dlp "ytsearch1:Njan Aara Avial" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/avial_njan_aara.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [189]: Njan Aara"; FAILED=$((FAILED+1)); }

# [190/404] Ayalathe — Shreekumar Vakkiyil
yt-dlp "ytsearch1:Ayalathe Shreekumar Vakkiyil" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreekumar_vakkiyil_ayalathe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [190]: Ayalathe"; FAILED=$((FAILED+1)); }

# [191/404] Kaathirunnu — Shreya Ghoshal
yt-dlp "ytsearch1:Kaathirunnu Shreya Ghoshal" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_kaathirunnu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [191]: Kaathirunnu"; FAILED=$((FAILED+1)); }

# [192/404] Nattucha Nerathu (Revival) — K.J. Yesudas
yt-dlp "ytsearch1:Nattucha Nerathu (Revival) K.J. Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kj_yesudas_nattucha_nerathu_revival.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [192]: Nattucha Nerathu (Revival)"; FAILED=$((FAILED+1)); }

# [193/404] Otta Thumbi — Shankar Mahadevan
yt-dlp "ytsearch1:Otta Thumbi Shankar Mahadevan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_otta_thumbi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [193]: Otta Thumbi"; FAILED=$((FAILED+1)); }

# [194/404] Madhuram — K S Chitra
yt-dlp "ytsearch1:Madhuram K S Chitra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_s_chitra_madhuram.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [194]: Madhuram"; FAILED=$((FAILED+1)); }

# [195/404] Puttu paattu — Thakara
yt-dlp "ytsearch1:Puttu paattu Thakara" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/thakara_puttu_paattu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [195]: Puttu paattu"; FAILED=$((FAILED+1)); }

# [196/404] Poomuthole - From Joseph — Niranj Suresh
yt-dlp "ytsearch1:Poomuthole - From Joseph Niranj Suresh" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/niranj_suresh_poomuthole_from_joseph.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [196]: Poomuthole - From Joseph"; FAILED=$((FAILED+1)); }

# [197/404] Why I'm Serious (Interlude) — T.I.
yt-dlp "ytsearch1:Why I'm Serious (Interlude) T.I." --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ti_why_im_serious_interlude.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [197]: Why I'm Serious (Interlude)"; FAILED=$((FAILED+1)); }

# [198/404] Vinnile Ghandarva — S. P. Venkatesh
yt-dlp "ytsearch1:Vinnile Ghandarva S. P. Venkatesh" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/s_p_venkatesh_vinnile_ghandarva.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [198]: Vinnile Ghandarva"; FAILED=$((FAILED+1)); }

# [199/404] Innariyathe — Roby Abraham
yt-dlp "ytsearch1:Innariyathe Roby Abraham" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/roby_abraham_innariyathe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [199]: Innariyathe"; FAILED=$((FAILED+1)); }

# [200/404] Neemathi Yenika — Malayalam Christian Songs
yt-dlp "ytsearch1:Neemathi Yenika Malayalam Christian Songs" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/malayalam_christian_songs_neemathi_yenika.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [200]: Neemathi Yenika"; FAILED=$((FAILED+1)); }

# [201/404] Nee En Sundari (Language: Malayalam; Film: Sathyam; Film Artists: Prithiviraj, Priya Mani) — Chitra
yt-dlp "ytsearch1:Nee En Sundari (Language: Malayalam; Film: Sathyam; Film Artists: Prithiviraj, Priya Mani) Chitra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chitra_nee_en_sundari_language_malayalam_film_sathyam_film_artists_.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [201]: Nee En Sundari (Language: Malayalam; Film: Sathyam; Film Artists: Prithiviraj, Priya Mani)"; FAILED=$((FAILED+1)); }

# [202/404] Tharalam Malayalam Hot Full Movie — Mallu Films
yt-dlp "ytsearch1:Tharalam Malayalam Hot Full Movie Mallu Films" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mallu_films_tharalam_malayalam_hot_full_movie.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [202]: Tharalam Malayalam Hot Full Movie"; FAILED=$((FAILED+1)); }

# [203/404] Pistah — Sabareesh Varma
yt-dlp "ytsearch1:Pistah Sabareesh Varma" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabareesh_varma_pistah.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [203]: Pistah"; FAILED=$((FAILED+1)); }

# [204/404] Thedunnu — Venugopal
yt-dlp "ytsearch1:Thedunnu Venugopal" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/venugopal_thedunnu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [204]: Thedunnu"; FAILED=$((FAILED+1)); }

# [205/404] Irulkkannumay - From Kooman :The Night Rider — Vinayak Sasikumar
yt-dlp "ytsearch1:Irulkkannumay - From Kooman :The Night Rider Vinayak Sasikumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vinayak_sasikumar_irulkkannumay_from_kooman_the_night_rider.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [205]: Irulkkannumay - From Kooman :The Night Rider"; FAILED=$((FAILED+1)); }

# [206/404] Kizhakku Pookkum — Shreya Ghoshal
yt-dlp "ytsearch1:Kizhakku Pookkum Shreya Ghoshal" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shreya_ghoshal_kizhakku_pookkum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [206]: Kizhakku Pookkum"; FAILED=$((FAILED+1)); }

# [207/404] Kanmani Kanmani — Arvind Venugopal
yt-dlp "ytsearch1:Kanmani Kanmani Arvind Venugopal" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/arvind_venugopal_kanmani_kanmani.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [207]: Kanmani Kanmani"; FAILED=$((FAILED+1)); }

# [208/404] Prem Nazir — Aromalunni Malayalam Full Movie
yt-dlp "ytsearch1:Prem Nazir Aromalunni Malayalam Full Movie" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/aromalunni_malayalam_full_movie_prem_nazir.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [208]: Prem Nazir"; FAILED=$((FAILED+1)); }

# [209/404] Maarivil — Najim Arshad
yt-dlp "ytsearch1:Maarivil Najim Arshad" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/najim_arshad_maarivil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [209]: Maarivil"; FAILED=$((FAILED+1)); }

# [210/404] Jhoomo Re (International Version) — Kailash Kher
yt-dlp "ytsearch1:Jhoomo Re (International Version) Kailash Kher" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kailash_kher_jhoomo_re_international_version.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [210]: Jhoomo Re (International Version)"; FAILED=$((FAILED+1)); }

# [211/404] Aashichavan — Jayasurya
yt-dlp "ytsearch1:Aashichavan Jayasurya" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jayasurya_aashichavan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [211]: Aashichavan"; FAILED=$((FAILED+1)); }

# [212/404] Minmini Parvaighal (Language: Tamil; Film: Julee Ganapathi; Film Artists: Jayaram, Ramya Krishnan) — Jesudas
yt-dlp "ytsearch1:Minmini Parvaighal (Language: Tamil; Film: Julee Ganapathi; Film Artists: Jayaram, Ramya Krishnan) Jesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/jesudas_minmini_parvaighal_language_tamil_film_julee_ganapathi_film_.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [212]: Minmini Parvaighal (Language: Tamil; Film: Julee Ganapathi; Film Artists: Jayaram, Ramya Krishnan)"; FAILED=$((FAILED+1)); }

# [213/404] Omana Penne — Benny Dayal
yt-dlp "ytsearch1:Omana Penne Benny Dayal" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/benny_dayal_kalyani_menon_omana_penne.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [213]: Omana Penne"; FAILED=$((FAILED+1)); }

# [214/404] Omana Komala — Abhirami Ajith
yt-dlp "ytsearch1:Omana Komala Abhirami Ajith" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/abhirami_ajith_najeem_arshad_omana_komala.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [214]: Omana Komala"; FAILED=$((FAILED+1)); }

# [215/404] Sanwali Saloni — Yesudas
yt-dlp "ytsearch1:Sanwali Saloni Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_sanwali_saloni.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [215]: Sanwali Saloni"; FAILED=$((FAILED+1)); }

# [216/404] Pennale — Yesudas
yt-dlp "ytsearch1:Pennale Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_p_leela_pennale.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [216]: Pennale"; FAILED=$((FAILED+1)); }

# [217/404] Vaathil Melle — Sachin Warrier
yt-dlp "ytsearch1:Vaathil Melle Sachin Warrier" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sachin_warrier_vaathil_melle.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [217]: Vaathil Melle"; FAILED=$((FAILED+1)); }

# [218/404] Thazhvaram — Hesham
yt-dlp "ytsearch1:Thazhvaram Hesham" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hesham_neha_nair_thazhvaram.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [218]: Thazhvaram"; FAILED=$((FAILED+1)); }

# [219/404] Karukavayal Kuruvi — K.S. Chithra
yt-dlp "ytsearch1:Karukavayal Kuruvi K.S. Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_karukavayal_kuruvi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [219]: Karukavayal Kuruvi"; FAILED=$((FAILED+1)); }

# [220/404] Pacha Panam Thathe — Yesudas
yt-dlp "ytsearch1:Pacha Panam Thathe Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_pacha_panam_thathe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [220]: Pacha Panam Thathe"; FAILED=$((FAILED+1)); }

# [221/404] Jar Lagee Churee Koh — Hariharan
yt-dlp "ytsearch1:Jar Lagee Churee Koh Hariharan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/hariharan_jar_lagee_churee_koh.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [221]: Jar Lagee Churee Koh"; FAILED=$((FAILED+1)); }

# [222/404] CHEMBARATHI! | LIL PAYYAN | AZWIN | (Official Audio) — Lil PAYYAN
yt-dlp "ytsearch1:CHEMBARATHI! | LIL PAYYAN | AZWIN | (Official Audio) Lil PAYYAN" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lil_payyan_chembarathi_lil_payyan_azwin_official_audio.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [222]: CHEMBARATHI! | LIL PAYYAN | AZWIN | (Official Audio)"; FAILED=$((FAILED+1)); }

# [223/404] Pavanarachezhuthunnu — Yesudas
yt-dlp "ytsearch1:Pavanarachezhuthunnu Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_pavanarachezhuthunnu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [223]: Pavanarachezhuthunnu"; FAILED=$((FAILED+1)); }

# [224/404] Pettidaam Aarum — Aalaap Raju
yt-dlp "ytsearch1:Pettidaam Aarum Aalaap Raju" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/aalaap_raju_sankar_sharma_pettidaam_aarum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [224]: Pettidaam Aarum"; FAILED=$((FAILED+1)); }

# [225/404] Aadhyamay Kanda Naal — Johnson
yt-dlp "ytsearch1:Aadhyamay Kanda Naal Johnson" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/johnson_aadhyamay_kanda_naal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [225]: Aadhyamay Kanda Naal"; FAILED=$((FAILED+1)); }

# [226/404] Njaan Parayathe — Kannur Shareef
yt-dlp "ytsearch1:Njaan Parayathe Kannur Shareef" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kannur_shareef_njaan_parayathe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [226]: Njaan Parayathe"; FAILED=$((FAILED+1)); }

# [227/404] Njan Uyarnu Pogum — Ranjith Govind
yt-dlp "ytsearch1:Njan Uyarnu Pogum Ranjith Govind" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ranjith_govind_njan_uyarnu_pogum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [227]: Njan Uyarnu Pogum"; FAILED=$((FAILED+1)); }

# [228/404] Pavizham pol pavizhaadharam po — Yesudas
yt-dlp "ytsearch1:Pavizham pol pavizhaadharam po Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_pavizham_pol_pavizhaadharam_po.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [228]: Pavizham pol pavizhaadharam po"; FAILED=$((FAILED+1)); }

# [229/404] Sona Sona — Kalabhavan Mani
yt-dlp "ytsearch1:Sona Sona Kalabhavan Mani" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kalabhavan_mani_sona_sona.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [229]: Sona Sona"; FAILED=$((FAILED+1)); }

# [230/404] Memories — Sheltn Pinhero
yt-dlp "ytsearch1:Memories Sheltn Pinhero" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sheltn_pinhero_memories.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [230]: Memories"; FAILED=$((FAILED+1)); }

# [231/404] Aigiri Nandini Eye For an Eye — Govind & Meera
yt-dlp "ytsearch1:Aigiri Nandini Eye For an Eye Govind & Meera" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/govind_meera_aigiri_nandini_eye_for_an_eye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [231]: Aigiri Nandini Eye For an Eye"; FAILED=$((FAILED+1)); }

# [232/404] Varamanjaladiya (Sujatha) — Vidyasagar
yt-dlp "ytsearch1:Varamanjaladiya (Sujatha) Vidyasagar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vidyasagar_varamanjaladiya_sujatha.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [232]: Varamanjaladiya (Sujatha)"; FAILED=$((FAILED+1)); }

# [233/404] Anuraaga Vilochananayi — Vidyasagar
yt-dlp "ytsearch1:Anuraaga Vilochananayi Vidyasagar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vidyasagar_anuraaga_vilochananayi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [233]: Anuraaga Vilochananayi"; FAILED=$((FAILED+1)); }

# [234/404] Krisha kripasagaram — Yesudas
yt-dlp "ytsearch1:Krisha kripasagaram Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_krisha_kripasagaram.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [234]: Krisha kripasagaram"; FAILED=$((FAILED+1)); }

# [235/404] Katha Katha (Language: Malayalam; Film: Raappakal; Film Artists: Mamootty, Nayan Thara) — Vijay Yesudas
yt-dlp "ytsearch1:Katha Katha (Language: Malayalam; Film: Raappakal; Film Artists: Mamootty, Nayan Thara) Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_katha_katha_language_malayalam_film_raappakal_film_artists_m.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [235]: Katha Katha (Language: Malayalam; Film: Raappakal; Film Artists: Mamootty, Nayan Thara)"; FAILED=$((FAILED+1)); }

# [236/404] Mazhaye Mazhaye — Karthik
yt-dlp "ytsearch1:Mazhaye Mazhaye Karthik" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/karthik_abhaya_hiranmayi_mazhaye_mazhaye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [236]: Mazhaye Mazhaye"; FAILED=$((FAILED+1)); }

# [237/404] Oru Mezhuthiriyude — Shahbaz Aman
yt-dlp "ytsearch1:Oru Mezhuthiriyude Shahbaz Aman" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shahbaz_aman_mridula_warrier_oru_mezhuthiriyude.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [237]: Oru Mezhuthiriyude"; FAILED=$((FAILED+1)); }

# [238/404] Punchiri Thanchum — Shankar Mahadevan
yt-dlp "ytsearch1:Punchiri Thanchum Shankar Mahadevan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/shankar_mahadevan_punchiri_thanchum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [238]: Punchiri Thanchum"; FAILED=$((FAILED+1)); }

# [239/404] Subhaane — Moossa Eranjoly
yt-dlp "ytsearch1:Subhaane Moossa Eranjoly" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/moossa_eranjoly_subhaane.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [239]: Subhaane"; FAILED=$((FAILED+1)); }

# [240/404] Pavana Guru — Madhu Balakrishnan
yt-dlp "ytsearch1:Pavana Guru Madhu Balakrishnan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/madhu_balakrishnan_pavana_guru.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [240]: Pavana Guru"; FAILED=$((FAILED+1)); }

# [241/404] Doore Doore — Suchith Suresan
yt-dlp "ytsearch1:Doore Doore Suchith Suresan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/suchith_suresan_doore_doore.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [241]: Doore Doore"; FAILED=$((FAILED+1)); }

# [242/404] Kannum Kannum Remix — Yesudas
yt-dlp "ytsearch1:Kannum Kannum Remix Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_kannum_kannum_remix.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [242]: Kannum Kannum Remix"; FAILED=$((FAILED+1)); }

# [243/404] Kaanthaa — MASALA COFFEE
yt-dlp "ytsearch1:Kaanthaa MASALA COFFEE" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/masala_coffee_kaanthaa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [243]: Kaanthaa"; FAILED=$((FAILED+1)); }

# [244/404] Mazhaye Toomazhaye — Haricharan
yt-dlp "ytsearch1:Mazhaye Toomazhaye Haricharan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/haricharan_mridula_varier_mazhaye_toomazhaye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [244]: Mazhaye Toomazhaye"; FAILED=$((FAILED+1)); }

# [245/404] Thaazhvaaram — Sushin Shyam
yt-dlp "ytsearch1:Thaazhvaaram Sushin Shyam" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sushin_shyam_thaazhvaaram.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [245]: Thaazhvaaram"; FAILED=$((FAILED+1)); }

# [246/404] Pulkoottil Vazhunna — K.J.Yesudas
yt-dlp "ytsearch1:Pulkoottil Vazhunna K.J.Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kjyesudas_pulkoottil_vazhunna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [246]: Pulkoottil Vazhunna"; FAILED=$((FAILED+1)); }

# [247/404] Malayalam Full Movie 2013 — 7Aum Arivu
yt-dlp "ytsearch1:Malayalam Full Movie 2013 7Aum Arivu" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/7aum_arivu_malayalam_full_movie_2013.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [247]: Malayalam Full Movie 2013"; FAILED=$((FAILED+1)); }

# [248/404] Aethu Kari Raavilum — Gopi Sundar
yt-dlp "ytsearch1:Aethu Kari Raavilum Gopi Sundar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/gopi_sundar_haricharan_vijay_yesudas_aethu_kari_raavilum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [248]: Aethu Kari Raavilum"; FAILED=$((FAILED+1)); }

# [249/404] Ajitha Hare — Gowry Lekshmi
yt-dlp "ytsearch1:Ajitha Hare Gowry Lekshmi" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/gowry_lekshmi_ajitha_hare.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [249]: Ajitha Hare"; FAILED=$((FAILED+1)); }

# [250/404] Cherukadhapole — Rex Vijayan
yt-dlp "ytsearch1:Cherukadhapole Rex Vijayan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rex_vijayan_cherukadhapole.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [250]: Cherukadhapole"; FAILED=$((FAILED+1)); }

# [251/404] Ithale Nee — Najim Arshad
yt-dlp "ytsearch1:Ithale Nee Najim Arshad" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/najim_arshad_ithale_nee.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [251]: Ithale Nee"; FAILED=$((FAILED+1)); }

# [252/404] Piravi — Vaikom Vijayalakshmi
yt-dlp "ytsearch1:Piravi Vaikom Vijayalakshmi" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vaikom_vijayalakshmi_piravi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [252]: Piravi"; FAILED=$((FAILED+1)); }

# [253/404] Undu Saghi — K. G. Markose
yt-dlp "ytsearch1:Undu Saghi K. G. Markose" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/k_g_markose_undu_saghi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [253]: Undu Saghi"; FAILED=$((FAILED+1)); }

# [254/404] Aji Jhoro Jhoro Mukhoro — Mridula
yt-dlp "ytsearch1:Aji Jhoro Jhoro Mukhoro Mridula" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/mridula_aji_jhoro_jhoro_mukhoro.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [254]: Aji Jhoro Jhoro Mukhoro"; FAILED=$((FAILED+1)); }

# [255/404] Chirimukilum - Female Version — Haritha Balakrishnan
yt-dlp "ytsearch1:Chirimukilum - Female Version Haritha Balakrishnan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/haritha_balakrishnan_chirimukilum_female_version.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [255]: Chirimukilum - Female Version"; FAILED=$((FAILED+1)); }

# [256/404] Kannaamoochchi (from the Film 'Kandukondein Kandukondein') — KS Chithra
yt-dlp "ytsearch1:Kannaamoochchi (from the Film 'Kandukondein Kandukondein') KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kannaamoochchi_from_the_film_kandukondein_kandukondein.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [256]: Kannaamoochchi (from the Film 'Kandukondein Kandukondein')"; FAILED=$((FAILED+1)); }

# [257/404] Cheerapoovukal — KS Chithra
yt-dlp "ytsearch1:Cheerapoovukal KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_cheerapoovukal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [257]: Cheerapoovukal"; FAILED=$((FAILED+1)); }

# [258/404] Olichirikkan — KS Chithra
yt-dlp "ytsearch1:Olichirikkan KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_olichirikkan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [258]: Olichirikkan"; FAILED=$((FAILED+1)); }

# [259/404] Premashilpi — KS Chithra
yt-dlp "ytsearch1:Premashilpi KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_premashilpi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [259]: Premashilpi"; FAILED=$((FAILED+1)); }

# [260/404] Oru Naal Mattum — KS Chithra
yt-dlp "ytsearch1:Oru Naal Mattum KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_oru_naal_mattum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [260]: Oru Naal Mattum"; FAILED=$((FAILED+1)); }

# [261/404] Rajahamsame — KS Chithra
yt-dlp "ytsearch1:Rajahamsame KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_rajahamsame.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [261]: Rajahamsame"; FAILED=$((FAILED+1)); }

# [262/404] PularkaalaSundara — KS Chithra
yt-dlp "ytsearch1:PularkaalaSundara KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_pularkaalasundara.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [262]: PularkaalaSundara"; FAILED=$((FAILED+1)); }

# [263/404] Poomaname — KS Chithra
yt-dlp "ytsearch1:Poomaname KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_poomaname.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [263]: Poomaname"; FAILED=$((FAILED+1)); }

# [264/404] Thalolampaithal — KS Chithra
yt-dlp "ytsearch1:Thalolampaithal KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_thalolampaithal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [264]: Thalolampaithal"; FAILED=$((FAILED+1)); }

# [265/404] Neelakkurinjikal — KS Chithra
yt-dlp "ytsearch1:Neelakkurinjikal KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_neelakkurinjikal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [265]: Neelakkurinjikal"; FAILED=$((FAILED+1)); }

# [266/404] Vaa Veliye — KS Chithra
yt-dlp "ytsearch1:Vaa Veliye KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_vaa_veliye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [266]: Vaa Veliye"; FAILED=$((FAILED+1)); }

# [267/404] Vaishakhasandhye — KS Chithra
yt-dlp "ytsearch1:Vaishakhasandhye KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_vaishakhasandhye.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [267]: Vaishakhasandhye"; FAILED=$((FAILED+1)); }

# [268/404] Kunnimani Cheppu — KS Chithra
yt-dlp "ytsearch1:Kunnimani Cheppu KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kunnimani_cheppu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [268]: Kunnimani Cheppu"; FAILED=$((FAILED+1)); }

# [269/404] Etho Vaarmukilin female Version — KS Chithra
yt-dlp "ytsearch1:Etho Vaarmukilin female Version KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_etho_vaarmukilin_female_version.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [269]: Etho Vaarmukilin female Version"; FAILED=$((FAILED+1)); }

# [270/404] Othiri Othiri Othiri Swapnangal — KS Chithra
yt-dlp "ytsearch1:Othiri Othiri Othiri Swapnangal KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_othiri_othiri_othiri_swapnangal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [270]: Othiri Othiri Othiri Swapnangal"; FAILED=$((FAILED+1)); }

# [271/404] Vaa Veliye (feat. S.P. Balasubramaniyam) — KS Chithra
yt-dlp "ytsearch1:Vaa Veliye (feat. S.P. Balasubramaniyam) KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_vaa_veliye_feat_sp_balasubramaniyam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [271]: Vaa Veliye (feat. S.P. Balasubramaniyam)"; FAILED=$((FAILED+1)); }

# [272/404] Raappadithan — KS Chithra
yt-dlp "ytsearch1:Raappadithan KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_raappadithan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [272]: Raappadithan"; FAILED=$((FAILED+1)); }

# [273/404] Aayiram Kannumayi F — KS Chithra
yt-dlp "ytsearch1:Aayiram Kannumayi F KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_aayiram_kannumayi_f.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [273]: Aayiram Kannumayi F"; FAILED=$((FAILED+1)); }

# [274/404] Kunnimanichepputhurannu — KS Chithra
yt-dlp "ytsearch1:Kunnimanichepputhurannu KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kunnimanichepputhurannu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [274]: Kunnimanichepputhurannu"; FAILED=$((FAILED+1)); }

# [275/404] Ilavayil Viralukalaai — KS Chithra
yt-dlp "ytsearch1:Ilavayil Viralukalaai KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_ilavayil_viralukalaai.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [275]: Ilavayil Viralukalaai"; FAILED=$((FAILED+1)); }

# [276/404] Manjal Prasadavum — KS Chithra
yt-dlp "ytsearch1:Manjal Prasadavum KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_manjal_prasadavum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [276]: Manjal Prasadavum"; FAILED=$((FAILED+1)); }

# [277/404] Kannaadikkayyil — KS Chithra
yt-dlp "ytsearch1:Kannaadikkayyil KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kannaadikkayyil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [277]: Kannaadikkayyil"; FAILED=$((FAILED+1)); }

# [278/404] Kannaam Thumpee — KS Chithra
yt-dlp "ytsearch1:Kannaam Thumpee KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_kannaam_thumpee.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [278]: Kannaam Thumpee"; FAILED=$((FAILED+1)); }

# [279/404] Poonthen — KS Chithra
yt-dlp "ytsearch1:Poonthen KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_poonthen.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [279]: Poonthen"; FAILED=$((FAILED+1)); }

# [280/404] Evergreen Film Song | Ammoomakkili Vayadi | Chandralekha | Malayalam film song. — KS Chithra
yt-dlp "ytsearch1:Evergreen Film Song | Ammoomakkili Vayadi | Chandralekha | Malayalam film song. KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_evergreen_film_song_ammoomakkili_vayadi_chandralekha_malayal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [280]: Evergreen Film Song | Ammoomakkili Vayadi | Chandralekha | Malayalam film song."; FAILED=$((FAILED+1)); }

# [281/404] Palapoove — KS Chithra
yt-dlp "ytsearch1:Palapoove KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_palapoove.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [281]: Palapoove"; FAILED=$((FAILED+1)); }

# [282/404] Thiruvaranmula Krishna — KS Chithra
yt-dlp "ytsearch1:Thiruvaranmula Krishna KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_thiruvaranmula_krishna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [282]: Thiruvaranmula Krishna"; FAILED=$((FAILED+1)); }

# [283/404] Olichirikyan — KS Chithra
yt-dlp "ytsearch1:Olichirikyan KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_olichirikyan.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [283]: Olichirikyan"; FAILED=$((FAILED+1)); }

# [284/404] Mele Vinnin Muttathaare (F) — KS Chithra
yt-dlp "ytsearch1:Mele Vinnin Muttathaare (F) KS Chithra" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ks_chithra_mele_vinnin_muttathaare_f.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [284]: Mele Vinnin Muttathaare (F)"; FAILED=$((FAILED+1)); }

# [285/404] Man Mohini — Yesudas
yt-dlp "ytsearch1:Man Mohini Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_man_mohini.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [285]: Man Mohini"; FAILED=$((FAILED+1)); }

# [286/404] Tu Jaan Hai — Yesudas
yt-dlp "ytsearch1:Tu Jaan Hai Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_tu_jaan_hai.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [286]: Tu Jaan Hai"; FAILED=$((FAILED+1)); }

# [287/404] Harivarasanam — Yesudas
yt-dlp "ytsearch1:Harivarasanam Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_harivarasanam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [287]: Harivarasanam"; FAILED=$((FAILED+1)); }

# [288/404] Vaachalam — Yesudas
yt-dlp "ytsearch1:Vaachalam Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_vaachalam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [288]: Vaachalam"; FAILED=$((FAILED+1)); }

# [289/404] Ishq Mushq — Yesudas
yt-dlp "ytsearch1:Ishq Mushq Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_ishq_mushq.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [289]: Ishq Mushq"; FAILED=$((FAILED+1)); }

# [290/404] Unnikale Oru Kadha Parayaam — Yesudas
yt-dlp "ytsearch1:Unnikale Oru Kadha Parayaam Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_unnikale_oru_kadha_parayaam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [290]: Unnikale Oru Kadha Parayaam"; FAILED=$((FAILED+1)); }

# [291/404] Surmayee Ankhiyon Mein — Yesudas
yt-dlp "ytsearch1:Surmayee Ankhiyon Mein Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_surmayee_ankhiyon_mein.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [291]: Surmayee Ankhiyon Mein"; FAILED=$((FAILED+1)); }

# [292/404] Gori Tera Gaon — Yesudas
yt-dlp "ytsearch1:Gori Tera Gaon Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_gori_tera_gaon.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [292]: Gori Tera Gaon"; FAILED=$((FAILED+1)); }

# [293/404] padam namukku padam — Yesudas
yt-dlp "ytsearch1:padam namukku padam Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_padam_namukku_padam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [293]: padam namukku padam"; FAILED=$((FAILED+1)); }

# [294/404] Gori Tera Gaon Bada Pyara — Yesudas
yt-dlp "ytsearch1:Gori Tera Gaon Bada Pyara Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_gori_tera_gaon_bada_pyara.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [294]: Gori Tera Gaon Bada Pyara"; FAILED=$((FAILED+1)); }

# [295/404] Chamak Cham Cham — Yesudas
yt-dlp "ytsearch1:Chamak Cham Cham Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_chamak_cham_cham.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [295]: Chamak Cham Cham"; FAILED=$((FAILED+1)); }

# [296/404] Neermizhipoovil — Yesudas
yt-dlp "ytsearch1:Neermizhipoovil Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_neermizhipoovil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [296]: Neermizhipoovil"; FAILED=$((FAILED+1)); }

# [297/404] Penninte Chenchundil — Yesudas
yt-dlp "ytsearch1:Penninte Chenchundil Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_penninte_chenchundil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [297]: Penninte Chenchundil"; FAILED=$((FAILED+1)); }

# [298/404] Chandanalepa — Yesudas
yt-dlp "ytsearch1:Chandanalepa Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_chandanalepa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [298]: Chandanalepa"; FAILED=$((FAILED+1)); }

# [299/404] Devanganangal — Yesudas
yt-dlp "ytsearch1:Devanganangal Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_devanganangal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [299]: Devanganangal"; FAILED=$((FAILED+1)); }

# [300/404] Jab Deep Jale Aana — Yesudas
yt-dlp "ytsearch1:Jab Deep Jale Aana Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_jab_deep_jale_aana.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [300]: Jab Deep Jale Aana"; FAILED=$((FAILED+1)); }

# [301/404] Chand Jaise Mukhde Pe — Yesudas
yt-dlp "ytsearch1:Chand Jaise Mukhde Pe Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_chand_jaise_mukhde_pe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [301]: Chand Jaise Mukhde Pe"; FAILED=$((FAILED+1)); }

# [302/404] aaj se pehle — Yesudas
yt-dlp "ytsearch1:aaj se pehle Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_aaj_se_pehle.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [302]: aaj se pehle"; FAILED=$((FAILED+1)); }

# [303/404] Iru Hridhayangalilonnal — Yesudas
yt-dlp "ytsearch1:Iru Hridhayangalilonnal Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_iru_hridhayangalilonnal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [303]: Iru Hridhayangalilonnal"; FAILED=$((FAILED+1)); }

# [304/404] Kannamthaliyum — Yesudas
yt-dlp "ytsearch1:Kannamthaliyum Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_kannamthaliyum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [304]: Kannamthaliyum"; FAILED=$((FAILED+1)); }

# [305/404] Vellarappoomala Mele — Yesudas
yt-dlp "ytsearch1:Vellarappoomala Mele Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_vellarappoomala_mele.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [305]: Vellarappoomala Mele"; FAILED=$((FAILED+1)); }

# [306/404] Omane Neeyoromal — Yesudas
yt-dlp "ytsearch1:Omane Neeyoromal Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_omane_neeyoromal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [306]: Omane Neeyoromal"; FAILED=$((FAILED+1)); }

# [307/404] Dil Ke Tukde Tukde Karke — Yesudas
yt-dlp "ytsearch1:Dil Ke Tukde Tukde Karke Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_dil_ke_tukde_tukde_karke.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [307]: Dil Ke Tukde Tukde Karke"; FAILED=$((FAILED+1)); }

# [308/404] Indhulekha Kan Thurannu — Yesudas
yt-dlp "ytsearch1:Indhulekha Kan Thurannu Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_indhulekha_kan_thurannu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [308]: Indhulekha Kan Thurannu"; FAILED=$((FAILED+1)); }

# [309/404] Ka Karoon Sajani Aaye Na Balam — Yesudas
yt-dlp "ytsearch1:Ka Karoon Sajani Aaye Na Balam Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_ka_karoon_sajani_aaye_na_balam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [309]: Ka Karoon Sajani Aaye Na Balam"; FAILED=$((FAILED+1)); }

# [310/404] Mana Ho Tum Behad Haseen — Yesudas
yt-dlp "ytsearch1:Mana Ho Tum Behad Haseen Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_mana_ho_tum_behad_haseen.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [310]: Mana Ho Tum Behad Haseen"; FAILED=$((FAILED+1)); }

# [311/404] Kahan Se Aaye Badra — Yesudas
yt-dlp "ytsearch1:Kahan Se Aaye Badra Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_kahan_se_aaye_badra.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [311]: Kahan Se Aaye Badra"; FAILED=$((FAILED+1)); }

# [312/404] Melleyen Kanni — Yesudas
yt-dlp "ytsearch1:Melleyen Kanni Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/yesudas_melleyen_kanni.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [312]: Melleyen Kanni"; FAILED=$((FAILED+1)); }

# [313/404] Malare — Vijay Yesudas
yt-dlp "ytsearch1:Malare Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_malare.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [313]: Malare"; FAILED=$((FAILED+1)); }

# [314/404] Etho Mazhayil — Vijay Yesudas
yt-dlp "ytsearch1:Etho Mazhayil Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_etho_mazhayil.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [314]: Etho Mazhayil"; FAILED=$((FAILED+1)); }

# [315/404] Evare — Vijay Yesudas
yt-dlp "ytsearch1:Evare Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_evare.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [315]: Evare"; FAILED=$((FAILED+1)); }

# [316/404] Kaadhal Vaithu — Vijay Yesudas
yt-dlp "ytsearch1:Kaadhal Vaithu Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_kaadhal_vaithu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [316]: Kaadhal Vaithu"; FAILED=$((FAILED+1)); }

# [317/404] Neeyam Thanalinu (Duet) — Vijay Yesudas
yt-dlp "ytsearch1:Neeyam Thanalinu (Duet) Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_neeyam_thanalinu_duet.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [317]: Neeyam Thanalinu (Duet)"; FAILED=$((FAILED+1)); }

# [318/404] Oru Madhura Kinavin - Retro Mix — Vijay Yesudas
yt-dlp "ytsearch1:Oru Madhura Kinavin - Retro Mix Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_oru_madhura_kinavin_retro_mix.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [318]: Oru Madhura Kinavin - Retro Mix"; FAILED=$((FAILED+1)); }

# [319/404] Uyirin Naadhane - From Joseph — Vijay Yesudas
yt-dlp "ytsearch1:Uyirin Naadhane - From Joseph Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_uyirin_naadhane_from_joseph.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [319]: Uyirin Naadhane - From Joseph"; FAILED=$((FAILED+1)); }

# [320/404] Thoomanju - From 18am Padi — Vijay Yesudas
yt-dlp "ytsearch1:Thoomanju - From 18am Padi Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thoomanju_from_18am_padi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [320]: Thoomanju - From 18am Padi"; FAILED=$((FAILED+1)); }

# [321/404] Hemanthamen — Vijay Yesudas
yt-dlp "ytsearch1:Hemanthamen Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_hemanthamen.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [321]: Hemanthamen"; FAILED=$((FAILED+1)); }

# [322/404] Sahana — Vijay Yesudas
yt-dlp "ytsearch1:Sahana Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_sahana.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [322]: Sahana"; FAILED=$((FAILED+1)); }

# [323/404] Malare Unplugged — Vijay Yesudas
yt-dlp "ytsearch1:Malare Unplugged Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_malare_unplugged.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [323]: Malare Unplugged"; FAILED=$((FAILED+1)); }

# [324/404] Poomuthole — Vijay Yesudas
yt-dlp "ytsearch1:Poomuthole Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_poomuthole.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [324]: Poomuthole"; FAILED=$((FAILED+1)); }

# [325/404] Alliyambal - Remix Version — Vijay Yesudas
yt-dlp "ytsearch1:Alliyambal - Remix Version Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_alliyambal_remix_version.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [325]: Alliyambal - Remix Version"; FAILED=$((FAILED+1)); }

# [326/404] Omane — Vijay Yesudas
yt-dlp "ytsearch1:Omane Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_omane.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [326]: Omane"; FAILED=$((FAILED+1)); }

# [327/404] Hridayathin — Vijay Yesudas
yt-dlp "ytsearch1:Hridayathin Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_hridayathin.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [327]: Hridayathin"; FAILED=$((FAILED+1)); }

# [328/404] Rangu Rangamma (From Bheema) — Vijay Yesudas
yt-dlp "ytsearch1:Rangu Rangamma (From Bheema) Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_rangu_rangamma_from_bheema.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [328]: Rangu Rangamma (From Bheema)"; FAILED=$((FAILED+1)); }

# [329/404] Maangalyam — Vijay Yesudas
yt-dlp "ytsearch1:Maangalyam Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_maangalyam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [329]: Maangalyam"; FAILED=$((FAILED+1)); }

# [330/404] Thavani Pootta (From Sandakozhi) — Vijay Yesudas
yt-dlp "ytsearch1:Thavani Pootta (From Sandakozhi) Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thavani_pootta_from_sandakozhi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [330]: Thavani Pootta (From Sandakozhi)"; FAILED=$((FAILED+1)); }

# [331/404] Pularoli — Vijay Yesudas
yt-dlp "ytsearch1:Pularoli Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_pularoli.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [331]: Pularoli"; FAILED=$((FAILED+1)); }

# [332/404] Njan Chendena — Vijay Yesudas
yt-dlp "ytsearch1:Njan Chendena Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_njan_chendena.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [332]: Njan Chendena"; FAILED=$((FAILED+1)); }

# [333/404] Silu Silu — Vijay Yesudas
yt-dlp "ytsearch1:Silu Silu Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_silu_silu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [333]: Silu Silu"; FAILED=$((FAILED+1)); }

# [334/404] Alliyambal-Remix — Vijay Yesudas
yt-dlp "ytsearch1:Alliyambal-Remix Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_alliyambal_remix.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [334]: Alliyambal-Remix"; FAILED=$((FAILED+1)); }

# [335/404] Avalum Naanum — Vijay Yesudas
yt-dlp "ytsearch1:Avalum Naanum Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_avalum_naanum.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [335]: Avalum Naanum"; FAILED=$((FAILED+1)); }

# [336/404] Thavani Pootta — Vijay Yesudas
yt-dlp "ytsearch1:Thavani Pootta Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thavani_pootta.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [336]: Thavani Pootta"; FAILED=$((FAILED+1)); }

# [337/404] Kannukkul Yedho — Vijay Yesudas
yt-dlp "ytsearch1:Kannukkul Yedho Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_kannukkul_yedho.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [337]: Kannukkul Yedho"; FAILED=$((FAILED+1)); }

# [338/404] Pacha Theeyanu Nee — Vijay Yesudas
yt-dlp "ytsearch1:Pacha Theeyanu Nee Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_pacha_theeyanu_nee.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [338]: Pacha Theeyanu Nee"; FAILED=$((FAILED+1)); }

# [339/404] Thodakkam Mangalyam — Vijay Yesudas
yt-dlp "ytsearch1:Thodakkam Mangalyam Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_thodakkam_mangalyam.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [339]: Thodakkam Mangalyam"; FAILED=$((FAILED+1)); }

# [340/404] Mazhakondu Mathram - Male Version — Vijay Yesudas
yt-dlp "ytsearch1:Mazhakondu Mathram - Male Version Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_mazhakondu_mathram_male_version.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [340]: Mazhakondu Mathram - Male Version"; FAILED=$((FAILED+1)); }

# [341/404] Piriyadha Enna — Vijay Yesudas
yt-dlp "ytsearch1:Piriyadha Enna Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_piriyadha_enna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [341]: Piriyadha Enna"; FAILED=$((FAILED+1)); }

# [342/404] Gun-In Kadhal — Vijay Yesudas
yt-dlp "ytsearch1:Gun-In Kadhal Vijay Yesudas" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/vijay_yesudas_gun_in_kadhal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [342]: Gun-In Kadhal"; FAILED=$((FAILED+1)); }

# [343/404] Cherathukal — Sithara Krishnakumar
yt-dlp "ytsearch1:Cherathukal Sithara Krishnakumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_cherathukal.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [343]: Cherathukal"; FAILED=$((FAILED+1)); }

# [344/404] Wow Song - Ponnin Kanikkonna — Sithara Krishnakumar
yt-dlp "ytsearch1:Wow Song - Ponnin Kanikkonna Sithara Krishnakumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_wow_song_ponnin_kanikkonna.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [344]: Wow Song - Ponnin Kanikkonna"; FAILED=$((FAILED+1)); }

# [345/404] Moha Mundiri — Sithara Krishnakumar
yt-dlp "ytsearch1:Moha Mundiri Sithara Krishnakumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_moha_mundiri.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [345]: Moha Mundiri"; FAILED=$((FAILED+1)); }

# [346/404] Kadukumanikkoru Kannundu - From Kappela — Sithara Krishnakumar
yt-dlp "ytsearch1:Kadukumanikkoru Kannundu - From Kappela Sithara Krishnakumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_kadukumanikkoru_kannundu_from_kappela.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [346]: Kadukumanikkoru Kannundu - From Kappela"; FAILED=$((FAILED+1)); }

# [347/404] Ponnin Kanikkonna - Wow Song — Sithara Krishnakumar
yt-dlp "ytsearch1:Ponnin Kanikkonna - Wow Song Sithara Krishnakumar" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sithara_krishnakumar_ponnin_kanikkonna_wow_song.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [347]: Ponnin Kanikkonna - Wow Song"; FAILED=$((FAILED+1)); }

# [348/404] Locked Out of Heaven — Bruno Mars
yt-dlp "ytsearch1:Locked Out of Heaven Bruno Mars" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_locked_out_of_heaven.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [348]: Locked Out of Heaven"; FAILED=$((FAILED+1)); }

# [349/404] Love You Like a Love Song — Selena Gomez & the Scene
yt-dlp "ytsearch1:Love You Like a Love Song Selena Gomez & the Scene" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/selena_gomez_the_scene_love_you_like_a_love_song.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [349]: Love You Like a Love Song"; FAILED=$((FAILED+1)); }

# [350/404] Pink Pony Club — Chappell Roan
yt-dlp "ytsearch1:Pink Pony Club Chappell Roan" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/chappell_roan_pink_pony_club.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [350]: Pink Pony Club"; FAILED=$((FAILED+1)); }

# [351/404] The One That Got Away — Katy Perry
yt-dlp "ytsearch1:The One That Got Away Katy Perry" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_the_one_that_got_away.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [351]: The One That Got Away"; FAILED=$((FAILED+1)); }

# [352/404] Toxic — Britney Spears
yt-dlp "ytsearch1:Toxic Britney Spears" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_toxic.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [352]: Toxic"; FAILED=$((FAILED+1)); }

# [353/404] Lush Life — Zara Larsson
yt-dlp "ytsearch1:Lush Life Zara Larsson" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/zara_larsson_lush_life.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [353]: Lush Life"; FAILED=$((FAILED+1)); }

# [354/404] All the Things She Said — t.A.T.u.
yt-dlp "ytsearch1:All the Things She Said t.A.T.u." --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/tatu_all_the_things_she_said.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [354]: All the Things She Said"; FAILED=$((FAILED+1)); }

# [355/404] no tears left to cry — Ariana Grande
yt-dlp "ytsearch1:no tears left to cry Ariana Grande" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_no_tears_left_to_cry.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [355]: no tears left to cry"; FAILED=$((FAILED+1)); }

# [356/404] Style — Taylor Swift
yt-dlp "ytsearch1:Style Taylor Swift" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_style.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [356]: Style"; FAILED=$((FAILED+1)); }

# [357/404] Maneater — Nelly Furtado
yt-dlp "ytsearch1:Maneater Nelly Furtado" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nelly_furtado_maneater.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [357]: Maneater"; FAILED=$((FAILED+1)); }

# [358/404] Judas — Lady Gaga
yt-dlp "ytsearch1:Judas Lady Gaga" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_judas.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [358]: Judas"; FAILED=$((FAILED+1)); }

# [359/404] Womanizer — Britney Spears
yt-dlp "ytsearch1:Womanizer Britney Spears" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_womanizer.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [359]: Womanizer"; FAILED=$((FAILED+1)); }

# [360/404] Last Friday Night (T.G.I.F.) — Katy Perry
yt-dlp "ytsearch1:Last Friday Night (T.G.I.F.) Katy Perry" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_last_friday_night_tgif.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [360]: Last Friday Night (T.G.I.F.)"; FAILED=$((FAILED+1)); }

# [361/404] Telephone (feat. Beyoncé) — Lady Gaga
yt-dlp "ytsearch1:Telephone (feat. Beyoncé) Lady Gaga" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_telephone_feat_beyoncé.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [361]: Telephone (feat. Beyoncé)"; FAILED=$((FAILED+1)); }

# [362/404] Oops!...I Did It Again — Britney Spears
yt-dlp "ytsearch1:Oops!...I Did It Again Britney Spears" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_oopsi_did_it_again.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [362]: Oops!...I Did It Again"; FAILED=$((FAILED+1)); }

# [363/404] Espresso — Sabrina Carpenter
yt-dlp "ytsearch1:Espresso Sabrina Carpenter" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_espresso.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [363]: Espresso"; FAILED=$((FAILED+1)); }

# [364/404] Rock Your Body — Justin Timberlake
yt-dlp "ytsearch1:Rock Your Body Justin Timberlake" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_timberlake_rock_your_body.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [364]: Rock Your Body"; FAILED=$((FAILED+1)); }

# [365/404] Gimme More — Britney Spears
yt-dlp "ytsearch1:Gimme More Britney Spears" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_gimme_more.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [365]: Gimme More"; FAILED=$((FAILED+1)); }

# [366/404] thank u, next — Ariana Grande
yt-dlp "ytsearch1:thank u, next Ariana Grande" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_thank_u_next.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [366]: thank u, next"; FAILED=$((FAILED+1)); }

# [367/404] Paparazzi — Lady Gaga
yt-dlp "ytsearch1:Paparazzi Lady Gaga" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_paparazzi.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [367]: Paparazzi"; FAILED=$((FAILED+1)); }

# [368/404] Promiscuous — Nelly Furtado
yt-dlp "ytsearch1:Promiscuous Nelly Furtado" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nelly_furtado_promiscuous.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [368]: Promiscuous"; FAILED=$((FAILED+1)); }

# [369/404] Lovefool — The Cardigans
yt-dlp "ytsearch1:Lovefool The Cardigans" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/the_cardigans_lovefool.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [369]: Lovefool"; FAILED=$((FAILED+1)); }

# [370/404] Bad Romance — Lady Gaga
yt-dlp "ytsearch1:Bad Romance Lady Gaga" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_bad_romance.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [370]: Bad Romance"; FAILED=$((FAILED+1)); }

# [371/404] Call Me Maybe — Carly Rae Jepsen
yt-dlp "ytsearch1:Call Me Maybe Carly Rae Jepsen" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/carly_rae_jepsen_call_me_maybe.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [371]: Call Me Maybe"; FAILED=$((FAILED+1)); }

# [372/404] Say It Right — Nelly Furtado
yt-dlp "ytsearch1:Say It Right Nelly Furtado" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/nelly_furtado_say_it_right.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [372]: Say It Right"; FAILED=$((FAILED+1)); }

# [373/404] Unwritten — Natasha Bedingfield
yt-dlp "ytsearch1:Unwritten Natasha Bedingfield" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/natasha_bedingfield_unwritten.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [373]: Unwritten"; FAILED=$((FAILED+1)); }

# [374/404] S&M — Rihanna
yt-dlp "ytsearch1:S&M Rihanna" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_sm.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [374]: S&M"; FAILED=$((FAILED+1)); }

# [375/404] Teenage Dream — Katy Perry
yt-dlp "ytsearch1:Teenage Dream Katy Perry" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_teenage_dream.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [375]: Teenage Dream"; FAILED=$((FAILED+1)); }

# [376/404] Mirrors — Justin Timberlake
yt-dlp "ytsearch1:Mirrors Justin Timberlake" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_timberlake_mirrors.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [376]: Mirrors"; FAILED=$((FAILED+1)); }

# [377/404] Pocketful of Sunshine — Natasha Bedingfield
yt-dlp "ytsearch1:Pocketful of Sunshine Natasha Bedingfield" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/natasha_bedingfield_pocketful_of_sunshine.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [377]: Pocketful of Sunshine"; FAILED=$((FAILED+1)); }

# [378/404] Poker Face — Lady Gaga
yt-dlp "ytsearch1:Poker Face Lady Gaga" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_poker_face.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [378]: Poker Face"; FAILED=$((FAILED+1)); }

# [379/404] ...Baby One More Time — Britney Spears
yt-dlp "ytsearch1:...Baby One More Time Britney Spears" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_baby_one_more_time.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [379]: ...Baby One More Time"; FAILED=$((FAILED+1)); }

# [380/404] Into You — Ariana Grande
yt-dlp "ytsearch1:Into You Ariana Grande" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_into_you.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [380]: Into You"; FAILED=$((FAILED+1)); }

# [381/404] deja vu — Olivia Rodrigo
yt-dlp "ytsearch1:deja vu Olivia Rodrigo" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/olivia_rodrigo_deja_vu.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [381]: deja vu"; FAILED=$((FAILED+1)); }

# [382/404] Blank Space — Taylor Swift
yt-dlp "ytsearch1:Blank Space Taylor Swift" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_blank_space.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [382]: Blank Space"; FAILED=$((FAILED+1)); }

# [383/404] The Sweet Escape — Gwen Stefani
yt-dlp "ytsearch1:The Sweet Escape Gwen Stefani" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/gwen_stefani_the_sweet_escape.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [383]: The Sweet Escape"; FAILED=$((FAILED+1)); }

# [384/404] Only Girl (In the World) — Rihanna
yt-dlp "ytsearch1:Only Girl (In the World) Rihanna" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/rihanna_only_girl_in_the_world.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [384]: Only Girl (In the World)"; FAILED=$((FAILED+1)); }

# [385/404] Look What You Made Me Do — Taylor Swift
yt-dlp "ytsearch1:Look What You Made Me Do Taylor Swift" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_look_what_you_made_me_do.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [385]: Look What You Made Me Do"; FAILED=$((FAILED+1)); }

# [386/404] One More Night — Maroon 5
yt-dlp "ytsearch1:One More Night Maroon 5" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/maroon_5_one_more_night.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [386]: One More Night"; FAILED=$((FAILED+1)); }

# [387/404] Since U Been Gone — Kelly Clarkson
yt-dlp "ytsearch1:Since U Been Gone Kelly Clarkson" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/kelly_clarkson_since_u_been_gone.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [387]: Since U Been Gone"; FAILED=$((FAILED+1)); }

# [388/404] Grenade — Bruno Mars
yt-dlp "ytsearch1:Grenade Bruno Mars" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_grenade.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [388]: Grenade"; FAILED=$((FAILED+1)); }

# [389/404] Beauty and a Beat — Justin Bieber
yt-dlp "ytsearch1:Beauty and a Beat Justin Bieber" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/justin_bieber_beauty_and_a_beat.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [389]: Beauty and a Beat"; FAILED=$((FAILED+1)); }

# [390/404] The Winner Takes It All — ABBA
yt-dlp "ytsearch1:The Winner Takes It All ABBA" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/abba_the_winner_takes_it_all.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [390]: The Winner Takes It All"; FAILED=$((FAILED+1)); }

# [391/404] Circus — Britney Spears
yt-dlp "ytsearch1:Circus Britney Spears" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/britney_spears_circus.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [391]: Circus"; FAILED=$((FAILED+1)); }

# [392/404] California Gurls (feat. Snoop Dogg) — Katy Perry
yt-dlp "ytsearch1:California Gurls (feat. Snoop Dogg) Katy Perry" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_california_gurls_feat_snoop_dogg.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [392]: California Gurls (feat. Snoop Dogg)"; FAILED=$((FAILED+1)); }

# [393/404] Hot n Cold — Katy Perry
yt-dlp "ytsearch1:Hot n Cold Katy Perry" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/katy_perry_hot_n_cold.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [393]: Hot n Cold"; FAILED=$((FAILED+1)); }

# [394/404] Billie Jean — Michael Jackson
yt-dlp "ytsearch1:Billie Jean Michael Jackson" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/michael_jackson_billie_jean.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [394]: Billie Jean"; FAILED=$((FAILED+1)); }

# [395/404] Guilty as Sin? — Taylor Swift
yt-dlp "ytsearch1:Guilty as Sin? Taylor Swift" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_guilty_as_sin.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [395]: Guilty as Sin?"; FAILED=$((FAILED+1)); }

# [396/404] Just Dance — Lady Gaga
yt-dlp "ytsearch1:Just Dance Lady Gaga" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/lady_gaga_just_dance.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [396]: Just Dance"; FAILED=$((FAILED+1)); }

# [397/404] One Last Time — Ariana Grande
yt-dlp "ytsearch1:One Last Time Ariana Grande" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/ariana_grande_one_last_time.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [397]: One Last Time"; FAILED=$((FAILED+1)); }

# [398/404] Attention — Charlie Puth
yt-dlp "ytsearch1:Attention Charlie Puth" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/charlie_puth_attention.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [398]: Attention"; FAILED=$((FAILED+1)); }

# [399/404] Taste — Sabrina Carpenter
yt-dlp "ytsearch1:Taste Sabrina Carpenter" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/sabrina_carpenter_taste.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [399]: Taste"; FAILED=$((FAILED+1)); }

# [400/404] Fortnight (feat. Post Malone) — Taylor Swift
yt-dlp "ytsearch1:Fortnight (feat. Post Malone) Taylor Swift" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/taylor_swift_fortnight_feat_post_malone.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [400]: Fortnight (feat. Post Malone)"; FAILED=$((FAILED+1)); }

# [401/404] This Love — Maroon 5
yt-dlp "ytsearch1:This Love Maroon 5" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/maroon_5_this_love.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [401]: This Love"; FAILED=$((FAILED+1)); }

# [402/404] Party in the U.S.A. — Miley Cyrus
yt-dlp "ytsearch1:Party in the U.S.A. Miley Cyrus" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/miley_cyrus_party_in_the_usa.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [402]: Party in the U.S.A."; FAILED=$((FAILED+1)); }

# [403/404] As It Was — Harry Styles
yt-dlp "ytsearch1:As It Was Harry Styles" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/harry_styles_as_it_was.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [403]: As It Was"; FAILED=$((FAILED+1)); }

# [404/404] Just the Way You Are — Bruno Mars
yt-dlp "ytsearch1:Just the Way You Are Bruno Mars" --cookies-from-browser chrome --extract-audio --audio-format mp3 --audio-quality 0 --output "songs/bruno_mars_just_the_way_you_are.mp3" --no-playlist --no-overwrites --sleep-interval 3 && TOTAL=$((TOTAL+1)) || { echo "FAILED [404]: Just the Way You Are"; FAILED=$((FAILED+1)); }

echo ""
echo "==============================="
echo "Total retried   : 404"
echo "Downloaded      : $TOTAL"
echo "Failed          : $FAILED"
echo "==============================="