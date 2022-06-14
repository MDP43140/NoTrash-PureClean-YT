# Bugs/Todos:
 - (Dev) autoplay on channel page still cant be stopped, and if the video is autoplayed, you have to refresh the page, because you would'nt be able to stop the autoplay even if you move away from channel page or playing other video.
 - when clicking search box, instead of not changed anything like we used to, it just renders blank box where the search icon will be put
 . Reduce settings opacity button if it links to (youtube.com/account, aka. login), yeah youtube now started to do this annonying shit where we need our account just for that... why ;(

# Changelogs:
### 14.06.2022:
 + Revert some :first-child changes (it broke some stuff. it actually checks if the element is actually on 1st element, instead of 1st type, i guess im wrong lol)
 + Bug fix home button wasnt removed when theres no login button (disabled by default).
 + (try to) Restore the watch-flexy width a little bit (on new design, but causes visual bug if theres no side menu, but because this had too long reside in dev, i decided to actually push this to main "branch").
 + Removes (some new and different) big banner on homepage (this changes was too long sitting in dev "branch", so i put this on main "branch" too lol).
 + Revert enforcing YTSans font (because some people didnt get that change yet, and because that the "YouTube Sans" font isn't loaded, so wont work even using !important).

### 13.06.2022:
 + Replaced :nth-of-type(1) > :first-child (saved 2 byte for each).
 + Blacklisted more clickbaity nonsense channels (see #c854256 BlacklistedChannels.txt commit for the lists (its messy i know, but its too much to type here lol)).

### 04.06.2022:
 + fixed some YTPremium nagging potentially not blocked (because some ytpremium links look like /paid_memberships?whatever=crap_here).
 + remove "Your Clips" nonsense on guide panel.
 + Shorts video removal improved on YT mobile & desktop site.
 + Remove "attention-grabbing" red shining "LIVE" text on live videos (live "indicator" can be seen on watch count, it will say "N is watching", or "N Hour Premiere").

### 01.06.2022:
 + Fix a bug where expanding subscription list on guide panel removes it instead (caused by ##ytd-guide-section-renderer.ytd-guide-renderer:has(a[href="/feed/guide_builder"]))
	 - but it introduces another another visual annoyances (that blank 2 strip lines... its annonying why, or maybe somehow fixable w/ :only-of-type syntax?)
 + Limit description container maximum height to 100%.
 + Updated remove google bloat on ytd-masthead to remove a new upload button (spotted today on my primary account again... why youtube ;( )
 + Now title font will be kept as YTSans (why? because its similiar to Ubuntu font, but slightly compact and little bit smaller) (font size/weight still restored to older normalized regular size).
 + trying to replace :upward with :has (the problem is: now it needs #?#for compatibility reason, and does it even compatible with ABP/-abp-has??).
 + more annonying hints now removed (yt-tooltip-renderer).
 + [Ext.MyBlockingPreference] Font-capitalization formatting fixed.
 + [Ext.MyBlockingPreference] ytd-* stuff now only applies to www.youtube.com.
 + [Ext.MyBlockingPreference] Now theres commented option to remove search bar altogether instead of just remove the search button.
 + [Ext.MyBlockingPreference] 2 bytes saved by replacing ", " to ",".
 + [Ext.MyBlockingPreference] removing some NEWs (lol).
 + [Ext.MyBlockingPreference] now videos in subscription not only hidden, but the hidden bandwidth-consuming part (hidden images) are removed now.
 + [EXTREME] Remove huge grid boxes of "recommended" bloat channel (experiment).

### 01.06.2022_dev:
 + Remove useless unclickable button (mostly seen in member-only videos).
 + Remove ridicilously nonsense indicator when you search using searchbox (bug: when clicking search box, instead of not changed anything like we used to, it just renders blank box where the search icon used to be).
 + revert remove sidebar changes (now Side-bar wont be removed if not logged in, also the code is'nt removed, just commented out so if you want to use it just uncomment it).

### **.05.2022:
 + removed redundant "commit" at the header part.
 + Remove alot of redundant and duplicate rules (using https://abpvn.com/ruleChecker/redundantRuleChecker.html great tool even tho its designed for abp but still kinda works with ubo filter lol).
 + simplify "Trending/Discover/Explore" to just "explore".
 + rearrange/move Removes "Explore Channels".
 + changing remove bloat indicator description.
 + Make consent popup less intrusive (less scroll required, useful in some countries/if you use Tor) (Desktop only, mobile version will redirect you to consent.youtube.com, which really does suck).
 + Improved 'ytd-reel-shelf-renderer' blocking (that ytshorts again...).
 + Improved removing mixed playlist.
 + Improved 'enable history' nudge removal.
 + Remove (some?) annonying nagging hints.
 + Removed old (NEW!)s.
 + Now will remove film/movie nonsense.
 + [Ext.MyBlockingPreference] added more animation disable thingy, and comment remove annonying popup, because it broke 3dots menu (replaced by yt-bubble-hint-renderer thingy anyway).
 + [EXP] First (Experimental) release that supports AdblockPlus (minimal 2.0). but there are some problems...
	 + [EXP] :has-text > :-abp-contains.
	 + [EXP] :has      > :-abp-has (much prefered to use :upward for abp version).
	 - [EXP] Didn't have ":remove()"/"#$?#selector{remove:true}" syntax, so it wont save your bandwidth, but atleast can hide it.
	 - [EXP] ##selector:style(css) > #$#selector{css} (untested, may not working).
 + [Mobile] Hide Autoplay icon if disabled.
 + Alot of improvement on guide-panel.
	 + Now blocking elements on guide-panel is slightly faster because optimized css selectors thingy (this means you will see less element flickers on guide-panel).
	 + Now removing unused settings button (again can be found on that 3dot/profile icon) will use `last-child` instead of `nth-of-type` because it wont get removed on non-login session.
	 + Removed 360 view thingy (not enabled coz its unnesecary and already gone anyway... but well i comment it anyway just in case its needed someday...)
	 + remove "dk wut this does" (yep thats actual title of it).
 + Removed some unnesecary :remove()
	 + now :remove() will only be used if:
		 + Element is bandwidth-heavy (mostly fetching images, especially if theres many of them to be fetched, yep my cellular quota is really screamin right now irl).
		 + causes problem if it not used (like scaling, grid stuff, or whatnot).
 + "Remove join button" now will be placed in bloat in ytplayer (because its located next to subscribe button).
 + Shorten some titles and descriptions and stuff...
 + now "Remove netbased image promo to gstatic" is enabled by default (since im moving house and only got quota now).
 + Normalize that giant ytsans title on some users that got the new title changes.
 + [ContentFilter] Add "nafsuan".
 + [ContentFilter] Improved "sngk" > "sng" (cnsord).
 + [Mobile] Remove feed nudge on homepage.
 + [Mobile] Remove giant text of nonsense that comes from "engagement panel".
 + [Mobile] Remove "duplicate" login button (can be found in context menu).
 + [Mobile] Remove useless share button.
 + [Mobile] large grey game info buttons below descriptions removal is updated for new design with "engagement-panel".
 + [Mobile] Remove Big universal card on search result.
 + "Dechonkify" ytd-masthead.
 + (try to) Block video Autoplay on channel (only removes the video element).
 + Fixed tabs and spaces on the title.
 + Remove event tickets nonsense.
 + less-bloated member-only message.
 + Remove channel store (only removes bandwidth-consuming part, aka. images, for now).
 + Fixed normalize thicc title font on new youtube design.
 + Now will both normalize and change font to roboto.

### **.04.2022:
 + Blacklisted eating disorder,and roblox nonsense channels: [BoostyPop (i thought hes banned),Lisa Gaming ROBLOX,More Nikocado,Nikocado Avocado,Nikocado Avocado 2,Nikocado Avocado 3,Nikocado Shorts,Noodle King] (how did i ever not see nikocado channel and block it bruh... now its blocked get outta here eating disorder :).
 + Blacklisted bunch of trash channels: [Carlaylee HD,Carlaylee HD Gaming,Carlaylee Hd Shorts,Carlie HD,HD Fam,Jack Wrath,Loki,Morgz,Morgz Clips,MorgzFest,Morgz Live,Morgz Mum,RATATA BRILIANT,RATATA COOL,Savetion,Savetion 2,Savetion 3,The Prince Family,The Prince Family Clubhouse]
 + Channel blacklist order cleanup, addition and dupes removed.
 + [ContentFilter] improved mpl filtering to block "mpl (ricuh|playoff)".
 + [ContentFilter] Add /p[e3]rk[o0Ѳ\*]s[a4]/gi
 + [ContentFilter] Add /g[o0Ѳ\*]bl[o0Ѳ\*]k/gi
 + [ContentFilter] Add /an?j(in|\*(\*)?)?g/gi
 + [ContentFilter] Add [night club,klub malam,stripper,lgbt].
 + [ContentFilter] Add /(fart|poop)s (a )?(baby|shit|poop?)/gi
 + [ContentFilter] Add /((doyan|sering) )?(nonton|lihat) ((video|gambar) )?gituan/gi
 + [EXTREME] block more tiktok nonsense (Flip Bottle ❌ Flip galon ✅).
 + [EXTREME] [ContentFilter] Added "ISIS" (yet this extremist facesbooky politic terrorism nonsense again, get the f outta here! we dont want politic, where were going?).
 + Blacklisted bunch of trash channels (see #a05d3ed BlacklistedChannels.txt commit for the lists (kinda messy i know))
 + [Mobile] Fixed some trash videos not blocked.
 + [Mobile] now will block short videos without #shorts in the title.

### **.03.2022:
 + Improved shorts guide panel blocking (simply).
 + Remove excessive blank spaces (using Geany).
 + [ContentFilter] Add [hnti,gagal fokus].
 + [ContentFilter] Improved some "for kids" and MLBB filtering stuff.
 + [ContentFilter] added [dunia olahraga( (wanita|cewek))?,(wanita|cewek) cantik,moment? (lucu|hot|panas|memalukan|langka( t(id)?ak terlupakan)?),berhasil terekam kamera,hot moment?,doki doki literature club]
 + [ContentFilter] removed dupes that contained "momen".
 + [ContentFilter] Bug Fixed: [grouping,wiping] get filtered because of "|upin|ipin" filter.
 - [ContentFilter] (temporarily) remove some filters that caused false positives.

### **.02.2022:
 + [ContentFilter] fixed [accomplished ,complete ] getting filtered because "MPL " filter (m[pd]l[- ]?.* s.*)
 + replaced more 2 spaces with tabs for more storage space
 + Content filtering for mobile now considered stable enough.
 + [ContentFilter] Improved some "for kids" filtering stuff.
 + [ContentFilter] Fix [sesuatu,sekarang] getting filtered (caused by ses/sek in "s[e3\*][xks]").
 + [ContentFilter] Add [jomblo,berduaan].                                                ^---^
 + Remove shorts button on the "guide" panel (Last seen: 18.02.2022, when i want to open youtube)
 + Forcing some desktop-specific things to use www.youtube.com.
 + Improved Anti ad circumvent method.
 + Restore the old watch and upload time stat opacity (if you had new design like me...)
 + [ContentFilter] Changed some "?)" > ")?"
 + [ContentFilter] Add [fell in love,sangek,desah,crush,moment? (hot|panas),(hot|panas) moment?,mantap[- ]mantap,huggy wuggy,kissy missy (TOO MUCH CLICKBAIT BUZZWORD !!!!!)].
 + Get rid of the nonsense icon beside searchbox that does NOTHING AT ALL.
 + Now will Remove any yt shorts video that didnt have #shorts in title (by detecting shorts styling in the video duration)
 + Remove ANY form of shorts player.

### **.01.2022:
 + [ContentFilter] Add [wibu,waifu,aduhai,ciwai,door kick,kesha].
 + Add comment teaser filter from [DandelionSprout/adfilt/commit/abcae57](https://github.com/DandelionSprout/adfilt/commit/abcae57)
 + Happy new year everyone (lol too late).
 > Add some #?# to ContentFilter to ensure compatibility.
 + Minor bug fix to prevent YouTube from doing clever number change stuff (now the nonsense blocking is reinforced)
 + [EXTREME] will block any video/channel with korean,chinese character
 + [EXTREME] EXPERIMENTAL: blocks any video/channel with potentially bad emojis.

###  **.12.2021:
 + [ContentFilter] Add [telanjang,bucin,montok,l[ou]bang pntt,my love]
 + [ContentFilter] Remove dupes (fortnite).
 + [ContentFilter] Improve "p[o0]rn" > "p[o0Ѳ\*]rn"
 + [ContentFilter] Improve "s[e3]x > s[e3\*] (also blocks comment bot: s*x)"
 + [ContentFilter] Add [sensual,dating].
 + [ContentFilter] Improve "pussy" > "(puss|sizz)y".
 + remove some space-eating icon nonsense.

###  **.11.2021:
 + Fixed "Autoplay next video" button reshowing up when disabled for user without sponsorblock extension.
 + Fixed Remove Share,Clip,Save to button when using new layout (last seen: today).
 + Now will remove the dislike counter if there's no number (just dislike text only).
 + Remove homepage button on mobile (disabled and should'nt enabled)
 + block web-animations-next-lite.min.js (disable animation possibly?? BETA)
 + Workaround bug disabling animation makes toast on bottom-left >stays in the place< but invisible which blocks cursor from scrubbing the start.
 + Add description on "ytd-masthead" and "ytd-watch-flexy".
 + Remove autoplaying video on channel homepage, which forces you to watch their video and wastes bandwidth (Bug: video still plays in background even when you get away from channel homepage).
 + Block old video list groups on subscription page.
 + Mobile Support (50% Completed, 10% Development).
 + Change YTSans Bold Back to Roboto Regular.
 + Remove (dis)like counter when there's no number, only "(Dis)like" text. this is related to YouTube's latest changes to (dis)like button.

###  **.10.2021:
 + Remove Universal Big Card on search result (mobile).
 + Fixed media player buttons getting bigger again (block .ytp-larger-tap-buttons)
 + [ContentFilter] Improve "s[e3]x > s[e3\*] (also blocks comment bot: s*x)"
 + [ContentFilter] Add [sensual,dating].
 + Adding feature to remove bad comment (Im REALLY SICK of S*XUAL COMMENT BOTS WHYYYY YOUTUBE ?!?!??!).
 + added some commit from adfilt/yt.
	 + Remove sponsored description links inserted by right holders (ytd-metadata-row-renderer).
	 + remove like/dislike counter on mobile (disabled).
	 + block autogenerated and mix playlist.
	 + remove "experiencing interruption" toast.
	 + remove playlist recommendation under videos.
	 + remove hover overlay on video thumbnail (disabled).
	 + update videosuggestwhenpauseembed...
	 + update removesuggestionstvmode...
	 + add description on "##.ytp-cards-teaser".
 + Add Remove "Recommencation less accurate? enablle history!" nudge on homepage (which had "rich" bloathing again).
 + Fixed typo which causes video title/description containing strips (not minus --) "––" blocked.
 + [Mobile] Remove avatar icon to the left of the login text.
 + [ContentFilter] new titles added [lagu pop,gebetan,beer,bir,[\[ ]m\/?v[ \]].
 + [ContentFilter] Improve "squid game" by making space optional.
 + remove ytpremium nag (last seen appear: 22/09/21_22.45 (text: change subtitle tutorial)) [youtube.com##.ytp-promotooltip-wrapper]
 + keep big buttons if using mobile/touch devices in desktop mode (because its harder to click on small mobile screen).
 + Remove "Explore" button (and deprecate older Trending/Discover button).
 + Block [Chinese,Korea] languages [\uAC00-\uD7AF\u1100-\u11FF\u3130-\uD7FF]
 + uBlock user: remove "big-butt" class using scriptlet (may also fix buggy button. NOT compatible with ABP... yet)
 + BIG: "Unmobilify" design changes back to older desktop design.
 + [ContentFilter] new titles added: [p***y,Squid Game (korea trend that spread mostly through roblox),{beaning,beaned,tide pods}(3 of these are from that sucky tiktok)]

###  **.09.2021:
 + [ContentFilter] new titles added: "Devious Lick" (Malicious tiktok trend).
 + Added section "Design changes" (anything youtube did to make its design more bulky and bloated for desktop site).
 + Fixed annotations.js request not blocked.
 + Restore Big button on searchbox (change last seen 22/09/21).
 × removed duplicate filter.
 + (not completely related to this changelog): Extensions released for ease of customization (see /Extensions/Customize.lst for more).
 + Remove "Comment blocking", you can still block comment by subscribing to the comment extension (/Extensions/Comment.txt).
 + (NEW!) Block Potentially Quotawasting and privacyinvasion bloat feature: autoplay hd withsound ifyouhoverthevideo (and yes, it had relation with that rich-renderer thing. which sucks).
 + Changed some description and arranging some things to right places.
 + Fixed Some content not filtered (subscription page in grid view) by adding "ytd-grid-video-renderer" to content filter upward.
 + [ContentFilter] new titles added: [nud(e|ity),cock,kiss(es|ing),(sf)ucky (sf)ucky,drunk,egirl].
 + [ContentFilter] new channel added: [itsOwen,Oboat,emily is daddy,imZarz,ClewFix,Doal,Clouds] (infos from youtu.be/tTAZaHlYlIQ).
 + Adding #?# to a line that has ":has()" and ":has-text()" to make sure good compatibity.
 + "Temporarily" remove annoying "tp-yt-iron-dropdown" popups.
 + Restore Big button on Video Player (change last seen 07/09/21).
 + DEPRECATE "Removes the homepage link from the upper-left YouTube logo" (because its useless to block it since its not a visual disturbance, its just a link)
 × [ContentFilter] Fixed certain video (mostly on homepage) not filtered based on the channel name

###  **.08.2021:
 + Adding YouTube Premium Section.
 + Blocks more YTPremium and tutorial-nonsense nag.
 + Hide Username & Email Address on Account Selection
 > [ContentFilter] some cleanup, shorten, workarounds, bugfixes...
 > [ContentFilter] Removing Space next to comma (", " > ",") on :upward() to save some bytes.
 + Change YTSans Bold to YTSans Regular (WHY YouTube?!?!).
 + [ContentFilter] Fixed "kpop" (k(orean?)?[- ]?(pop|drama)).
 + [ContentFilter] Improve "s.x" ("se(x|ks)" > "s[e3](x|ks)").
 + [ContentFilter] Changing (\{s,d}) to \{s,d}.
 > [ContentFilter] Changing (-| ) to [- ].
 + [ContentFilter] new titles added: [tfw no gf,intim,mesum,perkosa,selingkuh,jedag( |-)jedug,toddler,[boiy]{8,8},youtube shorts,#shorts,XXX,boob,retarded,pantek,bokep,v.g.n.(censored due to its "extremeness")].
 + [ContentFilter] Updated "minecraft girl" to "(minecraft|hot) girl".
 + another cleanup...
 + clean things related to content filtering.
 + Adding comment container height limit.
 + Adding "www.youtube.com" to ytd-* related things.
 + improve country code removing.
 + [Mobile] Adding Content Filter.
 + [Mobile] Adding Stop Autoplay.
 + [Mobile] Remove YouTube Premium Offer.
 + [Mobile] Remove related content.
 + Mobile Support (50% Completed).
 + Only remove some button if user is logged in/out
 + Clean more things on youtube (too much to say here, just look on the file).
 + update some channel blacklist
 + big cleanup...
 + added description, make some things look better.

###  **.07.2021:
 + Changed/Updated anti circumventing ads (update fetched from ABP Anti-Circumvent).
 + Removing "YouTube `Disable Polymer` mode" rules, as not alot of people using disable polymer mode. (ithink u cant disable polymer mode anymore, other than using extension).
 + [ContentFilter] new string added: [masha,noob vs pro,(boy|girl)friend,pregnant,i love you,minecraft girl].
 + [ContentFilter] new channel blocked: "Piper Rockelle" (Lazyp*rn Youtuber, from DJ Cook)
 + [ContentFilter] Reclean the list.
 + [ContentFilter] append "barat" next to "musik/lagu rohani".
 > some cleanup...
 > Making filter rules smaller and faster by removing redundant ".style-scope" class (saving 300 worth of bytes).
 + [ContentFilter] new string added: [K-Drama,Ragnarok]
 + [ContentFilter] changed "episod" back to "full episod" because it blocks majority of videos (including minecraft videos from mumbo jumbo, and grian).
 + [ContentFilter] fixed "episode".
 + [ContentFilter] new string added: "Top-up" (because indo peoples crazily addicted to buying rather EXPENSIVE and USELESS things JUST FOR the F***ING GAME ?!?!)
 > some cleanup...
 + [ContentFilter] Simplified [Baby,Babies,Bayi,Balita] to "ba(bies|by|yi|lita)"
 + [ContentFilter] Simplified "k?anak[-k?anak]" to "k?anak" because its not necessary anyway.
 + [ContentFilter] new string added: murder live,roman(ce|tis),asmara,permission to dance.
 > [ContentFilter] remove some duplicates.
 > [ContentFilter] simplified 3am detection.
 + [ContentFilter] Improve "Nursery" (nursery( rhymes?) > nursery (nursery is "kamar bayi" in indo lmao XD))
 + [ContentFilter] new string added: "wrong heads".
 + Removes the country codes beside youtube logo (improves privacy when screenshoting/recording)
 + Updated channel blacklist description.
 + Updated Original Author.
 × [ContentFilter] swap elsa|barbie.
 + [ContentFilter] Improve "bts" (bangtantv > bangtan)
 + [ContentFilter] Improve "preston" (prestonplay(s|z?) > preston)
 + [ContentFilter] Shortened (.?) > .? (saving 240 bytes)
 + [ContentFilter] new string added: barbie
 + [ContentFilter] new channel blocked: "123 Go"
 + [ContentFilter] Change block ≥3-CAP text to block ALL-CAP text.
 + [ContentFilter] new channel blocked: "Jester" (3AM Clickbait fake videos).
 + [ContentFilter] new string added: [doraemon,dangdut].
 + [ContentFilter] Improve "bts" by adding space-detection > b ?t ?s.
 + block 2nd "dual panel" on search page
 + [ContentFilter] fixed "UpinIpin".
 + [ContentFilter] new string added: [kak ros,ome.tv,galau,bangtantv,bts,push rank,bang bang,mainan].
 + [ContentFilter] Better blocking on channel names
 + [ContentFilter] Improve "BlackPink" by adding space-detection > black ?pink
 > [ContentFilter] BIG UPDATE: Filter lists now works more efficient, faster, and shorter.
 + [ContentFilter] new string added "84*0t"
 + Some bug fix

———————————————————————————————