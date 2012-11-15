CREATE OR REPLACE PACKAGE OAS_OK_TEST_PRE_SCHEDULING IS

  -- Author  : 
  -- Created : 
  -- Purpose : 

  
--2012/08/14 :For User Story : OAS - Update Password Dictionary  
WORDS1 CONSTANT VARCHAR2(32726) := 
'aback,abacus,abalone,abate,abater,abbey,abbot,abdicate,aberrant,abet,abetted,abetting,abeyance,abeyant,abide,abject,able,ablution,abnormal,aboard,abode,abolish,aborning,abound,about,above,abrasion,abrasive,abridge,abroad,abrogate,abrupt,abscissa,absence,absent,absentee,absentia,absolute,absolve,absorb,abstain,abstract,abstruse,abundant,abysmal,abyss,academe,academia,academic,academy,accede,accent,accept,acceptor,access,accident,acclaim,accolade,accord,accost,account,accredit,accrual,accrue,accuracy,accurate,accustom,ace,acerbic,acerbity,acetate,acetic,acetone,ache,achieve,aching,acidic,acme,acorn,acoustic,acquaint,acquire,acquit,acre,acreage,acrimony,acrobat,acronym,across,acrylic,act,activate,activism,actor,actress,actual,actuarial,actuate,acuity,acumen,acute,acyclic,ad,adage,adagio,adamant,adapt,adaptive,add,added,addend,addenda,addendum,addition,additive,address,addressee,adduce,adenine,adenoma,adenosine,adept,adequacy,adequate,adhere,adherent,adhesion,adhesive,adiabatic,adjacent,adject,adjective,adjoin,adjoint,adjourn,adjudge,adjunct,adjust,adjutant,admiral,admiralty,admire,admission,admit,admitted,admitting,admonish,ado,adobe,adopt,adoption,adoptive,adore,adorn,adrenal,adrift,adroit,adsorb,adulate,advance,advent,adverb,adverse,advert,advice,advise,advisee,advisor,advisory,advocacy,advocate,aegis,aeolian,aerate,aerial,aerobic,aerosol,aesthete,afar,affable,affect,afferent,affine,affinity,affirm,affix,afflict,afford,affront,afield,afire,aflame,afloat,afoot,afraid,afresh,aft,again,against,agate,age,agenda,agent,aggrieve,agile,aging,agitate,ago,agone,agony,agrarian,agree,agreed,agreeing,agrimony,ague,ahead,aide,ail,aileron,aim,air,airborne,aircraft,airdrop,airedale,airfare,airfield,airflow,airfoil,airframe,airlift,airline,airlock,airmail,airman,airmass,airmen,airpark,airplane,airport,airspace,airspeed,airstrip,airtight,airway,airy,aisle,ajar,akin,alacrity,alarm,alb,albacore,albeit,album,albumin,alchemy,alcove,aldehyde,aleph,alert,alfalfa,alfresco,alga,algae,algal,alias,align,alike,aliquot,alive,alkali,alkaline,alkaloid,alkane,alkene,all,allege,allegory,allegro,allele,allemand,allergic,allergy,alley,alleyway,alliance,allied,allocate,allot,allotted,allow,alloy,allspice,allude,allure,allusion,allusive,alluvial,alluvium,ally,allyl,almanac,almond,almost,aloe,aloft,aloha,alone,along,aloof,aloud,alp,alpha,alphabet,alpine,already,also,alterate,although,altitude,alto,altruism,altruist,alum,alumna,alumnae,alumni,alumnus,always,alyssum,am,amalgam,amass,amateur,amaze,amber,ambiance,ambient,ambition,amble,ambling,ambrosia,ambulant,ambulate,amend,amethyst,amicable,amid,amide,amidst,amino,amiss,amity,ammeter,ammonia,ammonium,amnesia,amoeba,amoebae,among,amongst,amount,amp,amperage,ampere,ample,amplify,amply,amulet,amuse,an,anaconda,anaglyph,anagram,analogue,analogy,analyses,analysis,analyst,analytic,anatomic,anatomy,ancestor,ancestry,anchor,anchovy,ancient,and,anecdote,anemone,anew,angel,angelic,angle,angling,angstrom,angular,aniline,animal,animate,anion,anionic,anise,ankle,annex,annotate,announce,annoy,annoyance,annual,annuity,anode,anodic,anomalous,anomaly,anonymity,anonymous,another,answer,ant,antacid,antarctic,anteater,antedate,antelope,antenna,antennae,anterior,anteroom,anthem,anther,anthology,antic,antigen,antimony,antipasto,antipathy,antipode,antipodes,antiquary,antique,antiquity,antler,antonym,anvil,anxiety,anxious,any,anybody,anyhow,anyone,anyplace,anything,anyway,anywhere,aorta,apace,apart,ape,aperiodic,aperture,apex,aphid,aphorism,apiece,aplomb,apogee,apologia,apology,apostle,apostolic,apothegm,appall,appanage,apparatus,apparel,apparent,appeal,appear,appease,append,appendix,appetite,applaud,applause,apple,applied,applique,apply,appoint,apposite,appraise,apprise,approach,approval,approve,apricot,apron,apropos,apt,aptitude,aqua,aquarium,aquatic,aqueduct,aqueous,arachnid,arbiter,arboreal,arc,arcade,arcane,arch,archaic,archaism,archery,arching,arcing,arctic,ardency,ardent,arduous,are,area,areaway,arena,argon,argue,argument,arid,arise






















,arisen,ark,arm,armada,armament,armature,armchair,armful,armload,armoire,army,aroma,aromatic,arose,around,arpeggio,arraign,arrange,array,arrival,arrive,arrogant,arrogate,arrow,arroyo,art,arterial,artery,artful,article,artifact,artifice,artisan,artistry,artwork,as,ascend,ascent,ascribe,aseptic,ash,ashame,ashamed,ashen,ashore,aside,ask,askance,askew,asleep,aspect,aspen,asperity,aspirate,aspire,aspirin,assemble,assent,assert,assessor,asset,assign,assist,assume,assure,asteria,asterisk,asteroid,asthma,astonish,astound,astral,astride,astute,asunder,at,atavism,ate,athle,athletic,athwart,atlantic,atlas,atom,atomic,atonal,atone,atop,atrium,atrophic,atrophy,attach,attache,attain,attempt,attend,attendee,attest,attic,attire,attitude,attorney,attract,attune,auburn,auction,audacity,audible,audience,audio,audit,audition,auditor,auditory,auger,augment,august,auk,aunt,auntie,aura,aural,auric,aurochs,aurora,auspices,austere,author,auto,autocrat,automate,autonomy,autumn,autumnal,avail,avarice,avenue,aver,average,averred,averring,averse,aviary,aviate,avid,avionic,avocado,await,awake,awaken,award,aware,awash,away,awe,awesome,awhile,awkward,awl,awn,awoke,awry,ax,axe,axes,axial,axiology,axiom,axis,axle,axon,azalea,azimuth,azimuthal,azure,babble,baboon,baby,babyhood,babysat,babysit,bacilli,bacillus,back,backboard,backbone,backdrop,backfill,backhand,backlash,backorder,backpack,backplane,backstage,backstop,backtrack,backup,backward,backwood,backyard,bacon,bacteria,bacterial,bacterium,bade,badge,badinage,badland,badminton,baffle,bag,bagatelle,bagel,baggage,bagpipe,bait,bake,bakery,balance,balcony,bald,baldy,bale,baleen,baleful,balk,balky,ball,ballad,ballast,ballerina,ballet,balletic,ballfield,balloon,ballot,ballroom,balm,balmy,balsa,balsam,bamboo,ban,banal,banana,band,bandage,bandgap,bandit,bandpass,bandstand,bandstop,bandwagon,bandwidth,bandy,bane,baneberry,baneful,bangle,banish,banister,banjo,bank,bankrupt,banquet,bantam,banter,barb,barbaric,barbecue,barbell,barber,barberry,bard,barefoot,bargain,barge,baritone,barium,bark,barley,barn,barnacle,barnyard,baron,baroness,baronet,baronial,barony,baroque,barrack,barrage,barre,barrel,barren,barrette,barrier,barrow,barter,basal,basalt,base,baseball,baseband,baseline,baseman,basemen,bash,bashaw,bashful,basic,basil,basilar,basilisk,basin,basis,bask,basket,bass,bassi,bassinet,basso,basswood,baste,bastion,bat,batch,bate,bateau,bath,bathe,bathos,bathrobe,bathroom,bathtub,batik,baton,batt,batten,battery,battle,batwing,bauble,baud,bauxite,bawl,bay,bayed,bayonet,bayou,bazaar,be,beach,beacon,bead,beadle,beady,beak,beam,bean,bear,beard,bearish,beatific,beatify,beautify,beauty,becalm,became,because,beck,becket,beckon,becloud,become,bed,bedazzle,bedbug,bedevil,bedfast,bedim,bedimmed,bedlam,bedpost,bedrock,bedroom,bedside,bedstraw,bedtime,bee,beebread,beech,beef,beehive,been,beep,beet,beetle,befall,befallen,befell,befit,befog,before,befuddle,beg,began,beggar,beggary,begging,begin,beginner,begonia,begotten,begrudge,beguile,begun,behalf,behave,beheld,behest,behind,behold,beige,being,bel,belate,belfry,belie,belief,belies,believe,bell,bellboy,belle,bellhop,bellman,bellmen,bellow,bellum,belly,belong,belove,below,belt,belying,bemadden,beman,bemoan,bemuse,bench,bend,beneath,benefice,benefit,benight,benign,bent,benzene,bequeath,bequest,beret,berg,bergamot,beribbon,beriberi,berne,berry,berth,beryl,beseech,beset,beside,besiege,besmirch,besotte,bespeak,bespoke,best,bestir,bestow,bestowal,bet,beta,betatron,betroth,bettor,between,betwixt,bevel,beverage,bevy,bewail,beware,bewilder,bey,beyond,bias,biaxial,bib,bicep,biceps,bicker,bicycle,bid,biddable,bidden,bide,biennial,biennium,bifocal,big,bike,bilayer,bilinear,bilk,bill,billet,billfold,billiard,billion,billow,bimodal,bin,binary,binaural,bind,bindery,bindle,binomial,biopsy,biota,biotic,biotite,biplane,bipolar,birch,bird,birdbath,birdie,birdlike,birdseed,birth,birthday,biscuit,bisect,bishop,bismuth,bison,bisque,bistable,bistate,bit,bite,bitten,bitumen,bitwise,bivalve,bivouac,biz,bizarre,






















blab,blacken,blackout,blanch,bland,blandish,blank,blanket,blare,blast,blastula,blazon,bleach,bleak,bleary,bleat,blemish,blend,blight,blimp,blind,blink,blip,bliss,blissful,blister,blithe,blitz,blizzard,block,blockade,blockage,blond,blonde,bloom,blossom,blot,blouse,blue,blueback,blueberry,bluebill,bluebird,bluebush,bluefish,bluegill,bluet,bluff,bluish,blunder,blunt,blur,blurb,blurry,blurt,blush,bluster,blustery,boa,boar,board,boast,boastful,boat,boathouse,boatload,boatman,boatmen,boatswain,boatyard,bobcat,body,bodybuild,bodyguard,bog,bogey,boggle,boil,bold,boldface,bolometer,bolster,bolt,bombard,bombast,bon,bona,bonanza,bond,bondsman,bondsmen,bone,bonfire,bongo,bonnet,bonus,book,bookbind,bookcase,bookend,bookish,bookkeep,booklet,boorish,boost,boot,booth,bop,borate,borax,border,born,borne,borough,borrow,boson,bosonic,boss,botanic,botanist,botany,botfly,both,bottle,bouffant,bough,bought,boulder,boule,bounce,bound,boundary,bounty,bouquet,bourn,bout,boutique,bovine,bow,bowfin,bowie,bowl,bowline,bowman,bowmen,box,boxcar,boxwood,boxy,boy,boyar,boycott,boyhood,brace,bracelet,bracken,bracket,brackish,bract,brad,brae,brag,bragging,braid,brain,brainy,brake,brakeman,bramble,bran,branch,brand,brandish,brant,brash,brass,brassy,bravado,brave,bravery,bravo,bravura,brawl,bray,brazier,breach,bread,breadth,break,breakage,breakoff,breakup,bream,breath,breathe,breathy,breccia,breech,breed,breeze,breezy,brethren,breve,brevet,brevity,briar,brick,brickbat,bricklay,bridal,bride,bridge,bridle,brief,brig,brigade,bright,brighten,brim,brimful,brindle,brine,bring,brink,briny,brisk,bristle,brittle,broach,broaden,brocade,broccoli,brochure,brockle,broil,broke,broken,bromide,bromine,bronchi,bronchus,bronco,bronze,bronzy,brood,broody,brook,broom,broth,brother,brought,brouhaha,brow,brown,brownie,brownish,browse,bruise,bruit,brunch,brunette,brunt,brush,brushy,brusque,bryozoa,bubble,bucket,buckeye,buckle,buddy,budge,budget,buffalo,buffet,bug,bugging,buggy,bugle,build,buildup,built,builtin,bulb,bulblet,bulge,bulk,bulkhead,bulky,bulldog,bulldoze,bullet,bulletin,bullfrog,bullseye,bulrush,bulwark,bumble,bump,bun,bunch,bundle,bungalow,bungle,bunk,bunny,bunt,buoy,buoyant,burbank,burdock,bureau,buret,burette,burgeon,burgess,burgher,burglar,burl,burlap,burley,burly,burn,burnish,burnt,burro,burrow,burst,bursty,bury,bus,busboy,buses,bushel,business,bustle,busy,but,butane,butler,buttery,button,buy,buyer,buzz,buzzer,buzzing,buzzsaw,buzzword,buzzy,by,bye,bygone,bylaw,byline,bypass,bypath,byroad,byway,byword';

 

WORDS2 CONSTANT VARCHAR2(32726) := 'cab,cabana,cabaret,cabbage,cabin,cabinet,cable,cacao,cachalot,cache,cackle,cacti,cactus,caddy,cadent,cadenza,cadet,cadmium,cadre,cafe,cage,cagey,cajole,cake,calamity,calamus,calcify,calcine,calcite,calcium,calculi,calculus,caldera,calendar,calf,calfskin,caliber,calibre,calico,caliper,caliph,call,caller,calliope,callous,callus,calm,caloric,calorie,calumny,calve,calypso,camber,cambric,camel,camellia,cameo,camera,camilla,camp,campaign,campfire,campion,campsite,campus,can,canal,canary,candela,candid,candle,candy,cane,canine,canister,cannel,cannery,cannibal,cannon,canny,canoe,canon,canopy,canst,cant,canteen,canticle,cantle,canto,canton,cantor,canvas,canvass,canyon,cap,capacity,cape,capella,caper,capita,capital,capitol,capo,caprice,capsize,capstan,capstone,capsule,captain,caption,captious,captive,captor,capture,capybara,car,carabao,caramel,caravan,caraway,carbide,carbine,carbon,carbonic,carbonyl,carboxy,card,cardamom,cardiac,cardinal,cardiod,cardioid,care,careen,career,carefree,careful,caret,careworn,carfare,cargo,cargoes,caribou,carload,carne,carney,carnival,carob,carol,carouse,carp,carpet,carport,carrel,carriage,carrot,carry,cart,carte,carton,cartoon,carve,carven,caryatid,cascade,cascara,case,casebook,casein,casework,cash,cashew,cashier,cashmere,cask,cassette,cassock,cast,castanet,caste,casteth,castle,castor,casual,casualty,cat,catalpa,catalyst,catapult,cataract,catawba,catbird,catch,catchup,catchy,category,catenate,cater,catfish,cathedra,cathode,cation,cationic,catkin,catlike,catnip,catsup,cattail,cattle,caucus,caught,cauldron,caulk,causal,causate,cause,caustic,caution,cautious,cavalier,cavalry,cave,caveat,caveman,cavemen,cavern,caviar,cavil,cavitate,cavort,caw,cayenne,cease,cedar,cede,cedilla,ceil,celerity,celery,celesta,cell,cellar,cellular,cement,cemetery,censor,censure,census,cent,centaur,central,centric,centrist,centroid,centum,century,ceramic,ceramium,cereal,cerebral,ceremony,cereus,cerise,cerium,certain,certify,cesium,cession,chagrin,chain,chair,chairman,chairmen,chaise,chalet,chalice,chalk,chalky,chamber,chamfer,chamois,champ,champion,chance,chancel,chancery,chancy,chandler,change,channel,chanson,chant,chantey,chantry,chap,chapel,chaperon,chaplain,chapter,charcoal,chard,charge,chariot,charisma,charity,charm,chart,chase,chasm,chassis,chaste,chastise,chat,chateau,chaw,cheap,check,checkout,checksum,checkup,cheek,cheer,cheerful,cheery,cheese,cheesy,cheetah,chef,chelate,chemic,chemise,chemist,chenille,cherish,cherry,chert,cherub,cherubim,chess,chest,chestnut,chevron,chevy,chew,chicken,chicory,chide,chief,chiefdom,chiffon,child,childish,children,chili,chill,chilly,chime,chimera,chimeric,chimney,chin,chinch,chine,chip,chipmunk,chirp,chisel,chiton,chivalry,chive,chlorate,chloride,chlorine,chock,choice,choir,cholera,choose,choosy,chop,choppy,choral,chorale,chord,chordal,chordata,chordate,chore,chorine,chortle,chorus,chose,chosen,chow,chowder,chromate,chrome,chromic,chromium,chronic,chuckle,chuff,chunk,churn,chute,chutney,cicada,cider,cilia,ciliate,cinch,cinder,cinema,cinnabar,cinnamon,cipher,circa,circle,circlet,circuit,circular,circus,cistern,citadel,citation,cite,citizen,citrate,citric,citron,citrus,city,citywide,civet,civic,civil,civilian,clad,claim,claimant,clam,clamber,clammy,clamp,clan,claret,clarify,clarinet,clarity,clash,clasp,class,classic,classify,classy,clatter,clattery,clause,claw,clay,clean,cleanse,cleanup,clear,cleat,cleft,clement,clench,cleric,clerk,clever,cliche,click,client,cliff,climate,climatic,climb,clime,clinch,cling,clinging,clinic,clink,clip,clique,cloak,clock,clog,clogging,clone,clonic,close,closet,closeup,closure,clot,cloth,clothe,clothier,cloture,cloud,cloudy,clout,clove,cloven,clown,cloy,club,clubroom,cluck,clue,clump,clumsy,clung,cluster,clutch,clutter,coach,coachman,coachmen,coal,coalesce,coarse,coarsen,coast,coastal,coat,coattail,coauthor,coax,coaxial,cobalt,cobble,cobra,cobweb,cockpit,cocoa,coconut,cocoon,cod,coda,code,codeword,codfish,codicil,codify,codomain,coed,






















coeditor,coequal,coerce,coercion,coercive,coexist,cofactor,coffee,coffer,cog,cogent,cogitate,cognate,cohere,coherent,cohesion,cohesive,cohort,cohosh,coiffure,coil,coin,coinage,coincide,colander,cold,coleus,coliform,coliseum,collage,collagen,collapse,collar,collard,collate,collect,college,collet,collide,collie,colloquy,collude,colonel,colonial,colonist,colony,colorate,colossal,colossi,colossus,colt,coltish,column,columnar,colza,comb,combine,comeback,comedian,comedy,comet,cometary,comfort,comic,comma,command,commend,comment,commerce,commit,common,commute,compact,company,compare,compass,compel,compete,compile,complain,compleat,complete,complex,compline,comply,comport,compose,compote,compound,compress,comprise,compute,comrade,concave,conceal,concede,conceit,concept,concern,concert,concerti,concerto,conch,concise,conclave,conclude,concoct,concord,concrete,concur,condemn,condense,condone,conduce,conduct,conduit,cone,confect,confer,conferee,confess,confide,confine,confirm,confocal,conform,confound,confrere,confront,confute,congeal,congener,congest,congress,conic,conifer,conjunct,conjure,connect,connive,connote,conquer,conquest,consent,conserve,consider,consign,consist,console,conspire,constant,construe,consul,consular,consult,consume,contact,contain,contend,content,context,continua,continue,continuo,contort,contour,contract,contrary,contrast,contribu,contrite,contrive,control,convect,convene,convent,converge,converse,convert,convex,convey,conveyor,convict,convince,convoke,convolve,convoy,convulse,cook,cookbook,cookery,cookie,coolant,coop,coot,cop,cope,copious,coplanar,copperas,coppery,copra,coprinus,copy,copybook,coquette,coquina,coral,corbel,cord,cordage,cordial,cordite,cordon,corduroy,core,cork,corn,cornea,cornet,cornish,cornmeal,corny,corona,coronary,coronate,coroner,coronet,corpora,corporal,corps,corpsman,corpsmen,corpus,corral,correct,corridor,corrode,corsage,cortege,cortex,cortical,corundum,corvette,cosmetic,cosmic,cosmos,cost,costume,cosy,cot,cotman,cotta,cottage,cotton,couch,cougar,cough,could,coulomb,council,counsel,count,country,county,coup,coupe,couple,coupon,courage,courier,course,court,courtesy,courtier,couscous,cousin,covalent,covary,cove,covenant,cover,coverage,coverall,coverlet,cowbell,cowbird,cowboy,cowgirl,cowhand,cowherd,cowhide,cowl,coworker,cowpox,coy,coyote,cozy,crab,crabmeat,cradle,craft,crafty,cramp,crane,crania,cranium,cranny,crass,crate,crater,cravat,crave,craw,crawl,crayfish,crayon,craze,crazy,creak,creaky,crease,create,creating,creature,creche,credent,credenza,credible,credit,creditor,credo,creed,creedal,creek,creosote,crepe,crept,crescent,cress,crest,crevice,crew,crewcut,crewel,crewman,crewmen,crib,cricket,cried,crime,crimson,crinkle,crisp,criss,criteria,critic,critique,critter,croak,crochet,croft,crone,crony,crook,croon,crop,croquet,cross,crossarm,crossbar,crossbow,crosscut,crossway,crouch,crow,crowd,crowfoot,crown,crucial,crucible,cruise,crumb,crumble,crumple,crunch,crupper,crusade,crush,crust,cry,cryptic,crystal,cub,cube,cubic,cuckoo,cucumber,cud,cuddle,cuddly,cudgel,cue,cuff,cufflink,cuisine,culinary,cull,culpable,culprit,cultural,culture,culvert,cumin,cumulate,cumulus,cunning,cup,cupboard,cupful,cupidity,cupric,cuprous,cur,curate,curb,curbside,curd,curdle,cure,curfew,curia,curie,curio,curious,curium,curl,curlew,curlicue,currant,current,curry,cursive,cursor,cursory,curt,curtail,curtain,curtsey,curve,cushion,cusp,custody,custom,cut,cutback,cute,cutesy,cutlass,cutler,cutlet,cut,cutout,cutover,cutset,cutworm,cycad,cycle,cyclic,cyclist,cyclone,cylinder,cynic,cypress,cyst,cysteine,cytology,dab,dabble,dactyl,dactylic,dad,daddy,daffodil,daffy,dagger,dahlia,dainty,dairy,dairyman,dairymen,daisy,dale,dally,damp,dampen,dance,dandy,dapper,dapple,dare,dark,darken,darkle,darling,dart,dash,data,database,date,dateline,dater,datum,daub,daughter,daunt,dauphin,dauphine,davit,dawn,day,daybreak,daydream,daylight,daytime,daze,dazzle,deadline,deadlock,deal,dealt,dean,dear,dearie,dearth,debar,debate,debater,debility,debit,de






















bonair,debrief,debris,debt,debtor,debug,debugged,debunk,debut,decade,decadent,decal,decant,decay,decedent,deceit,decent,decibel,decide,decile,decimal,decipher,decision,decisive,deck,declaim,declare,decline,decode,decor,decorate,decorous,decorum,decouple,decoy,decrease,decree,decry,dedicate,deduce,deed,deem,deep,deepen,deer,deerskin,deface,default,defeat,defector,defend,defer,deferent,deferred,define,definite,deflect,deforest,deft,degree,delay,delegate,delicacy,delicate,delight,delimit,delirium,deliver,delivery,dell,delphine,delta,deltoid,delude,deluge,delusion,delusive,deluxe,delve,demand,demark,demitted,demo,den,denature,dendrite,denizen,denote,dense,dent,dental,denture,depart,depend,depict,deplete,deploy,depose,deposit,depot,depth,depute,deputy,derby,derivate,derive,dervish,descant,descend,descent,describe,desert,deserve,design,desist,desk,despite,dessert,destine,destiny,detach,detail,detain,detect,detector,deter,detour,deuce,develop,device,devote,devotee,devotion,dew,dewar,dewdrop,dextrose,dextrous,diadem,diagnose,diagonal,diagram,dial,dialect,dialogue,diameter,diamond,diary,diatom,diatomic,diatonic,dice,did,didactic,diesel,diet,dietary,dietetic,differ,diffract,diffuse,dig,digest,digging,digit,digital,dignify,dignity,digram,digress,dihedral,dilemma,diligent,dill,diluent,dilute,dilution,dim,dime,dimethyl,diminish,dimple,dine,dinosaur,diode,diopter,diorama,diorite,dioxide,dip,diploid,diploidy,diplo,diplomat,direct,director,disburse,disc,discern,disco,discreet,discrete,discus,discuss,dish,dishes,dishevel,disjunct,disk,dispel,dispense,disperse,dissuade,distaff,distal,distant,distinct,district,dither,ditto,dive,diverge,diverse,divert,divest,divide,dividend,division,divisor,divulge,do,doberman,dock,docket,dockside,dockyard,doctor,doctoral,doctrine,document,dodge,doe,dog,doghouse,dogwood,doldrum,doldrums,dole,doleful,doll,dollar,dollop,dolly,dolomite,dolphin,domain,dome,domestic,domicile,domino,donate,done,door,doorbell,doorkeep,doorknob,doorman,doormen,doorstep,doorway,dormant,dossier,dot,dote,double,doublet,doubt,doubtful,dough,doughnut,dour,douse,dove,dovetail,dowel,down,downplay,downpour,downtown,downward,downwind,dowry,doze,dozen,drab,draft,drag,dragging,dragnet,dragon,dragoon,drain,drainage,drake,dram,drama,dramatic,drape,drapery,drastic,draw,drawback,drawl,drawn,dream,dreamt,dreamy,dredge,dreg,drench,dress,dressy,drew,drib,dried,drier,drift,drill,drink,drive,driven,driveway,drizzle,drizzly,droll,drone,drop,droplet,dross,drought,drove,drowse,drowsy,drub,druid,drum,drumhead,drumlin,dry,dryad,dual,dualism,dub,ducat,duchess,duck,duckling,duct,ductile,ductwork,dud,due,duel,duet,duff,duffel,dug,dugout,duke,dukedom,dulcet,dull,dully,dulse,duly,dune,dunk,duopoly,duplex,durable,durance,duration,during,dusk,dust,dustbin,dusty,dutchess,dutiable,dutiful,duty,dwindle,dyad,dyadic,dye,dyeing,dyer,dynamic,dynamism,dynasty,each,eager,eagle,ear,eardrum,earl,earmark,earn,earnest,earphone,earring,earth,earthy,ease,easel,east,eastern,eastward,easy,eave,ebb,ebony,echelon,echo,echoes,eclectic,eclipse,ecliptic,eclogue,ecology,economic,economy,ectoderm,ectopic,ecumenic,eddy,edge,edgewise,edging,edgy,edict,edifice,edify,edit,edition,editor,educable,educate,eel,eerie,eerily,efface,effect,efferent,efficacy,effort,effusion,effusive,egg,eggplant,eggshell,egress,egret,eider,eidetic,eight,eighteen,eighth,eighty,either,elapse,elastic,elate,elbow,elder,eldest,elect,elector,electret,electric,electro,electron,elegant,elegiac,elegy,element,elephant,elevate,eleven,eleventh,elfin,elicit,elide,eligible,elision,elite,elk,ellipse,ellipsis,elliptic,elm,eloquent,else,eluate,elute,elution,elves,elysian,emaciate,emanate,embank,embargo,embark,embassy,ember,embezzle,emblazon,emblem,embody,embolden,emboss,embower,embrace,emcee,emerald,emerge,emergent,emeriti,emeritus,emigrant,emigrate,eminent,emirate,emissary,emotion,empathy,emperor,emphases,emphasis,emphatic,empire,empiric,emplace,employ,employed,employee,employer,emporium,empower,empress,empty,emulate,emulsify,emulsion,






















enable,enamel,enclave,encomia,encomium,encore,encroach,end,endemic,endgame,endoderm,endogamy,endorse,endow,endpoint,endure,energy,enervate,enfant,engage,engine,engineer,enhance,enigma,enliven,enol,enough,enquire,enquiry,enrollee,ensconce,ensemble,entendre,enter,enthalpy,enthrall,entice,entire,entirety,entity,entrant,entropy,entry,envelop,envelope,enviable,environ,envoy,enzyme,epic,epicure,epicycle,epidemic,epigram,epigraph,epilogue,episode,episodic,epistle,epitaph,epithet,epitome,epoch,epochal,epoxy,epsilon,equable,equal,equate,equine,equinox,equip,equipped,equity,era,erasable,erase,erasure,erg,ergative,ergodic,erode,erodible,erosible,erosion,erosive,errand,errant,errantry,ersatz,erudite,erupt,eruption,escalate,escapade,escape,escapee,escheat,eschew,escort,escrow,esophagi,esoteric,especial,espousal,espouse,esprit,esquire,essay,essence,estate,esteem,ester,estimate,estrange,estuary,etch,eternal,eternity,ethane,ethanol,ether,ethereal,ethic,ethology,ethos,ethyl,ethylene,etude,eucre,eugenic,eulogy,eureka,eutectic,evacuate,evade,evaluate,evangel,eve,even,evensong,event,eventful,eventide,eventual,every,everyday,everyman,everyone,evict,evident,evocable,evocate,evoke,evolve,evzone,ewe,exact,exacter,exalt,exam,examine,example,excavate,exceed,excel,excelled,except,excerpt,excess,excise,excision,excite,exclaim,exclude,excuse,executor,exemplar,exempt,exercise,exert,exhale,exhaust,exhort,exile,exist,existent,exit,exodus,expand,expanse,expect,expedite,expend,expense,expert,expiable,expiate,expire,explain,explicit,explode,exploit,explore,exponent,export,expose,exposit,exposure,expound,express,extant,extend,extensor,extent,exterior,external,extinct,extol,extolled,extoller,extra,extract,extrema,extremal,extreme,extremis,extremum,extrude,exult,exultant,eye,eyeball,eyebrow,eyed,eyeful,eyeglass,eyelash,eyelet,eyelid,eyepiece,eyesight';

 

WORDS3 CONSTANT VARCHAR2(32726) := 'fable,fabric,fabulous,facade,face,facet,facial,facile,fact,factor,factory,factual,faculty,fad,fade,fadeout,fain,faint,fair,fairgoer,fairway,falcon,falconry,fall,fallen,fallible,falloff,fallout,fallow,fame,familial,familiar,familism,family,famine,famish,famous,fan,fanatic,fanciful,fancy,fanfare,fanfold,fantasy,far,farce,fare,farewell,farm,farmland,fashion,fast,fasten,fate,fateful,father,fathom,fatigue,faucet,faun,fauna,fawn,feasible,feast,feat,feather,feathery,feature,fed,federal,federate,fee,feed,feedback,feel,feet,feign,feint,feldspar,felicity,feline,fell,fellow,female,femur,fence,fend,fennel,ferment,fern,fernery,ferocity,ferret,ferric,ferris,ferrite,ferrous,ferrule,ferry,fertile,fervent,fescue,fest,festival,festive,fetch,fete,fetid,fetish,fetter,fettle,feud,feudal,fever,feverish,few,fiance,fiancee,fibrin,fibrosis,fibrous,fiche,fickle,fiction,fictive,fiddle,fide,fidelity,fidget,fiducial,fief,fiefdom,field,fiend,fiendish,fierce,fiery,fiesta,fife,fifteen,fifth,fiftieth,fifty,fig,figure,figurine,filament,filbert,filch,file,filet,filial,fill,filled,filler,fillet,filly,film,filmdom,filmy,filter,filtrate,fin,final,finale,finance,finch,find,fine,finery,finesse,finessed,finger,finicky,finish,finite,fir,fire,fireboat,firebug,firefly,fireman,firemen,fireside,firewall,firewood,firework,firm,firmware,first,fiscal,fish,fishery,fishpond,fishy,fission,fissure,fist,fit,fitful,five,fivefold,fix,fixate,fixture,fizzle,fjord,flack,flag,flagpole,flagrant,flail,flair,flak,flake,flaky,flame,flamingo,flange,flank,flannel,flap,flare,flash,flashy,flask,flat,flatbed,flathead,flatiron,flatland,flatten,flattery,flatware,flatworm,flaunt,flax,flaxen,flaxseed,flea,fleck,fled,fledge,flee,fleece,fleeing,fleet,flemish,fletch,flew,flex,flexible,flick,flier,flight,flimsy,flinch,fling,flint,flinty,flippant,flirt,flit,float,flood,floodlit,floor,flora,floral,florist,flotilla,flounder,flour,flourish,flow,flowery,flown,flu,flue,fluency,fluent,fluff,fluffy,fluid,fluke,flung,fluoride,fluorine,fluorite,flurry,fluster,flute,flutter,fluvial,flux,fly,flyer,flyway,foal,foam,focal,foci,focus,focussed,foe,fog,fogging,foggy,fogy,foible,foil,foist,fold,foldout,foliage,foliate,folio,folk,folklore,folksong,folksy,follicle,follow,folly,fondly,font,food,foot,footage,football,footfall,foothill,footman,footmen,footnote,footpad,footpath,footstep,footwear,footwork,for,forage,foray,forbade,forbear,forbid,forbore,forborne,force,forceful,forcible,ford,fore,foreign,forest,forestry,forever,forfeit,forfend,forgave,forge,forget,forgive,forgiven,forgo,forgot,fork,forklift,forlorn,form,formal,formant,format,formate,formic,formula,formulae,forsake,forsaken,forsook,forswear,fort,forte,forth,fortieth,fortify,fortin,fortiori,fortran,fortress,fortune,forty,forum,forward,forwent,fossil,foster,fought,foul,found,fountain,four,fourfold,foursome,fourteen,fourth,fovea,fowl,fox,foxglove,foxhole,foxhound,foxtail,foyer,fraction,fracture,fragile,fragment,fragrant,frail,frailty,frame,franc,franca,frank,franklin,fray,frayed,freckle,free,freed,freedmen,freedom,freehand,freehold,freeing,freeman,freemen,freer,freest,freeway,freeze,freight,frenetic,frenzy,freon,frequent,fresco,frescoes,fresh,freshen,friction,fried,friend,frieze,frigid,frill,frilly,fringe,frisky,frizzle,fro,frock,frog,frolic,from,front,frontier,frost,frosty,froth,frothy,frown,frowzy,froze,frozen,fructose,frugal,fruit,fruitful,fruition,fry,fudge,fuel,fugitive,fulcrum,fulfill,full,fullback,fully,fumble,fume,fumigant,fumigate,fun,function,fund,fungal,fungi,funnel,funny,fur,furbish,furious,furl,furlong,furlough,furnace,furnish,furrier,furrow,furry,further,furthest,furtive,fury,furze,fuse,fuselage,fusible,fusion,fuss,fussy,futile,future,fuzz,fuzzy,gab,gabble,gable,gadget,gadgetry,gage,gaggle,gain,gainful,gait,gal,gala,galactic,galaxy,gale,gall,gallant,gallery,galley,gallon,gallop,galvanic,gambit,gamble,game,gamesman,gamut,gander,gannet,gantlet,gantry,gap,gape,garage,garb,garble,garden,gardenia,gargle,garish,garland,gar






















lic,garner,garnet,garrison,garter,gash,gasket,gaslight,gasoline,gasp,gate,gatekeep,gateway,gather,gator,gauche,gaudy,gauge,gaunt,gauntlet,gauss,gauze,gave,gavel,gavotte,gawk,gaze,gazelle,gazette,gear,gecko,geese,gel,gelable,gelatin,gelatine,gem,geminate,gemlike,gemstone,gene,genera,general,generate,generic,generous,genesis,genetic,genial,genie,genius,genotype,genre,gent,genteel,gentian,gentile,gentle,gentry,genuine,genus,geometer,geranium,germ,germane,germinal,gerund,gestalt,gesture,get,getaway,geyser,ghastly,ghost,ghostly,ghoul,ghoulish,giant,giantess,gibbet,gibbon,giblet,giddy,gift,gig,gigaherz,gigantic,gigavolt,gigawatt,giggle,gila,gild,gill,gilt,gimmick,ginger,gingham,gingko,ginseng,giraffe,girl,girth,gist,give,giveaway,given,giveth,glacial,glaciate,glacier,glad,gladden,glade,glamor,glamour,glance,gland,glare,glass,glassy,glaucoma,glaucous,glaze,gleam,glean,glee,gleeful,glen,glib,glide,glimmer,glimpse,glint,glissade,glisten,glitch,glitter,gloat,glob,global,globe,globular,globule,globulin,gloom,gloomy,glorify,glorious,glory,gloss,glossary,glossed,glossy,glottal,glottis,glove,glow,glucose,glue,glued,gluey,gluing,glum,glut,glutamic,glutton,glycerin,glycerol,glycine,glycogen,glycol,glyph,gnarl,gnash,gnat,gnaw,gnome,gnu,go,goad,goal,goat,gobble,goblet,goes,gold,golden,goldfish,golf,gondola,gone,good,goodbye,goodwill,goose,gopher,gore,gorge,gorgeous,gorgon,gorilla,gorse,gory,gosling,gossamer,gossip,got,gouge,gourd,gourmet,gout,govern,governor,gown,grab,grace,graceful,gracious,grackle,grad,gradate,grade,gradient,gradual,graduate,graft,graham,grail,grain,grainy,grammar,granary,grand,grandeur,grandma,grandpa,grandson,granite,granitic,granny,granola,grant,grantee,grantor,granular,granule,grape,graph,graphic,graphite,grapple,grasp,grass,grassy,grate,grateful,grater,gratify,gratuity,grave,gravel,graven,gravid,gravy,gray,grayish,graze,grease,greasy,great,greater,grebe,greed,greedy,green,greenery,greenish,greet,grew,grey,grid,griddle,gridiron,grief,grieve,grievous,griffin,grill,grille,grilled,grim,grimace,grime,grin,grind,grip,gripe,grisly,grist,grit,gritty,grizzle,grizzly,groan,groat,grocer,grocery,groggy,groom,groove,gross,ground,group,grout,grove,grovel,grow,growl,grown,grownup,growth,grudge,gruesome,gruff,grumble,grunt,gryphon,guanine,guard,guardian,guerdon,guernsey,guess,guest,guffaw,guidance,guide,guiding,guignol,guild,guile,guinea,guise,guitar,gulf,gull,gullet,gullible,gully,gulp,gum,gumbo,gumdrop,gummy,gumption,gumshoe,gurgle,guru,gush,gusset,gust,gusto,gusty,gut,gutsy,guttural,guy,guzzle,gym,gymnast,gypsite,gypsum,gypsy,habit,habitant,habitat,habitual,hacksaw,had,haddock,hadron,haggard,haggle,haiku,hail,hair,haircut,hairdo,hairpin,hale,half,halfback,halfway,halibut,halide,halite,hall,hallmark,hallow,hallway,halo,halogen,halt,halve,ham,hamlet,hammock,hamper,hamster,hand,handbag,handbook,handcuff,handful,handle,handmade,handout,handset,handsome,handy,handyman,handymen,hang,hangar,hansom,happen,happy,harass,hardbake,harden,hardhat,hardtack,hardtop,hardware,hardwood,hardy,hare,hark,harm,harmful,harmonic,harmony,harness,harp,harpoon,harrow,harsh,harshen,hart,harvest,hassle,hast,haste,hasten,hasty,hat,hatch,hatchet,hath,haul,haulage,haunch,haunt,have,haven,havoc,hawk,hay,hayfield,haystack,hayward,hazard,haze,hazel,hazelnut,hazy,he,head,headache,headland,headline,headroom,headset,headsman,headsmen,headwall,headway,headwind,heal,health,healthy,heap,hear,heard,hearken,heart,hearten,hearth,hearty,heat,heater,heath,heathen,heave,heaven,heavy,hectic,hector,hedge,hedgehog,heed,heel,heft,hefty,hegemony,height,heighten,heir,heiress,held,helical,helium,helix,hello,helm,helmet,helmsman,helmsmen,help,helpful,helpmate,hem,hematite,hemlock,hen,hence,henpeck,heptane,her,herald,herb,herd,herdsman,here,hereby,heredity,heretic,hereto,hereunto,herewith,heritage,hero,heroes,heroic,heroism,heron,herself,hertz,hesitant,hesitate,hewn,hex,hexagon,hexane,hey,heyday,hi,hiatus,hibachi,hickory,hid,hidden,hide,hideaway,hideous,hideout,hieratic,highest,highland,h






















ighroad,hightail,highway,hike,hilarity,hill,hillside,hilltop,hilly,him,himself,hindmost,hinge,hint,hip,hippo,hire,hireling,his,hiss,historic,history,hit,hitch,hither,hitherto,hive,hoard,hoarse,hobble,hobby,hockey,hodge,hold,holden,holiday,holler,hollow,holly,hologram,holster,holt,homage,home,homeland,homemade,homesick,homeward,homework,homology,homonym,hone,honest,honesty,honey,honeybee,honeydew,honorary,honoree,hoof,hoofmark,hook,hookworm,hoop,hoot,hooves,hop,hope,hopeful,horde,horizon,horn,hornet,horse,horsedom,horsefly,horseman,horsemen,hose,hosiery,hospice,hospital,host,hostage,hostess,hostile,hotel,hotelman,hound,hour,house,housefly,hove,hovel,hover,how,howdy,however,howl,hub,hubris,huddle,hue,hued,huff,hug,huge,hugging,hull,hum,human,humane,humanoid,humble,humerus,humid,humidify,humility,hummock,humorous,humus,hunch,hundred,hungry,hunt,hurdle,hurl,hurley,hurrah,hurray,hurry,hurt,hurtle,husband,hush,husky,hustle,hut,hutch,hyacinth,hyaline,hybrid,hydra,hydrant,hydrate,hydride,hydro,hydrogen,hydrous,hydroxy,hydroxyl,hyena,hygiene,hymn,hymnal,hyphen,hypnosis,hypnotic,iambic,ice,iceberg,icebox,iceland,icicle,icon,iconic,icy,idea,ideal,identify,identity,ideology,idiom,idle,idyll,idyllic,if,igloo,igneous,ignite,ignition,ileum,iliac,illogic,illume,illumine,illusion,illusive,illusory,image,imagery,imagine,imbibe,imbrue,imbue,imitable,imitate,immanent,immature,immense,immerse,imminent,immobile,immune,impact,impair,impale,impart,impasse,impeach,impede,impel,impelled,impeller,impend,imperate,imperial,imperil,impetus,impiety,impinge,implicit,implore,import,impose,impost,impound,impress,imprint,improve,impudent,impugn,impulse,impunity,impute,inaction,inactive,incant,incense,inceptor,inch,incident,incise,incisive,incite,incline,inclose,include,income,increase,incubate,incur,incurred,incurrer,indebted,indeed,indent,index,indicant,indicate,indices,indict,indigene,indigent,indigo,indirect,indoor,indorse,induce,induct,inductee,inductor,industry,inequity,inert,inertia,inertial,inexact,inexpert,infancy,infant,infantry,infer,inferred,infield,infight,infinite,infinity,infirm,inflate,inflater,inflect,inflict,inflow,influent,influx,inform,informal,infract,infrared,infringe,infuse,infusion,ingather,ingest,ingrown,inhabit,inhale,inhere,inherent,inherit,inhibit,inhuman,inimical,iniquity,initial,initiate,inject,injunct,injure,injury,ink,inkling,inlaid,inland,inlay,inlet,inmate,inn,innate,inner,innocent,innovate,innuendo,input,inquest,inquire,inquiry,inroad,inscribe,insect,insecure,insert,inset,inshore,inside,insight,insignia,insist,insomnia,inspect,inspire,install,instance,instant,instead,instep,instill,instinct,instruct,insular,insulate,insulin,insult,insure,intact,intake,integer,integral,intend,intense,intent,inter,intercom,interest,interim,interior,intermit,intern,internal,interval,into,intonate,intone,intrepid,intrigue,introit,intrude,intuit,inundate,inure,invade,invasion,invasive,inveigh,inveigle,invent,inventor,inverse,invert,invest,investor,inviable,invite,invitee,invocate,invoice,invoke,involve,inward,iodide,iodine,ion,ionic,irate,iridium,iris,iron,ironic,ironside,ironwood,is,island,isle,isolate,isomer,isomorph,isotherm,isotope,isotopic,isotropy,issuance,issuant,issue,it,italic,item,iterate,itself,ivory,ivy,jacket,jackpot,jade,jag,jaguar,jamboree,jangle,janitor,jar,jargon,jasper,jaundice,jaunty,javelin,jaw,jawbone,jawbreak,jazz,jazzy,jelly,jersey,jest,jet,jetliner,jettison,jewel,jewelry,jig,jigsaw,jilt,jingle,jittery,jive,job,jockey,jog,jogging,joggle,join,jolly,jolt,jostle,jot,joule,jounce,journal,journey,joust,jovial,jowl,jowly,joy,joyful,joyous,jubilant,jubilate,jubilee,judge,judicial,judo,jug,jugate,jugging,juggle,juice,jumble,jumbo,jump,junction,junctor,juncture,jungle,junior,juniper,juror,jury,just,justice,justify,jut,juvenile,kaiser,kale,kangaroo,keel,keen,keep,kept,kerchief,kern,kernel,kerosene,ketch,ketchup,ketone,ketosis,kettle,key,keyboard,keyed,keyhole,keynote,keys,keystone,khaki,kickoff,kid,kidney,kilo,kilohm,kimono,kin,kind,kin






















dle,kindred,kinesic,kinetic,king,kingbird,kingdom,kiosk,kit,kitchen,kite,kitten,kittle,kitty,kiwi,knack,knapsack,knead,knee,kneecap,kneel,knell,knelt,knew,knick,knight,knit,knobby,knock,knockout,knoll,knot,knotty,know,knoweth,knowhow,known,knuckle,knurl,koala,kosher,kraft,lab,label,labour,lace,lacerate,laconic,lacquer,lacrosse,lacuna,lacunae,lacy,lad,laden,ladle,lady,ladyfern,lag,lagging,lagoon,lain,lair,laissez,laity,lake,lakeside,lam,lamb,lament,laminate,lamp,lampoon,lamprey,lance,land,landfill,landhold,landlord,landmark,lane,language,languid,languish,lanky,lantern,lap,lapel,lapelled,lapidary,lapse,larch,large,largesse,lariat,lark,larkspur,larva,larvae,larval,larynges,larynx,lash,lasso,last,latch,late,latent,later,latera,lateral,laterite,lath,lathe,latitude,latter,lattice,latus,laud,laudanum,laugh,laughter,launch,laundry,laureate,laurel,lava,lavatory,lavender,lavish,law,lawful,lawn,lawyer,lay,layette,layman,laymen,layoff,layout,layup,laze,lazy,lea,lead,leaden,leadeth,leadsman,leadsmen,leaf,leaflet,leafy,league,leak,leakage,leaky,lean,leap,leapfrog,leapt,learn,lease,leash,least,leather,leathery,leave,leaven,lectern,lecture,led,ledge,leek,leer,leery,leeward,leeway,left,leftmost,leftover,leftward,lefty,leg,legacy,legal,legate,legato,legend,legging,legible,legion,leisure,lemming,lemon,lemonade,lend,length,lengthen,lengthy,lenient,lens,lentil,leonine,leopard,lesson,lessor,lest,let,lethal,lethargy,lettuce,leucine,levee,level,lever,leverage,levitate,levity,levulose,levy,lew,lexical,lexicon,liable,liaison,liberal,liberate,liberty,library,librate,libretto,licensee,licensor,lichen,licorice,lid,lien,lieu,life,lifeboat,lifelike,lifelong,lifespan,lifetime,lift,ligament,ligand,ligature,light,lighten,like,liken,likewise,lilac,lilt,lily,lim,limb,limbic,lime,limp,linden,line,lineage,lineal,linear,lineman,linemen,linen,lineup,linger,lingual,linguist,liniment,link,linkage,linoleum,linseed,lint,lion,lioness,lip,lipid,lipread,lipstick,liquefy,liquid,liquidus,lisle,list,listen,lit,litany,literacy,literal,literary,literate,lithe,lithic,lithium,litigant,litigate,litmus,little,littoral,live,liven,livery,liveth,livid,livre,lizard,load,loaf,loam,loamy,loan,loaves,lobby,lobe,lobster,lobular,lobule,local,locale,locate,loci,lock,lockout,lockstep,lockup,locomote,locus,locust,locution,locutor,lodge,loft,lofty,log,loge,logging,logic,logician,logistic,logjam,logo,lollipop,lone,lonesome,long,longhand,longhorn,longish,longleg,longtime,look,lookout,lookup,loom,loop,loophole,loose,loosen,loot,lop,lope,lopseed,lopsided,lore,losable,loss,lossy,lost,lot,lotion,lottery,lotus,loud,lounge,love,lovebird,lovelorn,low,lowdown,lower,lowland,loy,loyal,loyalty,lozenge,lucid,luck,lucky,lug,luge,luggage,lugging,lukewarm,lull,lullaby,lumbar,lumber,lumen,luminary,luminous,lump,lunar,lunary,lunate,lunch,luncheon,lung,lunge,lupine,lurch,lure,lurk,lute,lutetium,lux,luxe,luxury,lyric';

 

WORDS4 CONSTANT VARCHAR2(32726) :=
'machine,mackerel,macro,madam,made,madrigal,maestro,magazine,magenta,magi,magic,magician,magma,magnate,magnesia,magnet,magnetic,magnify,magnolia,magnum,mahogany,maid,maiden,mail,mailbox,mailman,mailmen,maim,main,mainland,mainline,mainstay,maintain,majestic,majesty,major,make,makeup,maladapt,malady,malaprop,malaria,malarial,male,maledict,mall,mallard,mallet,mallow,malposed,malt,maltose,maltreat,mambo,mammal,mammoth,man,manage,manatee,mandarin,mandate,mandrake,mandrel,mandrill,mane,maneuver,mange,mangle,manhole,manhood,manic,manifest,manifold,mankind,manna,manor,mansion,mantel,mantissa,mantle,manual,manumit,many,map,maple,mar,marathon,maraud,marble,march,mare,margin,marginal,marigold,marimba,marina,marinade,marinate,marine,marital,maritime,mark,market,marlin,marmot,maroon,marquee,marquess,marquis,marriage,married,marrow,marry,marsh,marshal,mart,martial,marvel,mascara,mash,mask,mason,masonry,mass,massage,masseur,massive,mast,mastery,mastodon,mat,match,mate,material,materiel,maternal,matinee,matrices,matrix,matron,matte,mattress,maturate,mature,maudlin,maul,mauve,maverick,max,maxima,maximal,maximum,may,maybe,mayor,mayoral,maze,me,mead,meadow,meager,meal,mealtime,meander,meant,meantime,measle,measure,meat,meaty,mechanic,medal,meddle,media,medial,median,mediate,medic,medicate,medicine,meditate,medium,medlar,medley,meek,meet,megabit,megabyte,megaton,megavolt,megawatt,megaword,megohm,meiosis,melamine,melange,melanin,melanoma,meld,melee,mellow,melodic,melody,melon,melt,meltdown,member,membrane,memento,memo,memoir,memorial,memory,men,menace,mend,menial,meniscus,mention,mentor,menu,merchant,mercuric,mercury,mere,merge,meridian,meringue,merit,merlin,mermaid,merry,mesa,mesh,mesmeric,mesoderm,meson,mesquite,mess,message,messy,met,metabole,metal,metallic,metaphor,meteor,meteoric,meter,methane,methanol,method,methodic,metric,metro,mettle,mew,mezzo,mica,mice,micro,micron,mid,midband,midday,middle,midnight,midpoint,midrange,midscale,midspan,midst,midterm,midway,midweek,might,mighty,mignon,migrant,migrate,mild,mildew,mile,mileage,milieu,militant,military,militate,milk,milkweed,milky,mill,millenia,miller,millet,mill,millions,mimesis,mimetic,mimic,mimicked,min,minaret,mince,mind,mindful,mine,mineral,mingle,mini,minibike,minimal,minimum,minion,ministry,mink,minnow,minor,minstrel,mint,minuet,minus,minute,minutiae,miracle,mirage,mire,mirror,mirth,miscible,miser,misnomer,miss,missile,mission,missive,mist,misty,mite,mitigate,mitosis,mitral,mitre,mitt,mitten,mix,mixture,mixup,mnemonic,moat,mobile,mobility,moccasin,mock,mockery,mockup,modal,mode,model,modem,moderate,modern,modest,modesty,modify,modish,modular,modulate,module,moduli,modulo,modulus,modus,moiety,moire,moist,moisten,moisture,molal,molar,molasses,mold,mole,molecule,molehill,mollify,mollusk,molt,molten,moment,momenta,momentum,mommy,monad,monadic,monarch,monarchy,monastic,monaural,monel,monetary,money,mongoose,monic,monies,monitor,monitory,monkey,monoid,monolith,monomer,monomial,monopoly,monoxide,monsoon,monster,montage,monte,month,monument,mood,moody,moon,moonlit,moor,moose,moot,mop,moral,morale,more,morel,moreover,morn,morose,morpheme,morphism,morrow,morsel,mort,mortal,mortar,mortem,mortgage,mortify,mortise,mosaic,mosque,mosquito,moss,mossy,most,mot,motel,moth,mothball,mother,motif,motion,motivate,motive,motley,motor,mottle,motto,mound,mount,mountain,mourn,mournful,mouse,mousy,mouth,mouthful,move,movie,mow,much,mucosa,mucus,mud,muddle,muddy,mudguard,mudsling,muffin,muffle,mug,muggy,mulberry,mulch,mule,mulish,mull,mulligan,multi,multiple,multiply,mum,mumble,mummy,munch,mundane,mung,munition,muon,mural,murk,murky,murmur,muscle,muscular,museum,mush,mushroom,mushy,music,musicale,musician,musk,muskox,muskoxen,muskrat,mussel,must,mustache,mustang,mustard,musty,mutagen,mutandis,mutant,mutate,mutatis,mute,mutineer,mutiny,mutt,mutter,mutton,mutual,mutuel,muzzle,my,mycology,myel,myeline,myeloid,mylar,mynah,myopia,myopic,myosin,myriad,myrtle,myself,mystery,mystic,mystify,mystique,myth,mythic,nab,nag,nag






















ging,naiad,nail,name,nameable,namesake,nap,nape,napkin,narrate,narrow,nary,nasal,nascent,natal,nation,native,natural,nature,nautical,nautilus,naval,nave,navel,navigate,navy,neap,near,nearby,nearest,neat,neater,neath,nebula,nebulae,nebular,nebulous,neck,necklace,neckline,necktie,nectar,nectary,need,needful,needham,needle,neither,nemesis,neon,neonatal,neonate,neophyte,neoprene,nepenthe,nephew,nerve,nest,nestle,net,nether,nettle,network,neural,neuritis,neuron,neuronal,neutral,neutrino,neutron,never,new,newborn,newcomer,newel,newfound,newline,newlywed,newsboy,newscast,newsman,newsmen,newsreel,newt,newton,next,niacin,nibble,nice,nicety,niche,nick,nickel,nickname,niece,nigh,night,nimble,nimbus,nine,ninebark,ninefold,nineteen,ninety,ninth,nitrate,nitric,nitride,nitrite,nitrogen,no,nob,nobelium,noble,nobleman,noblemen,noblesse,nobody,nocturne,nod,nodal,node,nodular,nodule,noise,noisy,nomad,nomadic,nominal,nominate,nominee,none,noodle,nook,noon,noontime,nor,north,northern,nose,nostril,not,notary,notch,note,notebook,notice,notify,notion,noun,nourish,nouveau,nova,novel,novelty,novice,now,nowaday,nowadays,nowhere,nozzle,nuance,nucleate,nuclei,nucleic,nucleoli,nucleus,nuclide,nudge,nugget,numb,numeral,numerate,numeric,numerous,numinous,nurse,nursery,nurture,nutmeg,nutrient,nutshell,nuzzle,nylon,oak,oaken,oakwood,oar,oasis,oat,oath,oatmeal,obduracy,obdurate,obelisk,obey,object,objector,objet,oblate,obligate,oblige,oblique,oblong,oboe,oboist,observe,obsidian,obsolete,obstacle,obstruct,obtain,obtrude,obverse,obviate,obvious,occasion,occident,occlude,occupant,occupy,occur,occurred,ocean,oceanic,ocelot,octagon,octal,octane,octant,octave,octet,octile,octopus,ocular,ode,odious,odium,odometer,oersted,of,off,offal,offbeat,offend,offer,offhand,office,official,officio,offload,offset,offshoot,offshore,offstage,oft,often,ogle,ohm,ohmic,ohmmeter,oil,oilcloth,oilman,oilmen,oilseed,oily,oint,ointment,okay,old,olden,oldster,oldy,oleander,olefin,olive,olivine,omelet,omicron,ominous,omnibus,on,once,oncology,oncoming,one,onerous,oneself,onetime,ongoing,onion,only,onrush,onset,onto,ontogeny,ontology,onus,onward,onyx,oocyte,ooze,opacity,opal,opaque,open,opera,operable,operand,operant,operate,operatic,operetta,operon,opine,opinion,opossum,opponent,oppose,opposite,opt,optic,optima,optimal,optimism,optimist,optimum,option,opulent,or,oracle,oracular,orange,orate,oratoric,oratorio,oratory,orb,orbit,orbital,orchard,orchid,ordain,ordeal,order,orderly,ordinal,ordinary,ordinate,ordnance,ore,oregano,organic,origin,original,oriole,ornament,ornate,ornately,orthant,orthicon,orthodox,osier,osmium,osmosis,osmotic,osprey,osseous,ossify,ostrich,other,otiose,otter,ought,ounce,our,oust,out,outlawry,oval,oven,over,overhang,overt,overture,owl,owly,own,ox,oxalate,oxalic,oxcart,oxen,oxeye,oxidant,oxidate,oxide,oxygen,oyster,ozone,pace,pacemake,pacific,pacifism,pacifist,pacify,pack,package,packet,pact,pad,paddock,paddy,padlock,page,pageant,paginate,paid,pail,paint,pair,pairwise,pal,palace,palate,palazzi,palazzo,pale,palette,palfrey,palisade,pall,palladia,pallet,palliate,pallid,palm,palmate,palmetto,palpable,palsy,pamper,pamphlet,pan,panacea,panama,pancake,pancreas,panda,pane,panel,panorama,pant,pantheon,panther,pantry,papa,papery,paprika,papyrus,par,parabola,parade,paradigm,paradise,paradox,paraffin,paragon,parakeet,parallax,parallel,parasite,parasol,paraxial,parboil,parcel,parch,pardon,pare,parent,parental,pariah,park,parkish,parkland,parkway,parody,parquet,parrot,parry,parse,parsley,parsnip,parson,part,partake,partial,particle,partisan,partner,partook,party,paschal,pass,passage,passband,passe,passer,passerby,passion,passive,passport,past,paste,pastel,pastime,pastoral,pastry,pasture,pat,patch,patchy,pate,patent,patentee,pater,paternal,path,pathfind,pathogen,pathway,patient,patio,patriot,patrol,patron,pattern,pause,pave,paw,pawn,pawnshop,pax,pay,paycheck,payday,payoff,payroll,pea,peace,peaceful,peach,peacock,peak,peal,peanut,pear,pearl,peat,pebble,pecan,peccary,peck,pectoral,peculate,






















peculiar,pedagogy,pedal,pedant,pedantic,pedantry,peddle,pedestal,pedigree,pediment,peek,peel,peg,pegboard,pegging,pelican,pellet,pelt,pemmican,pen,penalty,penance,pence,penchant,pencil,pend,pendant,pendulum,penguin,penitent,penman,penmen,pennant,penny,pension,pensive,pent,pentagon,pentane,penumbra,penury,people,pep,peppery,peptide,per,perceive,percent,percept,perch,perfect,perfidy,perforce,perform,perfume,perfuse,perhaps,peril,perilous,period,periodic,perjure,perjury,perk,permeate,permit,permute,peroxide,perplex,persist,person,persona,personal,persuade,pert,pertain,perturb,perusal,peruse,pervade,pestle,pet,petal,petit,petite,petition,petrel,petri,petrify,petrol,petty,petulant,petunia,pewter,pharmacy,phase,pheasant,phenol,phenolic,phenyl,phlox,phobic,phoebe,phoenix,phone,phoneme,phonemic,phonetic,phonic,phosgene,phosphor,photo,photon,phrase,physique,pi,pianist,piano,piccolo,pickerel,picket,pickle,picky,picnic,picture,piddle,pidgin,pie,piece,pier,pierce,pietism,piety,pig,pigeon,pigment,pigpen,pigskin,pigtail,pike,pile,pilfer,pilgrim,pill,pillage,pillar,pillory,pillow,pilot,pin,pinafore,pinball,pinch,pine,ping,pinhole,pinion,pink,pinkie,pinkish,pinnacle,pinnate,pinochle,pinpoint,pinscher,pint,pintail,pinwheel,pioneer,pipe,pipeline,pipette,piquant,pique,piracy,pirate,piston,pit,pitch,piteous,pitfall,pith,pithy,pivot,pivotal,pixel,pixy,pizza,pizzeria,placate,placater,place,placebo,placid,plaid,plain,plan,planar,plane,planet,plank,plankton,plant,plantain,plaque,plasm,plasma,plaster,plastic,plate,plateau,platelet,platform,platinum,platonic,platoon,platypus,play,playback,playful,playoff,playroom,playtime,plaza,plea,plead,pleasant,please,pleat,plebeian,plebian,pledge,plenary,plenty,plenum,plethora,pleura,pleural,pliable,pliancy,pliant,pliers,plight,plot,plover,plowman,pluck,plug,plugging,plum,plumage,plumb,plume,plummet,plunge,plunk,plural,plus,plush,pluton,ply,plywood,poach,pocket,pod,podium,poem,poesy,poet,poetic,poetry,pogo,poignant,point,poise,poke,polar,polaron,pole,polecat,polemic,police,policy,polio,polite,politic,politico,polity,polka,polkadot,poll,pollen,pollock,pollster,pollute,polo,polonium,polopony,polyglot,polygon,polymer,polytope,polytypy,pomade,pomp,pompano,pompey,pompous,poncho,pond,ponder,pony,poodle,pool,pop,popcorn,poplar,poplin,poppy,populace,popular,populate,populism,populist,populous,porch,porcine,pore,porosity,porous,porpoise,porridge,port,portage,portal,portend,portent,portico,portland,portrait,portray,posable,pose,posey,posh,position,positive,positron,posse,posseman,possemen,possess,possible,possum,post,postage,postcard,postfix,postman,postmark,postmen,postpaid,postpone,posture,posy,potable,potato,potatoes,potbelly,potent,pothole,potion,potlatch,pottery,pouch,poultry,pounce,pound,pour,pout,powder,powdery,power,powerful,practice,prairie,praise,prance,preamble,precept,precess,precinct,precious,precise,preclude,preempt,preen,preface,prefect,prefer,prefix,pregnant,prelude,premier,premiere,premise,premium,prep,prepare,presage,presence,present,preserve,preside,press,pressure,prestige,presume,presumed,pretend,pretense,pretext,pretty,prevail,prevent,preview,previous,prey,price,prickle,pride,prim,prima,primacy,primal,primary,primate,prime,primeval,primp,primrose,prince,princess,print,printout,prior,priori,priory,prism,pristine,privacy,private,privet,prize,pro,probate,probe,proceed,process,proclaim,procure,prod,prodigal,prodigy,produce,product,profess,profile,profit,profound,profuse,progeny,progress,prohibit,project,prolate,proline,prologue,prolong,prom,promise,promote,prompt,prone,pronoun,proof,prop,propane,propel,proper,property,proposal,propose,propound,propyl,prorate,prorogue,prosaic,prose,prosodic,prosody,prospect,prosper,protean,protease,protect,protege,protein,protest,protocol,proton,protract,proud,prove,proven,proverb,provide,province,proviso,provoke,provost,prow,prowess,prowl,proximal,prudent,prune,prurient,pry,pseudo,psyllium,puddly,puerile,puffery,puffin,puissant,pull,pulley,pullover,pulp,pulpit,pulsar,pulsate






















,pulse,puma,pumice,pump,pumpkin,pun,punctual,puncture,pundit,punditry,pungent,punster,punt,pup,pupate,pupil,puppet,puppy,puppyish,purchase,pure,purge,purify,purl,purple,purport,purpose,purse,purslane,pursuant,pursue,pursuer,pursuit,purvey,purveyor,purview,push,pushout,pushpin,put,putative,putt,putty,puzzle,pygmy,pyknotic,pyramid,python,quad,quadrant,quadric,quaff,quagmire,quail,quaint,quake,qualify,quality,qualm,quandary,quanta,qu,quantile,quantity,quantum,quark,quarrel,quarry,quart,quartet,quartic,quartile,quartz,quasar,quash,quasi,quatrain,quaver,quay,quell,quench,quest,question,quetzal,queue,quibble,quick,quicken,quiet,quietus,quill,quilt,quince,quinine,quint,quintet,quintic,quintus,quip,quipping,quirk,quirt,quite,quitting,quiver,quixotic,quiz,quizzes,quonset,quorum,quota,quote,quotient,rabbit,rabble,raccoon,race,raceway,racket,rackety,radar,radial,radian,radiant,radiate,radical,radices,radii,radio,radish,radium,radius,radon,raffle,raft,ragout,raid,rail,railbird,railhead,raillery,railroad,railway,rain,rainbow,raincoat,raindrop,rainfall,rainy,raise,raisin,raj,rajah,rake,rakish,rally,ram,ramble,ramify,ramp,rampage,rampant,rampart,ran,ranch,rancho,random,rang,range,rank,rankle,ransack,ransom,rapid,rapier,rapport,rapture,rare,rarefy,rascal,rash,rasp,rate,rater,rather,ratify,ratio,rattail,rattle,ratty,raucous,ravage,rave,ravel,raven,ravenous,ravine,raw,rawhide,ray,raze,razor,razzle,reach,reactant,read,readout,ready,real,realm,realtor,realty,ream,reap,reason,reave,reb,receipt,receive,recent,receptor,recess,recipe,recital,reckon,recline,recluse,recovery,recruit,rectify,rector,rectory,recur,recurred,recusant,recuse,red,redact,redactor,redbird,redcoat,redden,reddish,redhead,reduce,redwood,reed,reef,reek,reel,refer,referee,referent,referral,referred,refinery,reflect,refract,refrain,refuge,refugee,refusal,refute,regal,regale,regalia,regard,regatta,regent,regime,regimen,regiment,region,regional,registry,regular,regulate,rehearse,reign,rein,reindeer,rejoice,relate,relayed,relevant,reliant,relic,relict,relief,relieve,religion,relish,remark,remedy,remember,remiss,remit,remitted,remnant,remorse,remote,removal,rend,render,renewal,renounce,renovate,renown,rent,rental,repartee,repeal,repeat,repeater,repel,repelled,repent,replete,replica,report,reprieve,reprisal,reprise,reproach,reptile,republic,repute,request,require,requited,rerouted,rescind,rescue,resemble,resent,reserve,reside,resident,residual,residue,residuum,resign,resin,resist,resistor,resolute,resolve,resonant,resonate,resort,respect,respire,respite,respond,response,rest,restful,restive,restrain,restrict,result,resume,resuming,retail,retain,reticent,retina,retinal,retinue,retire,retiree,retort,retract,retrieve,retrofit,return,reveal,revel,revelry,revenue,rever,revere,reverend,reverent,reverie,reversal,reverse,revert,revery,revile,revisal,revise,revision,revival,revive,revoke,revolt,revolve,revved,revving,reward,rhapsody,rhenium,rheology,rheostat,rhesus,rhetoric,rheum,rhino,rhodium,rhombic,rhombus,rhubarb,rhyme,rhythm,rhythmic,rib,ribald,ribbon,ribose,ribosome,rice,rich,ricochet,rid,riddance,ridden,riddle,ride,ridge,riffle,rift,rig,rigging,right,rightful,rigid,rigorous,rim,ring,ringlet,ringside,rink,rinse,rip,ripen,ripple,rise,risen,risible,rite,ritual,rival,rivalry,riven,river,riverine,rivet,rivulet,road,roadbed,roadside,roadster,roadway,roam,roar,roast,robe,robin,robot,robotic,robotics,robust,rock,rockabye,rockaway,rocket,rocky,rode,rodent,rodeo,roe,roebuck,rogue,roil,roister,role,roll,rollback,rollick,romance,romp,roof,rooftop,rook,rookie,room,roomful,roommate,roomy,roost,root,rope,rose,rosebud,rosebush,rosemary,rosette,roster,rosy,rotary,rotate,rote,rotor,rotunda,rouge,roughen,round,roundoff,roundup,rout,route,routine,rove,row,rowboat,royal,royalty,rubble,rubdown,rubicund,rubidium,rubric,ruby,ruckus,rudder,ruddy,rudiment,ruff,ruffle,rufous,rug,rule,rumble,rumen,ruminant,ruminate,rummage,run,runabout,runaway,rundown,rune,rung,runic,runneth,runoff,runway,rupee,rupture,rural,ruse,rush






















,rusk,russet,russula,rust,rustic,rustle,rusty,rut,rutabaga,ruthless,rutile,rutty,rye';

 

 

WORDS5 CONSTANT VARCHAR2(32726) := 'sable,sabotage,saccade,sachem,sack,saddle,safari,safe,safety,saffron,sag,saga,sagacity,sage,sagging,sagittal,said,sail,sailboat,sailfish,sailor,saint,sake,salad,salami,salaried,salary,sale,salesman,salesmen,salient,saline,sallow,sally,salmon,salon,saloon,salt,salty,salutary,salute,salvage,samba,same,sample,sanctify,sanction,sanctity,sand,sandal,sandbag,sandhill,sandman,sandpile,sandwich,sandy,sane,sang,sangaree,sanguine,sanicle,sanitary,sanitate,sank,sans,sapiens,sapient,sapling,saponify,sapphire,sarcasm,sarcoma,sardine,sardonic,sari,sash,sashay,sat,satiable,satiate,satiety,satin,satire,satiric,satisfy,saturate,sauce,saucepan,saucy,saute,sauterne,savage,savagery,savant,save,savoy,savvy,saw,sawbelly,sawdust,sawfish,sawfly,sawmill,sawtooth,sawyer,say,scabbard,scabrous,scaffold,scalar,scald,scale,scallop,scalp,scan,scandal,scandium,scant,scanty,scapula,scapular,scar,scarce,scare,scarf,scarify,scarlet,scarves,scary,scathe,scavenge,scenario,scene,scenery,scenic,scent,schedule,schema,scheme,scholar,school,schooner,sciatica,scion,scissor,scoff,scold,scoop,scoot,scope,scorch,score,scoria,scorn,scornful,scorpion,scotch,scour,scout,scowl,scrabble,scram,scramble,scrap,scrape,scratch,scratchy,scrawl,scream,screech,screechy,screen,scribble,scribe,script,scriven,scroll,scrooge,scrub,scruple,scrutiny,scuba,scuff,scuffle,scull,sculpin,sculpt,sculptor,scurry,scurvy,scuttle,scutum,scythe,sea,seaboard,seacoast,seafare,seafood,seagull,seahorse,seal,sealant,seam,seaport,seaquake,sear,search,seashore,seaside,season,seasonal,seat,seater,seaward,seaweed,secant,secede,seclude,second,secrecy,secret,secrete,section,sector,secular,secure,sedan,sedate,sedge,sediment,see,seeable,seed,seedbed,seedling,seeing,seek,seem,seen,seep,seepage,seethe,seethed,seething,segment,seismic,seize,seizure,seldom,select,selector,selenate,selenite,selenium,self,sell,seller,sellout,seltzer,selves,semantic,semester,semi,seminar,seminary,semper,senate,send,senile,senior,sense,sensible,sensor,sensory,sent,sentence,sentient,sentinel,sentry,sepal,separate,septate,septum,sequel,sequent,sequin,sequitur,seraphim,serenade,serene,serge,sergeant,serial,seriate,seriatim,series,serif,serine,serious,serology,serpent,serum,servant,serve,service,servile,servitor,sesame,session,set,setback,setscrew,settle,setup,seven,seventh,seventy,sever,several,severe,sew,sewage,sewerage,sewn,shack,shackle,shad,shade,shadow,shadowy,shady,shag,shaggy,shah,shake,shaken,shaky,shale,shall,shallot,shallow,shamble,shame,shampoo,shamrock,shape,shard,share,shareown,shark,sharp,sharpen,shatter,shave,shaven,shaw,shawl,shay,she,sheaf,shear,sheath,sheathe,sheave,shed,sheen,sheep,sheer,sheet,sheik,shelf,shell,shelter,shelve,shepherd,sherbet,sheriff,shied,shield,shift,shin,shinbone,shine,shingle,shiny,ship,shiplap,shipman,shipmate,shipmen,shipyard,shire,shirk,shirt,shiver,shoal,shock,shod,shoe,shoehorn,shoelace,shoemake,shone,shoofly,shook,shop,shopkeep,shore,short,shortage,shortcut,shorten,shortish,shot,shotbush,should,shoulder,shout,shove,shovel,show,showboat,showcase,showdown,showman,showmen,shown,showroom,shrank,shrapnel,shred,shrew,shrewd,shriek,shrift,shrike,shrill,shrilly,shrine,shrink,shrive,shrivel,shroud,shrove,shrub,shrug,shrunk,shrunken,shuck,shudder,shuddery,shuffle,shun,shunt,shut,shutdown,shutoff,shutout,shuttle,shy,sibilant,sibling,sickle,side,sideband,sidecar,sideline,sidelong,sideman,sidemen,sidereal,siderite,sideshow,sidestep,sidewalk,sidewall,sideway,sidewise,sidle,siege,sienna,sierra,siesta,sieve,sift,sigh,sight,sightsee,sign,signal,signet,signify,signpost,silage,silane,silent,silica,silicate,silicon,silk,silken,silkworm,silky,sill,silly,silo,silt,silty,silver,silvery,similar,simile,simmer,simper,simple,simplex,simplify,simply,simulate,since,sincere,sinew,sinewy,sinful,sing,singable,singe,single,singlet,singsong,singular,sink,sinkhole,sinter,sinuous,sinus,sinusoid,sip,sir,sire,siren,sister,sit,site,situate,six,sixfold,sixgun,sixteen,sixth,sixtieth,sixty,size,sizzle,






















skat,skate,skater,skeet,skeletal,skeleton,skeptic,sketch,sketchy,skew,ski,skid,skiddy,skied,skiff,skill,skillet,skillful,skim,skimp,skinny,skip,skirmish,skirt,skit,skittle,skulk,skull,skullcap,skunk,sky,skyhook,skylark,skylight,skyline,skyward,skywave,skyway,slab,slag,slam,slander,slant,slap,slash,slat,slate,slater,sled,sledge,sleek,sleep,sleet,sleeve,sleigh,sleight,slender,slept,sleuth,slew,slice,slick,slid,slide,slight,slim,slime,sling,slip,slippage,slippery,slither,sliver,slivery,slob,sloe,slog,slogan,slop,slope,slosh,slot,sloth,slouch,slough,sloven,slow,slowdown,sludge,slumber,small,smaller,smallpox,smart,smash,smatter,smear,smelt,smile,smirk,smith,smithy,smitten,smog,smoke,smoky,smolder,smooth,smother,smudge,snack,snag,snagging,snail,snake,snap,snapback,snappish,snappy,snapshot,snare,snark,snarl,snatch,snazzy,sneak,sneaky,sneer,sneeze,snell,snick,snippet,snippy,snivel,snook,snoop,snoopy,snore,snorkel,snort,snout,snow,snowball,snowfall,snowshoe,snowy,snub,snuffer,snuffle,snuffly,snug,snuggle,snuggly,snyaptic,so,soak,soap,soapsud,soapy,soar,sob,soccer,sociable,social,societal,society,sock,socket,sockeye,sod,soda,sodden,sodium,sofa,soffit,soft,softball,soften,software,softwood,soggy,soil,soiree,sojourn,solace,solar,sold,solder,soldier,soldiery,sole,solecism,solemn,solenoid,solicit,solid,solidify,solidus,solitary,soliton,solitude,solo,solstice,soluble,solute,solution,solvate,solve,solvent,soma,somal,somatic,somber,sombre,some,somebody,someday,somehow,someone,sometime,somewhat,son,sonant,sonar,sonata,song,songbag,songbook,songful,sonic,sonnet,sonogram,sonority,sonorous,soon,soot,sooth,soothe,soothsay,sop,soprano,sorcery,sordid,sore,sorption,sorrel,sorrow,sorry,sort,souffle,sough,sought,soul,soulful,sound,soup,sour,source,sourwood,soutane,south,southern,souvenir,sow,sown,soy,soybean,spa,space,spacious,spade,spalding,span,spandrel,spangle,spaniel,spar,spare,sparge,spark,sparkle,sparky,sparling,sparrow,sparse,spasm,spat,spate,spatial,spatlum,spatula,spavin,spawn,speak,spear,spec,special,species,specific,specify,specimen,specious,speck,speckle,spectra,spectral,spectrum,specular,sped,speech,speed,speedup,speedy,spell,spend,spent,sphere,spheric,spheroid,spherule,sphinx,spice,spicy,spider,spidery,spigot,spike,spiky,spill,spilt,spin,spinach,spinal,spindle,spine,spinoff,spinster,spiny,spiral,spire,spirit,spite,spiteful,splash,splashy,splat,splay,splayed,spleen,splendid,splice,spline,splint,split,splotch,splotchy,splurge,splutter,spoil,spoilage,spoke,spoken,sponge,spongy,sponsor,spoof,spooky,spool,spoon,spoonful,sporadic,spore,sport,sporty,spot,spotty,spouse,spout,sprain,sprang,sprawl,spray,spread,spree,sprig,spring,springe,springy,sprinkle,sprint,sprite,sprocket,sprout,spruce,sprue,sprung,spumoni,spun,spur,spurge,spurious,spurn,spurt,sputnik,sputter,spy,spyglass,squabble,squad,squadron,squalid,squall,squamous,squander,square,squash,squawk,squeak,squeaky,squeal,squeegee,squeeze,squelch,squid,squill,squint,squire,squirm,squirmy,squirrel,squirt,squishy,stab,stabile,stable,staccato,stack,stadia,stadium,staff,stag,stage,stagnant,stagnate,stagy,staid,stain,stair,stairway,stake,stale,stalk,stall,stallion,stalwart,stamen,stamina,stammer,stamp,stampede,stance,stanch,stand,standard,standby,standeth,standoff,stannic,stannous,stanza,staph,staple,star,starch,starchy,stardom,stare,starfish,stargaze,stark,starlet,starling,start,startle,startup,stash,state,stater,static,stator,statuary,statue,stature,status,statute,staunch,stave,stay,stayed,stead,steady,steak,stealth,stealthy,steam,steamy,stearate,stearic,steed,steel,steely,steep,steepen,steeple,steer,stein,stellar,stem,stencil,step,stepson,stepwise,stereo,sterile,sterling,stern,sternal,sternum,steroid,stew,steward,stick,stickle,stickpin,sticky,stifle,stigma,stigmata,stile,stiletto,still,stilt,stimuli,stimulus,sting,stingy,stint,stipend,stipple,stir,stirrup,stitch,stock,stockade,stocky,stodgy,stoic,stoke,stolid,stomach,stone,stony,stood,stoop,stop,stopband,stopgap,stopover,stoppage,storage,store,stork






















,storm,stormy,story,stout,stove,stow,stowage,stowaway,straddle,strafe,straggle,straight,strain,strait,strand,strange,strangle,strap,strata,strategy,stratify,stratum,straw,stray,streak,stream,street,strength,stress,stretch,strewn,striate,stricken,strict,stricter,stride,strident,strife,strike,string,stringy,stripe,stripy,strive,striven,strobe,strode,stroke,stroll,strong,strop,strophe,strove,struck,struggle,strum,strung,strut,stub,stubble,stubborn,stubby,stucco,stuck,student,studio,studious,study,stuff,stuffy,stultify,stumble,stump,stumpage,stun,stung,stunt,stupefy,sturdy,sturgeon,style,styli,stylish,stylites,stylus,stymie,styrene,suave,sub,subject,submit,subpoena,subsidy,subsist,subsume,subsumed,subtle,subtlety,subtly,suburb,suburbia,subvert,succeed,success,succinct,such,sucrose,sudden,sue,suffer,suffice,suffix,suffrage,suffuse,sugar,suggest,suit,suitcase,suite,suitor,sulfa,sulfate,sulfide,sulfite,sulfur,sulfuric,sulk,sulky,sullen,sully,sulphur,sultan,sultry,sum,sumac,summand,summary,summate,summit,summitry,summon,sun,sunbeam,sunburn,sunburnt,sunder,sundew,sundial,sundown,sundry,sunfish,sung,sunk,sunken,sunlight,sunlit,sunny,sunrise,sunset,sunshade,sunshine,sunspot,suntan,sup,super,superb,superbly,superior,supine,supplant,supple,supply,support,suppose,suppress,supreme,supremum,surcease,sure,surety,surf,surface,surfeit,surge,surgeon,surgery,surgical,surmise,surmount,surname,surpass,surplus,surprise,surreal,surrey,surround,surtax,surtout,survey,surveyor,survival,survive,survivor,sushi,suspect,suspend,suspense,sustain,suture,svelte,swab,swage,swain,swam,swamp,swan,swanlike,swap,swarm,swart,swarthy,swat,swatch,swathe,sway,sweat,sweater,sweaty,sweep,sweet,sweeten,sweetish,swell,swelt,swelter,swept,swerve,swift,swim,swimsuit,swindle,swing,swipe,swirl,swirly,swiss,switch,swivel,swizzle,swollen,swoop,sword,swore,sworn,swum,swung,sybarite,sycamore,syllabi,syllabic,syllable,syllabus,sylvan,symbol,symbolic,symmetry,sympathy,symphony,symposia,symptom,synapse,synapses,synaptic,syndrome,synergy,synonym,synonymy,synopses,synopsis,synoptic,syntax,syringa,syringe,syrinx,syrup,syrupy,system,systemic,tab,table,tablet,tabloid,tabular,tabulate,tachinid,tacit,tack,tackle,tacky,tact,tactful,tactic,tactile,tactual,tad,tadpole,taffeta,taffy,taft,tag,tagging,tail,tailgate,tailor,tailspin,tailwind,taint,take,taken,takeoff,takeover,taketh,talc,talcum,tale,talent,talisman,talk,tall,tallow,tally,talon,tamarack,tamarind,tame,tamp,tan,tanager,tandem,tangent,tangible,tangle,tango,tangy,tank,tannin,tansy,tantalum,tantrum,tap,tape,taper,tapestry,tar,tardy,target,tariff,tarnish,tarpaper,tarpon,tarry,tartar,task,tassel,taste,tasteful,tasting,tasty,tat,tate,tater,tattle,tattoo,taught,taunt,taut,tavern,taverna,tawdry,tawny,tax,taxation,taxi,taxicab,taxied,taxiway,taxonomy,taxpayer,tea,teacart,teach,teacup,teahouse,teakwood,teal,team,teammate,teamster,teamwork,teapot,tear,teardrop,tearful,tease,teasel,teaspoon,tectonic,tedious,tedium,tee,teeing,teem,teen,teenage,teeter,teeth,tektite,telegram,teleost,telethon,teletype,televise,tell,teller,telltale,temerity,temper,tempera,tempest,template,temple,tempo,temporal,tempt,ten,tenable,tenacity,tenant,tend,tendency,tendon,tenement,tenet,tenfold,tennis,tenon,tenor,tense,tensile,tension,tensor,tenspot,tent,tentacle,tenth,tenuous,tenure,tepee,tepid,terbium,tercel,term,terminal,termini,terminus,termite,tern,ternary,terrace,terrain,terrapin,terrible,terrier,terrific,terry,terse,tertiary,test,testate,testbed,testify,testy,tetanus,tete,tether,text,textbook,textile,textual,textural,texture,thallium,than,thank,thankful,that,thatch,thaw,the,theatric,thee,theft,their,theism,theist,them,thematic,theme,then,thence,theology,theorem,theorist,theory,therapy,there,thereat,thereby,therein,thereof,thereon,thereto,thermal,these,theses,thesis,they,thiamin,thick,thicken,thicket,thigh,thimble,thin,thine,thing,think,thinnish,third,thirst,thirsty,thirteen,thirty,this,thistle,thither,thong,thoriate,thorium,thorn,thorny,thorough,those,thou,though,thought






















,thousand,thrall,thread,three,thresh,threw,thrice,thrift,thrifty,thrill,thrive,throes,throne,throng,throttle,through,throw,thrown,thrum,thrush,thud,thulium,thumb,thump,thunder,thus,thwart,thy,thyme,thymine,thymus,thyroid,tibia,tick,ticket,tickle,ticklish,tidal,tidbit,tide,tideland,tidy,tie,tied,tier,tift,tiger,tight,tighten,tigress,til,tilde,tile,till,tilt,tilth,timber,timbre,time,timeworn,timid,tin,tinder,tine,tinfoil,tinge,tingle,tinker,tinkle,tinsel,tint,tintype,tiny,tip,tipoff,tippy,tiptoe,tirade,tire,tiresome,tissue,titanate,titanic,titanium,tithe,titian,title,to,toad,toady,toast,today,toe,toenail,toffee,tofu,together,togging,toggle,toil,toilsome,token,told,tolerant,tolerate,toll,tollgate,toluene,tomato,tomatoes,tome,tomorrow,ton,tonal,tone,tong,tonic,tonight,tonnage,tonsil,too,took,tool,toolkit,toolmake,toot,tooth,top,topaz,topcoat,topic,topmost,topnotch,topology,topple,topsoil,torch,tore,torn,tornado,toroid,toroidal,torpedo,torpid,torpor,torque,torrent,torrid,torsion,torso,tort,tortoise,toss,tot,total,tote,totem,totemic,touch,tough,tour,tousle,tout,tow,toward,towboat,towel,tower,town,townsman,townsmen,toxic,toxin,toy,trace,tracery,trachea,track,trackage,tract,tractor,trade,tradeoff,traffic,tragedy,tragic,trail,train,trainee,trainman,trainmen,traipse,trait,traitor,tram,trammel,trample,tramway,trance,tranquil,transact,transect,transept,transfer,transfix,transit,transmit,transom,travail,travel,traverse,travesty,trawl,tray,tread,treadle,treason,treasure,treasury,treat,treatise,treaty,treble,tree,treetop,trefoil,trek,trellis,tremble,tremor,trench,trend,trendy,trespass,tress,trestle,triad,trial,triangle,tribal,tribe,tribunal,tribune,tribute,trick,trickery,trickle,tricky,trident,tried,trifle,trig,trigonal,trigram,trill,trillion,trilogy,trim,trimer,trinity,trinket,trio,triode,trioxide,trip,tripe,triple,triplet,triplex,tripod,tripoli,triptych,tristate,trite,tritium,triton,triumph,triune,trivia,trivial,trivium,trod,trodden,troika,troll,trolley,trollop,trombone,trompe,troop,trophic,trophy,tropic,trot,trough,trounce,troupe,trouser,trout,troy,truancy,truant,truce,truck,trudge,truism,truly,trump,trumpery,trumpet,truncate,trundle,trunk,truss,trust,trustee,trustful,truth,truthful,try,trypsin,tsunami,tub,tuba,tube,tubular,tubule,tuck,tuff,tuft,tug,tugging,tuition,tulip,tulle,tumble,tumbrel,tumult,tuna,tundra,tune,tuneful,tungsten,tunic,tunnel,tupelo,tuple,turban,turbid,turbine,turbofan,turbojet,turf,turgid,turk,turkey,turmoil,turn,turnery,turnip,turnkey,turnoff,turnout,turnpike,turret,turtle,turvy,tusk,tussle,tutelage,tutor,tutorial,tutu,tuxedo,twain,tweak,tweed,tweedy,tweeze,twelfth,twelve,twenty,twice,twiddle,twig,twigging,twilight,twill,twin,twine,twinge,twinkle,twirl,twirly,twist,twisty,twitch,twitchy,two,twofold,twosome,tycoon,tying,type,typeface,typeset,typhoid,typhoon,typhus,typic,typify,typo,typology,tyrannic,tyranny,tyrosine,ubiquity,ulterior,ultimate,ultra,umber,umbra,umbrage,umbrella,umlaut,umpire,unary,unbidden,uncle,unction,under,undulate,uniaxial,unicorn,uniform,unify,unimodal,union,uniplex,unipolar,unique,unison,unitary,unite,unity,universe,until,unwieldy,up,upbeat,upbraid,upbring,upcome,update,updraft,upend,upgrade,upheaval,upheld,uphill,uphold,upkeep,upland,uplift,upon,upper,uppercut,upraise,upright,uprise,upriver,uproar,uproot,upset,upshot,upside,upsilon,upslope,upstair,upstand,upstart,upstate,upstater,upstream,upsurge,upswing,uptake,uptown,uptrend,upturn,upward,upwind,uranium,urban,urbane,urbanite,urchin,urge,urgency,urgent,urging,us,usable,usage,use,useful,usher,usual,usurer,usurious,usurp,usury,utensil,utility,utmost,utopia,utopian,utter,vacant,vacate,vaccine,vacua,vacuo,vacuole,vacuous,vacuum,vade,vagabond,vagary,vagrant,vague,vain,vale,valent,valet,valeur,valiant,valid,validate,valine,valley,valuate,value,valve,vamp,vampire,van,vanadium,vandal,vane,vanguard,vanilla,vanish,vanity,vanquish,vantage,vapid,vaporous,variable,variac,variant,variate,variety,various,varistor,varnish,varsity,vary,vascular,vase,vassal,vast,v






















at,vault,vaunt,veal,vector,vee,veer,veery,vegetate,vehicle,veil,vein,velar,veldt,vellum,velocity,velours,velvet,velvety,venal,vend,vendetta,vendible,vendor,veneer,venerate,venial,venous,vent,venture,venturi,veracity,veranda,verandah,verb,verbal,verbatim,verbena,verbiage,verbose,verdant,verdict,verge,veridic,verify,verity,vermeil,vermin,vermouth,vernal,vernier,versa,versatec,verse,version,versus,vertebra,vertex,vertical,vertices,vertigo,verve,very,vesper,vessel,vest,vestal,vestige,vestry,vet,vetch,veteran,veto,via,viaduct,vial,vibrant,vibrate,vibrato,viburnum,vicar,viceroy,vicinal,vicinity,vicious,victor,victory,victrola,victual,vide,video,vie,view,vigil,vigilant,vignette,vigorous,villa,village,villain,villein,vine,vinegar,vineyard,vintage,vintner,vinyl,viola,violate,violent,violet,violin,virgule,virtual,virtue,virtuosi,virtuoso,virtuous,virulent,virus,vis,visa,visage,viscount,viscous,vise,visible,vision,visit,visitor,visor,vista,visual,vita,vitae,vital,vitamin,vitiate,vitreous,vitrify,vitriol,vitro,viva,vivace,vivacity,vivid,vivify,vivo,vixen,viz,vocable,vocal,vocalic,vocate,vogue,voice,void,volatile,volcanic,volcano,volition,volley,volt,voltage,voltaic,voluble,volume,voracity,vortex,vortices,votary,vote,votive,vouch,vow,vowel,voyage,vulgar,vulpi,vulture,vying,wacky,wad,waddle,wade,wafer,waffle,wag,wage,wagging,waggle,wagoneer,wail,waist,wait,waitress,waive,wake,wakeful,waken,wakeup,wale,walk,walkout,walkover,walkway,wall,wallaby,wallet,wallop,wallow,wally,walnut,walrus,waltz,waltzing,wan,wand,wander,wane,wangle,want,wanton,wapato,wapiti,war,warble,ward,warden,wardrobe,wardroom,ware,warm,warmth,warmup,warn,warp,warplane,warrant,warranty,warren,warrior,wary,was,wash,washbowl,washout,washy,wasp,waspish,wast,wastage,wasteful,wastrel,watch,watchdog,watchful,watchman,watchmen,water,waterway,watery,watt,wattage,wattle,wave,waveform,wavelet,wavy,wax,waxen,waxwork,waxy,way,waybill,waylaid,waylay,wayside,wayward,we,weak,weaken,weal,wealth,wealthy,wean,wear,wearied,weary,weasel,weather,weave,web,weber,wed,wedge,wedlock,wee,weed,weedy,week,weekday,weekend,weep,weigh,weight,weighty,weir,weird,welcome,weld,welfare,well,welsh,welt,went,wept,were,wert,west,westerly,western,westward,wet,wetland,whale,wharf,wharves,what,whatever,whatnot,wheat,wheedle,wheel,wheeze,wheezy,whelk,whelm,when,whence,whenever,where,whereas,whereby,wherein,whereof,whereon,wherever,whet,whether,which,whiff,whig,while,whim,whimper,whimsey,whimsic,whiplash,whipsaw,whir,whirl,whish,whisk,whisper,whistle,whit,white,whiten,whither,whittle,who,whoever,whole,wholly,whom,whomever,whose,why,wick,wicket,wide,widen,widgeon,widget,widow,width,wield,wig,wigging,wiggle,wild,wildcat,wildfire,wildlife,wile,wilful,will,willful,willow,willowy,wilt,wily,win,wince,wind,windbag,windfall,windmill,window,windsurf,windup,windward,windy,wing,wingback,wingman,wingmen,wingspan,wingtip,wink,winkle,winnow,winsome,winter,wintry,winy,wipe,wire,wireman,wiremen,wiretap,wiry,wisdom,wise,wish,wishbone,wishful,wisp,wispy,wistful,wit,with,withal,withdraw,withdrew,withe,wither,withheld,withhold,within,without,withy,witness,witty,wizard,wobble,woe,woeful,wok,woke,wold,wolf,wolfish,wolves,woman,wombat,women,won,wonder,wondrous,wont,woo,wood,woodcut,wooden,woodhen,woodland,woodlot,woodpeck,woodrow,woodruff,woodshed,woodside,woodward,woodwind,woodwork,wool,word,wordy,wore,work,workaday,workbook,workday,workload,workman,workmen,workout,workshop,world,worm,worn,worth,worthy,would,wound,wove,woven,wow,wrack,wraith,wrangle,wrap,wrapup,wrath,wrathful,wreak,wreath,wreathe,wreck,wreckage,wrench,wrest,wrestle,wretch,wriggle,wright,wring,wrinkle,wrist,writ,write,writeup,writhe,written,wrote,wrought,wry,xenon,xylem,xylene,yacht,yak,yam,yap,yapping,yard,yardage,yarmulke,yarn,yarrow,yawn,yea,yeah,year,yearbook,yearn,yeast,yell,yellow,yelp,yen,yeoman,yeomanry,yet,yield,yip,yipping,yodel,yoga,yoghurt,yogi,yogurt,yoke,yolk,yon,yond,yore,you,young,youngish,your,yourself,youth,youthful,yule,zag,zagging,zap,zazen,zeal,zealot,ze






















alous,zebra,zenith,zero,zeroes,zeroth,zest';

-- 2012/06/04 - updated words lists to remove long words  
/*WORDS1 CONSTANT VARCHAR2(32726) := 'aback,abacus,abalone,abate,abater,abbey,abbot,abdicate,aberrant,abet,abetted,abetting,abeyance,abeyant,abide,abject,able,ablution,abnormal,aboard,abode,abolish,aborning,abound,about,above,abrasion,abrasive,abridge,abroad,abrogate,abrupt,abscissa,absence,absent,absentee,absentia,absolute,absolve,absorb,abstain,abstract,abstruse,abundant,abysmal,abyss,academe,academia,academic,academy,accede,accent,accept,acceptor,access,accident,acclaim,accolade,accord,accost,account,accredit,accrual,accrue,accuracy,accurate,accustom,ace,acerbic,acerbity,acetate,acetic,acetone,ache,achieve,aching,acidic,acme,acorn,acoustic,acquaint,acquire,acquit,acre,acreage,acrimony,acrobat,acronym,across,acrylic,act,activate,activation,activism,actor,actress,actual,actuarial,actuate,acuity,acumen,acute,acyclic,ad,adage,adagio,adamant,adapt,adaptation,adaptive,add,added,addend,addenda,addendum,addition,additional,additive,address,addressee,adduce,adenine,adenoma,adenosine,adept,adequacy,adequate,adhere,adherent,adhesion,adhesive,adiabatic,adjacent,adject,adjectival,adjective,adjoin,adjoint,adjourn,adjudge,adjudicate,adjunct,adjust,adjutant,administer,administrable,administrate,admiral,admiralty,admiration,admire,admissible,admission,admit,admittance,admitted,admitting,admonish,admonition,ado,adobe,adolescent,adopt,adoption,adoptive,adore,adorn,adrenal,adrenaline,adrift,adroit,adsorb,adulate,advance,advent,adverb,adverse,advert,advice,advise,advisee,advisor,advisory,advocacy,advocate,aegis,aeolian,aerate,aerial,aerobic,aerosol,aesthete,afar,affable,affect,afferent,affine,affinity,affirm,affix,afflict,afford,affront,afield,afire,aflame,afloat,afoot,afraid,afresh,aft,again,against,agate,age,agenda,agent,aggrieve,agile,aging,agitate,ago,agone,agony,agrarian,agree,agreed,agreeing,agrimony,ague,ahead,aide,ail,aileron,aim,air,airborne,aircraft,airdrop,airedale,airfare,airfield,airflow,airfoil,airframe,airlift,airline,airlock,airmail,airman,airmass,airmen,airpark,airplane,airport,airspace,airspeed,airstrip,airtight,airway,airy,aisle,ajar,akin,alacrity,alarm,alb,albacore,albeit,album,albumin,alchemy,alcove,aldehyde,aleph,alert,alfalfa,alfresco,alga,algae,algal,alias,align,alike,aliquot,alive,alkali,alkaline,alkaloid,alkane,alkene,all,allege,allegory,allegro,allele,allemand,allergic,allergy,alley,alleyway,alliance,allied,allocate,allot,allotted,allow,alloy,allspice,allude,allure,allusion,allusive,alluvial,alluvium,ally,allyl,almanac,almond,almost,aloe,aloft,aloha,alone,along,aloof,aloud,alp,alpha,alphabet,alpine,already,also,alterate,although,altitude,alto,altruism,altruist,alum,alumna,alumnae,alumni,alumnus,always,alyssum,am,amalgam,amass,amateur,amaze,amber,ambiance,ambient,ambition,amble,ambling,ambrosia,ambulant,ambulate,amend,amethyst,amicable,amid,amide,amidst,amino,amiss,amity,ammeter,ammonia,ammonium,amnesia,amoeba,amoebae,among,amongst,amount,amp,amperage,ampere,ample,amplify,amply,amulet,amuse,an,anaconda,anaglyph,anagram,analogue,analogy,analyses,analysis,analyst,analytic,anatomic,anatomy,ancestor,ancestry,anchor,anchovy,ancient,and,anecdote,anemone,anew,angel,angelic,angle,angling,angstrom,angular,aniline,animal,animate,anion,anionic,anise,ankle,annex,annotate,announce,annoy,annoyance,annual,annuity,annunciate,anode,anodic,anomalous,anomaly,anonymity,anonymous,another,answer,ant,antacid,antagonism,antagonist,antagonistic,antarctic,anteater,antebellum,antecedent,antedate,antelope,antenna,antennae,anterior,anteroom,anthem,anther,anthology,anthropogenic,anthropology,anthropomorphic,anthropomorphism,antic,anticipate,anticipatory,antigen,antimony,antipasto,antipathy,antiperspirant,antipode,antipodean,antipodes,antiquarian,antiquary,antiquated,antique,antiquity,antithetic,antler,antonym,anvil,anxiety,anxious,any,anybody,anyhow,anyone,anyplace,anything,anyway,anywhere,aorta,apace,apart,ape,aperiodic,aperture,apex,aphid,aphorism,apiece,aplomb,apocalypse,apocalyptic,apocryphal,apogee,apologetic,apologia,apology,apostle,apostolic





















,a

postrophe,apothecary,apothegm,apotheosis,appall,appanage,apparatus,apparel,apparent,apparition,appeal,appear,appease,append,appendix,appetite,applaud,applause,apple,applied,applique,apply,appoint,apposite,appraise,apprise,approach,approval,approve,apricot,apron,apropos,apt,aptitude,aqua,aquarium,aquatic,aqueduct,aqueous,arachnid,arbiter,arboreal,arc,arcade,arcane,arch,archaic,archaism,archery,arching,arcing,arctic,ardency,ardent,arduous,are,area,areaway,arena,argon,argue,argument,arid,arise,arisen,ark,arm,armada,armament,armature,armchair,armful,armload,armoire,army,aroma,aromatic,arose,around,arpeggio,arraign,arrange,array,arrival,arrive,arrogant,arrogate,arrow,arroyo,art,arterial,artery,artful,article,artifact,artifice,artisan,artistry,artwork,as,ascend,ascent,ascribe,aseptic,ash,ashame,ashamed,ashen,ashore,aside,ask,askance,askew,asleep,aspect,aspen,asperity,aspirate,aspire,aspirin,assemble,assent,assert,assessor,asset,assign,assist,assume,assure,asteria,asterisk,asteroid,asthma,astonish,astound,astral,astride,astute,asunder,at,atavism,ate,athle,athletic,athwart,atlantic,atlas,atom,atomic,atonal,atone,atop,atrium,atrophic,atrophy,attach,attache,attain,attempt,attend,attendee,attest,attic,attire,attitude,attorney,attract,attune,auburn,auction,audacity,audible,audience,audio,audit,audition,auditor,auditory,auger,augment,august,auk,aunt,auntie,aura,aural,auric,aurochs,aurora,auspices,austere,author,auto,autocrat,automate,autonomy,autumn,autumnal,avail,avarice,avenue,aver,average,averred,averring,averse,aviary,aviate,avid,avionic,avocado,await,awake,awaken,award,aware,awash,away,awe,awesome,awhile,awkward,awl,awn,awoke,awry,ax,axe,axes,axial,axiology,axiom,axis,axle,axon,azalea,azimuth,azimuthal,azure,babble,baboon,baby,babyhood,babysat,babysit,babysitter,babysitting,baccalaureate,bacilli,bacillus,back,backboard,backbone,backdrop,backfill,backgammon,background,backhand,backlash,backorder,backpack,backplane,backstage,backstitch,backstop,backtrack,backup,backward,backwood,backyard,bacon,bacteria,bacterial,bacterium,bade,badge,badinage,badland,badminton,baffle,bag,bagatelle,bagel,baggage,bagpipe,bait,bake,bakery,balance,balcony,bald,baldy,bale,baleen,baleful,balk,balky,ball,ballad,ballast,ballerina,ballet,balletic,ballfield,balloon,ballot,ballroom,balm,balmy,balsa,balsam,balustrade,bamboo,ban,banal,banana,band,bandage,bandgap,bandit,bandpass,bandstand,bandstop,bandwagon,bandwidth,bandy,bane,baneberry,baneful,bangle,banish,banister,banjo,bank,bankrupt,banquet,bantam,banter,barb,barbaric,barbecue,barbell,barber,barberry,bard,barefoot,bargain,barge,baritone,barium,bark,barley,barn,barnacle,barnyard,baron,baroness,baronet,baronial,barony,baroque,barrack,barrage,barre,barrel,barren,barrette,barrier,barrow,barter,basal,basalt,base,baseball,baseband,baseline,baseman,basemen,bash,bashaw,bashful,basic,basil,basilar,basilisk,basin,basis,bask,basket,bass,bassi,bassinet,basso,basswood,baste,bastion,bat,batch,bate,bateau,bath,bathe,bathos,bathrobe,bathroom,bathtub,batik,baton,batt,batten,battery,battle,batwing,bauble,baud,bauxite,bawl,bay,bayed,bayonet,bayou,bazaar,be,beach,beacon,bead,beadle,beady,beak,beam,bean,bear,beard,bearish,beatific,beatify,beautify,beauty,becalm,became,because,beck,becket,beckon,becloud,become,bed,bedazzle,bedbug,bedevil,bedfast,bedim,bedimmed,bedlam,bedpost,bedrock,bedroom,bedside,bedstraw,bedtime,bee,beebread,beech,beef,beehive,been,beep,beet,beetle,befall,befallen,befell,befit,befog,before,befuddle,beg,began,beggar,beggary,begging,begin,beginner,begonia,begotten,begrudge,beguile,begun,behalf,behave,beheld,behest,behind,behold,beige,being,bel,belate,belfry,belie,belief,belies,believe,bell,bellboy,belle,bellhop,bellman,bellmen,bellow,bellum,belly,belong,belove,below,belt,belying,bemadden,beman,bemoan,bemuse,bench,bend,beneath,benefice,benefit,benight,benign,bent,benzene,bequeath,bequest,beret,berg,bergamot,beribbon,beriberi,berne,berry,berth,beryl,beseech,beset,beside,besiege,besmirch,besotte,d,bespeak,bespoke,best,b























estir,bestow,bestowal,bet,beta,betatron,betroth,bettor,between,betwixt,bevel,beverage,bevy,bewail,beware,bewilder,bey,beyond,bias,biaxial,bib,bicep,biceps,bicker,bicycle,bid,biddable,bidden,bide,biennial,biennium,bifocal,big,bike,bilayer,bilinear,bilk,bill,billet,billfold,billiard,billion,billow,bimodal,bin,binary,binaural,bind,bindery,bindle,binomial,biopsy,biota,biotic,biotite,biplane,bipolar,birch,bird,birdbath,birdie,birdlike,birdseed,birth,birthday,biscuit,bisect,bishop,bismuth,bison,bisque,bistable,bistate,bit,bite,bitten,bitumen,bitwise,bivalve,bivouac,biz,bizarre,blab,blacken,blackout,blanch,bland,blandish,blank,blanket,blare,blast,blastula,blazon,bleach,bleak,bleary,bleat,blemish,blend,blight,blimp,blind,blink,blip,bliss,blissful,blister,blithe,blitz,blizzard,block,blockade,blockage,blond,blonde,bloom,blossom,blot,blouse,blue,blueback,blueberry,bluebill,bluebird,bluebonnet,bluebush,bluefish,bluegill,bluet,bluff,bluish,blunder,blunt,blur,blurb,blurry,blurt,blush,bluster,blustery,boa,boar,board,boardinghouse,boast,boastful,boat,boathouse,boatload,boatman,boatmen,boatswain,boatyard,bobcat,body,bodybuild,bodybuilder,bodybuilding,bodyguard,bog,bogey,boggle,boil,boisterous,bold,boldface,bolometer,bolster,bolt,bombard,bombast,bon,bona,bonanza,bond,bondsman,bondsmen,bone,bonfire,bongo,bonnet,bonus,book,bookbind,bookcase,bookend,bookish,bookkeep,booklet,boorish,boost,boot,booth,bop,borate,borax,border,born,borne,borough,borrow,boson,bosonic,boss,botanic,botanist,botany,botfly,both,bottle,bouffant,bough,bought,boulder,boule,bounce,bound,boundary,bounty,bouquet,bourn,bout,boutique,bovine,bow,bowfin,bowie,bowl,bowline,bowman,bowmen,box,boxcar,boxwood,boxy,boy,boyar,boycott,boyhood,brace,bracelet,bracken,bracket,brackish,bract,brad,brae,brag,bragging,braid,brain,brainy,brake,brakeman,bramble,bran,branch,brand,brandish,brant,brash,brass,brassy,bravado,brave,bravery,bravo,bravura,brawl,bray,brazier,breach,bread,breadth,break,breakage,breakoff,breakup,bream,breath,breathe,breathy,breccia,breech,breed,breeze,breezy,brethren,breve,brevet,brevity,briar,brick,brickbat,bricklay,bridal,bride,bridge,bridle,brief,brig,brigade,bright,brighten,brim,brimful,brindle,brine,bring,brink,briny,brisk,bristle,brittle,broach,broaden,brocade,broccoli,brochure,brockle,broil,broke,broken,bromide,bromine,bronchi,bronchus,bronco,bronze,bronzy,brood,broody,brook,broom,broth,brother,brought,brouhaha,brow,brown,brownie,brownish,browse,bruise,bruit,brunch,brunette,brunt,brush,brushy,brusque,bryozoa,bubble,bucket,buckeye,buckle,buddy,budge,budget,buffalo,buffet,bug,bugging,buggy,bugle,build,buildup,built,builtin,bulb,bulblet,bulge,bulk,bulkhead,bulky,bulldog,bulldoze,bullet,bulletin,bullfrog,bullseye,bulrush,bulwark,bumble,bump,bun,bunch,bundle,bungalow,bungle,bunk,bunny,bunt,buoy,buoyant,burbank,burdock,bureau,buret,burette,burgeon,burgess,burgher,burglar,burl,burlap,burley,burly,burn,burnish,burnt,burro,burrow,burst,bursty,bury,bus,busboy,buses,bushel,business,bustle,busy,but,butane,butler,buttery,button,buy,buyer,buzz,buzzer,buzzing,buzzsaw,buzzword,buzzy,by,bye,bygone,bylaw,byline,bypass,bypath,byroad,byway,byword';

 

WORDS2 CONSTANT VARCHAR2(32726) := 'cab,cabana,cabaret,cabbage,cabin,cabinet,cable,cacao,cachalot,cache,cackle,cacti,cactus,caddy,cadent,cadenza,cadet,cadmium,cadre,cafe,cage,cagey,cajole,cake,calamity,calamus,calcify,calcine,calcite,calcium,calculi,calculus,caldera,calendar,calf,calfskin,caliber,calibre,calico,caliper,caliph,call,caller,calliope,callous,callus,calm,caloric,calorie,calumny,calve,calypso,camber,cambric,camel,camellia,cameo,camera,camilla,camp,campaign,campfire,campion,campsite,campus,can,canal,canary,candela,candid,candle,candy,cane,canine,canister,cannel,cannery,cannibal,cannon,canny,canoe,canon,canopy,canst,cant,canteen,canticle,cantle,canto,canton,cantor,canvas,canvass,canyon,cap,capacity,cape,capella,caper,capita,capital,capitol,capo,caprice,capsize,capstan,capstone,capsule,captain,caption,captious,captive,captor,capture,capybara,car,carabao,caramel,caravan,caraway,carbide,carbine,carbon,carbonic,carbonyl,carboxy,card,cardamom,cardiac,cardinal,cardiod,cardioid,care,careen,career,carefree,careful,caret,careworn,carfare,cargo,cargoes,caribou,carload,carne,carney,carnival,carob,carol,carouse,carp,carpet,carport,carrel,carriage,carrot,carry,cart,carte,carton,cartoon,carve,carven,caryatid,cascade,cascara,case,casebook,casein,casework,cash,cashew,cashier,cashmere,cask,cassette,cassock,cast,castanet,caste,casteth,castle,castor,casual,casualty,cat,catalpa,catalyst,catapult,cataract,catawba,catbird,catch,catchup,catchy,category,catenate,cater,catfish,cathedra,cathode,cation,cationic,catkin,catlike,catnip,catsup,cattail,cattle,caucus,caught,cauldron,caulk,causal,causate,cause,caustic,caution,cautious,cavalier,cavalry,cave,caveat,caveman,cavemen,cavern,caviar,cavil,cavitate,cavort,caw,cayenne,cease,cedar,cede,cedilla,ceil,celerity,celery,celesta,cell,cellar,cellular,cement,cemetery,censor,censure,census,cent,centaur,central,centric,centrist,centroid,centum,century,ceramic,ceramium,cereal,cerebral,ceremony,cereus,cerise,cerium,certain,certify,cesium,cession,chagrin,chain,chair,chairman,chairmen,chaise,chalet,chalice,chalk,chalky,chamber,chamfer,chamois,champ,champion,chance,chancel,chancery,chancy,chandler,change,channel,chanson,chant,chantey,chantry,chap,chapel,chaperon,chaplain,chapter,charcoal,chard,charge,chariot,charisma,charity,charm,chart,chase,chasm,chassis,chaste,chastise,chat,chateau,chaw,cheap,check,checkout,checksum,checkup,cheek,cheer,cheerful,cheery,cheese,cheesy,cheetah,chef,chelate,chemic,chemise,chemist,chenille,cherish,cherry,chert,cherub,cherubim,chess,chest,chestnut,chevron,chevy,chew,chicken,chicory,chide,chief,chiefdom,chiffon,child,childish,children,chili,chill,chilly,chime,chimera,chimeric,chimney,chin,chinch,chine,chip,chipmunk,chirp,chisel,chiton,chivalry,chive,chlorate,chloride,chlorine,chock,choice,choir,cholera,choose,choosy,chop,choppy,choral,chorale,chord,chordal,chordata,chordate,chore,chorine,chortle,chorus,chose,chosen,chow,chowder,chromate,chrome,chromic,chromium,chronic,chuckle,chuff,chunk,churn,chute,chutney,cicada,cider,cilia,ciliate,cinch,cinder,cinema,cinnabar,cinnamon,cipher,circa,circle,circlet,circuit,circular,circus,cistern,citadel,citation,cite,citizen,citrate,citric,citron,citrus,city,citywide,civet,civic,civil,civilian,clad,claim,claimant,clam,clamber,clammy,clamp,clan,claret,clarify,clarinet,clarity,clash,clasp,class,classic,classify,classy,clatter,clattery,clause,claw,clay,clean,cleanse,cleanup,clear,cleat,cleft,clement,clench,cleric,clerk,clever,cliche,click,client,cliff,climate,climatic,climb,clime,clinch,cling,clinging,clinic,clink,clip,clique,cloak,clock,clog,clogging,clone,clonic,close,closet,closeup,closure,clot,cloth,clothe,clothier,cloture,cloud,cloudy,clout,clove,cloven,clown,cloy,club,clubroom,cluck,clue,clump,clumsy,clung,cluster,clutch,clutter,coach,coachman,coachmen,coal,coalesce,coarse,coarsen,coast,coastal,coat,coattail,coauthor,coax,coaxial,cobalt,cobble,cobra,cobweb,cockpit,cocoa,coconut,cocoon,cod,coda,code,codeword,codfish,codicil,codify,codomain,coed,























coeditor,coequal,coerce,coercion,coercive,coexist,cofactor,coffee,coffer,cog,cogent,cogitate,cognate,cohere,coherent,cohesion,cohesive,cohort,cohosh,coiffure,coil,coin,coinage,coincide,colander,cold,coleus,coliform,coliseum,collage,collagen,collapse,collar,collard,collate,collect,college,collet,collide,collie,colloquy,collude,colonel,colonial,colonist,colony,colorate,colossal,colossi,colossus,colt,coltish,column,columnar,colza,comb,combine,comeback,comedian,comedy,comet,cometary,comfort,comic,comma,command,commend,comment,commerce,commit,common,commute,compact,company,compare,compass,compel,compete,compile,complain,compleat,complete,complex,compline,comply,comport,compose,compote,compound,compress,comprise,compute,comrade,concave,conceal,concede,conceit,concept,concern,concert,concerti,concerto,conch,concise,conclave,conclude,concoct,concord,concrete,concur,condemn,condense,condone,conduce,conduct,conduit,cone,confect,confer,conferee,confess,confide,confine,confirm,confocal,conform,confound,confrere,confront,confute,congeal,congener,congest,congress,conic,conifer,conjunct,conjure,connect,connive,connote,conquer,conquest,consent,conserve,consider,consign,consist,console,conspire,constant,construe,consul,consular,consult,consume,contact,contain,contend,content,context,continua,continue,continuo,contort,contour,contract,contrary,contrast,contribu,contrite,contrive,control,convect,convene,convent,converge,converse,convert,convex,convey,conveyor,convict,convince,convoke,convolve,convoy,convulse,cook,cookbook,cookery,cookie,coolant,coop,coot,cop,cope,copious,coplanar,copperas,coppery,copra,coprinus,copy,copybook,coquette,coquina,coral,corbel,cord,cordage,cordial,cordite,cordon,corduroy,core,cork,corn,cornea,cornet,cornish,cornmeal,corny,corona,coronary,coronate,coroner,coronet,corpora,corporal,corps,corpsman,corpsmen,corpus,corral,correct,corridor,corrode,corsage,cortege,cortex,cortical,corundum,corvette,cosmetic,cosmic,cosmos,cost,costume,cosy,cot,cotman,cotta,cottage,cotton,couch,cougar,cough,could,coulomb,council,counsel,count,country,county,coup,coupe,couple,coupon,courage,courier,course,court,courtesy,courtier,couscous,cousin,covalent,covary,cove,covenant,cover,coverage,coverall,coverlet,cowbell,cowbird,cowboy,cowgirl,cowhand,cowherd,cowhide,cowl,coworker,cowpox,coy,coyote,cozy,crab,crabmeat,cradle,craft,crafty,cramp,crane,crania,cranium,cranny,crass,crate,crater,cravat,crave,craw,crawl,crayfish,crayon,craze,crazy,creak,creaky,crease,create,creating,creature,creche,credent,credenza,credible,credit,creditor,credo,creed,creedal,creek,creosote,crepe,crept,crescent,cress,crest,crevice,crew,crewcut,crewel,crewman,crewmen,crib,cricket,cried,crime,crimson,crinkle,crisp,criss,criteria,critic,critique,critter,croak,crochet,croft,crone,crony,crook,croon,crop,croquet,cross,crossarm,crossbar,crossbow,crosscut,crossway,crouch,crow,crowd,crowfoot,crown,crucial,crucible,cruise,crumb,crumble,crumple,crunch,crupper,crusade,crush,crust,cry,cryptic,crystal,cub,cube,cubic,cuckoo,cucumber,cud,cuddle,cuddly,cudgel,cue,cuff,cufflink,cuisine,culinary,cull,culpable,culprit,cultural,culture,culvert,cumin,cumulate,cumulus,cunning,cup,cupboard,cupful,cupidity,cupric,cuprous,cur,curate,curb,curbside,curd,curdle,cure,curfew,curia,curie,curio,curious,curium,curl,curlew,curlicue,currant,current,curry,cursive,cursor,cursory,curt,curtail,curtain,curtsey,curve,cushion,cusp,custody,custom,cut,cutback,cute,cutesy,cutlass,cutler,cutlet,cut,cutout,cutover,cutset,cutworm,cycad,cycle,cyclic,cyclist,cyclone,cylinder,cynic,cypress,cyst,cysteine,cytology,dab,dabble,dactyl,dactylic,dad,daddy,daffodil,daffy,dagger,dahlia,dainty,dairy,dairyman,dairymen,daisy,dale,dally,damp,dampen,dance,dandy,dapper,dapple,dare,dark,darken,darkle,darling,dart,dash,data,database,date,dateline,dater,datum,daub,daughter,daunt,dauphin,dauphine,davit,dawn,day,daybreak,daydream,daylight,daytime,daze,dazzle,deadline,deadlock,deal,dealt,dean,dear,dearie,dearth,debar,debate,debater,debility,debit,de























bonair,debrief,debris,debt,debtor,debug,debugged,debunk,debut,decade,decadent,decal,decant,decay,decedent,deceit,decent,decibel,decide,decile,decimal,decipher,decision,decisive,deck,declaim,declare,decline,decode,decor,decorate,decorous,decorum,decouple,decoy,decrease,decree,decry,dedicate,deduce,deed,deem,deep,deepen,deer,deerskin,deface,default,defeat,defector,defend,defer,deferent,deferred,define,definite,deflect,deforest,deft,degree,delay,delegate,delicacy,delicate,delight,delimit,delirium,deliver,delivery,dell,delphine,delta,deltoid,delude,deluge,delusion,delusive,deluxe,delve,demand,demark,demitted,demo,den,denature,dendrite,denizen,denote,dense,dent,dental,denture,depart,depend,depict,deplete,deploy,depose,deposit,depot,depth,depute,deputy,derby,derivate,derive,dervish,descant,descend,descent,describe,desert,deserve,design,desist,desk,despite,dessert,destine,destiny,detach,detail,detain,detect,detector,deter,detour,deuce,develop,device,devote,devotee,devotion,dew,dewar,dewdrop,dextrose,dextrous,diadem,diagnose,diagonal,diagram,dial,dialect,dialogue,diameter,diamond,diary,diatom,diatomic,diatonic,dice,did,didactic,diesel,diet,dietary,dietetic,differ,diffract,diffuse,dig,digest,digging,digit,digital,dignify,dignity,digram,digress,dihedral,dilemma,diligent,dill,diluent,dilute,dilution,dim,dime,dimethyl,diminish,dimple,dine,dinosaur,diode,diopter,diorama,diorite,dioxide,dip,diploid,diploidy,diplo,diplomat,direct,director,disburse,disc,discern,disco,discreet,discrete,discus,discuss,dish,dishes,dishevel,disjunct,disk,dispel,dispense,disperse,dissuade,distaff,distal,distant,distinct,district,dither,ditto,dive,diverge,diverse,divert,divest,divide,dividend,division,divisor,divulge,do,doberman,dock,docket,dockside,dockyard,doctor,doctoral,doctrine,document,dodge,doe,dog,doghouse,dogwood,doldrum,doldrums,dole,doleful,doll,dollar,dollop,dolly,dolomite,dolphin,domain,dome,domestic,domicile,domino,donate,done,door,doorbell,doorkeep,doorknob,doorman,doormen,doorstep,doorway,dormant,dossier,dot,dote,double,doublet,doubt,doubtful,dough,doughnut,dour,douse,dove,dovetail,dowel,down,downplay,downpour,downtown,downward,downwind,dowry,doze,dozen,drab,draft,drag,dragging,dragnet,dragon,dragoon,drain,drainage,drake,dram,drama,dramatic,drape,drapery,drastic,draw,drawback,drawl,drawn,dream,dreamt,dreamy,dredge,dreg,drench,dress,dressy,drew,drib,dried,drier,drift,drill,drink,drive,driven,driveway,drizzle,drizzly,droll,drone,drop,droplet,dross,drought,drove,drowse,drowsy,drub,druid,drum,drumhead,drumlin,dry,dryad,dual,dualism,dub,ducat,duchess,duck,duckling,duct,ductile,ductwork,dud,due,duel,duet,duff,duffel,dug,dugout,duke,dukedom,dulcet,dull,dully,dulse,duly,dune,dunk,duopoly,duplex,durable,durance,duration,during,dusk,dust,dustbin,dusty,dutchess,dutiable,dutiful,duty,dwindle,dyad,dyadic,dye,dyeing,dyer,dynamic,dynamism,dynasty,each,eager,eagle,ear,eardrum,earl,earmark,earn,earnest,earphone,earring,earth,earthy,ease,easel,east,eastern,eastward,easy,eave,ebb,ebony,echelon,echo,echoes,eclectic,eclipse,ecliptic,eclogue,ecology,economic,economy,ectoderm,ectopic,ecumenic,eddy,edge,edgewise,edging,edgy,edict,edifice,edify,edit,edition,editor,educable,educate,eel,eerie,eerily,efface,effect,efferent,efficacy,effort,effusion,effusive,egg,eggplant,eggshell,egress,egret,eider,eidetic,eight,eighteen,eighth,eighty,either,elapse,elastic,elate,elbow,elder,eldest,elect,elector,electret,electric,electro,electron,elegant,elegiac,elegy,element,elephant,elevate,eleven,eleventh,elfin,elicit,elide,eligible,elision,elite,elk,ellipse,ellipsis,elliptic,elm,eloquent,else,eluate,elute,elution,elves,elysian,emaciate,emanate,embank,embargo,embark,embassy,ember,embezzle,emblazon,emblem,embody,embolden,emboss,embower,embrace,emcee,emerald,emerge,emergent,emeriti,emeritus,emigrant,emigrate,eminent,emirate,emissary,emotion,empathy,emperor,emphases,emphasis,emphatic,empire,empiric,emplace,employ,employed,employee,employer,emporium,empower,empress,empty,emulate,emulsify,emulsion,























enable,enamel,enclave,encomia,encomium,encore,encroach,end,endemic,endgame,endoderm,endogamy,endorse,endow,endpoint,endure,energy,enervate,enfant,engage,engine,engineer,enhance,enigma,enliven,enol,enough,enquire,enquiry,enrollee,ensconce,ensemble,entendre,enter,enthalpy,enthrall,entice,entire,entirety,entity,entrant,entropy,entry,envelop,envelope,enviable,environ,envoy,enzyme,epic,epicure,epicycle,epidemic,epigram,epigraph,epilogue,episode,episodic,epistle,epitaph,epithet,epitome,epoch,epochal,epoxy,epsilon,equable,equal,equate,equine,equinox,equip,equipped,equity,era,erasable,erase,erasure,erg,ergative,ergodic,erode,erodible,erosible,erosion,erosive,errand,errant,errantry,ersatz,erudite,erupt,eruption,escalate,escapade,escape,escapee,escheat,eschew,escort,escrow,esophagi,esoteric,especial,espousal,espouse,esprit,esquire,essay,essence,estate,esteem,ester,estimate,estrange,estuary,etch,eternal,eternity,ethane,ethanol,ether,ethereal,ethic,ethology,ethos,ethyl,ethylene,etude,eucre,eugenic,eulogy,eureka,eutectic,evacuate,evade,evaluate,evangel,eve,even,evensong,event,eventful,eventide,eventual,every,everyday,everyman,everyone,evict,evident,evocable,evocate,evoke,evolve,evzone,ewe,exact,exacter,exalt,exam,examine,example,excavate,exceed,excel,excelled,except,excerpt,excess,excise,excision,excite,exclaim,exclude,excuse,executor,exemplar,exempt,exercise,exert,exhale,exhaust,exhort,exile,exist,existent,exit,exodus,expand,expanse,expect,expedite,expend,expense,expert,expiable,expiate,expire,explain,explicit,explode,exploit,explore,exponent,export,expose,exposit,exposure,expound,express,extant,extend,extensor,extent,exterior,external,extinct,extol,extolled,extoller,extra,extract,extrema,extremal,extreme,extremis,extremum,extrude,exult,exultant,eye,eyeball,eyebrow,eyed,eyeful,eyeglass,eyelash,eyelet,eyelid,eyepiece,eyesight';

 

WORDS3 CONSTANT VARCHAR2(32726) := 'fable,fabric,fabulous,facade,face,facet,facial,facile,fact,factor,factory,factual,faculty,fad,fade,fadeout,fain,faint,fair,fairgoer,fairway,falcon,falconry,fall,fallen,fallible,falloff,fallout,fallow,fame,familial,familiar,familism,family,famine,famish,famous,fan,fanatic,fanciful,fancy,fanfare,fanfold,fantasy,far,farce,fare,farewell,farm,farmland,fashion,fast,fasten,fate,fateful,father,fathom,fatigue,faucet,faun,fauna,fawn,feasible,feast,feat,feather,feathery,feature,fed,federal,federate,fee,feed,feedback,feel,feet,feign,feint,feldspar,felicity,feline,fell,fellow,female,femur,fence,fend,fennel,ferment,fern,fernery,ferocity,ferret,ferric,ferris,ferrite,ferrous,ferrule,ferry,fertile,fervent,fescue,fest,festival,festive,fetch,fete,fetid,fetish,fetter,fettle,feud,feudal,fever,feverish,few,fiance,fiancee,fibrin,fibrosis,fibrous,fiche,fickle,fiction,fictive,fiddle,fide,fidelity,fidget,fiducial,fief,fiefdom,field,fiend,fiendish,fierce,fiery,fiesta,fife,fifteen,fifth,fiftieth,fifty,fig,figure,figurine,filament,filbert,filch,file,filet,filial,fill,filled,filler,fillet,filly,film,filmdom,filmy,filter,filtrate,fin,final,finale,finance,finch,find,fine,finery,finesse,finessed,finger,finicky,finish,finite,fir,fire,fireboat,firebug,firefly,fireman,firemen,fireside,firewall,firewood,firework,firm,firmware,first,fiscal,fish,fishery,fishpond,fishy,fission,fissure,fist,fit,fitful,five,fivefold,fix,fixate,fixture,fizzle,fjord,flack,flag,flagpole,flagrant,flail,flair,flak,flake,flaky,flame,flamingo,flange,flank,flannel,flap,flare,flash,flashy,flask,flat,flatbed,flathead,flatiron,flatland,flatten,flattery,flatware,flatworm,flaunt,flax,flaxen,flaxseed,flea,fleck,fled,fledge,flee,fleece,fleeing,fleet,flemish,fletch,flew,flex,flexible,flick,flier,flight,flimsy,flinch,fling,flint,flinty,flippant,flirt,flit,float,flood,floodlit,floor,flora,floral,florist,flotilla,flounder,flour,flourish,flow,flowery,flown,flu,flue,fluency,fluent,fluff,fluffy,fluid,fluke,flung,fluoride,fluorine,fluorite,flurry,fluster,flute,flutter,fluvial,flux,fly,flyer,flyway,foal,foam,focal,foci,focus,focussed,foe,fog,fogging,foggy,fogy,foible,foil,foist,fold,foldout,foliage,foliate,folio,folk,folklore,folksong,folksy,follicle,follow,folly,fondly,font,food,foot,footage,football,footfall,foothill,footman,footmen,footnote,footpad,footpath,footstep,footwear,footwork,for,forage,foray,forbade,forbear,forbid,forbore,forborne,force,forceful,forcible,ford,fore,foreign,forest,forestry,forever,forfeit,forfend,forgave,forge,forget,forgive,forgiven,forgo,forgot,fork,forklift,forlorn,form,formal,formant,format,formate,formic,formula,formulae,forsake,forsaken,forsook,forswear,fort,forte,forth,fortieth,fortify,fortin,fortiori,fortran,fortress,fortune,forty,forum,forward,forwent,fossil,foster,fought,foul,found,fountain,four,fourfold,foursome,fourteen,fourth,fovea,fowl,fox,foxglove,foxhole,foxhound,foxtail,foyer,fraction,fracture,fragile,fragment,fragrant,frail,frailty,frame,franc,franca,frank,franklin,fray,frayed,freckle,free,freed,freedmen,freedom,freehand,freehold,freeing,freeman,freemen,freer,freest,freeway,freeze,freight,frenetic,frenzy,freon,frequent,fresco,frescoes,fresh,freshen,friction,fried,friend,frieze,frigid,frill,frilly,fringe,frisky,frizzle,fro,frock,frog,frolic,from,front,frontier,frost,frosty,froth,frothy,frown,frowzy,froze,frozen,fructose,frugal,fruit,fruitful,fruition,fry,fudge,fuel,fugitive,fulcrum,fulfill,full,fullback,fully,fumble,fume,fumigant,fumigate,fun,function,fund,fungal,fungi,funnel,funny,fur,furbish,furious,furl,furlong,furlough,furnace,furnish,furrier,furrow,furry,further,furthest,furtive,fury,furze,fuse,fuselage,fusible,fusion,fuss,fussy,futile,future,fuzz,fuzzy,gab,gabble,gable,gadget,gadgetry,gage,gaggle,gain,gainful,gait,gal,gala,galactic,galaxy,gale,gall,gallant,gallery,galley,gallon,gallop,galvanic,gambit,gamble,game,gamesman,gamut,gander,gannet,gantlet,gantry,gap,gape,garage,garb,garble,garden,gardenia,gargle,garish,garland,gar























lic,garner,garnet,garrison,garter,gash,gasket,gaslight,gasoline,gasp,gate,gatekeep,gateway,gather,gator,gauche,gaudy,gauge,gaunt,gauntlet,gauss,gauze,gave,gavel,gavotte,gawk,gaze,gazelle,gazette,gear,gecko,geese,gel,gelable,gelatin,gelatine,gem,geminate,gemlike,gemstone,gene,genera,general,generate,generic,generous,genesis,genetic,genial,genie,genius,genotype,genre,gent,genteel,gentian,gentile,gentle,gentry,genuine,genus,geometer,geranium,germ,germane,germinal,gerund,gestalt,gesture,get,getaway,geyser,ghastly,ghost,ghostly,ghoul,ghoulish,giant,giantess,gibbet,gibbon,giblet,giddy,gift,gig,gigaherz,gigantic,gigavolt,gigawatt,giggle,gila,gild,gill,gilt,gimmick,ginger,gingham,gingko,ginseng,giraffe,girl,girth,gist,give,giveaway,given,giveth,glacial,glaciate,glacier,glad,gladden,glade,glamor,glamour,glance,gland,glare,glass,glassy,glaucoma,glaucous,glaze,gleam,glean,glee,gleeful,glen,glib,glide,glimmer,glimpse,glint,glissade,glisten,glitch,glitter,gloat,glob,global,globe,globular,globule,globulin,gloom,gloomy,glorify,glorious,glory,gloss,glossary,glossed,glossy,glottal,glottis,glove,glow,glucose,glue,glued,gluey,gluing,glum,glut,glutamic,glutton,glycerin,glycerol,glycine,glycogen,glycol,glyph,gnarl,gnash,gnat,gnaw,gnome,gnu,go,goad,goal,goat,gobble,goblet,goes,gold,golden,goldfish,golf,gondola,gone,good,goodbye,goodwill,goose,gopher,gore,gorge,gorgeous,gorgon,gorilla,gorse,gory,gosling,gossamer,gossip,got,gouge,gourd,gourmet,gout,govern,governor,gown,grab,grace,graceful,gracious,grackle,grad,gradate,grade,gradient,gradual,graduate,graft,graham,grail,grain,grainy,grammar,granary,grand,grandeur,grandma,grandpa,grandson,granite,granitic,granny,granola,grant,grantee,grantor,granular,granule,grape,graph,graphic,graphite,grapple,grasp,grass,grassy,grate,grateful,grater,gratify,gratuity,grave,gravel,graven,gravid,gravy,gray,grayish,graze,grease,greasy,great,greater,grebe,greed,greedy,green,greenery,greenish,greet,grew,grey,grid,griddle,gridiron,grief,grieve,grievous,griffin,grill,grille,grilled,grim,grimace,grime,grin,grind,grip,gripe,grisly,grist,grit,gritty,grizzle,grizzly,groan,groat,grocer,grocery,groggy,groom,groove,gross,ground,group,grout,grove,grovel,grow,growl,grown,grownup,growth,grudge,gruesome,gruff,grumble,grunt,gryphon,guanine,guard,guardian,guerdon,guernsey,guess,guest,guffaw,guidance,guide,guiding,guignol,guild,guile,guinea,guise,guitar,gulf,gull,gullet,gullible,gully,gulp,gum,gumbo,gumdrop,gummy,gumption,gumshoe,gurgle,guru,gush,gusset,gust,gusto,gusty,gut,gutsy,guttural,guy,guzzle,gym,gymnast,gypsite,gypsum,gypsy,habit,habitant,habitat,habitual,hacksaw,had,haddock,hadron,haggard,haggle,haiku,hail,hair,haircut,hairdo,hairpin,hale,half,halfback,halfway,halibut,halide,halite,hall,hallmark,hallow,hallway,halo,halogen,halt,halve,ham,hamlet,hammock,hamper,hamster,hand,handbag,handbook,handcuff,handful,handle,handmade,handout,handset,handsome,handy,handyman,handymen,hang,hangar,hansom,happen,happy,harass,hardbake,harden,hardhat,hardtack,hardtop,hardware,hardwood,hardy,hare,hark,harm,harmful,harmonic,harmony,harness,harp,harpoon,harrow,harsh,harshen,hart,harvest,hassle,hast,haste,hasten,hasty,hat,hatch,hatchet,hath,haul,haulage,haunch,haunt,have,haven,havoc,hawk,hay,hayfield,haystack,hayward,hazard,haze,hazel,hazelnut,hazy,he,head,headache,headland,headline,headroom,headset,headsman,headsmen,headwall,headway,headwind,heal,health,healthy,heap,hear,heard,hearken,heart,hearten,hearth,hearty,heat,heater,heath,heathen,heave,heaven,heavy,hectic,hector,hedge,hedgehog,heed,heel,heft,hefty,hegemony,height,heighten,heir,heiress,held,helical,helium,helix,hello,helm,helmet,helmsman,helmsmen,help,helpful,helpmate,hem,hematite,hemlock,hen,hence,henpeck,heptane,her,herald,herb,herd,herdsman,here,hereby,heredity,heretic,hereto,hereunto,herewith,heritage,hero,heroes,heroic,heroism,heron,herself,hertz,hesitant,hesitate,hewn,hex,hexagon,hexane,hey,heyday,hi,hiatus,hibachi,hickory,hid,hidden,hide,hideaway,hideous,hideout,hieratic,highest,highland,h























ighroad,hightail,highway,hike,hilarity,hill,hillside,hilltop,hilly,him,himself,hindmost,hinge,hint,hip,hippo,hire,hireling,his,hiss,historic,history,hit,hitch,hither,hitherto,hive,hoard,hoarse,hobble,hobby,hockey,hodge,hold,holden,holiday,holler,hollow,holly,hologram,holster,holt,homage,home,homeland,homemade,homesick,homeward,homework,homology,homonym,hone,honest,honesty,honey,honeybee,honeydew,honorary,honoree,hoof,hoofmark,hook,hookworm,hoop,hoot,hooves,hop,hope,hopeful,horde,horizon,horn,hornet,horse,horsedom,horsefly,horseman,horsemen,hose,hosiery,hospice,hospital,host,hostage,hostess,hostile,hotel,hotelman,hound,hour,house,housefly,hove,hovel,hover,how,howdy,however,howl,hub,hubris,huddle,hue,hued,huff,hug,huge,hugging,hull,hum,human,humane,humanoid,humble,humerus,humid,humidify,humility,hummock,humorous,humus,hunch,hundred,hungry,hunt,hurdle,hurl,hurley,hurrah,hurray,hurry,hurt,hurtle,husband,hush,husky,hustle,hut,hutch,hyacinth,hyaline,hybrid,hydra,hydrant,hydrate,hydride,hydro,hydrogen,hydrous,hydroxy,hydroxyl,hyena,hygiene,hymn,hymnal,hyphen,hypnosis,hypnotic,iambic,ice,iceberg,icebox,iceland,icicle,icon,iconic,icy,idea,ideal,identify,identity,ideology,idiom,idle,idyll,idyllic,if,igloo,igneous,ignite,ignition,ileum,iliac,illogic,illume,illumine,illusion,illusive,illusory,image,imagery,imagine,imbibe,imbrue,imbue,imitable,imitate,immanent,immature,immense,immerse,imminent,immobile,immune,impact,impair,impale,impart,impasse,impeach,impede,impel,impelled,impeller,impend,imperate,imperial,imperil,impetus,impiety,impinge,implicit,implore,import,impose,impost,impound,impress,imprint,improve,impudent,impugn,impulse,impunity,impute,inaction,inactive,incant,incense,inceptor,inch,incident,incise,incisive,incite,incline,inclose,include,income,increase,incubate,incur,incurred,incurrer,indebted,indeed,indent,index,indicant,indicate,indices,indict,indigene,indigent,indigo,indirect,indoor,indorse,induce,induct,inductee,inductor,industry,inequity,inert,inertia,inertial,inexact,inexpert,infancy,infant,infantry,infer,inferred,infield,infight,infinite,infinity,infirm,inflate,inflater,inflect,inflict,inflow,influent,influx,inform,informal,infract,infrared,infringe,infuse,infusion,ingather,ingest,ingrown,inhabit,inhale,inhere,inherent,inherit,inhibit,inhuman,inimical,iniquity,initial,initiate,inject,injunct,injure,injury,ink,inkling,inlaid,inland,inlay,inlet,inmate,inn,innate,inner,innocent,innovate,innuendo,input,inquest,inquire,inquiry,inroad,inscribe,insect,insecure,insert,inset,inshore,inside,insight,insignia,insist,insomnia,inspect,inspire,install,instance,instant,instead,instep,instill,instinct,instruct,insular,insulate,insulin,insult,insure,intact,intake,integer,integral,intend,intense,intent,inter,intercom,interest,interim,interior,intermit,intern,internal,interval,into,intonate,intone,intrepid,intrigue,introit,intrude,intuit,inundate,inure,invade,invasion,invasive,inveigh,inveigle,invent,inventor,inverse,invert,invest,investor,inviable,invite,invitee,invocate,invoice,invoke,involve,inward,iodide,iodine,ion,ionic,irate,iridium,iris,iron,ironic,ironside,ironwood,is,island,isle,isolate,isomer,isomorph,isotherm,isotope,isotopic,isotropy,issuance,issuant,issue,it,italic,item,iterate,itself,ivory,ivy,jacket,jackpot,jade,jag,jaguar,jamboree,jangle,janitor,jar,jargon,jasper,jaundice,jaunty,javelin,jaw,jawbone,jawbreak,jazz,jazzy,jelly,jersey,jest,jet,jetliner,jettison,jewel,jewelry,jig,jigsaw,jilt,jingle,jittery,jive,job,jockey,jog,jogging,joggle,join,jolly,jolt,jostle,jot,joule,jounce,journal,journey,joust,jovial,jowl,jowly,joy,joyful,joyous,jubilant,jubilate,jubilee,judge,judicial,judo,jug,jugate,jugging,juggle,juice,jumble,jumbo,jump,junction,junctor,juncture,jungle,junior,juniper,juror,jury,just,justice,justify,jut,juvenile,kaiser,kale,kangaroo,keel,keen,keep,kept,kerchief,kern,kernel,kerosene,ketch,ketchup,ketone,ketosis,kettle,key,keyboard,keyed,keyhole,keynote,keys,keystone,khaki,kickoff,kid,kidney,kilo,kilohm,kimono,kin,kind,kin























dle,kindred,kinesic,kinetic,king,kingbird,kingdom,kiosk,kit,kitchen,kite,kitten,kittle,kitty,kiwi,knack,knapsack,knead,knee,kneecap,kneel,knell,knelt,knew,knick,knight,knit,knobby,knock,knockout,knoll,knot,knotty,know,knoweth,knowhow,known,knuckle,knurl,koala,kosher,kraft,lab,label,labour,lace,lacerate,laconic,lacquer,lacrosse,lacuna,lacunae,lacy,lad,laden,ladle,lady,ladyfern,lag,lagging,lagoon,lain,lair,laissez,laity,lake,lakeside,lam,lamb,lament,laminate,lamp,lampoon,lamprey,lance,land,landfill,landhold,landlord,landmark,lane,language,languid,languish,lanky,lantern,lap,lapel,lapelled,lapidary,lapse,larch,large,largesse,lariat,lark,larkspur,larva,larvae,larval,larynges,larynx,lash,lasso,last,latch,late,latent,later,latera,lateral,laterite,lath,lathe,latitude,latter,lattice,latus,laud,laudanum,laugh,laughter,launch,laundry,laureate,laurel,lava,lavatory,lavender,lavish,law,lawful,lawn,lawyer,lay,layette,layman,laymen,layoff,layout,layup,laze,lazy,lea,lead,leaden,leadeth,leadsman,leadsmen,leaf,leaflet,leafy,league,leak,leakage,leaky,lean,leap,leapfrog,leapt,learn,lease,leash,least,leather,leathery,leave,leaven,lectern,lecture,led,ledge,leek,leer,leery,leeward,leeway,left,leftmost,leftover,leftward,lefty,leg,legacy,legal,legate,legato,legend,legging,legible,legion,leisure,lemming,lemon,lemonade,lend,length,lengthen,lengthy,lenient,lens,lentil,leonine,leopard,lesson,lessor,lest,let,lethal,lethargy,lettuce,leucine,levee,level,lever,leverage,levitate,levity,levulose,levy,lew,lexical,lexicon,liable,liaison,liberal,liberate,liberty,library,librate,libretto,licensee,licensor,lichen,licorice,lid,lien,lieu,life,lifeboat,lifelike,lifelong,lifespan,lifetime,lift,ligament,ligand,ligature,light,lighten,like,liken,likewise,lilac,lilt,lily,lim,limb,limbic,lime,limp,linden,line,lineage,lineal,linear,lineman,linemen,linen,lineup,linger,lingual,linguist,liniment,link,linkage,linoleum,linseed,lint,lion,lioness,lip,lipid,lipread,lipstick,liquefy,liquid,liquidus,lisle,list,listen,lit,litany,literacy,literal,literary,literate,lithe,lithic,lithium,litigant,litigate,litmus,little,littoral,live,liven,livery,liveth,livid,livre,lizard,load,loaf,loam,loamy,loan,loaves,lobby,lobe,lobster,lobular,lobule,local,locale,locate,loci,lock,lockout,lockstep,lockup,locomote,locus,locust,locution,locutor,lodge,loft,lofty,log,loge,logging,logic,logician,logistic,logjam,logo,lollipop,lone,lonesome,long,longhand,longhorn,longish,longleg,longtime,look,lookout,lookup,loom,loop,loophole,loose,loosen,loot,lop,lope,lopseed,lopsided,lore,losable,loss,lossy,lost,lot,lotion,lottery,lotus,loud,lounge,love,lovebird,lovelorn,low,lowdown,lower,lowland,loy,loyal,loyalty,lozenge,lucid,luck,lucky,lug,luge,luggage,lugging,lukewarm,lull,lullaby,lumbar,lumber,lumen,luminary,luminous,lump,lunar,lunary,lunate,lunch,luncheon,lung,lunge,lupine,lurch,lure,lurk,lute,lutetium,lux,luxe,luxury,lyric';

 

WORDS4 CONSTANT VARCHAR2(32726) := 'machination,machine,mackerel,macro,madam,made,madrigal,maestro,magazine,magenta,magi,magic,magician,magma,magnate,magnesia,magnet,magnetic,magnify,magnolia,magnum,mahogany,maid,maiden,mail,mailbox,mailman,mailmen,maim,main,mainland,mainline,mainstay,maintain,majestic,majesty,major,make,makeup,maladapt,malady,malaprop,malaria,malarial,male,maledict,mall,mallard,mallet,mallow,malposed,malt,maltose,maltreat,mambo,mammal,mammoth,man,manage,manatee,mandarin,mandate,mandrake,mandrel,mandrill,mane,maneuver,mange,mangle,manhole,manhood,manic,manifest,manifold,mankind,manna,manor,mansion,mantel,mantissa,mantle,manual,manumit,many,map,maple,mar,marathon,maraud,marble,march,mare,margin,marginal,marigold,marimba,marina,marinade,marinate,marine,marital,maritime,mark,market,marlin,marmot,maroon,marquee,marquess,marquis,marriage,married,marrow,marry,marsh,marshal,mart,martial,marvel,mascara,mash,mask,mason,masonry,mass,massage,masseur,massive,mast,mastery,mastodon,mat,match,mate,material,materiel,maternal,matinee,matrices,matrix,matron,matte,mattress,maturate,mature,maudlin,maul,mauve,maverick,max,maxima,maximal,maximum,may,maybe,mayor,mayoral,maze,me,mead,meadow,meager,meal,mealtime,meander,meant,meantime,measle,measure,meat,meaty,mechanic,medal,meddle,media,medial,median,mediate,medic,medicate,medicine,meditate,medium,medlar,medley,meek,meet,megabit,megabyte,megaton,megavolt,megawatt,megaword,megohm,meiosis,melamine,melange,melanin,melanoma,meld,melee,mellow,melodic,melody,melon,melt,meltdown,member,membrane,memento,memo,memoir,memorial,memory,men,menace,mend,menial,meniscus,mention,mentor,menu,merchant,mercuric,mercury,mere,merge,meridian,meringue,merit,merlin,mermaid,merry,mesa,mesh,mesmeric,mesoderm,meson,mesquite,mess,message,messy,met,metabole,metal,metallic,metaphor,meteor,meteoric,meter,methane,methanol,method,methodic,metric,metro,mettle,mew,mezzo,mica,mice,micro,micron,mid,midband,midday,middle,midnight,midpoint,midrange,midscale,midspan,midst,midterm,midway,midweek,might,mighty,mignon,migrant,migrate,mild,mildew,mile,mileage,milieu,militant,military,militate,milk,milkweed,milky,mill,millenia,miller,millet,mill,millions,mimesis,mimetic,mimic,mimicked,min,minaret,mince,mind,mindful,mine,mineral,mingle,mini,minibike,minimal,minimum,minion,ministry,mink,minnow,minor,minstrel,mint,minuet,minus,minute,minutiae,miracle,mirage,mire,mirror,mirth,miscible,miser,misnomer,miss,missile,mission,missive,mist,misty,mite,mitigate,mitosis,mitral,mitre,mitt,mitten,mix,mixture,mixup,mnemonic,moat,mobile,mobility,moccasin,mock,mockery,mockup,modal,mode,model,modem,moderate,modern,modest,modesty,modify,modish,modular,modulate,module,moduli,modulo,modulus,modus,moiety,moire,moist,moisten,moisture,molal,molar,molasses,mold,mole,molecule,molehill,mollify,mollusk,molt,molten,moment,momenta,momentum,mommy,monad,monadic,monarch,monarchy,monastic,monaural,monel,monetary,money,mongoose,monic,monies,monitor,monitory,monkey,monoid,monolith,monomer,monomial,monopoly,monoxide,monsoon,monster,montage,monte,month,monument,mood,moody,moon,moonlit,moor,moose,moot,mop,moral,morale,more,morel,moreover,morn,morose,morpheme,morphism,morrow,morsel,mort,mortal,mortar,mortem,mortgage,mortify,mortise,mosaic,mosque,mosquito,moss,mossy,most,mot,motel,moth,mothball,mother,motif,motion,motivate,motive,motley,motor,mottle,motto,mound,mount,mountain,mourn,mournful,mouse,mousy,mouth,mouthful,move,movie,mow,much,mucosa,mucus,mud,muddle,muddy,mudguard,mudsling,muffin,muffle,mug,muggy,mulberry,mulch,mule,mulish,mull,mulligan,multi,multiple,multiply,mum,mumble,mummy,munch,mundane,mung,munition,muon,mural,murk,murky,murmur,muscle,muscular,museum,mush,mushroom,mushy,music,musicale,musician,musk,muskox,muskoxen,muskrat,mussel,must,mustache,mustang,mustard,musty,mutagen,mutandis,mutant,mutate,mutatis,mute,mutineer,mutiny,mutt,mutter,mutton,mutual,mutuel,muzzle,my,mycology,myel,myeline,myeloid,mylar,mynah,myopia,myopic,myosin,myriad,myrtle,myself,mystery,























mystic,mystify,mystique,myth,mythic,nab,nag,nagging,naiad,nail,name,nameable,namesake,nap,nape,napkin,narrate,narrow,nary,nasal,nascent,natal,nation,native,natural,nature,nautical,nautilus,naval,nave,navel,navigate,navy,neap,near,nearby,nearest,neat,neater,neath,nebula,nebulae,nebular,nebulous,neck,necklace,neckline,necktie,nectar,nectary,need,needful,needham,needle,neither,nemesis,neon,neonatal,neonate,neophyte,neoprene,nepenthe,nephew,nerve,nest,nestle,net,nether,nettle,network,neural,neuritis,neuron,neuronal,neutral,neutrino,neutron,never,new,newborn,newcomer,newel,newfound,newline,newlywed,newsboy,newscast,newsman,newsmen,newsreel,newt,newton,next,niacin,nibble,nice,nicety,niche,nick,nickel,nickname,niece,nigh,night,nimble,nimbus,nine,ninebark,ninefold,nineteen,ninety,ninth,nitrate,nitric,nitride,nitrite,nitrogen,no,nob,nobelium,noble,nobleman,noblemen,noblesse,nobody,nocturne,nod,nodal,node,nodular,nodule,noise,noisy,nomad,nomadic,nominal,nominate,nominee,none,noodle,nook,noon,noontime,nor,north,northern,nose,nostril,not,notary,notch,note,notebook,notice,notify,notion,noun,nourish,nouveau,nova,novel,novelty,novice,now,nowaday,nowadays,nowhere,nozzle,nuance,nucleate,nuclei,nucleic,nucleoli,nucleus,nuclide,nudge,nugget,numb,numeral,numerate,numeric,numerous,numinous,nurse,nursery,nurture,nutmeg,nutrient,nutshell,nuzzle,nylon,oak,oaken,oakwood,oar,oasis,oat,oath,oatmeal,obduracy,obdurate,obelisk,obey,object,objector,objet,oblate,obligate,oblige,oblique,oblong,oboe,oboist,observe,obsidian,obsolete,obstacle,obstruct,obtain,obtrude,obverse,obviate,obvious,occasion,occident,occlude,occupant,occupy,occur,occurred,ocean,oceanic,ocelot,octagon,octal,octane,octant,octave,octet,octile,octopus,ocular,ode,odious,odium,odometer,oersted,of,off,offal,offbeat,offend,offer,offhand,office,official,officio,offload,offset,offshoot,offshore,offstage,oft,often,ogle,ohm,ohmic,ohmmeter,oil,oilcloth,oilman,oilmen,oilseed,oily,oint,ointment,okay,old,olden,oldster,oldy,oleander,olefin,olive,olivine,omelet,omicron,ominous,omnibus,on,once,oncology,oncoming,one,onerous,oneself,onetime,ongoing,onion,only,onrush,onset,onto,ontogeny,ontology,onus,onward,onyx,oocyte,ooze,opacity,opal,opaque,open,opera,operable,operand,operant,operate,operatic,operetta,operon,opine,opinion,opossum,opponent,oppose,opposite,opt,optic,optima,optimal,optimism,optimist,optimum,option,opulent,or,oracle,oracular,orange,orate,oratoric,oratorio,oratory,orb,orbit,orbital,orchard,orchid,ordain,ordeal,order,orderly,ordinal,ordinary,ordinate,ordnance,ore,oregano,organic,origin,original,oriole,ornament,ornate,ornately,orthant,orthicon,orthodox,osier,osmium,osmosis,osmotic,osprey,osseous,ossify,ostrich,other,otiose,otter,ought,ounce,our,oust,out,outlawry,oval,oven,over,overhang,overt,overture,owl,owly,own,ox,oxalate,oxalic,oxcart,oxen,oxeye,oxidant,oxidate,oxide,oxygen,oyster,ozone,pace,pacemake,pacific,pacifism,pacifist,pacify,pack,package,packet,pact,pad,paddock,paddy,padlock,page,pageant,paginate,paid,pail,paint,pair,pairwise,pal,palace,palate,palazzi,palazzo,pale,palette,palfrey,palisade,pall,palladia,pallet,palliate,pallid,palm,palmate,palmetto,palpable,palsy,pamper,pamphlet,pan,panacea,panama,pancake,pancreas,panda,pane,panel,panorama,pant,pantheon,panther,pantry,papa,papery,paprika,papyrus,par,parabola,parade,paradigm,paradise,paradox,paraffin,paragon,parakeet,parallax,parallel,parasite,parasol,paraxial,parboil,parcel,parch,pardon,pare,parent,parental,pariah,park,parkish,parkland,parkway,parody,parquet,parrot,parry,parse,parsley,parsnip,parson,part,partake,partial,particle,partisan,partner,partook,party,paschal,pass,passage,passband,passe,passer,passerby,passion,passive,passport,past,paste,pastel,pastime,pastoral,pastry,pasture,pat,patch,patchy,pate,patent,patentee,pater,paternal,path,pathfind,pathogen,pathway,patient,patio,patriot,patrol,patron,pattern,pause,pave,paw,pawn,pawnshop,pax,pay,paycheck,payday,payoff,payroll,pea,peace,peaceful,peach,peacock,peak,peal,peanut,pear,pearl,pe























at,pebble,pecan,peccary,peck,pectoral,peculate,peculiar,pedagogy,pedal,pedant,pedantic,pedantry,peddle,pedestal,pedigree,pediment,peek,peel,peg,pegboard,pegging,pelican,pellet,pelt,pemmican,pen,penalty,penance,pence,penchant,pencil,pend,pendant,pendulum,penguin,penitent,penman,penmen,pennant,penny,pension,pensive,pent,pentagon,pentane,penumbra,penury,people,pep,peppery,peptide,per,perceive,percent,percept,perch,perfect,perfidy,perforce,perform,perfume,perfuse,perhaps,peril,perilous,period,periodic,perjure,perjury,perk,permeate,permit,permute,peroxide,perplex,persist,person,persona,personal,persuade,pert,pertain,perturb,perusal,peruse,pervade,pestle,pet,petal,petit,petite,petition,petrel,petri,petrify,petrol,petty,petulant,petunia,pewter,pharmacy,phase,pheasant,phenol,phenolic,phenyl,phlox,phobic,phoebe,phoenix,phone,phoneme,phonemic,phonetic,phonic,phosgene,phosphor,photo,photon,phrase,physique,pi,pianist,piano,piccolo,pickerel,picket,pickle,picky,picnic,picture,piddle,pidgin,pie,piece,pier,pierce,pietism,piety,pig,pigeon,pigment,pigpen,pigskin,pigtail,pike,pile,pilfer,pilgrim,pill,pillage,pillar,pillory,pillow,pilot,pin,pinafore,pinball,pinch,pine,ping,pinhole,pinion,pink,pinkie,pinkish,pinnacle,pinnate,pinochle,pinpoint,pinscher,pint,pintail,pinwheel,pioneer,pipe,pipeline,pipette,piquant,pique,piracy,pirate,piston,pit,pitch,piteous,pitfall,pith,pithy,pivot,pivotal,pixel,pixy,pizza,pizzeria,placate,placater,place,placebo,placid,plaid,plain,plan,planar,plane,planet,plank,plankton,plant,plantain,plaque,plasm,plasma,plaster,plastic,plate,plateau,platelet,platform,platinum,platonic,platoon,platypus,play,playback,playful,playoff,playroom,playtime,plaza,plea,plead,pleasant,please,pleat,plebeian,plebian,pledge,plenary,plenty,plenum,plethora,pleura,pleural,pliable,pliancy,pliant,pliers,plight,plot,plover,plowman,pluck,plug,plugging,plum,plumage,plumb,plume,plummet,plunge,plunk,plural,plus,plush,pluton,ply,plywood,poach,pocket,pod,podium,poem,poesy,poet,poetic,poetry,pogo,poignant,point,poise,poke,polar,polaron,pole,polecat,polemic,police,policy,polio,polite,politic,politico,polity,polka,polkadot,poll,pollen,pollock,pollster,pollute,polo,polonium,polopony,polyglot,polygon,polymer,polytope,polytypy,pomade,pomp,pompano,pompey,pompous,poncho,pond,ponder,pony,poodle,pool,pop,popcorn,poplar,poplin,poppy,populace,popular,populate,populism,populist,populous,porch,porcine,pore,porosity,porous,porpoise,porridge,port,portage,portal,portend,portent,portico,portland,portrait,portray,posable,pose,posey,posh,position,positive,positron,posse,posseman,possemen,possess,possible,possum,post,postage,postcard,postfix,postman,postmark,postmen,postpaid,postpone,posture,posy,potable,potato,potatoes,potbelly,potent,pothole,potion,potlatch,pottery,pouch,poultry,pounce,pound,pour,pout,powder,powdery,power,powerful,practice,prairie,praise,prance,preamble,precept,precess,precinct,precious,precise,preclude,preempt,preen,preface,prefect,prefer,prefix,pregnant,prelude,premier,premiere,premise,premium,prep,prepare,presage,presence,present,preserve,preside,press,pressure,prestige,presume,presumed,pretend,pretense,pretext,pretty,prevail,prevent,preview,previous,prey,price,prickle,pride,prim,prima,primacy,primal,primary,primate,prime,primeval,primp,primrose,prince,princess,print,printout,prior,priori,priory,prism,pristine,privacy,private,privet,prize,pro,probate,probe,proceed,process,proclaim,procure,prod,prodigal,prodigy,produce,product,profess,profile,profit,profound,profuse,progeny,progress,prohibit,project,prolate,proline,prologue,prolong,prom,promise,promote,prompt,prone,pronoun,proof,prop,propane,propel,proper,property,proposal,propose,propound,propyl,prorate,prorogue,prosaic,prose,prosodic,prosody,prospect,prosper,protean,protease,protect,protege,protein,protest,protocol,proton,protract,proud,prove,proven,proverb,provide,province,proviso,provoke,provost,prow,prowess,prowl,proximal,prudent,prune,prurient,pry,pseudo,psyllium,puddly,puerile,puffery,puffin,puissant,























pull,pulley,pullover,pulp,pulpit,pulsar,pulsate,pulse,puma,pumice,pump,pumpkin,pun,punctual,puncture,pundit,punditry,pungent,punster,punt,pup,pupate,pupil,puppet,puppy,puppyish,purchase,pure,purge,purify,purl,purple,purport,purpose,purse,purslane,pursuant,pursue,pursuer,pursuit,purvey,purveyor,purview,push,pushout,pushpin,put,putative,putt,putty,puzzle,pygmy,pyknotic,pyramid,python,quad,quadrant,quadric,quaff,quagmire,quail,quaint,quake,qualify,quality,qualm,quandary,quanta,qu,quantile,quantity,quantum,quark,quarrel,quarry,quart,quartet,quartic,quartile,quartz,quasar,quash,quasi,quatrain,quaver,quay,quell,quench,quest,question,quetzal,queue,quibble,quick,quicken,quiet,quietus,quill,quilt,quince,quinine,quint,quintet,quintic,quintus,quip,quipping,quirk,quirt,quite,quitting,quiver,quixotic,quiz,quizzes,quonset,quorum,quota,quote,quotient,rabbit,rabble,raccoon,race,raceway,racket,rackety,radar,radial,radian,radiant,radiate,radical,radices,radii,radio,radish,radium,radius,radon,raffle,raft,ragout,raid,rail,railbird,railhead,raillery,railroad,railway,rain,rainbow,raincoat,raindrop,rainfall,rainy,raise,raisin,raj,rajah,rake,rakish,rally,ram,ramble,ramify,ramp,rampage,rampant,rampart,ran,ranch,rancho,random,rang,range,rank,rankle,ransack,ransom,rapid,rapier,rapport,rapture,rare,rarefy,rascal,rash,rasp,rate,rater,rather,ratify,ratio,rattail,rattle,ratty,raucous,ravage,rave,ravel,raven,ravenous,ravine,raw,rawhide,ray,raze,razor,razzle,reach,reactant,read,readout,ready,real,realm,realtor,realty,ream,reap,reason,reave,reb,receipt,receive,recent,receptor,recess,recipe,recital,reckon,recline,recluse,recovery,recruit,rectify,rector,rectory,recur,recurred,recusant,recuse,red,redact,redactor,redbird,redcoat,redden,reddish,redhead,reduce,redwood,reed,reef,reek,reel,refer,referee,referent,referral,referred,refinery,reflect,refract,refrain,refuge,refugee,refusal,refute,regal,regale,regalia,regard,regatta,regent,regime,regimen,regiment,region,regional,registry,regular,regulate,rehearse,reign,rein,reindeer,rejoice,relate,relayed,relevant,reliant,relic,relict,relief,relieve,religion,relish,remark,remedy,remember,remiss,remit,remitted,remnant,remorse,remote,removal,rend,render,renewal,renounce,renovate,renown,rent,rental,repartee,repeal,repeat,repeater,repel,repelled,repent,replete,replica,report,reprieve,reprisal,reprise,reproach,reptile,republic,repute,request,require,requited,rerouted,rescind,rescue,resemble,resent,reserve,reside,resident,residual,residue,residuum,resign,resin,resist,resistor,resolute,resolve,resonant,resonate,resort,respect,respire,respite,respond,response,rest,restful,restive,restrain,restrict,result,resume,resuming,retail,retain,reticent,retina,retinal,retinue,retire,retiree,retort,retract,retrieve,retrofit,return,reveal,revel,revelry,revenue,rever,revere,reverend,reverent,reverie,reversal,reverse,revert,revery,revile,revisal,revise,revision,revival,revive,revoke,revolt,revolve,revved,revving,reward,rhapsody,rhenium,rheology,rheostat,rhesus,rhetoric,rheum,rhino,rhodium,rhombic,rhombus,rhubarb,rhyme,rhythm,rhythmic,rib,ribald,ribbon,ribose,ribosome,rice,rich,ricochet,rid,riddance,ridden,riddle,ride,ridge,riffle,rift,rig,rigging,right,rightful,rigid,rigorous,rim,ring,ringlet,ringside,rink,rinse,rip,ripen,ripple,rise,risen,risible,rite,ritual,rival,rivalry,riven,river,riverine,rivet,rivulet,road,roadbed,roadside,roadster,roadway,roam,roar,roast,robe,robin,robot,robotic,robotics,robust,rock,rockabye,rockaway,rocket,rocky,rode,rodent,rodeo,roe,roebuck,rogue,roil,roister,role,roll,rollback,rollick,romance,romp,roof,rooftop,rook,rookie,room,roomful,roommate,roomy,roost,root,rope,rose,rosebud,rosebush,rosemary,rosette,roster,rosy,rotary,rotate,rote,rotor,rotunda,rouge,roughen,round,roundoff,roundup,rout,route,routine,rove,row,rowboat,royal,royalty,rubble,rubdown,rubicund,rubidium,rubric,ruby,ruckus,rudder,ruddy,rudiment,ruff,ruffle,rufous,rug,rule,rumble,rumen,ruminant,ruminate,rummage,run,runabout,runaway,rundown,rune,rung,runic,runn























eth,runoff,runway,rupee,rupture,rural,ruse,rush,rusk,russet,russula,rust,rustic,rustle,rusty,rut,rutabaga,ruthless,rutile,rutty,rye';

 

WORDS5 CONSTANT VARCHAR2(32726) := 'sabbatical,sable,sabotage,saccade,sachem,sack,saddle,safari,safe,safety,saffron,sag,saga,sagacity,sage,sagging,sagittal,said,sail,sailboat,sailfish,sailor,saint,sake,salad,salami,salaried,salary,sale,salesman,salesmen,salient,saline,sallow,sally,salmon,salon,saloon,salt,salty,salutary,salute,salvage,samba,same,sample,sanctify,sanction,sanctity,sand,sandal,sandbag,sandhill,sandman,sandpile,sandwich,sandy,sane,sang,sangaree,sanguine,sanicle,sanitary,sanitate,sank,sans,sapiens,sapient,sapling,saponify,sapphire,sarcasm,sarcoma,sardine,sardonic,sari,sash,sashay,sat,satiable,satiate,satiety,satin,satire,satiric,satisfy,saturate,sauce,saucepan,saucy,saute,sauterne,savage,savagery,savant,save,savoy,savvy,saw,sawbelly,sawdust,sawfish,sawfly,sawmill,sawtooth,sawyer,say,scabbard,scabrous,scaffold,scalar,scald,scale,scallop,scalp,scan,scandal,scandium,scant,scanty,scapula,scapular,scar,scarce,scare,scarf,scarify,scarlet,scarves,scary,scathe,scavenge,scenario,scene,scenery,scenic,scent,schedule,schema,scheme,scholar,school,schooner,sciatica,scion,scissor,scoff,scold,scoop,scoot,scope,scorch,score,scoria,scorn,scornful,scorpion,scotch,scour,scout,scowl,scrabble,scram,scramble,scrap,scrape,scratch,scratchy,scrawl,scream,screech,screechy,screen,scribble,scribe,script,scriven,scroll,scrooge,scrub,scruple,scrutiny,scuba,scuff,scuffle,scull,sculpin,sculpt,sculptor,scurry,scurvy,scuttle,scutum,scythe,sea,seaboard,seacoast,seafare,seafood,seagull,seahorse,seal,sealant,seam,seaport,seaquake,sear,search,seashore,seaside,season,seasonal,seat,seater,seaward,seaweed,secant,secede,seclude,second,secrecy,secret,secrete,section,sector,secular,secure,sedan,sedate,sedge,sediment,see,seeable,seed,seedbed,seedling,seeing,seek,seem,seen,seep,seepage,seethe,seethed,seething,segment,seismic,seize,seizure,seldom,select,selector,selenate,selenite,selenium,self,sell,seller,sellout,seltzer,selves,semantic,semester,semi,seminar,seminary,semper,senate,send,senile,senior,sense,sensible,sensor,sensory,sent,sentence,sentient,sentinel,sentry,sepal,separate,septate,septum,sequel,sequent,sequin,sequitur,seraphim,serenade,serene,serge,sergeant,serial,seriate,seriatim,series,serif,serine,serious,serology,serpent,serum,servant,serve,service,servile,servitor,sesame,session,set,setback,setscrew,settle,setup,seven,seventh,seventy,sever,several,severe,sew,sewage,sewerage,sewn,shack,shackle,shad,shade,shadow,shadowy,shady,shag,shaggy,shah,shake,shaken,shaky,shale,shall,shallot,shallow,shamble,shame,shampoo,shamrock,shape,shard,share,shareown,shark,sharp,sharpen,shatter,shave,shaven,shaw,shawl,shay,she,sheaf,shear,sheath,sheathe,sheave,shed,sheen,sheep,sheer,sheet,sheik,shelf,shell,shelter,shelve,shepherd,sherbet,sheriff,shied,shield,shift,shin,shinbone,shine,shingle,shiny,ship,shiplap,shipman,shipmate,shipmen,shipyard,shire,shirk,shirt,shiver,shoal,shock,shod,shoe,shoehorn,shoelace,shoemake,shone,shoofly,shook,shop,shopkeep,shore,short,shortage,shortcut,shorten,shortish,shot,shotbush,should,shoulder,shout,shove,shovel,show,showboat,showcase,showdown,showman,showmen,shown,showroom,shrank,shrapnel,shred,shrew,shrewd,shriek,shrift,shrike,shrill,shrilly,shrine,shrink,shrive,shrivel,shroud,shrove,shrub,shrug,shrunk,shrunken,shuck,shudder,shuddery,shuffle,shun,shunt,shut,shutdown,shutoff,shutout,shuttle,shy,sibilant,sibling,sickle,side,sideband,sidecar,sideline,sidelong,sideman,sidemen,sidereal,siderite,sideshow,sidestep,sidewalk,sidewall,sideway,sidewise,sidle,siege,sienna,sierra,siesta,sieve,sift,sigh,sight,sightsee,sign,signal,signet,signify,signpost,silage,silane,silent,silica,silicate,silicon,silk,silken,silkworm,silky,sill,silly,silo,silt,silty,silver,silvery,similar,simile,simmer,simper,simple,simplex,simplify,simply,simulate,since,sincere,sinew,sinewy,sinful,sing,singable,singe,single,singlet,singsong,singular,sink,sinkhole,sinter,sinuous,sinus,sinusoid,sip,sir,sire,siren,sister,sit,site,situate,six,sixfold,sixgun,sixteen,sixth,sixtieth,sixty,s























ize,sizzle,skat,skate,skater,skeet,skeletal,skeleton,skeptic,sketch,sketchy,skew,ski,skid,skiddy,skied,skiff,skill,skillet,skillful,skim,skimp,skinny,skip,skirmish,skirt,skit,skittle,skulk,skull,skullcap,skunk,sky,skyhook,skylark,skylight,skyline,skyward,skywave,skyway,slab,slag,slam,slander,slant,slap,slash,slat,slate,slater,sled,sledge,sleek,sleep,sleet,sleeve,sleigh,sleight,slender,slept,sleuth,slew,slice,slick,slid,slide,slight,slim,slime,sling,slip,slippage,slippery,slither,sliver,slivery,slob,sloe,slog,slogan,slop,slope,slosh,slot,sloth,slouch,slough,sloven,slow,slowdown,sludge,slumber,small,smaller,smallpox,smart,smash,smatter,smear,smelt,smile,smirk,smith,smithy,smitten,smog,smoke,smoky,smolder,smooth,smother,smudge,snack,snag,snagging,snail,snake,snap,snapback,snappish,snappy,snapshot,snare,snark,snarl,snatch,snazzy,sneak,sneaky,sneer,sneeze,snell,snick,snippet,snippy,snivel,snook,snoop,snoopy,snore,snorkel,snort,snout,snow,snowball,snowfall,snowshoe,snowy,snub,snuffer,snuffle,snuffly,snug,snuggle,snuggly,snyaptic,so,soak,soap,soapsud,soapy,soar,sob,soccer,sociable,social,societal,society,sock,socket,sockeye,sod,soda,sodden,sodium,sofa,soffit,soft,softball,soften,software,softwood,soggy,soil,soiree,sojourn,solace,solar,sold,solder,soldier,soldiery,sole,solecism,solemn,solenoid,solicit,solid,solidify,solidus,solitary,soliton,solitude,solo,solstice,soluble,solute,solution,solvate,solve,solvent,soma,somal,somatic,somber,sombre,some,somebody,someday,somehow,someone,sometime,somewhat,son,sonant,sonar,sonata,song,songbag,songbook,songful,sonic,sonnet,sonogram,sonority,sonorous,soon,soot,sooth,soothe,soothsay,sop,soprano,sorcery,sordid,sore,sorption,sorrel,sorrow,sorry,sort,souffle,sough,sought,soul,soulful,sound,soup,sour,source,sourwood,soutane,south,southern,souvenir,sow,sown,soy,soybean,spa,space,spacious,spade,spalding,span,spandrel,spangle,spaniel,spar,spare,sparge,spark,sparkle,sparky,sparling,sparrow,sparse,spasm,spat,spate,spatial,spatlum,spatula,spavin,spawn,speak,spear,spec,special,species,specific,specify,specimen,specious,speck,speckle,spectra,spectral,spectrum,specular,sped,speech,speed,speedup,speedy,spell,spend,spent,sphere,spheric,spheroid,spherule,sphinx,spice,spicy,spider,spidery,spigot,spike,spiky,spill,spilt,spin,spinach,spinal,spindle,spine,spinoff,spinster,spiny,spiral,spire,spirit,spite,spiteful,splash,splashy,splat,splay,splayed,spleen,splendid,splice,spline,splint,split,splotch,splotchy,splurge,splutter,spoil,spoilage,spoke,spoken,sponge,spongy,sponsor,spoof,spooky,spool,spoon,spoonful,sporadic,spore,sport,sporty,spot,spotty,spouse,spout,sprain,sprang,sprawl,spray,spread,spree,sprig,spring,springe,springy,sprinkle,sprint,sprite,sprocket,sprout,spruce,sprue,sprung,spumoni,spun,spur,spurge,spurious,spurn,spurt,sputnik,sputter,spy,spyglass,squabble,squad,squadron,squalid,squall,squamous,squander,square,squash,squawk,squeak,squeaky,squeal,squeegee,squeeze,squelch,squid,squill,squint,squire,squirm,squirmy,squirrel,squirt,squishy,stab,stabile,stable,staccato,stack,stadia,stadium,staff,stag,stage,stagnant,stagnate,stagy,staid,stain,stair,stairway,stake,stale,stalk,stall,stallion,stalwart,stamen,stamina,stammer,stamp,stampede,stance,stanch,stand,standard,standby,standeth,standoff,stannic,stannous,stanza,staph,staple,star,starch,starchy,stardom,stare,starfish,stargaze,stark,starlet,starling,start,startle,startup,stash,state,stater,static,stator,statuary,statue,stature,status,statute,staunch,stave,stay,stayed,stead,steady,steak,stealth,stealthy,steam,steamy,stearate,stearic,steed,steel,steely,steep,steepen,steeple,steer,stein,stellar,stem,stencil,step,stepson,stepwise,stereo,sterile,sterling,stern,sternal,sternum,steroid,stew,steward,stick,stickle,stickpin,sticky,stifle,stigma,stigmata,stile,stiletto,still,stilt,stimuli,stimulus,sting,stingy,stint,stipend,stipple,stir,stirrup,stitch,stock,stockade,stocky,stodgy,stoic,stoke,stolid,stomach,stone,stony,stood,stoop,stop,stopband,stopgap,stopover,stoppage,storage,























store,stork,storm,stormy,story,stout,stove,stow,stowage,stowaway,straddle,strafe,straggle,straight,strain,strait,strand,strange,strangle,strap,strata,strategy,stratify,stratum,straw,stray,streak,stream,street,strength,stress,stretch,strewn,striate,stricken,strict,stricter,stride,strident,strife,strike,string,stringy,stripe,stripy,strive,striven,strobe,strode,stroke,stroll,strong,strop,strophe,strove,struck,struggle,strum,strung,strut,stub,stubble,stubborn,stubby,stucco,stuck,student,studio,studious,study,stuff,stuffy,stultify,stumble,stump,stumpage,stun,stung,stunt,stupefy,sturdy,sturgeon,style,styli,stylish,stylites,stylus,stymie,styrene,suave,sub,subject,submit,subpoena,subsidy,subsist,subsume,subsumed,subtle,subtlety,subtly,suburb,suburbia,subvert,succeed,success,succinct,such,sucrose,sudden,sue,suffer,suffice,suffix,suffrage,suffuse,sugar,suggest,suit,suitcase,suite,suitor,sulfa,sulfate,sulfide,sulfite,sulfur,sulfuric,sulk,sulky,sullen,sully,sulphur,sultan,sultry,sum,sumac,summand,summary,summate,summit,summitry,summon,sun,sunbeam,sunburn,sunburnt,sunder,sundew,sundial,sundown,sundry,sunfish,sung,sunk,sunken,sunlight,sunlit,sunny,sunrise,sunset,sunshade,sunshine,sunspot,suntan,sup,super,superb,superbly,superior,supine,supplant,supple,supply,support,suppose,suppress,supreme,supremum,surcease,sure,surety,surf,surface,surfeit,surge,surgeon,surgery,surgical,surmise,surmount,surname,surpass,surplus,surprise,surreal,surrey,surround,surtax,surtout,survey,surveyor,survival,survive,survivor,sushi,suspect,suspend,suspense,sustain,suture,svelte,swab,swage,swain,swam,swamp,swan,swanlike,swap,swarm,swart,swarthy,swat,swatch,swathe,sway,sweat,sweater,sweaty,sweep,sweet,sweeten,sweetish,swell,swelt,swelter,swept,swerve,swift,swim,swimsuit,swindle,swing,swipe,swirl,swirly,swiss,switch,swivel,swizzle,swollen,swoop,sword,swore,sworn,swum,swung,sybarite,sycamore,syllabi,syllabic,syllable,syllabus,sylvan,symbol,symbolic,symmetry,sympathy,symphony,symposia,symptom,synapse,synapses,synaptic,syndrome,synergy,synonym,synonymy,synopses,synopsis,synoptic,syntax,syringa,syringe,syrinx,syrup,syrupy,system,systemic,tab,table,tablet,tabloid,tabular,tabulate,tachinid,tacit,tack,tackle,tacky,tact,tactful,tactic,tactile,tactual,tad,tadpole,taffeta,taffy,taft,tag,tagging,tail,tailgate,tailor,tailspin,tailwind,taint,take,taken,takeoff,takeover,taketh,talc,talcum,tale,talent,talisman,talk,tall,tallow,tally,talon,tamarack,tamarind,tame,tamp,tan,tanager,tandem,tangent,tangible,tangle,tango,tangy,tank,tannin,tansy,tantalum,tantrum,tap,tape,taper,tapestry,tar,tardy,target,tariff,tarnish,tarpaper,tarpon,tarry,tartar,task,tassel,taste,tasteful,tasting,tasty,tat,tate,tater,tattle,tattoo,taught,taunt,taut,tavern,taverna,tawdry,tawny,tax,taxation,taxi,taxicab,taxied,taxiway,taxonomy,taxpayer,tea,teacart,teach,teacup,teahouse,teakwood,teal,team,teammate,teamster,teamwork,teapot,tear,teardrop,tearful,tease,teasel,teaspoon,tectonic,tedious,tedium,tee,teeing,teem,teen,teenage,teeter,teeth,tektite,telegram,teleost,telethon,teletype,televise,tell,teller,telltale,temerity,temper,tempera,tempest,template,temple,tempo,temporal,tempt,ten,tenable,tenacity,tenant,tend,tendency,tendon,tenement,tenet,tenfold,tennis,tenon,tenor,tense,tensile,tension,tensor,tenspot,tent,tentacle,tenth,tenuous,tenure,tepee,tepid,terbium,tercel,term,terminal,termini,terminus,termite,tern,ternary,terrace,terrain,terrapin,terrible,terrier,terrific,terry,terse,tertiary,test,testate,testbed,testify,testy,tetanus,tete,tether,text,textbook,textile,textual,textural,texture,thallium,than,thank,thankful,that,thatch,thaw,the,theatric,thee,theft,their,theism,theist,them,thematic,theme,then,thence,theology,theorem,theorist,theory,therapy,there,thereat,thereby,therein,thereof,thereon,thereto,thermal,these,theses,thesis,they,thiamin,thick,thicken,thicket,thigh,thimble,thin,thine,thing,think,thinnish,third,thirst,thirsty,thirteen,thirty,this,thistle,thither,thong,thoriate,thorium,thorn,thorny,thorough,those,thou,tho























ugh,thought,thousand,thrall,thread,three,thresh,threw,thrice,thrift,thrifty,thrill,thrive,throes,throne,throng,throttle,through,throw,thrown,thrum,thrush,thud,thulium,thumb,thump,thunder,thus,thwart,thy,thyme,thymine,thymus,thyroid,tibia,tick,ticket,tickle,ticklish,tidal,tidbit,tide,tideland,tidy,tie,tied,tier,tift,tiger,tight,tighten,tigress,til,tilde,tile,till,tilt,tilth,timber,timbre,time,timeworn,timid,tin,tinder,tine,tinfoil,tinge,tingle,tinker,tinkle,tinsel,tint,tintype,tiny,tip,tipoff,tippy,tiptoe,tirade,tire,tiresome,tissue,titanate,titanic,titanium,tithe,titian,title,to,toad,toady,toast,today,toe,toenail,toffee,tofu,together,togging,toggle,toil,toilsome,token,told,tolerant,tolerate,toll,tollgate,toluene,tomato,tomatoes,tome,tomorrow,ton,tonal,tone,tong,tonic,tonight,tonnage,tonsil,too,took,tool,toolkit,toolmake,toot,tooth,top,topaz,topcoat,topic,topmost,topnotch,topology,topple,topsoil,torch,tore,torn,tornado,toroid,toroidal,torpedo,torpid,torpor,torque,torrent,torrid,torsion,torso,tort,tortoise,toss,tot,total,tote,totem,totemic,touch,tough,tour,tousle,tout,tow,toward,towboat,towel,tower,town,townsman,townsmen,toxic,toxin,toy,trace,tracery,trachea,track,trackage,tract,tractor,trade,tradeoff,traffic,tragedy,tragic,trail,train,trainee,trainman,trainmen,traipse,trait,traitor,tram,trammel,trample,tramway,trance,tranquil,transact,transect,transept,transfer,transfix,transit,transmit,transom,travail,travel,traverse,travesty,trawl,tray,tread,treadle,treason,treasure,treasury,treat,treatise,treaty,treble,tree,treetop,trefoil,trek,trellis,tremble,tremor,trench,trend,trendy,trespass,tress,trestle,triad,trial,triangle,tribal,tribe,tribunal,tribune,tribute,trick,trickery,trickle,tricky,trident,tried,trifle,trig,trigonal,trigram,trill,trillion,trilogy,trim,trimer,trinity,trinket,trio,triode,trioxide,trip,tripe,triple,triplet,triplex,tripod,tripoli,triptych,tristate,trite,tritium,triton,triumph,triune,trivia,trivial,trivium,trod,trodden,troika,troll,trolley,trollop,trombone,trompe,troop,trophic,trophy,tropic,trot,trough,trounce,troupe,trouser,trout,troy,truancy,truant,truce,truck,trudge,truism,truly,trump,trumpery,trumpet,truncate,trundle,trunk,truss,trust,trustee,trustful,truth,truthful,try,trypsin,tsunami,tub,tuba,tube,tubular,tubule,tuck,tuff,tuft,tug,tugging,tuition,tulip,tulle,tumble,tumbrel,tumult,tuna,tundra,tune,tuneful,tungsten,tunic,tunnel,tupelo,tuple,turban,turbid,turbine,turbofan,turbojet,turf,turgid,turk,turkey,turmoil,turn,turnery,turnip,turnkey,turnoff,turnout,turnpike,turret,turtle,turvy,tusk,tussle,tutelage,tutor,tutorial,tutu,tuxedo,twain,tweak,tweed,tweedy,tweeze,twelfth,twelve,twenty,twice,twiddle,twig,twigging,twilight,twill,twin,twine,twinge,twinkle,twirl,twirly,twist,twisty,twitch,twitchy,two,twofold,twosome,tycoon,tying,type,typeface,typeset,typhoid,typhoon,typhus,typic,typify,typo,typology,tyrannic,tyranny,tyrosine,ubiquity,ulterior,ultimate,ultra,umber,umbra,umbrage,umbrella,umlaut,umpire,unary,unbidden,uncle,unction,under,undulate,uniaxial,unicorn,uniform,unify,unimodal,union,uniplex,unipolar,unique,unison,unitary,unite,unity,universe,until,unwieldy,up,upbeat,upbraid,upbring,upcome,update,updraft,upend,upgrade,upheaval,upheld,uphill,uphold,upkeep,upland,uplift,upon,upper,uppercut,upraise,upright,uprise,upriver,uproar,uproot,upset,upshot,upside,upsilon,upslope,upstair,upstand,upstart,upstate,upstater,upstream,upsurge,upswing,uptake,uptown,uptrend,upturn,upward,upwind,uranium,urban,urbane,urbanite,urchin,urge,urgency,urgent,urging,us,usable,usage,use,useful,usher,usual,usurer,usurious,usurp,usury,utensil,utility,utmost,utopia,utopian,utter,vacant,vacate,vaccine,vacua,vacuo,vacuole,vacuous,vacuum,vade,vagabond,vagary,vagrant,vague,vain,vale,valent,valet,valeur,valiant,valid,validate,valine,valley,valuate,value,valve,vamp,vampire,van,vanadium,vandal,vane,vanguard,vanilla,vanish,vanity,vanquish,vantage,vapid,vaporous,variable,variac,variant,variate,variety,various,varistor,varnish,varsity,vary,vascular,vase,va























ssal,vast,vat,vault,vaunt,veal,vector,vee,veer,veery,vegetate,vehicle,veil,vein,velar,veldt,vellum,velocity,velours,velvet,velvety,venal,vend,vendetta,vendible,vendor,veneer,venerate,venial,venous,vent,venture,venturi,veracity,veranda,verandah,verb,verbal,verbatim,verbena,verbiage,verbose,verdant,verdict,verge,veridic,verify,verity,vermeil,vermin,vermouth,vernal,vernier,versa,versatec,verse,version,versus,vertebra,vertex,vertical,vertices,vertigo,verve,very,vesper,vessel,vest,vestal,vestige,vestry,vet,vetch,veteran,veto,via,viaduct,vial,vibrant,vibrate,vibrato,viburnum,vicar,viceroy,vicinal,vicinity,vicious,victor,victory,victrola,victual,vide,video,vie,view,vigil,vigilant,vignette,vigorous,villa,village,villain,villein,vine,vinegar,vineyard,vintage,vintner,vinyl,viola,violate,violent,violet,violin,virgule,virtual,virtue,virtuosi,virtuoso,virtuous,virulent,virus,vis,visa,visage,viscount,viscous,vise,visible,vision,visit,visitor,visor,vista,visual,vita,vitae,vital,vitamin,vitiate,vitreous,vitrify,vitriol,vitro,viva,vivace,vivacity,vivid,vivify,vivo,vixen,viz,vocable,vocal,vocalic,vocate,vogue,voice,void,volatile,volcanic,volcano,volition,volley,volt,voltage,voltaic,voluble,volume,voracity,vortex,vortices,votary,vote,votive,vouch,vow,vowel,voyage,vulgar,vulpi,vulture,vying,wacky,wad,waddle,wade,wafer,waffle,wag,wage,wagging,waggle,wagoneer,wail,waist,wait,waitress,waive,wake,wakeful,waken,wakeup,wale,walk,walkout,walkover,walkway,wall,wallaby,wallet,wallop,wallow,wally,walnut,walrus,waltz,waltzing,wan,wand,wander,wane,wangle,want,wanton,wapato,wapiti,war,warble,ward,warden,wardrobe,wardroom,ware,warm,warmth,warmup,warn,warp,warplane,warrant,warranty,warren,warrior,wary,was,wash,washbowl,washout,washy,wasp,waspish,wast,wastage,wasteful,wastrel,watch,watchdog,watchful,watchman,watchmen,water,waterway,watery,watt,wattage,wattle,wave,waveform,wavelet,wavy,wax,waxen,waxwork,waxy,way,waybill,waylaid,waylay,wayside,wayward,we,weak,weaken,weal,wealth,wealthy,wean,wear,wearied,weary,weasel,weather,weave,web,weber,wed,wedge,wedlock,wee,weed,weedy,week,weekday,weekend,weep,weigh,weight,weighty,weir,weird,welcome,weld,welfare,well,welsh,welt,went,wept,were,wert,west,westerly,western,westward,wet,wetland,whale,wharf,wharves,what,whatever,whatnot,wheat,wheedle,wheel,wheeze,wheezy,whelk,whelm,when,whence,whenever,where,whereas,whereby,wherein,whereof,whereon,wherever,whet,whether,which,whiff,whig,while,whim,whimper,whimsey,whimsic,whiplash,whipsaw,whir,whirl,whish,whisk,whisper,whistle,whit,white,whiten,whither,whittle,who,whoever,whole,wholly,whom,whomever,whose,why,wick,wicket,wide,widen,widgeon,widget,widow,width,wield,wig,wigging,wiggle,wild,wildcat,wildfire,wildlife,wile,wilful,will,willful,willow,willowy,wilt,wily,win,wince,wind,windbag,windfall,windmill,window,windsurf,windup,windward,windy,wing,wingback,wingman,wingmen,wingspan,wingtip,wink,winkle,winnow,winsome,winter,wintry,winy,wipe,wire,wireman,wiremen,wiretap,wiry,wisdom,wise,wish,wishbone,wishful,wisp,wispy,wistful,wit,with,withal,withdraw,withdrew,withe,wither,withheld,withhold,within,without,withy,witness,witty,wizard,wobble,woe,woeful,wok,woke,wold,wolf,wolfish,wolves,woman,wombat,women,won,wonder,wondrous,wont,woo,wood,woodcut,wooden,woodhen,woodland,woodlot,woodpeck,woodrow,woodruff,woodshed,woodside,woodward,woodwind,woodwork,wool,word,wordy,wore,work,workaday,workbook,workday,workload,workman,workmen,workout,workshop,world,worm,worn,worth,worthy,would,wound,wove,woven,wow,wrack,wraith,wrangle,wrap,wrapup,wrath,wrathful,wreak,wreath,wreathe,wreck,wreckage,wrench,wrest,wrestle,wretch,wriggle,wright,wring,wrinkle,wrist,writ,write,writeup,writhe,written,wrote,wrought,wry,xenon,xylem,xylene,yacht,yak,yam,yap,yapping,yard,yardage,yarmulke,yarn,yarrow,yawn,yea,yeah,year,yearbook,yearn,yeast,yell,yellow,yelp,yen,yeoman,yeomanry,yet,yield,yip,yipping,yodel,yoga,yoghurt,yogi,yogurt,yoke,yolk,yon,yond,yore,you,young,youngish,your,yourself,youth,youthful,yule,zag,zagging,zap,zazen,zea























l,zealot,zealous,zebra,zenith,zero,zeroes,zeroth,zest';
*/
  
-- 2012/03/23 - updated words lists per program to remove long words
/*WORDS1 CONSTANT VARCHAR2(32726) := 'aback,abacus,abalone,abate,abater,abbey,abbot,abdicate,aberrant,abet,abetted,abetting,abeyance,abeyant,abide,abject,able,ablution,abnormal,aboard,abode,abolish,aborning,abound,about,above,abrasion,abrasive,abridge,abroad,abrogate,abrupt,abscissa,absence,absent,absentee,absentia,absolute,absolve,absorb,abstain,abstract,abstruse,abundant,abysmal,abyss,academe,academia,academic,academy,accede,accent,accept,acceptor,access,accident,acclaim,accolade,accord,accost,account,accredit,accrual,accrue,accuracy,accurate,accustom,ace,acerbic,acerbity,acetate,acetic,acetone,ache,achieve,aching,acidic,acme,acorn,acoustic,acquaint,acquire,acquit,acre,acreage,acrimony,acrobat,acronym,across,acrylic,act,activate,activation,activism,actor,actress,actual,actuarial,actuate,acuity,acumen,acute,acyclic,ad,adage,adagio,adamant,adapt,adaptation,adaptive,add,added,addend,addenda,addendum,addition,additional,additive,address,addressee,adduce,adenine,adenoma,adenosine,adept,adequacy,adequate,adhere,adherent,adhesion,adhesive,adiabatic,adjacent,adject,adjectival,adjective,adjoin,adjoint,adjourn,adjudge,adjudicate,adjunct,adjust,adjutant,administer,administrable,administrate,admiral,admiralty,admiration,admire,admissible,admission,admit,admittance,admitted,admitting,admonish,admonition,ado,adobe,adolescent,adopt,adoption,adoptive,adore,adorn,adrenal,adrenaline,adrift,adroit,adsorb,adulate,advance,advent,adverb,adverse,advert,advice,advise,advisee,advisor,advisory,advocacy,advocate,aegis,aeolian,aerate,aerial,aerobic,aerosol,aesthete,afar,affable,affect,afferent,affine,affinity,affirm,affix,afflict,afford,affront,afield,afire,aflame,afloat,afoot,afraid,afresh,aft,again,against,agate,age,agenda,agent,aggrieve,agile,aging,agitate,ago,agone,agony,agrarian,agree,agreed,agreeing,agrimony,ague,ahead,aide,ail,aileron,aim,air,airborne,aircraft,airdrop,airedale,airfare,airfield,airflow,airfoil,airframe,airlift,airline,airlock,airmail,airman,airmass,airmen,airpark,airplane,airport,airspace,airspeed,airstrip,airtight,airway,airy,aisle,ajar,akin,alacrity,alarm,alb,albacore,albeit,album,albumin,alchemy,alcove,aldehyde,aleph,alert,alfalfa,alfresco,alga,algae,algal,alias,align,alike,aliquot,alive,alkali,alkaline,alkaloid,alkane,alkene,all,allege,allegory,allegro,allele,allemand,allergic,allergy,alley,alleyway,alliance,allied,allocate,allot,allotted,allow,alloy,allspice,allude,allure,allusion,allusive,alluvial,alluvium,ally,allyl,almanac,almond,almost,aloe,aloft,aloha,alone,along,aloof,aloud,alp,alpha,alphabet,alpine,already,also,alterate,although,altitude,alto,altruism,altruist,alum,alumna,alumnae,alumni,alumnus,always,alyssum,am,amalgam,amass,amateur,amaze,amber,ambiance,ambient,ambition,amble,ambling,ambrosia,ambulant,ambulate,amend,amethyst,amicable,amid,amide,amidst,amino,amiss,amity,ammeter,ammonia,ammonium,amnesia,amoeba,amoebae,among,amongst,amount,amp,amperage,ampere,ample,amplify,amply,amulet,amuse,an,anaconda,anaglyph,anagram,analogue,analogy,analyses,analysis,analyst,analytic,anatomic,anatomy,ancestor,ancestry,anchor,anchovy,ancient,and,anecdote,anemone,anew,angel,angelic,angle,angling,angstrom,angular,aniline,animal,animate,anion,anionic,anise,ankle,annex,annotate,announce,annoy,annoyance,annual,annuity,annunciate,anode,anodic,anomalous,anomaly,anonymity,anonymous,another,answer,ant,antacid,antagonism,antagonist,antagonistic,antarctic,anteater,antebellum,antecedent,antedate,antelope,antenna,antennae,anterior,anteroom,anthem,anther,anthology,anthropogenic,anthropology,anthropomorphic,anthropomorphism,antic,anticipate,anticipatory,antigen,antimony,antipasto,antipathy,antiperspirant,antipode,antipodean,antipodes,antiquarian,antiquary,antiquated,antique,antiquity,antithetic,antler,antonym,anvil,anxiety,anxious,any,anybody,anyhow,anyone,anyplace,anything,anyway,anywhere,aorta,apace,apart,ape,aperiodic,aperture,apex,aphid,aphorism,apiece,aplomb,apocalypse,apocalyptic,apocryphal,apogee,apologetic,apologia,apology,apostle,apostolic























,a




postrophe,apothecary,apothegm,apotheosis,appall,appanage,apparatus,apparel,apparent,apparition,appeal,appear,appease,append,appendix,appetite,applaud,applause,apple,applied,applique,apply,appoint,apposite,appraise,apprise,approach,approval,approve,apricot,apron,apropos,apt,aptitude,aqua,aquarium,aquatic,aqueduct,aqueous,arachnid,arbiter,arboreal,arc,arcade,arcane,arch,archaic,archaism,archery,arching,arcing,arctic,ardency,ardent,arduous,are,area,areaway,arena,argon,argue,argument,arid,arise,arisen,ark,arm,armada,armament,armature,armchair,armful,armload,armoire,army,aroma,aromatic,arose,around,arpeggio,arraign,arrange,array,arrival,arrive,arrogant,arrogate,arrow,arroyo,art,arterial,artery,artful,article,artifact,artifice,artisan,artistry,artwork,as,ascend,ascent,ascribe,aseptic,ash,ashame,ashamed,ashen,ashore,aside,ask,askance,askew,asleep,aspect,aspen,asperity,aspirate,aspire,aspirin,assemble,assent,assert,assessor,asset,assign,assist,assume,assure,asteria,asterisk,asteroid,asthma,astonish,astound,astral,astride,astute,asunder,at,atavism,ate,athle,athletic,athwart,atlantic,atlas,atom,atomic,atonal,atone,atop,atrium,atrophic,atrophy,attach,attache,attain,attempt,attend,attendee,attest,attic,attire,attitude,attorney,attract,attune,auburn,auction,audacity,audible,audience,audio,audit,audition,auditor,auditory,auger,augment,august,auk,aunt,auntie,aura,aural,auric,aurochs,aurora,auspices,austere,author,auto,autocrat,automate,autonomy,autumn,autumnal,avail,avarice,avenue,aver,average,averred,averring,averse,aviary,aviate,avid,avionic,avocado,await,awake,awaken,award,aware,awash,away,awe,awesome,awhile,awkward,awl,awn,awoke,awry,ax,axe,axes,axial,axiology,axiom,axis,axle,axon,azalea,azimuth,azimuthal,azure,babble,baboon,baby,babyhood,babysat,babysit,babysitter,babysitting,baccalaureate,bacilli,bacillus,back,backboard,backbone,backdrop,backfill,backgammon,background,backhand,backlash,backorder,backpack,backplane,backstage,backstitch,backstop,backtrack,backup,backward,backwood,backyard,bacon,bacteria,bacterial,bacterium,bade,badge,badinage,badland,badminton,baffle,bag,bagatelle,bagel,baggage,bagpipe,bait,bake,bakery,balance,balcony,bald,baldy,bale,baleen,baleful,balk,balky,ball,ballad,ballast,ballerina,ballet,balletic,ballfield,balloon,ballot,ballroom,balm,balmy,balsa,balsam,balustrade,bamboo,ban,banal,banana,band,bandage,bandgap,bandit,bandpass,bandstand,bandstop,bandwagon,bandwidth,bandy,bane,baneberry,baneful,bangle,banish,banister,banjo,bank,bankrupt,banquet,bantam,banter,barb,barbaric,barbecue,barbell,barber,barberry,bard,barefoot,bargain,barge,baritone,barium,bark,barley,barn,barnacle,barnyard,baron,baroness,baronet,baronial,barony,baroque,barrack,barrage,barre,barrel,barren,barrette,barrier,barrow,barter,basal,basalt,base,baseball,baseband,baseline,baseman,basemen,bash,bashaw,bashful,basic,basil,basilar,basilisk,basin,basis,bask,basket,bass,bassi,bassinet,basso,basswood,baste,bastion,bat,batch,bate,bateau,bath,bathe,bathos,bathrobe,bathroom,bathtub,batik,baton,batt,batten,battery,battle,batwing,bauble,baud,bauxite,bawl,bay,bayed,bayonet,bayou,bazaar,be,beach,beacon,bead,beadle,beady,beak,beam,bean,bear,beard,bearish,beatific,beatify,beautify,beauty,becalm,became,because,beck,becket,beckon,becloud,become,bed,bedazzle,bedbug,bedevil,bedfast,bedim,bedimmed,bedlam,bedpost,bedrock,bedroom,bedside,bedstraw,bedtime,bee,beebread,beech,beef,beehive,been,beep,beet,beetle,befall,befallen,befell,befit,befog,before,befuddle,beg,began,beggar,beggary,begging,begin,beginner,begonia,begotten,begrudge,beguile,begun,behalf,behave,beheld,behest,behind,behold,beige,being,bel,belate,belfry,belie,belief,belies,believe,bell,bellboy,belle,bellhop,bellman,bellmen,bellow,bellum,belly,belong,belove,below,belt,belying,bemadden,beman,bemoan,bemuse,bench,bend,beneath,benefice,benefit,benight,benign,bent,benzene,bequeath,bequest,beret,berg,bergamot,beribbon,beriberi,berne,berry,berth,beryl,beseech,beset,beside,besiege,besmirch,besotte,d,bespeak,bespoke,best,b




























estir,bestow,bestowal,bet,beta,betatron,betroth,bettor,between,betwixt,bevel,beverage,bevy,bewail,beware,bewilder,bey,beyond,bias,biaxial,bib,bicep,biceps,bicker,bicycle,bid,biddable,bidden,bide,biennial,biennium,bifocal,big,bike,bilayer,bilinear,bilk,bill,billet,billfold,billiard,billion,billow,bimodal,bin,binary,binaural,bind,bindery,bindle,binomial,biopsy,biota,biotic,biotite,biplane,bipolar,birch,bird,birdbath,birdie,birdlike,birdseed,birth,birthday,biscuit,bisect,bishop,bismuth,bison,bisque,bistable,bistate,bit,bite,bitten,bitumen,bitwise,bivalve,bivouac,biz,bizarre,blab,blacken,blackout,blanch,bland,blandish,blank,blanket,blare,blast,blastula,blazon,bleach,bleak,bleary,bleat,blemish,blend,blight,blimp,blind,blink,blip,bliss,blissful,blister,blithe,blitz,blizzard,block,blockade,blockage,blond,blonde,bloom,blossom,blot,blouse,blue,blueback,blueberry,bluebill,bluebird,bluebonnet,bluebush,bluefish,bluegill,bluet,bluff,bluish,blunder,blunt,blur,blurb,blurry,blurt,blush,bluster,blustery,boa,boar,board,boardinghouse,boast,boastful,boat,boathouse,boatload,boatman,boatmen,boatswain,boatyard,bobcat,body,bodybuild,bodybuilder,bodybuilding,bodyguard,bog,bogey,boggle,boil,boisterous,bold,boldface,bolometer,bolster,bolt,bombard,bombast,bon,bona,bonanza,bond,bondsman,bondsmen,bone,bonfire,bongo,bonnet,bonus,book,bookbind,bookcase,bookend,bookish,bookkeep,booklet,boorish,boost,boot,booth,bop,borate,borax,border,born,borne,borough,borrow,boson,bosonic,boss,botanic,botanist,botany,botfly,both,bottle,bouffant,bough,bought,boulder,boule,bounce,bound,boundary,bounty,bouquet,bourn,bout,boutique,bovine,bow,bowfin,bowie,bowl,bowline,bowman,bowmen,box,boxcar,boxwood,boxy,boy,boyar,boycott,boyhood,brace,bracelet,bracken,bracket,brackish,bract,brad,brae,brag,bragging,braid,brain,brainy,brake,brakeman,bramble,bran,branch,brand,brandish,brant,brash,brass,brassy,bravado,brave,bravery,bravo,bravura,brawl,bray,brazier,breach,bread,breadth,break,breakage,breakoff,breakup,bream,breath,breathe,breathy,breccia,breech,breed,breeze,breezy,brethren,breve,brevet,brevity,briar,brick,brickbat,bricklay,bridal,bride,bridge,bridle,brief,brig,brigade,bright,brighten,brim,brimful,brindle,brine,bring,brink,briny,brisk,bristle,brittle,broach,broaden,brocade,broccoli,brochure,brockle,broil,broke,broken,bromide,bromine,bronchi,bronchus,bronco,bronze,bronzy,brood,broody,brook,broom,broth,brother,brought,brouhaha,brow,brown,brownie,brownish,browse,bruise,bruit,brunch,brunette,brunt,brush,brushy,brusque,bryozoa,bubble,bucket,buckeye,buckle,buddy,budge,budget,buffalo,buffet,bug,bugging,buggy,bugle,build,buildup,built,builtin,bulb,bulblet,bulge,bulk,bulkhead,bulky,bulldog,bulldoze,bullet,bulletin,bullfrog,bullseye,bulrush,bulwark,bumble,bump,bun,bunch,bundle,bungalow,bungle,bunk,bunny,bunt,buoy,buoyant,burbank,burdock,bureau,buret,burette,burgeon,burgess,burgher,burglar,burl,burlap,burley,burly,burn,burnish,burnt,burro,burrow,burst,bursty,bury,bus,busboy,buses,bushel,business,bustle,busy,but,butane,butler,buttery,button,buy,buyer,buzz,buzzer,buzzing,buzzsaw,buzzword,buzzy,by,bye,bygone,bylaw,byline,bypass,bypath,byroad,byway,byword';

WORDS2 CONSTANT VARCHAR2(32726) := 'cab,cabana,cabaret,cabbage,cabin,cabinet,cable,cacao,cachalot,cache,cackle,cacti,cactus,caddy,cadent,cadenza,cadet,cadmium,cadre,cafe,cage,cagey,cajole,cake,calamity,calamus,calcify,calcine,calcite,calcium,calculi,calculus,caldera,calendar,calf,calfskin,caliber,calibre,calico,caliper,caliph,call,caller,calliope,callous,callus,calm,caloric,calorie,calumny,calve,calypso,camber,cambric,camel,camellia,cameo,camera,camilla,camp,campaign,campfire,campion,campsite,campus,can,canal,canary,candela,candid,candle,candy,cane,canine,canister,cannel,cannery,cannibal,cannon,canny,canoe,canon,canopy,canst,cant,canteen,canticle,cantle,canto,canton,cantor,canvas,canvass,canyon,cap,capacity,cape,capella,caper,capita,capital,capitol,capo,caprice,capsize,capstan,capstone,capsule,captain,caption,captious,captive,captor,capture,capybara,car,carabao,caramel,caravan,caraway,carbide,carbine,carbon,carbonic,carbonyl,carboxy,card,cardamom,cardiac,cardinal,cardiod,cardioid,care,careen,career,carefree,careful,caret,careworn,carfare,cargo,cargoes,caribou,carload,carne,carney,carnival,carob,carol,carouse,carp,carpet,carport,carrel,carriage,carrot,carry,cart,carte,carton,cartoon,carve,carven,caryatid,cascade,cascara,case,casebook,casein,casework,cash,cashew,cashier,cashmere,cask,cassette,cassock,cast,castanet,caste,casteth,castle,castor,casual,casualty,cat,catalpa,catalyst,catapult,cataract,catawba,catbird,catch,catchup,catchy,category,catenate,cater,catfish,cathedra,cathode,cation,cationic,catkin,catlike,catnip,catsup,cattail,cattle,caucus,caught,cauldron,caulk,causal,causate,cause,caustic,caution,cautious,cavalier,cavalry,cave,caveat,caveman,cavemen,cavern,caviar,cavil,cavitate,cavort,caw,cayenne,cease,cedar,cede,cedilla,ceil,celerity,celery,celesta,cell,cellar,cellular,cement,cemetery,censor,censure,census,cent,centaur,central,centric,centrist,centroid,centum,century,ceramic,ceramium,cereal,cerebral,ceremony,cereus,cerise,cerium,certain,certify,cesium,cession,chagrin,chain,chair,chairman,chairmen,chaise,chalet,chalice,chalk,chalky,chamber,chamfer,chamois,champ,champion,chance,chancel,chancery,chancy,chandler,change,channel,chanson,chant,chantey,chantry,chap,chapel,chaperon,chaplain,chapter,charcoal,chard,charge,chariot,charisma,charity,charm,chart,chase,chasm,chassis,chaste,chastise,chat,chateau,chaw,cheap,check,checkout,checksum,checkup,cheek,cheer,cheerful,cheery,cheese,cheesy,cheetah,chef,chelate,chemic,chemise,chemist,chenille,cherish,cherry,chert,cherub,cherubim,chess,chest,chestnut,chevron,chevy,chew,chicken,chicory,chide,chief,chiefdom,chiffon,child,childish,children,chili,chill,chilly,chime,chimera,chimeric,chimney,chin,chinch,chine,chip,chipmunk,chirp,chisel,chiton,chivalry,chive,chlorate,chloride,chlorine,chock,choice,choir,cholera,choose,choosy,chop,choppy,choral,chorale,chord,chordal,chordata,chordate,chore,chorine,chortle,chorus,chose,chosen,chow,chowder,chromate,chrome,chromic,chromium,chronic,chuckle,chuff,chunk,churn,chute,chutney,cicada,cider,cilia,ciliate,cinch,cinder,cinema,cinnabar,cinnamon,cipher,circa,circle,circlet,circuit,circular,circus,cistern,citadel,citation,cite,citizen,citrate,citric,citron,citrus,city,citywide,civet,civic,civil,civilian,clad,claim,claimant,clam,clamber,clammy,clamp,clan,claret,clarify,clarinet,clarity,clash,clasp,class,classic,classify,classy,clatter,clattery,clause,claw,clay,clean,cleanse,cleanup,clear,cleat,cleft,clement,clench,cleric,clerk,clever,cliche,click,client,cliff,climate,climatic,climb,clime,clinch,cling,clinging,clinic,clink,clip,clique,cloak,clock,clog,clogging,clone,clonic,close,closet,closeup,closure,clot,cloth,clothe,clothier,cloture,cloud,cloudy,clout,clove,cloven,clown,cloy,club,clubroom,cluck,clue,clump,clumsy,clung,cluster,clutch,clutter,coach,coachman,coachmen,coal,coalesce,coarse,coarsen,coast,coastal,coat,coattail,coauthor,coax,coaxial,cobalt,cobble,cobra,cobweb,cockpit,cocoa,coconut,cocoon,cod,coda,code,codeword,codfish,codicil,codify,codomain,coed,




























coeditor,coequal,coerce,coercion,coercive,coexist,cofactor,coffee,coffer,cog,cogent,cogitate,cognate,cohere,coherent,cohesion,cohesive,cohort,cohosh,coiffure,coil,coin,coinage,coincide,colander,cold,coleus,coliform,coliseum,collage,collagen,collapse,collar,collard,collate,collect,college,collet,collide,collie,colloquy,collude,colonel,colonial,colonist,colony,colorate,colossal,colossi,colossus,colt,coltish,column,columnar,colza,comb,combine,comeback,comedian,comedy,comet,cometary,comfort,comic,comma,command,commend,comment,commerce,commit,common,commute,compact,company,compare,compass,compel,compete,compile,complain,compleat,complete,complex,compline,comply,comport,compose,compote,compound,compress,comprise,compute,comrade,concave,conceal,concede,conceit,concept,concern,concert,concerti,concerto,conch,concise,conclave,conclude,concoct,concord,concrete,concur,condemn,condense,condone,conduce,conduct,conduit,cone,confect,confer,conferee,confess,confide,confine,confirm,confocal,conform,confound,confrere,confront,confute,congeal,congener,congest,congress,conic,conifer,conjunct,conjure,connect,connive,connote,conquer,conquest,consent,conserve,consider,consign,consist,console,conspire,constant,construe,consul,consular,consult,consume,contact,contain,contend,content,context,continua,continue,continuo,contort,contour,contract,contrary,contrast,contribu,contrite,contrive,control,convect,convene,convent,converge,converse,convert,convex,convey,conveyor,convict,convince,convoke,convolve,convoy,convulse,cook,cookbook,cookery,cookie,coolant,coop,coot,cop,cope,copious,coplanar,copperas,coppery,copra,coprinus,copy,copybook,coquette,coquina,coral,corbel,cord,cordage,cordial,cordite,cordon,corduroy,core,cork,corn,cornea,cornet,cornish,cornmeal,corny,corona,coronary,coronate,coroner,coronet,corpora,corporal,corps,corpsman,corpsmen,corpus,corral,correct,corridor,corrode,corsage,cortege,cortex,cortical,corundum,corvette,cosmetic,cosmic,cosmos,cost,costume,cosy,cot,cotman,cotta,cottage,cotton,couch,cougar,cough,could,coulomb,council,counsel,count,country,county,coup,coupe,couple,coupon,courage,courier,course,court,courtesy,courtier,couscous,cousin,covalent,covary,cove,covenant,cover,coverage,coverall,coverlet,cowbell,cowbird,cowboy,cowgirl,cowhand,cowherd,cowhide,cowl,coworker,cowpox,coy,coyote,cozy,crab,crabmeat,cradle,craft,crafty,cramp,crane,crania,cranium,cranny,crass,crate,crater,cravat,crave,craw,crawl,crayfish,crayon,craze,crazy,creak,creaky,crease,create,creating,creature,creche,credent,credenza,credible,credit,creditor,credo,creed,creedal,creek,creosote,crepe,crept,crescent,cress,crest,crevice,crew,crewcut,crewel,crewman,crewmen,crib,cricket,cried,crime,crimson,crinkle,crisp,criss,criteria,critic,critique,critter,croak,crochet,croft,crone,crony,crook,croon,crop,croquet,cross,crossarm,crossbar,crossbow,crosscut,crossway,crouch,crow,crowd,crowfoot,crown,crucial,crucible,cruise,crumb,crumble,crumple,crunch,crupper,crusade,crush,crust,cry,cryptic,crystal,cub,cube,cubic,cuckoo,cucumber,cud,cuddle,cuddly,cudgel,cue,cuff,cufflink,cuisine,culinary,cull,culpable,culprit,cultural,culture,culvert,cumin,cumulate,cumulus,cunning,cup,cupboard,cupful,cupidity,cupric,cuprous,cur,curate,curb,curbside,curd,curdle,cure,curfew,curia,curie,curio,curious,curium,curl,curlew,curlicue,currant,current,curry,cursive,cursor,cursory,curt,curtail,curtain,curtsey,curve,cushion,cusp,custody,custom,cut,cutback,cute,cutesy,cutlass,cutler,cutlet,cut,cutout,cutover,cutset,cutworm,cycad,cycle,cyclic,cyclist,cyclone,cylinder,cynic,cypress,cyst,cysteine,cytology,dab,dabble,dactyl,dactylic,dad,daddy,daffodil,daffy,dagger,dahlia,dainty,dairy,dairyman,dairymen,daisy,dale,dally,damp,dampen,dance,dandy,dapper,dapple,dare,dark,darken,darkle,darling,dart,dash,data,database,date,dateline,dater,datum,daub,daughter,daunt,dauphin,dauphine,davit,dawn,day,daybreak,daydream,daylight,daytime,daze,dazzle,deadline,deadlock,deal,dealt,dean,dear,dearie,dearth,debar,debate,debater,debility,debit,de




























bonair,debrief,debris,debt,debtor,debug,debugged,debunk,debut,decade,decadent,decal,decant,decay,decedent,deceit,decent,decibel,decide,decile,decimal,decipher,decision,decisive,deck,declaim,declare,decline,decode,decor,decorate,decorous,decorum,decouple,decoy,decrease,decree,decry,dedicate,deduce,deed,deem,deep,deepen,deer,deerskin,deface,default,defeat,defector,defend,defer,deferent,deferred,define,definite,deflect,deforest,deft,degree,delay,delegate,delicacy,delicate,delight,delimit,delirium,deliver,delivery,dell,delphine,delta,deltoid,delude,deluge,delusion,delusive,deluxe,delve,demand,demark,demitted,demo,den,denature,dendrite,denizen,denote,dense,dent,dental,denture,depart,depend,depict,deplete,deploy,depose,deposit,depot,depth,depute,deputy,derby,derivate,derive,dervish,descant,descend,descent,describe,desert,deserve,design,desist,desk,despite,dessert,destine,destiny,detach,detail,detain,detect,detector,deter,detour,deuce,develop,device,devote,devotee,devotion,dew,dewar,dewdrop,dextrose,dextrous,diadem,diagnose,diagonal,diagram,dial,dialect,dialogue,diameter,diamond,diary,diatom,diatomic,diatonic,dice,did,didactic,diesel,diet,dietary,dietetic,differ,diffract,diffuse,dig,digest,digging,digit,digital,dignify,dignity,digram,digress,dihedral,dilemma,diligent,dill,diluent,dilute,dilution,dim,dime,dimethyl,diminish,dimple,dine,dinosaur,diode,diopter,diorama,diorite,dioxide,dip,diploid,diploidy,diplo,diplomat,direct,director,disburse,disc,discern,disco,discreet,discrete,discus,discuss,dish,dishes,dishevel,disjunct,disk,dispel,dispense,disperse,dissuade,distaff,distal,distant,distinct,district,dither,ditto,dive,diverge,diverse,divert,divest,divide,dividend,division,divisor,divulge,do,doberman,dock,docket,dockside,dockyard,doctor,doctoral,doctrine,document,dodge,doe,dog,doghouse,dogwood,doldrum,doldrums,dole,doleful,doll,dollar,dollop,dolly,dolomite,dolphin,domain,dome,domestic,domicile,domino,donate,done,door,doorbell,doorkeep,doorknob,doorman,doormen,doorstep,doorway,dormant,dossier,dot,dote,double,doublet,doubt,doubtful,dough,doughnut,dour,douse,dove,dovetail,dowel,down,downplay,downpour,downtown,downward,downwind,dowry,doze,dozen,drab,draft,drag,dragging,dragnet,dragon,dragoon,drain,drainage,drake,dram,drama,dramatic,drape,drapery,drastic,draw,drawback,drawl,drawn,dream,dreamt,dreamy,dredge,dreg,drench,dress,dressy,drew,drib,dried,drier,drift,drill,drink,drive,driven,driveway,drizzle,drizzly,droll,drone,drop,droplet,dross,drought,drove,drowse,drowsy,drub,druid,drum,drumhead,drumlin,dry,dryad,dual,dualism,dub,ducat,duchess,duck,duckling,duct,ductile,ductwork,dud,due,duel,duet,duff,duffel,dug,dugout,duke,dukedom,dulcet,dull,dully,dulse,duly,dune,dunk,duopoly,duplex,durable,durance,duration,during,dusk,dust,dustbin,dusty,dutchess,dutiable,dutiful,duty,dwindle,dyad,dyadic,dye,dyeing,dyer,dynamic,dynamism,dynasty,each,eager,eagle,ear,eardrum,earl,earmark,earn,earnest,earphone,earring,earth,earthy,ease,easel,east,eastern,eastward,easy,eave,ebb,ebony,echelon,echo,echoes,eclectic,eclipse,ecliptic,eclogue,ecology,economic,economy,ectoderm,ectopic,ecumenic,eddy,edge,edgewise,edging,edgy,edict,edifice,edify,edit,edition,editor,educable,educate,eel,eerie,eerily,efface,effect,efferent,efficacy,effort,effusion,effusive,egg,eggplant,eggshell,egress,egret,eider,eidetic,eight,eighteen,eighth,eighty,either,elapse,elastic,elate,elbow,elder,eldest,elect,elector,electret,electric,electro,electron,elegant,elegiac,elegy,element,elephant,elevate,eleven,eleventh,elfin,elicit,elide,eligible,elision,elite,elk,ellipse,ellipsis,elliptic,elm,eloquent,else,eluate,elute,elution,elves,elysian,emaciate,emanate,embank,embargo,embark,embassy,ember,embezzle,emblazon,emblem,embody,embolden,emboss,embower,embrace,emcee,emerald,emerge,emergent,emeriti,emeritus,emigrant,emigrate,eminent,emirate,emissary,emotion,empathy,emperor,emphases,emphasis,emphatic,empire,empiric,emplace,employ,employed,employee,employer,emporium,empower,empress,empty,emulate,emulsify,emulsion,




























enable,enamel,enclave,encomia,encomium,encore,encroach,end,endemic,endgame,endoderm,endogamy,endorse,endow,endpoint,endure,energy,enervate,enfant,engage,engine,engineer,enhance,enigma,enliven,enol,enough,enquire,enquiry,enrollee,ensconce,ensemble,entendre,enter,enthalpy,enthrall,entice,entire,entirety,entity,entrant,entropy,entry,envelop,envelope,enviable,environ,envoy,enzyme,epic,epicure,epicycle,epidemic,epigram,epigraph,epilogue,episode,episodic,epistle,epitaph,epithet,epitome,epoch,epochal,epoxy,epsilon,equable,equal,equate,equine,equinox,equip,equipped,equity,era,erasable,erase,erasure,erg,ergative,ergodic,erode,erodible,erosible,erosion,erosive,errand,errant,errantry,ersatz,erudite,erupt,eruption,escalate,escapade,escape,escapee,escheat,eschew,escort,escrow,esophagi,esoteric,especial,espousal,espouse,esprit,esquire,essay,essence,estate,esteem,ester,estimate,estrange,estuary,etch,eternal,eternity,ethane,ethanol,ether,ethereal,ethic,ethology,ethos,ethyl,ethylene,etude,eucre,eugenic,eulogy,eureka,eutectic,evacuate,evade,evaluate,evangel,eve,even,evensong,event,eventful,eventide,eventual,every,everyday,everyman,everyone,evict,evident,evocable,evocate,evoke,evolve,evzone,ewe,exact,exacter,exalt,exam,examine,example,excavate,exceed,excel,excelled,except,excerpt,excess,excise,excision,excite,exclaim,exclude,excuse,executor,exemplar,exempt,exercise,exert,exhale,exhaust,exhort,exile,exist,existent,exit,exodus,expand,expanse,expect,expedite,expend,expense,expert,expiable,expiate,expire,explain,explicit,explode,exploit,explore,exponent,export,expose,exposit,exposure,expound,express,extant,extend,extensor,extent,exterior,external,extinct,extol,extolled,extoller,extra,extract,extrema,extremal,extreme,extremis,extremum,extrude,exult,exultant,eye,eyeball,eyebrow,eyed,eyeful,eyeglass,eyelash,eyelet,eyelid,eyepiece,eyesight';

WORDS3 CONSTANT VARCHAR2(32726) := 'fable,fabric,fabulous,facade,face,facet,facial,facile,fact,factor,factory,factual,faculty,fad,fade,fadeout,fain,faint,fair,fairgoer,fairway,falcon,falconry,fall,fallen,fallible,falloff,fallout,fallow,fame,familial,familiar,familism,family,famine,famish,famous,fan,fanatic,fanciful,fancy,fanfare,fanfold,fantasy,far,farce,fare,farewell,farm,farmland,fashion,fast,fasten,fate,fateful,father,fathom,fatigue,faucet,faun,fauna,fawn,feasible,feast,feat,feather,feathery,feature,fed,federal,federate,fee,feed,feedback,feel,feet,feign,feint,feldspar,felicity,feline,fell,fellow,female,femur,fence,fend,fennel,ferment,fern,fernery,ferocity,ferret,ferric,ferris,ferrite,ferrous,ferrule,ferry,fertile,fervent,fescue,fest,festival,festive,fetch,fete,fetid,fetish,fetter,fettle,feud,feudal,fever,feverish,few,fiance,fiancee,fibrin,fibrosis,fibrous,fiche,fickle,fiction,fictive,fiddle,fide,fidelity,fidget,fiducial,fief,fiefdom,field,fiend,fiendish,fierce,fiery,fiesta,fife,fifteen,fifth,fiftieth,fifty,fig,figure,figurine,filament,filbert,filch,file,filet,filial,fill,filled,filler,fillet,filly,film,filmdom,filmy,filter,filtrate,fin,final,finale,finance,finch,find,fine,finery,finesse,finessed,finger,finicky,finish,finite,fir,fire,fireboat,firebug,firefly,fireman,firemen,fireside,firewall,firewood,firework,firm,firmware,first,fiscal,fish,fishery,fishpond,fishy,fission,fissure,fist,fit,fitful,five,fivefold,fix,fixate,fixture,fizzle,fjord,flack,flag,flagpole,flagrant,flail,flair,flak,flake,flaky,flame,flamingo,flange,flank,flannel,flap,flare,flash,flashy,flask,flat,flatbed,flathead,flatiron,flatland,flatten,flattery,flatware,flatworm,flaunt,flax,flaxen,flaxseed,flea,fleck,fled,fledge,flee,fleece,fleeing,fleet,flemish,fletch,flew,flex,flexible,flick,flier,flight,flimsy,flinch,fling,flint,flinty,flippant,flirt,flit,float,flood,floodlit,floor,flora,floral,florist,flotilla,flounder,flour,flourish,flow,flowery,flown,flu,flue,fluency,fluent,fluff,fluffy,fluid,fluke,flung,fluoride,fluorine,fluorite,flurry,fluster,flute,flutter,fluvial,flux,fly,flyer,flyway,foal,foam,focal,foci,focus,focussed,foe,fog,fogging,foggy,fogy,foible,foil,foist,fold,foldout,foliage,foliate,folio,folk,folklore,folksong,folksy,follicle,follow,folly,fondly,font,food,foot,footage,football,footfall,foothill,footman,footmen,footnote,footpad,footpath,footstep,footwear,footwork,for,forage,foray,forbade,forbear,forbid,forbore,forborne,force,forceful,forcible,ford,fore,foreign,forest,forestry,forever,forfeit,forfend,forgave,forge,forget,forgive,forgiven,forgo,forgot,fork,forklift,forlorn,form,formal,formant,format,formate,formic,formula,formulae,forsake,forsaken,forsook,forswear,fort,forte,forth,fortieth,fortify,fortin,fortiori,fortran,fortress,fortune,forty,forum,forward,forwent,fossil,foster,fought,foul,found,fountain,four,fourfold,foursome,fourteen,fourth,fovea,fowl,fox,foxglove,foxhole,foxhound,foxtail,foyer,fraction,fracture,fragile,fragment,fragrant,frail,frailty,frame,franc,franca,frank,franklin,fray,frayed,freckle,free,freed,freedmen,freedom,freehand,freehold,freeing,freeman,freemen,freer,freest,freeway,freeze,freight,frenetic,frenzy,freon,frequent,fresco,frescoes,fresh,freshen,friction,fried,friend,frieze,frigid,frill,frilly,fringe,frisky,frizzle,fro,frock,frog,frolic,from,front,frontier,frost,frosty,froth,frothy,frown,frowzy,froze,frozen,fructose,frugal,fruit,fruitful,fruition,fry,fudge,fuel,fugitive,fulcrum,fulfill,full,fullback,fully,fumble,fume,fumigant,fumigate,fun,function,fund,fungal,fungi,funnel,funny,fur,furbish,furious,furl,furlong,furlough,furnace,furnish,furrier,furrow,furry,further,furthest,furtive,fury,furze,fuse,fuselage,fusible,fusion,fuss,fussy,futile,future,fuzz,fuzzy,gab,gabble,gable,gadget,gadgetry,gage,gaggle,gain,gainful,gait,gal,gala,galactic,galaxy,gale,gall,gallant,gallery,galley,gallon,gallop,galvanic,gambit,gamble,game,gamesman,gamut,gander,gannet,gantlet,gantry,gap,gape,garage,garb,garble,garden,gardenia,gargle,garish,garland,gar




























lic,garner,garnet,garrison,garter,gash,gasket,gaslight,gasoline,gasp,gate,gatekeep,gateway,gather,gator,gauche,gaudy,gauge,gaunt,gauntlet,gauss,gauze,gave,gavel,gavotte,gawk,gaze,gazelle,gazette,gear,gecko,geese,gel,gelable,gelatin,gelatine,gem,geminate,gemlike,gemstone,gene,genera,general,generate,generic,generous,genesis,genetic,genial,genie,genius,genotype,genre,gent,genteel,gentian,gentile,gentle,gentry,genuine,genus,geometer,geranium,germ,germane,germinal,gerund,gestalt,gesture,get,getaway,geyser,ghastly,ghost,ghostly,ghoul,ghoulish,giant,giantess,gibbet,gibbon,giblet,giddy,gift,gig,gigaherz,gigantic,gigavolt,gigawatt,giggle,gila,gild,gill,gilt,gimmick,ginger,gingham,gingko,ginseng,giraffe,girl,girth,gist,give,giveaway,given,giveth,glacial,glaciate,glacier,glad,gladden,glade,glamor,glamour,glance,gland,glare,glass,glassy,glaucoma,glaucous,glaze,gleam,glean,glee,gleeful,glen,glib,glide,glimmer,glimpse,glint,glissade,glisten,glitch,glitter,gloat,glob,global,globe,globular,globule,globulin,gloom,gloomy,glorify,glorious,glory,gloss,glossary,glossed,glossy,glottal,glottis,glove,glow,glucose,glue,glued,gluey,gluing,glum,glut,glutamic,glutton,glycerin,glycerol,glycine,glycogen,glycol,glyph,gnarl,gnash,gnat,gnaw,gnome,gnu,go,goad,goal,goat,gobble,goblet,goes,gold,golden,goldfish,golf,gondola,gone,good,goodbye,goodwill,goose,gopher,gore,gorge,gorgeous,gorgon,gorilla,gorse,gory,gosling,gossamer,gossip,got,gouge,gourd,gourmet,gout,govern,governor,gown,grab,grace,graceful,gracious,grackle,grad,gradate,grade,gradient,gradual,graduate,graft,graham,grail,grain,grainy,grammar,granary,grand,grandeur,grandma,grandpa,grandson,granite,granitic,granny,granola,grant,grantee,grantor,granular,granule,grape,graph,graphic,graphite,grapple,grasp,grass,grassy,grate,grateful,grater,gratify,gratuity,grave,gravel,graven,gravid,gravy,gray,grayish,graze,grease,greasy,great,greater,grebe,greed,greedy,green,greenery,greenish,greet,grew,grey,grid,griddle,gridiron,grief,grieve,grievous,griffin,grill,grille,grilled,grim,grimace,grime,grin,grind,grip,gripe,grisly,grist,grit,gritty,grizzle,grizzly,groan,groat,grocer,grocery,groggy,groom,groove,gross,ground,group,grout,grove,grovel,grow,growl,grown,grownup,growth,grudge,gruesome,gruff,grumble,grunt,gryphon,guanine,guard,guardian,guerdon,guernsey,guess,guest,guffaw,guidance,guide,guiding,guignol,guild,guile,guinea,guise,guitar,gulf,gull,gullet,gullible,gully,gulp,gum,gumbo,gumdrop,gummy,gumption,gumshoe,gurgle,guru,gush,gusset,gust,gusto,gusty,gut,gutsy,guttural,guy,guzzle,gym,gymnast,gypsite,gypsum,gypsy,habit,habitant,habitat,habitual,hacksaw,had,haddock,hadron,haggard,haggle,haiku,hail,hair,haircut,hairdo,hairpin,hale,half,halfback,halfway,halibut,halide,halite,hall,hallmark,hallow,hallway,halo,halogen,halt,halve,ham,hamlet,hammock,hamper,hamster,hand,handbag,handbook,handcuff,handful,handle,handmade,handout,handset,handsome,handy,handyman,handymen,hang,hangar,hansom,happen,happy,harass,hardbake,harden,hardhat,hardtack,hardtop,hardware,hardwood,hardy,hare,hark,harm,harmful,harmonic,harmony,harness,harp,harpoon,harrow,harsh,harshen,hart,harvest,hassle,hast,haste,hasten,hasty,hat,hatch,hatchet,hath,haul,haulage,haunch,haunt,have,haven,havoc,hawk,hay,hayfield,haystack,hayward,hazard,haze,hazel,hazelnut,hazy,he,head,headache,headland,headline,headroom,headset,headsman,headsmen,headwall,headway,headwind,heal,health,healthy,heap,hear,heard,hearken,heart,hearten,hearth,hearty,heat,heater,heath,heathen,heave,heaven,heavy,hectic,hector,hedge,hedgehog,heed,heel,heft,hefty,hegemony,height,heighten,heir,heiress,held,helical,helium,helix,hello,helm,helmet,helmsman,helmsmen,help,helpful,helpmate,hem,hematite,hemlock,hen,hence,henpeck,heptane,her,herald,herb,herd,herdsman,here,hereby,heredity,heretic,hereto,hereunto,herewith,heritage,hero,heroes,heroic,heroism,heron,herself,hertz,hesitant,hesitate,hewn,hex,hexagon,hexane,hey,heyday,hi,hiatus,hibachi,hickory,hid,hidden,hide,hideaway,hideous,hideout,hieratic,highest,highland,h




























ighroad,hightail,highway,hike,hilarity,hill,hillside,hilltop,hilly,him,himself,hindmost,hinge,hint,hip,hippo,hire,hireling,his,hiss,historic,history,hit,hitch,hither,hitherto,hive,hoard,hoarse,hobble,hobby,hockey,hodge,hold,holden,holiday,holler,hollow,holly,hologram,holster,holt,homage,home,homeland,homemade,homesick,homeward,homework,homology,homonym,hone,honest,honesty,honey,honeybee,honeydew,honorary,honoree,hoof,hoofmark,hook,hookworm,hoop,hoot,hooves,hop,hope,hopeful,horde,horizon,horn,hornet,horse,horsedom,horsefly,horseman,horsemen,hose,hosiery,hospice,hospital,host,hostage,hostess,hostile,hotel,hotelman,hound,hour,house,housefly,hove,hovel,hover,how,howdy,however,howl,hub,hubris,huddle,hue,hued,huff,hug,huge,hugging,hull,hum,human,humane,humanoid,humble,humerus,humid,humidify,humility,hummock,humorous,humus,hunch,hundred,hungry,hunt,hurdle,hurl,hurley,hurrah,hurray,hurry,hurt,hurtle,husband,hush,husky,hustle,hut,hutch,hyacinth,hyaline,hybrid,hydra,hydrant,hydrate,hydride,hydro,hydrogen,hydrous,hydroxy,hydroxyl,hyena,hygiene,hymn,hymnal,hyphen,hypnosis,hypnotic,iambic,ice,iceberg,icebox,iceland,icicle,icon,iconic,icy,idea,ideal,identify,identity,ideology,idiom,idle,idyll,idyllic,if,igloo,igneous,ignite,ignition,ileum,iliac,illogic,illume,illumine,illusion,illusive,illusory,image,imagery,imagine,imbibe,imbrue,imbue,imitable,imitate,immanent,immature,immense,immerse,imminent,immobile,immune,impact,impair,impale,impart,impasse,impeach,impede,impel,impelled,impeller,impend,imperate,imperial,imperil,impetus,impiety,impinge,implicit,implore,import,impose,impost,impound,impress,imprint,improve,impudent,impugn,impulse,impunity,impute,inaction,inactive,incant,incense,inceptor,inch,incident,incise,incisive,incite,incline,inclose,include,income,increase,incubate,incur,incurred,incurrer,indebted,indeed,indent,index,indicant,indicate,indices,indict,indigene,indigent,indigo,indirect,indoor,indorse,induce,induct,inductee,inductor,industry,inequity,inert,inertia,inertial,inexact,inexpert,infancy,infant,infantry,infer,inferred,infield,infight,infinite,infinity,infirm,inflate,inflater,inflect,inflict,inflow,influent,influx,inform,informal,infract,infrared,infringe,infuse,infusion,ingather,ingest,ingrown,inhabit,inhale,inhere,inherent,inherit,inhibit,inhuman,inimical,iniquity,initial,initiate,inject,injunct,injure,injury,ink,inkling,inlaid,inland,inlay,inlet,inmate,inn,innate,inner,innocent,innovate,innuendo,input,inquest,inquire,inquiry,inroad,inscribe,insect,insecure,insert,inset,inshore,inside,insight,insignia,insist,insomnia,inspect,inspire,install,instance,instant,instead,instep,instill,instinct,instruct,insular,insulate,insulin,insult,insure,intact,intake,integer,integral,intend,intense,intent,inter,intercom,interest,interim,interior,intermit,intern,internal,interval,into,intonate,intone,intrepid,intrigue,introit,intrude,intuit,inundate,inure,invade,invasion,invasive,inveigh,inveigle,invent,inventor,inverse,invert,invest,investor,inviable,invite,invitee,invocate,invoice,invoke,involve,inward,iodide,iodine,ion,ionic,irate,iridium,iris,iron,ironic,ironside,ironwood,is,island,isle,isolate,isomer,isomorph,isotherm,isotope,isotopic,isotropy,issuance,issuant,issue,it,italic,item,iterate,itself,ivory,ivy,jacket,jackpot,jade,jag,jaguar,jamboree,jangle,janitor,jar,jargon,jasper,jaundice,jaunty,javelin,jaw,jawbone,jawbreak,jazz,jazzy,jelly,jersey,jest,jet,jetliner,jettison,jewel,jewelry,jig,jigsaw,jilt,jingle,jittery,jive,job,jockey,jog,jogging,joggle,join,jolly,jolt,jostle,jot,joule,jounce,journal,journey,joust,jovial,jowl,jowly,joy,joyful,joyous,jubilant,jubilate,jubilee,judge,judicial,judo,jug,jugate,jugging,juggle,juice,jumble,jumbo,jump,junction,junctor,juncture,jungle,junior,juniper,juror,jury,just,justice,justify,jut,juvenile,kaiser,kale,kangaroo,keel,keen,keep,kept,kerchief,kern,kernel,kerosene,ketch,ketchup,ketone,ketosis,kettle,key,keyboard,keyed,keyhole,keynote,keys,keystone,khaki,kickoff,kid,kidney,kilo,kilohm,kimono,kin,kind,kin




























dle,kindred,kinesic,kinetic,king,kingbird,kingdom,kiosk,kit,kitchen,kite,kitten,kittle,kitty,kiwi,knack,knapsack,knead,knee,kneecap,kneel,knell,knelt,knew,knick,knight,knit,knobby,knock,knockout,knoll,knot,knotty,know,knoweth,knowhow,known,knuckle,knurl,koala,kosher,kraft,lab,label,labour,lace,lacerate,laconic,lacquer,lacrosse,lacuna,lacunae,lacy,lad,laden,ladle,lady,ladyfern,lag,lagging,lagoon,lain,lair,laissez,laity,lake,lakeside,lam,lamb,lament,laminate,lamp,lampoon,lamprey,lance,land,landfill,landhold,landlord,landmark,lane,language,languid,languish,lanky,lantern,lap,lapel,lapelled,lapidary,lapse,larch,large,largesse,lariat,lark,larkspur,larva,larvae,larval,larynges,larynx,lash,lasso,last,latch,late,latent,later,latera,lateral,laterite,lath,lathe,latitude,latter,lattice,latus,laud,laudanum,laugh,laughter,launch,laundry,laureate,laurel,lava,lavatory,lavender,lavish,law,lawful,lawn,lawyer,lay,layette,layman,laymen,layoff,layout,layup,laze,lazy,lea,lead,leaden,leadeth,leadsman,leadsmen,leaf,leaflet,leafy,league,leak,leakage,leaky,lean,leap,leapfrog,leapt,learn,lease,leash,least,leather,leathery,leave,leaven,lectern,lecture,led,ledge,leek,leer,leery,leeward,leeway,left,leftmost,leftover,leftward,lefty,leg,legacy,legal,legate,legato,legend,legging,legible,legion,leisure,lemming,lemon,lemonade,lend,length,lengthen,lengthy,lenient,lens,lentil,leonine,leopard,lesson,lessor,lest,let,lethal,lethargy,lettuce,leucine,levee,level,lever,leverage,levitate,levity,levulose,levy,lew,lexical,lexicon,liable,liaison,liberal,liberate,liberty,library,librate,libretto,licensee,licensor,lichen,licorice,lid,lien,lieu,life,lifeboat,lifelike,lifelong,lifespan,lifetime,lift,ligament,ligand,ligature,light,lighten,like,liken,likewise,lilac,lilt,lily,lim,limb,limbic,lime,limp,linden,line,lineage,lineal,linear,lineman,linemen,linen,lineup,linger,lingual,linguist,liniment,link,linkage,linoleum,linseed,lint,lion,lioness,lip,lipid,lipread,lipstick,liquefy,liquid,liquidus,lisle,list,listen,lit,litany,literacy,literal,literary,literate,lithe,lithic,lithium,litigant,litigate,litmus,little,littoral,live,liven,livery,liveth,livid,livre,lizard,load,loaf,loam,loamy,loan,loaves,lobby,lobe,lobster,lobular,lobule,local,locale,locate,loci,lock,lockout,lockstep,lockup,locomote,locus,locust,locution,locutor,lodge,loft,lofty,log,loge,logging,logic,logician,logistic,logjam,logo,lollipop,lone,lonesome,long,longhand,longhorn,longish,longleg,longtime,look,lookout,lookup,loom,loop,loophole,loose,loosen,loot,lop,lope,lopseed,lopsided,lore,losable,loss,lossy,lost,lot,lotion,lottery,lotus,loud,lounge,love,lovebird,lovelorn,low,lowdown,lower,lowland,loy,loyal,loyalty,lozenge,lucid,luck,lucky,lug,luge,luggage,lugging,lukewarm,lull,lullaby,lumbar,lumber,lumen,luminary,luminous,lump,lunar,lunary,lunate,lunch,luncheon,lung,lunge,lupine,lurch,lure,lurk,lute,lutetium,lux,luxe,luxury,lyric';

WORDS4 CONSTANT VARCHAR2(32726) := 'machination,machine,mackerel,macro,madam,made,madrigal,maestro,magazine,magenta,magi,magic,magician,magma,magnate,magnesia,magnet,magnetic,magnify,magnolia,magnum,mahogany,maid,maiden,mail,mailbox,mailman,mailmen,maim,main,mainland,mainline,mainstay,maintain,majestic,majesty,major,make,makeup,maladapt,malady,malaprop,malaria,malarial,male,maledict,mall,mallard,mallet,mallow,malposed,malt,maltose,maltreat,mambo,mammal,mammoth,man,manage,manatee,mandarin,mandate,mandrake,mandrel,mandrill,mane,maneuver,mange,mangle,manhole,manhood,manic,manifest,manifold,mankind,manna,manor,mansion,mantel,mantissa,mantle,manual,manumit,many,map,maple,mar,marathon,maraud,marble,march,mare,margin,marginal,marigold,marimba,marina,marinade,marinate,marine,marital,maritime,mark,market,marlin,marmot,maroon,marquee,marquess,marquis,marriage,married,marrow,marry,marsh,marshal,mart,martial,marvel,mascara,mash,mask,mason,masonry,mass,massage,masseur,massive,mast,mastery,mastodon,mat,match,mate,material,materiel,maternal,matinee,matrices,matrix,matron,matte,mattress,maturate,mature,maudlin,maul,mauve,maverick,max,maxima,maximal,maximum,may,maybe,mayor,mayoral,maze,me,mead,meadow,meager,meal,mealtime,meander,meant,meantime,measle,measure,meat,meaty,mechanic,medal,meddle,media,medial,median,mediate,medic,medicate,medicine,meditate,medium,medlar,medley,meek,meet,megabit,megabyte,megaton,megavolt,megawatt,megaword,megohm,meiosis,melamine,melange,melanin,melanoma,meld,melee,mellow,melodic,melody,melon,melt,meltdown,member,membrane,memento,memo,memoir,memorial,memory,men,menace,mend,menial,meniscus,mention,mentor,menu,merchant,mercuric,mercury,mere,merge,meridian,meringue,merit,merlin,mermaid,merry,mesa,mesh,mesmeric,mesoderm,meson,mesquite,mess,message,messy,met,metabole,metal,metallic,metaphor,meteor,meteoric,meter,methane,methanol,method,methodic,metric,metro,mettle,mew,mezzo,mica,mice,micro,micron,mid,midband,midday,middle,midnight,midpoint,midrange,midscale,midspan,midst,midterm,midway,midweek,might,mighty,mignon,migrant,migrate,mild,mildew,mile,mileage,milieu,militant,military,militate,milk,milkweed,milky,mill,millenia,miller,millet,mill,millions,mimesis,mimetic,mimic,mimicked,min,minaret,mince,mind,mindful,mine,mineral,mingle,mini,minibike,minimal,minimum,minion,ministry,mink,minnow,minor,minstrel,mint,minuet,minus,minute,minutiae,miracle,mirage,mire,mirror,mirth,miscible,miser,misnomer,miss,missile,mission,missive,mist,misty,mite,mitigate,mitosis,mitral,mitre,mitt,mitten,mix,mixture,mixup,mnemonic,moat,mobile,mobility,moccasin,mock,mockery,mockup,modal,mode,model,modem,moderate,modern,modest,modesty,modify,modish,modular,modulate,module,moduli,modulo,modulus,modus,moiety,moire,moist,moisten,moisture,molal,molar,molasses,mold,mole,molecule,molehill,mollify,mollusk,molt,molten,moment,momenta,momentum,mommy,monad,monadic,monarch,monarchy,monastic,monaural,monel,monetary,money,mongoose,monic,monies,monitor,monitory,monkey,monoid,monolith,monomer,monomial,monopoly,monoxide,monsoon,monster,montage,monte,month,monument,mood,moody,moon,moonlit,moor,moose,moot,mop,moral,morale,more,morel,moreover,morn,morose,morpheme,morphism,morrow,morsel,mort,mortal,mortar,mortem,mortgage,mortify,mortise,mosaic,mosque,mosquito,moss,mossy,most,mot,motel,moth,mothball,mother,motif,motion,motivate,motive,motley,motor,mottle,motto,mound,mount,mountain,mourn,mournful,mouse,mousy,mouth,mouthful,move,movie,mow,much,mucosa,mucus,mud,muddle,muddy,mudguard,mudsling,muffin,muffle,mug,muggy,mulberry,mulch,mule,mulish,mull,mulligan,multi,multiple,multiply,mum,mumble,mummy,munch,mundane,mung,munition,muon,mural,murk,murky,murmur,muscle,muscular,museum,mush,mushroom,mushy,music,musicale,musician,musk,muskox,muskoxen,muskrat,mussel,must,mustache,mustang,mustard,musty,mutagen,mutandis,mutant,mutate,mutatis,mute,mutineer,mutiny,mutt,mutter,mutton,mutual,mutuel,muzzle,my,mycology,myel,myeline,myeloid,mylar,mynah,myopia,myopic,myosin,myriad,myrtle,myself,mystery,




























mystic,mystify,mystique,myth,mythic,nab,nag,nagging,naiad,nail,name,nameable,namesake,nap,nape,napkin,narrate,narrow,nary,nasal,nascent,natal,nation,native,natural,nature,nautical,nautilus,naval,nave,navel,navigate,navy,neap,near,nearby,nearest,neat,neater,neath,nebula,nebulae,nebular,nebulous,neck,necklace,neckline,necktie,nectar,nectary,need,needful,needham,needle,neither,nemesis,neon,neonatal,neonate,neophyte,neoprene,nepenthe,nephew,nerve,nest,nestle,net,nether,nettle,network,neural,neuritis,neuron,neuronal,neutral,neutrino,neutron,never,new,newborn,newcomer,newel,newfound,newline,newlywed,newsboy,newscast,newsman,newsmen,newsreel,newt,newton,next,niacin,nibble,nice,nicety,niche,nick,nickel,nickname,niece,nigh,night,nimble,nimbus,nine,ninebark,ninefold,nineteen,ninety,ninth,nitrate,nitric,nitride,nitrite,nitrogen,no,nob,nobelium,noble,nobleman,noblemen,noblesse,nobody,nocturne,nod,nodal,node,nodular,nodule,noise,noisy,nomad,nomadic,nominal,nominate,nominee,none,noodle,nook,noon,noontime,nor,north,northern,nose,nostril,not,notary,notch,note,notebook,notice,notify,notion,noun,nourish,nouveau,nova,novel,novelty,novice,now,nowaday,nowadays,nowhere,nozzle,nuance,nucleate,nuclei,nucleic,nucleoli,nucleus,nuclide,nudge,nugget,numb,numeral,numerate,numeric,numerous,numinous,nurse,nursery,nurture,nutmeg,nutrient,nutshell,nuzzle,nylon,oak,oaken,oakwood,oar,oasis,oat,oath,oatmeal,obduracy,obdurate,obelisk,obey,object,objector,objet,oblate,obligate,oblige,oblique,oblong,oboe,oboist,observe,obsidian,obsolete,obstacle,obstruct,obtain,obtrude,obverse,obviate,obvious,occasion,occident,occlude,occupant,occupy,occur,occurred,ocean,oceanic,ocelot,octagon,octal,octane,octant,octave,octet,octile,octopus,ocular,ode,odious,odium,odometer,oersted,of,off,offal,offbeat,offend,offer,offhand,office,official,officio,offload,offset,offshoot,offshore,offstage,oft,often,ogle,ohm,ohmic,ohmmeter,oil,oilcloth,oilman,oilmen,oilseed,oily,oint,ointment,okay,old,olden,oldster,oldy,oleander,olefin,olive,olivine,omelet,omicron,ominous,omnibus,on,once,oncology,oncoming,one,onerous,oneself,onetime,ongoing,onion,only,onrush,onset,onto,ontogeny,ontology,onus,onward,onyx,oocyte,ooze,opacity,opal,opaque,open,opera,operable,operand,operant,operate,operatic,operetta,operon,opine,opinion,opossum,opponent,oppose,opposite,opt,optic,optima,optimal,optimism,optimist,optimum,option,opulent,or,oracle,oracular,orange,orate,oratoric,oratorio,oratory,orb,orbit,orbital,orchard,orchid,ordain,ordeal,order,orderly,ordinal,ordinary,ordinate,ordnance,ore,oregano,organic,origin,original,oriole,ornament,ornate,ornately,orthant,orthicon,orthodox,osier,osmium,osmosis,osmotic,osprey,osseous,ossify,ostrich,other,otiose,otter,ought,ounce,our,oust,out,outlawry,oval,oven,over,overhang,overt,overture,owl,owly,own,ox,oxalate,oxalic,oxcart,oxen,oxeye,oxidant,oxidate,oxide,oxygen,oyster,ozone,pace,pacemake,pacific,pacifism,pacifist,pacify,pack,package,packet,pact,pad,paddock,paddy,padlock,page,pageant,paginate,paid,pail,paint,pair,pairwise,pal,palace,palate,palazzi,palazzo,pale,palette,palfrey,palisade,pall,palladia,pallet,palliate,pallid,palm,palmate,palmetto,palpable,palsy,pamper,pamphlet,pan,panacea,panama,pancake,pancreas,panda,pane,panel,panorama,pant,pantheon,panther,pantry,papa,papery,paprika,papyrus,par,parabola,parade,paradigm,paradise,paradox,paraffin,paragon,parakeet,parallax,parallel,parasite,parasol,paraxial,parboil,parcel,parch,pardon,pare,parent,parental,pariah,park,parkish,parkland,parkway,parody,parquet,parrot,parry,parse,parsley,parsnip,parson,part,partake,partial,particle,partisan,partner,partook,party,paschal,pass,passage,passband,passe,passer,passerby,passion,passive,passport,past,paste,pastel,pastime,pastoral,pastry,pasture,pat,patch,patchy,pate,patent,patentee,pater,paternal,path,pathfind,pathogen,pathway,patient,patio,patriot,patrol,patron,pattern,pause,pave,paw,pawn,pawnshop,pax,pay,paycheck,payday,payoff,payroll,pea,peace,peaceful,peach,peacock,peak,peal,peanut,pear,pearl,pe




























at,pebble,pecan,peccary,peck,pectoral,peculate,peculiar,pedagogy,pedal,pedant,pedantic,pedantry,peddle,pedestal,pedigree,pediment,peek,peel,peg,pegboard,pegging,pelican,pellet,pelt,pemmican,pen,penalty,penance,pence,penchant,pencil,pend,pendant,pendulum,penguin,penitent,penman,penmen,pennant,penny,pension,pensive,pent,pentagon,pentane,penumbra,penury,people,pep,peppery,peptide,per,perceive,percent,percept,perch,perfect,perfidy,perforce,perform,perfume,perfuse,perhaps,peril,perilous,period,periodic,perjure,perjury,perk,permeate,permit,permute,peroxide,perplex,persist,person,persona,personal,persuade,pert,pertain,perturb,perusal,peruse,pervade,pestle,pet,petal,petit,petite,petition,petrel,petri,petrify,petrol,petty,petulant,petunia,pewter,pharmacy,phase,pheasant,phenol,phenolic,phenyl,phlox,phobic,phoebe,phoenix,phone,phoneme,phonemic,phonetic,phonic,phosgene,phosphor,photo,photon,phrase,physique,pi,pianist,piano,piccolo,pickerel,picket,pickle,picky,picnic,picture,piddle,pidgin,pie,piece,pier,pierce,pietism,piety,pig,pigeon,pigment,pigpen,pigskin,pigtail,pike,pile,pilfer,pilgrim,pill,pillage,pillar,pillory,pillow,pilot,pin,pinafore,pinball,pinch,pine,ping,pinhole,pinion,pink,pinkie,pinkish,pinnacle,pinnate,pinochle,pinpoint,pinscher,pint,pintail,pinwheel,pioneer,pipe,pipeline,pipette,piquant,pique,piracy,pirate,piston,pit,pitch,piteous,pitfall,pith,pithy,pivot,pivotal,pixel,pixy,pizza,pizzeria,placate,placater,place,placebo,placid,plaid,plain,plan,planar,plane,planet,plank,plankton,plant,plantain,plaque,plasm,plasma,plaster,plastic,plate,plateau,platelet,platform,platinum,platonic,platoon,platypus,play,playback,playful,playoff,playroom,playtime,plaza,plea,plead,pleasant,please,pleat,plebeian,plebian,pledge,plenary,plenty,plenum,plethora,pleura,pleural,pliable,pliancy,pliant,pliers,plight,plot,plover,plowman,pluck,plug,plugging,plum,plumage,plumb,plume,plummet,plunge,plunk,plural,plus,plush,pluton,ply,plywood,poach,pocket,pod,podium,poem,poesy,poet,poetic,poetry,pogo,poignant,point,poise,poke,polar,polaron,pole,polecat,polemic,police,policy,polio,polite,politic,politico,polity,polka,polkadot,poll,pollen,pollock,pollster,pollute,polo,polonium,polopony,polyglot,polygon,polymer,polytope,polytypy,pomade,pomp,pompano,pompey,pompous,poncho,pond,ponder,pony,poodle,pool,pop,popcorn,poplar,poplin,poppy,populace,popular,populate,populism,populist,populous,porch,porcine,pore,porosity,porous,porpoise,porridge,port,portage,portal,portend,portent,portico,portland,portrait,portray,posable,pose,posey,posh,position,positive,positron,posse,posseman,possemen,possess,possible,possum,post,postage,postcard,postfix,postman,postmark,postmen,postpaid,postpone,posture,posy,potable,potato,potatoes,potbelly,potent,pothole,potion,potlatch,pottery,pouch,poultry,pounce,pound,pour,pout,powder,powdery,power,powerful,practice,prairie,praise,prance,preamble,precept,precess,precinct,precious,precise,preclude,preempt,preen,preface,prefect,prefer,prefix,pregnant,prelude,premier,premiere,premise,premium,prep,prepare,presage,presence,present,preserve,preside,press,pressure,prestige,presume,presumed,pretend,pretense,pretext,pretty,prevail,prevent,preview,previous,prey,price,prickle,pride,prim,prima,primacy,primal,primary,primate,prime,primeval,primp,primrose,prince,princess,print,printout,prior,priori,priory,prism,pristine,privacy,private,privet,prize,pro,probate,probe,proceed,process,proclaim,procure,prod,prodigal,prodigy,produce,product,profess,profile,profit,profound,profuse,progeny,progress,prohibit,project,prolate,proline,prologue,prolong,prom,promise,promote,prompt,prone,pronoun,proof,prop,propane,propel,proper,property,proposal,propose,propound,propyl,prorate,prorogue,prosaic,prose,prosodic,prosody,prospect,prosper,protean,protease,protect,protege,protein,protest,protocol,proton,protract,proud,prove,proven,proverb,provide,province,proviso,provoke,provost,prow,prowess,prowl,proximal,prudent,prune,prurient,pry,pseudo,psyllium,puddly,puerile,puffery,puffin,puissant,




























pull,pulley,pullover,pulp,pulpit,pulsar,pulsate,pulse,puma,pumice,pump,pumpkin,pun,punctual,puncture,pundit,punditry,pungent,punster,punt,pup,pupate,pupil,puppet,puppy,puppyish,purchase,pure,purge,purify,purl,purple,purport,purpose,purse,purslane,pursuant,pursue,pursuer,pursuit,purvey,purveyor,purview,push,pushout,pushpin,put,putative,putt,putty,puzzle,pygmy,pyknotic,pyramid,python,quad,quadrant,quadric,quaff,quagmire,quail,quaint,quake,qualify,quality,qualm,quandary,quanta,qu,quantile,quantity,quantum,quark,quarrel,quarry,quart,quartet,quartic,quartile,quartz,quasar,quash,quasi,quatrain,quaver,quay,quell,quench,quest,question,quetzal,queue,quibble,quick,quicken,quiet,quietus,quill,quilt,quince,quinine,quint,quintet,quintic,quintus,quip,quipping,quirk,quirt,quite,quitting,quiver,quixotic,quiz,quizzes,quonset,quorum,quota,quote,quotient,rabbit,rabble,raccoon,race,raceway,racket,rackety,radar,radial,radian,radiant,radiate,radical,radices,radii,radio,radish,radium,radius,radon,raffle,raft,ragout,raid,rail,railbird,railhead,raillery,railroad,railway,rain,rainbow,raincoat,raindrop,rainfall,rainy,raise,raisin,raj,rajah,rake,rakish,rally,ram,ramble,ramify,ramp,rampage,rampant,rampart,ran,ranch,rancho,random,rang,range,rank,rankle,ransack,ransom,rapid,rapier,rapport,rapture,rare,rarefy,rascal,rash,rasp,rate,rater,rather,ratify,ratio,rattail,rattle,ratty,raucous,ravage,rave,ravel,raven,ravenous,ravine,raw,rawhide,ray,raze,razor,razzle,reach,reactant,read,readout,ready,real,realm,realtor,realty,ream,reap,reason,reave,reb,receipt,receive,recent,receptor,recess,recipe,recital,reckon,recline,recluse,recovery,recruit,rectify,rector,rectory,recur,recurred,recusant,recuse,red,redact,redactor,redbird,redcoat,redden,reddish,redhead,reduce,redwood,reed,reef,reek,reel,refer,referee,referent,referral,referred,refinery,reflect,refract,refrain,refuge,refugee,refusal,refute,regal,regale,regalia,regard,regatta,regent,regime,regimen,regiment,region,regional,registry,regular,regulate,rehearse,reign,rein,reindeer,rejoice,relate,relayed,relevant,reliant,relic,relict,relief,relieve,religion,relish,remark,remedy,remember,remiss,remit,remitted,remnant,remorse,remote,removal,rend,render,renewal,renounce,renovate,renown,rent,rental,repartee,repeal,repeat,repeater,repel,repelled,repent,replete,replica,report,reprieve,reprisal,reprise,reproach,reptile,republic,repute,request,require,requited,rerouted,rescind,rescue,resemble,resent,reserve,reside,resident,residual,residue,residuum,resign,resin,resist,resistor,resolute,resolve,resonant,resonate,resort,respect,respire,respite,respond,response,rest,restful,restive,restrain,restrict,result,resume,resuming,retail,retain,reticent,retina,retinal,retinue,retire,retiree,retort,retract,retrieve,retrofit,return,reveal,revel,revelry,revenue,rever,revere,reverend,reverent,reverie,reversal,reverse,revert,revery,revile,revisal,revise,revision,revival,revive,revoke,revolt,revolve,revved,revving,reward,rhapsody,rhenium,rheology,rheostat,rhesus,rhetoric,rheum,rhino,rhodium,rhombic,rhombus,rhubarb,rhyme,rhythm,rhythmic,rib,ribald,ribbon,ribose,ribosome,rice,rich,ricochet,rid,riddance,ridden,riddle,ride,ridge,riffle,rift,rig,rigging,right,rightful,rigid,rigorous,rim,ring,ringlet,ringside,rink,rinse,rip,ripen,ripple,rise,risen,risible,rite,ritual,rival,rivalry,riven,river,riverine,rivet,rivulet,road,roadbed,roadside,roadster,roadway,roam,roar,roast,robe,robin,robot,robotic,robotics,robust,rock,rockabye,rockaway,rocket,rocky,rode,rodent,rodeo,roe,roebuck,rogue,roil,roister,role,roll,rollback,rollick,romance,romp,roof,rooftop,rook,rookie,room,roomful,roommate,roomy,roost,root,rope,rose,rosebud,rosebush,rosemary,rosette,roster,rosy,rotary,rotate,rote,rotor,rotunda,rouge,roughen,round,roundoff,roundup,rout,route,routine,rove,row,rowboat,royal,royalty,rubble,rubdown,rubicund,rubidium,rubric,ruby,ruckus,rudder,ruddy,rudiment,ruff,ruffle,rufous,rug,rule,rumble,rumen,ruminant,ruminate,rummage,run,runabout,runaway,rundown,rune,rung,runic,runn




























eth,runoff,runway,rupee,rupture,rural,ruse,rush,rusk,russet,russula,rust,rustic,rustle,rusty,rut,rutabaga,ruthless,rutile,rutty,rye';

WORDS5 CONSTANT VARCHAR2(32726) := 'sabbatical,sable,sabotage,saccade,sachem,sack,saddle,safari,safe,safety,saffron,sag,saga,sagacity,sage,sagging,sagittal,said,sail,sailboat,sailfish,sailor,saint,sake,salad,salami,salaried,salary,sale,salesman,salesmen,salient,saline,sallow,sally,salmon,salon,saloon,salt,salty,salutary,salute,salvage,samba,same,sample,sanctify,sanction,sanctity,sand,sandal,sandbag,sandhill,sandman,sandpile,sandwich,sandy,sane,sang,sangaree,sanguine,sanicle,sanitary,sanitate,sank,sans,sapiens,sapient,sapling,saponify,sapphire,sarcasm,sarcoma,sardine,sardonic,sari,sash,sashay,sat,satiable,satiate,satiety,satin,satire,satiric,satisfy,saturate,sauce,saucepan,saucy,saute,sauterne,savage,savagery,savant,save,savoy,savvy,saw,sawbelly,sawdust,sawfish,sawfly,sawmill,sawtooth,sawyer,say,scabbard,scabrous,scaffold,scalar,scald,scale,scallop,scalp,scan,scandal,scandium,scant,scanty,scapula,scapular,scar,scarce,scare,scarf,scarify,scarlet,scarves,scary,scathe,scavenge,scenario,scene,scenery,scenic,scent,schedule,schema,scheme,scholar,school,schooner,sciatica,scion,scissor,scoff,scold,scoop,scoot,scope,scorch,score,scoria,scorn,scornful,scorpion,scotch,scour,scout,scowl,scrabble,scram,scramble,scrap,scrape,scratch,scratchy,scrawl,scream,screech,screechy,screen,scribble,scribe,script,scriven,scroll,scrooge,scrub,scruple,scrutiny,scuba,scuff,scuffle,scull,sculpin,sculpt,sculptor,scurry,scurvy,scuttle,scutum,scythe,sea,seaboard,seacoast,seafare,seafood,seagull,seahorse,seal,sealant,seam,seaport,seaquake,sear,search,seashore,seaside,season,seasonal,seat,seater,seaward,seaweed,secant,secede,seclude,second,secrecy,secret,secrete,section,sector,secular,secure,sedan,sedate,sedge,sediment,see,seeable,seed,seedbed,seedling,seeing,seek,seem,seen,seep,seepage,seethe,seethed,seething,segment,seismic,seize,seizure,seldom,select,selector,selenate,selenite,selenium,self,sell,seller,sellout,seltzer,selves,semantic,semester,semi,seminar,seminary,semper,senate,send,senile,senior,sense,sensible,sensor,sensory,sent,sentence,sentient,sentinel,sentry,sepal,separate,septate,septum,sequel,sequent,sequin,sequitur,seraphim,serenade,serene,serge,sergeant,serial,seriate,seriatim,series,serif,serine,serious,serology,serpent,serum,servant,serve,service,servile,servitor,sesame,session,set,setback,setscrew,settle,setup,seven,seventh,seventy,sever,several,severe,sew,sewage,sewerage,sewn,shack,shackle,shad,shade,shadow,shadowy,shady,shag,shaggy,shah,shake,shaken,shaky,shale,shall,shallot,shallow,shamble,shame,shampoo,shamrock,shape,shard,share,shareown,shark,sharp,sharpen,shatter,shave,shaven,shaw,shawl,shay,she,sheaf,shear,sheath,sheathe,sheave,shed,sheen,sheep,sheer,sheet,sheik,shelf,shell,shelter,shelve,shepherd,sherbet,sheriff,shied,shield,shift,shin,shinbone,shine,shingle,shiny,ship,shiplap,shipman,shipmate,shipmen,shipyard,shire,shirk,shirt,shiver,shoal,shock,shod,shoe,shoehorn,shoelace,shoemake,shone,shoofly,shook,shop,shopkeep,shore,short,shortage,shortcut,shorten,shortish,shot,shotbush,should,shoulder,shout,shove,shovel,show,showboat,showcase,showdown,showman,showmen,shown,showroom,shrank,shrapnel,shred,shrew,shrewd,shriek,shrift,shrike,shrill,shrilly,shrine,shrink,shrive,shrivel,shroud,shrove,shrub,shrug,shrunk,shrunken,shuck,shudder,shuddery,shuffle,shun,shunt,shut,shutdown,shutoff,shutout,shuttle,shy,sibilant,sibling,sickle,side,sideband,sidecar,sideline,sidelong,sideman,sidemen,sidereal,siderite,sideshow,sidestep,sidewalk,sidewall,sideway,sidewise,sidle,siege,sienna,sierra,siesta,sieve,sift,sigh,sight,sightsee,sign,signal,signet,signify,signpost,silage,silane,silent,silica,silicate,silicon,silk,silken,silkworm,silky,sill,silly,silo,silt,silty,silver,silvery,similar,simile,simmer,simper,simple,simplex,simplify,simply,simulate,since,sincere,sinew,sinewy,sinful,sing,singable,singe,single,singlet,singsong,singular,sink,sinkhole,sinter,sinuous,sinus,sinusoid,sip,sir,sire,siren,sister,sit,site,situate,six,sixfold,sixgun,sixteen,sixth,sixtieth,sixty,s




























ize,sizzle,skat,skate,skater,skeet,skeletal,skeleton,skeptic,sketch,sketchy,skew,ski,skid,skiddy,skied,skiff,skill,skillet,skillful,skim,skimp,skinny,skip,skirmish,skirt,skit,skittle,skulk,skull,skullcap,skunk,sky,skyhook,skylark,skylight,skyline,skyward,skywave,skyway,slab,slag,slam,slander,slant,slap,slash,slat,slate,slater,sled,sledge,sleek,sleep,sleet,sleeve,sleigh,sleight,slender,slept,sleuth,slew,slice,slick,slid,slide,slight,slim,slime,sling,slip,slippage,slippery,slither,sliver,slivery,slob,sloe,slog,slogan,slop,slope,slosh,slot,sloth,slouch,slough,sloven,slow,slowdown,sludge,slumber,small,smaller,smallpox,smart,smash,smatter,smear,smelt,smile,smirk,smith,smithy,smitten,smog,smoke,smoky,smolder,smooth,smother,smudge,snack,snag,snagging,snail,snake,snap,snapback,snappish,snappy,snapshot,snare,snark,snarl,snatch,snazzy,sneak,sneaky,sneer,sneeze,snell,snick,snippet,snippy,snivel,snook,snoop,snoopy,snore,snorkel,snort,snout,snow,snowball,snowfall,snowshoe,snowy,snub,snuffer,snuffle,snuffly,snug,snuggle,snuggly,snyaptic,so,soak,soap,soapsud,soapy,soar,sob,soccer,sociable,social,societal,society,sock,socket,sockeye,sod,soda,sodden,sodium,sofa,soffit,soft,softball,soften,software,softwood,soggy,soil,soiree,sojourn,solace,solar,sold,solder,soldier,soldiery,sole,solecism,solemn,solenoid,solicit,solid,solidify,solidus,solitary,soliton,solitude,solo,solstice,soluble,solute,solution,solvate,solve,solvent,soma,somal,somatic,somber,sombre,some,somebody,someday,somehow,someone,sometime,somewhat,son,sonant,sonar,sonata,song,songbag,songbook,songful,sonic,sonnet,sonogram,sonority,sonorous,soon,soot,sooth,soothe,soothsay,sop,soprano,sorcery,sordid,sore,sorption,sorrel,sorrow,sorry,sort,souffle,sough,sought,soul,soulful,sound,soup,sour,source,sourwood,soutane,south,southern,souvenir,sow,sown,soy,soybean,spa,space,spacious,spade,spalding,span,spandrel,spangle,spaniel,spar,spare,sparge,spark,sparkle,sparky,sparling,sparrow,sparse,spasm,spat,spate,spatial,spatlum,spatula,spavin,spawn,speak,spear,spec,special,species,specific,specify,specimen,specious,speck,speckle,spectra,spectral,spectrum,specular,sped,speech,speed,speedup,speedy,spell,spend,spent,sphere,spheric,spheroid,spherule,sphinx,spice,spicy,spider,spidery,spigot,spike,spiky,spill,spilt,spin,spinach,spinal,spindle,spine,spinoff,spinster,spiny,spiral,spire,spirit,spite,spiteful,splash,splashy,splat,splay,splayed,spleen,splendid,splice,spline,splint,split,splotch,splotchy,splurge,splutter,spoil,spoilage,spoke,spoken,sponge,spongy,sponsor,spoof,spooky,spool,spoon,spoonful,sporadic,spore,sport,sporty,spot,spotty,spouse,spout,sprain,sprang,sprawl,spray,spread,spree,sprig,spring,springe,springy,sprinkle,sprint,sprite,sprocket,sprout,spruce,sprue,sprung,spumoni,spun,spur,spurge,spurious,spurn,spurt,sputnik,sputter,spy,spyglass,squabble,squad,squadron,squalid,squall,squamous,squander,square,squash,squawk,squeak,squeaky,squeal,squeegee,squeeze,squelch,squid,squill,squint,squire,squirm,squirmy,squirrel,squirt,squishy,stab,stabile,stable,staccato,stack,stadia,stadium,staff,stag,stage,stagnant,stagnate,stagy,staid,stain,stair,stairway,stake,stale,stalk,stall,stallion,stalwart,stamen,stamina,stammer,stamp,stampede,stance,stanch,stand,standard,standby,standeth,standoff,stannic,stannous,stanza,staph,staple,star,starch,starchy,stardom,stare,starfish,stargaze,stark,starlet,starling,start,startle,startup,stash,state,stater,static,stator,statuary,statue,stature,status,statute,staunch,stave,stay,stayed,stead,steady,steak,stealth,stealthy,steam,steamy,stearate,stearic,steed,steel,steely,steep,steepen,steeple,steer,stein,stellar,stem,stencil,step,stepson,stepwise,stereo,sterile,sterling,stern,sternal,sternum,steroid,stew,steward,stick,stickle,stickpin,sticky,stifle,stigma,stigmata,stile,stiletto,still,stilt,stimuli,stimulus,sting,stingy,stint,stipend,stipple,stir,stirrup,stitch,stock,stockade,stocky,stodgy,stoic,stoke,stolid,stomach,stone,stony,stood,stoop,stop,stopband,stopgap,stopover,stoppage,storage,




























store,stork,storm,stormy,story,stout,stove,stow,stowage,stowaway,straddle,strafe,straggle,straight,strain,strait,strand,strange,strangle,strap,strata,strategy,stratify,stratum,straw,stray,streak,stream,street,strength,stress,stretch,strewn,striate,stricken,strict,stricter,stride,strident,strife,strike,string,stringy,stripe,stripy,strive,striven,strobe,strode,stroke,stroll,strong,strop,strophe,strove,struck,struggle,strum,strung,strut,stub,stubble,stubborn,stubby,stucco,stuck,student,studio,studious,study,stuff,stuffy,stultify,stumble,stump,stumpage,stun,stung,stunt,stupefy,sturdy,sturgeon,style,styli,stylish,stylites,stylus,stymie,styrene,suave,sub,subject,submit,subpoena,subsidy,subsist,subsume,subsumed,subtle,subtlety,subtly,suburb,suburbia,subvert,succeed,success,succinct,such,sucrose,sudden,sue,suffer,suffice,suffix,suffrage,suffuse,sugar,suggest,suit,suitcase,suite,suitor,sulfa,sulfate,sulfide,sulfite,sulfur,sulfuric,sulk,sulky,sullen,sully,sulphur,sultan,sultry,sum,sumac,summand,summary,summate,summit,summitry,summon,sun,sunbeam,sunburn,sunburnt,sunder,sundew,sundial,sundown,sundry,sunfish,sung,sunk,sunken,sunlight,sunlit,sunny,sunrise,sunset,sunshade,sunshine,sunspot,suntan,sup,super,superb,superbly,superior,supine,supplant,supple,supply,support,suppose,suppress,supreme,supremum,surcease,sure,surety,surf,surface,surfeit,surge,surgeon,surgery,surgical,surmise,surmount,surname,surpass,surplus,surprise,surreal,surrey,surround,surtax,surtout,survey,surveyor,survival,survive,survivor,sushi,suspect,suspend,suspense,sustain,suture,svelte,swab,swage,swain,swam,swamp,swan,swanlike,swap,swarm,swart,swarthy,swat,swatch,swathe,sway,sweat,sweater,sweaty,sweep,sweet,sweeten,sweetish,swell,swelt,swelter,swept,swerve,swift,swim,swimsuit,swindle,swing,swipe,swirl,swirly,swiss,switch,swivel,swizzle,swollen,swoop,sword,swore,sworn,swum,swung,sybarite,sycamore,syllabi,syllabic,syllable,syllabus,sylvan,symbol,symbolic,symmetry,sympathy,symphony,symposia,symptom,synapse,synapses,synaptic,syndrome,synergy,synonym,synonymy,synopses,synopsis,synoptic,syntax,syringa,syringe,syrinx,syrup,syrupy,system,systemic,tab,table,tablet,tabloid,tabular,tabulate,tachinid,tacit,tack,tackle,tacky,tact,tactful,tactic,tactile,tactual,tad,tadpole,taffeta,taffy,taft,tag,tagging,tail,tailgate,tailor,tailspin,tailwind,taint,take,taken,takeoff,takeover,taketh,talc,talcum,tale,talent,talisman,talk,tall,tallow,tally,talon,tamarack,tamarind,tame,tamp,tan,tanager,tandem,tangent,tangible,tangle,tango,tangy,tank,tannin,tansy,tantalum,tantrum,tap,tape,taper,tapestry,tar,tardy,target,tariff,tarnish,tarpaper,tarpon,tarry,tartar,task,tassel,taste,tasteful,tasting,tasty,tat,tate,tater,tattle,tattoo,taught,taunt,taut,tavern,taverna,tawdry,tawny,tax,taxation,taxi,taxicab,taxied,taxiway,taxonomy,taxpayer,tea,teacart,teach,teacup,teahouse,teakwood,teal,team,teammate,teamster,teamwork,teapot,tear,teardrop,tearful,tease,teasel,teaspoon,tectonic,tedious,tedium,tee,teeing,teem,teen,teenage,teeter,teeth,tektite,telegram,teleost,telethon,teletype,televise,tell,teller,telltale,temerity,temper,tempera,tempest,template,temple,tempo,temporal,tempt,ten,tenable,tenacity,tenant,tend,tendency,tendon,tenement,tenet,tenfold,tennis,tenon,tenor,tense,tensile,tension,tensor,tenspot,tent,tentacle,tenth,tenuous,tenure,tepee,tepid,terbium,tercel,term,terminal,termini,terminus,termite,tern,ternary,terrace,terrain,terrapin,terrible,terrier,terrific,terry,terse,tertiary,test,testate,testbed,testify,testy,tetanus,tete,tether,text,textbook,textile,textual,textural,texture,thallium,than,thank,thankful,that,thatch,thaw,the,theatric,thee,theft,their,theism,theist,them,thematic,theme,then,thence,theology,theorem,theorist,theory,therapy,there,thereat,thereby,therein,thereof,thereon,thereto,thermal,these,theses,thesis,they,thiamin,thick,thicken,thicket,thigh,thimble,thin,thine,thing,think,thinnish,third,thirst,thirsty,thirteen,thirty,this,thistle,thither,thong,thoriate,thorium,thorn,thorny,thorough,those,thou,tho




























ugh,thought,thousand,thrall,thread,three,thresh,threw,thrice,thrift,thrifty,thrill,thrive,throes,throne,throng,throttle,through,throw,thrown,thrum,thrush,thud,thulium,thumb,thump,thunder,thus,thwart,thy,thyme,thymine,thymus,thyroid,tibia,tick,ticket,tickle,ticklish,tidal,tidbit,tide,tideland,tidy,tie,tied,tier,tift,tiger,tight,tighten,tigress,til,tilde,tile,till,tilt,tilth,timber,timbre,time,timeworn,timid,tin,tinder,tine,tinfoil,tinge,tingle,tinker,tinkle,tinsel,tint,tintype,tiny,tip,tipoff,tippy,tiptoe,tirade,tire,tiresome,tissue,titanate,titanic,titanium,tithe,titian,title,to,toad,toady,toast,today,toe,toenail,toffee,tofu,together,togging,toggle,toil,toilsome,token,told,tolerant,tolerate,toll,tollgate,toluene,tomato,tomatoes,tome,tomorrow,ton,tonal,tone,tong,tonic,tonight,tonnage,tonsil,too,took,tool,toolkit,toolmake,toot,tooth,top,topaz,topcoat,topic,topmost,topnotch,topology,topple,topsoil,torch,tore,torn,tornado,toroid,toroidal,torpedo,torpid,torpor,torque,torrent,torrid,torsion,torso,tort,tortoise,toss,tot,total,tote,totem,totemic,touch,tough,tour,tousle,tout,tow,toward,towboat,towel,tower,town,townsman,townsmen,toxic,toxin,toy,trace,tracery,trachea,track,trackage,tract,tractor,trade,tradeoff,traffic,tragedy,tragic,trail,train,trainee,trainman,trainmen,traipse,trait,traitor,tram,trammel,trample,tramway,trance,tranquil,transact,transect,transept,transfer,transfix,transit,transmit,transom,travail,travel,traverse,travesty,trawl,tray,tread,treadle,treason,treasure,treasury,treat,treatise,treaty,treble,tree,treetop,trefoil,trek,trellis,tremble,tremor,trench,trend,trendy,trespass,tress,trestle,triad,trial,triangle,tribal,tribe,tribunal,tribune,tribute,trick,trickery,trickle,tricky,trident,tried,trifle,trig,trigonal,trigram,trill,trillion,trilogy,trim,trimer,trinity,trinket,trio,triode,trioxide,trip,tripe,triple,triplet,triplex,tripod,tripoli,triptych,tristate,trite,tritium,triton,triumph,triune,trivia,trivial,trivium,trod,trodden,troika,troll,trolley,trollop,trombone,trompe,troop,trophic,trophy,tropic,trot,trough,trounce,troupe,trouser,trout,troy,truancy,truant,truce,truck,trudge,truism,truly,trump,trumpery,trumpet,truncate,trundle,trunk,truss,trust,trustee,trustful,truth,truthful,try,trypsin,tsunami,tub,tuba,tube,tubular,tubule,tuck,tuff,tuft,tug,tugging,tuition,tulip,tulle,tumble,tumbrel,tumult,tuna,tundra,tune,tuneful,tungsten,tunic,tunnel,tupelo,tuple,turban,turbid,turbine,turbofan,turbojet,turf,turgid,turk,turkey,turmoil,turn,turnery,turnip,turnkey,turnoff,turnout,turnpike,turret,turtle,turvy,tusk,tussle,tutelage,tutor,tutorial,tutu,tuxedo,twain,tweak,tweed,tweedy,tweeze,twelfth,twelve,twenty,twice,twiddle,twig,twigging,twilight,twill,twin,twine,twinge,twinkle,twirl,twirly,twist,twisty,twitch,twitchy,two,twofold,twosome,tycoon,tying,type,typeface,typeset,typhoid,typhoon,typhus,typic,typify,typo,typology,tyrannic,tyranny,tyrosine,ubiquity,ulterior,ultimate,ultra,umber,umbra,umbrage,umbrella,umlaut,umpire,unary,unbidden,uncle,unction,under,undulate,uniaxial,unicorn,uniform,unify,unimodal,union,uniplex,unipolar,unique,unison,unitary,unite,unity,universe,until,unwieldy,up,upbeat,upbraid,upbring,upcome,update,updraft,upend,upgrade,upheaval,upheld,uphill,uphold,upkeep,upland,uplift,upon,upper,uppercut,upraise,upright,uprise,upriver,uproar,uproot,upset,upshot,upside,upsilon,upslope,upstair,upstand,upstart,upstate,upstater,upstream,upsurge,upswing,uptake,uptown,uptrend,upturn,upward,upwind,uranium,urban,urbane,urbanite,urchin,urge,urgency,urgent,urging,us,usable,usage,use,useful,usher,usual,usurer,usurious,usurp,usury,utensil,utility,utmost,utopia,utopian,utter,vacant,vacate,vaccine,vacua,vacuo,vacuole,vacuous,vacuum,vade,vagabond,vagary,vagrant,vague,vain,vale,valent,valet,valeur,valiant,valid,validate,valine,valley,valuate,value,valve,vamp,vampire,van,vanadium,vandal,vane,vanguard,vanilla,vanish,vanity,vanquish,vantage,vapid,vaporous,variable,variac,variant,variate,variety,various,varistor,varnish,varsity,vary,vascular,vase,va




























ssal,vast,vat,vault,vaunt,veal,vector,vee,veer,veery,vegetate,vehicle,veil,vein,velar,veldt,vellum,velocity,velours,velvet,velvety,venal,vend,vendetta,vendible,vendor,veneer,venerate,venial,venous,vent,venture,venturi,veracity,veranda,verandah,verb,verbal,verbatim,verbena,verbiage,verbose,verdant,verdict,verge,veridic,verify,verity,vermeil,vermin,vermouth,vernal,vernier,versa,versatec,verse,version,versus,vertebra,vertex,vertical,vertices,vertigo,verve,very,vesper,vessel,vest,vestal,vestige,vestry,vet,vetch,veteran,veto,via,viaduct,vial,vibrant,vibrate,vibrato,viburnum,vicar,viceroy,vicinal,vicinity,vicious,victor,victory,victrola,victual,vide,video,vie,view,vigil,vigilant,vignette,vigorous,villa,village,villain,villein,vine,vinegar,vineyard,vintage,vintner,vinyl,viola,violate,violent,violet,violin,virgule,virtual,virtue,virtuosi,virtuoso,virtuous,virulent,virus,vis,visa,visage,viscount,viscous,vise,visible,vision,visit,visitor,visor,vista,visual,vita,vitae,vital,vitamin,vitiate,vitreous,vitrify,vitriol,vitro,viva,vivace,vivacity,vivid,vivify,vivo,vixen,viz,vocable,vocal,vocalic,vocate,vogue,voice,void,volatile,volcanic,volcano,volition,volley,volt,voltage,voltaic,voluble,volume,voracity,vortex,vortices,votary,vote,votive,vouch,vow,vowel,voyage,vulgar,vulpi,vulture,vying,wacky,wad,waddle,wade,wafer,waffle,wag,wage,wagging,waggle,wagoneer,wail,waist,wait,waitress,waive,wake,wakeful,waken,wakeup,wale,walk,walkout,walkover,walkway,wall,wallaby,wallet,wallop,wallow,wally,walnut,walrus,waltz,waltzing,wan,wand,wander,wane,wangle,want,wanton,wapato,wapiti,war,warble,ward,warden,wardrobe,wardroom,ware,warm,warmth,warmup,warn,warp,warplane,warrant,warranty,warren,warrior,wary,was,wash,washbowl,washout,washy,wasp,waspish,wast,wastage,wasteful,wastrel,watch,watchdog,watchful,watchman,watchmen,water,waterway,watery,watt,wattage,wattle,wave,waveform,wavelet,wavy,wax,waxen,waxwork,waxy,way,waybill,waylaid,waylay,wayside,wayward,we,weak,weaken,weal,wealth,wealthy,wean,wear,wearied,weary,weasel,weather,weave,web,weber,wed,wedge,wedlock,wee,weed,weedy,week,weekday,weekend,weep,weigh,weight,weighty,weir,weird,welcome,weld,welfare,well,welsh,welt,went,wept,were,wert,west,westerly,western,westward,wet,wetland,whale,wharf,wharves,what,whatever,whatnot,wheat,wheedle,wheel,wheeze,wheezy,whelk,whelm,when,whence,whenever,where,whereas,whereby,wherein,whereof,whereon,wherever,whet,whether,which,whiff,whig,while,whim,whimper,whimsey,whimsic,whiplash,whipsaw,whir,whirl,whish,whisk,whisper,whistle,whit,white,whiten,whither,whittle,who,whoever,whole,wholly,whom,whomever,whose,why,wick,wicket,wide,widen,widgeon,widget,widow,width,wield,wig,wigging,wiggle,wild,wildcat,wildfire,wildlife,wile,wilful,will,willful,willow,willowy,wilt,wily,win,wince,wind,windbag,windfall,windmill,window,windsurf,windup,windward,windy,wing,wingback,wingman,wingmen,wingspan,wingtip,wink,winkle,winnow,winsome,winter,wintry,winy,wipe,wire,wireman,wiremen,wiretap,wiry,wisdom,wise,wish,wishbone,wishful,wisp,wispy,wistful,wit,with,withal,withdraw,withdrew,withe,wither,withheld,withhold,within,without,withy,witness,witty,wizard,wobble,woe,woeful,wok,woke,wold,wolf,wolfish,wolves,woman,wombat,women,won,wonder,wondrous,wont,woo,wood,woodcut,wooden,woodhen,woodland,woodlot,woodpeck,woodrow,woodruff,woodshed,woodside,woodward,woodwind,woodwork,wool,word,wordy,wore,work,workaday,workbook,workday,workload,workman,workmen,workout,workshop,world,worm,worn,worth,worthy,would,wound,wove,woven,wow,wrack,wraith,wrangle,wrap,wrapup,wrath,wrathful,wreak,wreath,wreathe,wreck,wreckage,wrench,wrest,wrestle,wretch,wriggle,wright,wring,wrinkle,wrist,writ,write,writeup,writhe,written,wrote,wrought,wry,xenon,xylem,xylene,yacht,yak,yam,yap,yapping,yard,yardage,yarmulke,yarn,yarrow,yawn,yea,yeah,year,yearbook,yearn,yeast,yell,yellow,yelp,yen,yeoman,yeomanry,yet,yield,yip,yipping,yodel,yoga,yoghurt,yogi,yogurt,yoke,yolk,yon,yond,yore,you,young,youngish,your,yourself,youth,youthful,yule,zag,zagging,zap,zazen,zea




























l,zealot,zealous,zebra,zenith,zero,zeroes,zeroth,zest';*/

/*  WORDS1 CONSTANT VARCHAR2(32726) := 'aback,abacus,abalone,abate,abater,abbey,abbot,abbreviate,abdicate,aberrant,abet,abetted,abetting,abeyance,abeyant,abide,abject,able,ablution,abnormal,aboard,abode,abolish,abolition,abominable,abominate,aborning,abound,about,above,abovementioned,abrasion,abrasive,abridge,abridgment,abroad,abrogate,abrupt,abscissa,absence,absent,absentee,absenteeism,absentia,absolute,absolution,absolve,absorb,absorbent,absorption,absorptive,abstain,abstention,abstract,abstracter,abstractor,abstruse,abundant,abysmal,abyss,academe,academia,academic,academician,academy,accede,accelerate,accelerometer,accent,accentual,accentuate,accept,acceptant,acceptor,access,accessible,accession,accessory,accident,accidental,accipiter,acclaim,acclamation,acclimate,accolade,accommodate,accompaniment,accompanist,accompany,accomplice,accomplish,accord,accordant,accordion,accost,account,accountant,accredit,accreditate,accreditation,accretion,accrual,accrue,accumulate,accuracy,accurate,accustom,ace,acerbic,acerbity,acetate,acetic,acetone,acetylene,ache,achieve,aching,achromatic,acidic,acknowledge,acknowledgeable,acme,acorn,acoustic,acquaint,acquaintance,acquiesce,acquiescent,acquire,acquisition,acquisitive,acquit,acquittal,acquitting,acre,acreage,acrimonious,acrimony,acrobat,acrobatic,acronym,acropolis,across,acrylic,act,actinometer,activate,activation,activism,actor,actress,actual,actuarial,actuate,acuity,acumen,acute,acyclic,ad,adage,adagio,adamant,adapt,adaptation,adaptive,add,added,addend,addenda,addendum,addition,additional,additive,address,addressee,adduce,adenine,adenoma,adenosine,adept,adequacy,adequate,adhere,adherent,adhesion,adhesive,adiabatic,adjacent,adject,adjectival,adjective,adjoin,adjoint,adjourn,adjudge,adjudicate,adjunct,adjust,adjutant,administer,administrable,administrate,admiral,admiralty,admiration,admire,admissible,admission,admit,admittance,admitted,admitting,admonish,admonition,ado,adobe,adolescent,adopt,adoption,adoptive,adore,adorn,adrenal,adrenaline,adrift,adroit,adsorb,adsorption,adsorptive,adulate,advance,advantage,advantageous,advent,adventitious,adventure,adventurous,adverb,adverbial,adversary,adverse,advert,advertise,advice,advisable,advise,advisee,advisor,advisory,advocacy,advocate,aegis,aeolian,aerate,aerial,aerobic,aerodynamic,aeronautic,aerosol,aerospace,aesthete,aesthetic,afar,affable,affect,affectation,affectionate,afferent,affidavit,affiliate,affine,affinity,affirm,affirmation,affirmative,affix,afflict,afford,afforestation,affront,aficionado,afield,afire,aflame,afloat,afoot,aforementioned,aforesaid,aforethought,afraid,afresh,aft,aftereffect,afterimage,aftermath,afternoon,afterthought,afterward,afterword,again,against,agate,age,agenda,agent,agglomerate,agglutinate,agglutinin,aggravate,aggregate,aggression,aggressive,aggressor,aggrieve,agile,aging,agitate,ago,agone,agony,agrarian,agree,agreeable,agreed,agreeing,agribusiness,agricultural,agriculture,agrimony,ague,ahead,aide,ail,aileron,aim,air,airborne,aircraft,airdrop,airedale,airfare,airfield,airflow,airfoil,airframe,airlift,airline,airlock,airmail,airman,airmass,airmen,airpark,airplane,airport,airspace,airspeed,airstrip,airtight,airway,airy,aisle,ajar,akin,alabaster,alacrity,alarm,alb,albacore,albatross,albeit,album,albumin,alchemy,alcove,aldehyde,aleph,alert,alfalfa,alfresco,alga,algae,algaecide,algal,algorithm,algorithmic,alias,align,alike,aliquot,alive,alkali,alkaline,alkaloid,alkane,alkene,all,allegation,allege,allegiant,allegoric,allegory,allegro,allele,allemand,allergic,allergy,alleviate,alley,alleyway,alliance,allied,alligator,alliterate,allocable,allocate,allot,allotropic,allotted,allotting,allow,allowance,alloy,allspice,allude,allure,allusion,allusive,alluvial,alluvium,ally,allyl,almanac,almond,almost,aloe,aloft,aloha,alone,along,alongside,aloof,aloud,alp,alpenstock,alpha,alphabet,alphabetic,alpine,already,also,alterate,alteration,altercate,alte
rnate,although,altimeter,altitude,alto,altogether,altruism,altruist,alum,alumna,alumnae,alumni,alumnus,always,alyssum,am,amalgam,amalgamate,amass,amateur,amateurish,amaze,ambassador,amber,ambiance,ambidextrous,ambient,ambiguity,ambiguous,ambition,ambitious,ambivalent,amble,ambling,ambrosia,ambrosial,ambulant,ambulate,ambulatory,ameliorate,amend,amethyst,amicable,amid,amide,amidst,amino,aminobenzoic,amiss,amity,ammeter,ammonia,ammonium,amnesia,amoeba,amoebae,among,amongst,amorphous,amount,amp,amperage,ampere,ampersand,amphibian,amphibious,amphibology,ample,amplifier,amplify,amplitude,amply,amulet,amuse,an,anachronism,anachronistic,anaconda,anaerobic,anaglyph,anagram,analogous,analogue,analogy,analyses,analysis,analyst,analytic,anamorphic,anastigmatic,anastomosis,anastomotic,anatomic,anatomy,ancestor,ancestral,ancestry,anchor,anchorage,anchorite,anchovy,ancient,ancillary,and,anecdotal,anecdote,anemone,anew,angel,angelfish,angelic,angle,angling,angstrom,angular,anhydride,anhydrite,anhydrous,aniline,animal,animate,anion,anionic,anise,ankle,annex,annihilate,anniversary,annotate,announce,annoy,annoyance,annual,annuity,annunciate,anode,anodic,anomalous,anomaly,anonymity,anonymous,another,answer,ant,antacid,antagonism,antagonist,antagonistic,antarctic,anteater,antebellum,antecedent,antedate,antelope,antenna,antennae,anterior,anteroom,anthem,anther,anthology,anthropogenic,anthropology,anthropomorphic,anthropomorphism,antic,anticipate,anticipatory,antigen,antimony,antipasto,antipathy,antiperspirant,antipode,antipodean,antipodes,antiquarian,antiquary,antiquated,antique,antiquity,antithetic,antler,antonym,anvil,anxiety,anxious,any,anybody,anyhow,anyone,anyplace,anything,anyway,anywhere,aorta,apace,apart,ape,aperiodic,aperture,apex,aphid,aphorism,apiece,aplomb,apocalypse,apocalyptic,apocryphal,apogee,apologetic,apologia,apology,apostle,apostolic,apostrophe,apothecary,apothegm,apotheosis,appall,appanage,apparatus,apparel,apparent,apparition,appeal,appear,appearance,appeasable,appease,appellant,appellate,append,appendices,appendix,apperception,appertain,appetite,applaud,applause,apple,appliance,applicable,applicant,applicate,application,applied,applique,apply,appoint,appointee,apportion,apposite,apposition,appraisal,appraise,appreciable,appreciate,apprehend,apprehension,apprentice,apprise,approach,approbation,appropriable,appropriate,approval,approve,approximate,apricot,apron,apropos,apt,aptitude,aqua,aquarium,aquatic,aqueduct,aqueous,arachnid,arbiter,arbitrage,arbitrary,arbitrate,arboreal,arboretum,arc,arcade,arcane,arch,archaic,archaism,archery,archetype,archetypical,arching,archipelago,architect,architectural,architecture,arcing,arclength,arctic,ardency,ardent,arduous,are,area,areaway,arena,argon,argue,argument,argumentation,argumentative,arid,arise,arisen,aristocracy,aristocrat,aristocratic,arithmetic,ark,arm,armada,armadillo,armament,armature,armchair,armful,armistice,armload,armoire,army,aroma,aromatic,arose,around,arpeggio,arraign,arrange,arrangeable,array,arrival,arrive,arrogant,arrogate,arrow,arrowhead,arroyo,art,arterial,arteriole,artery,artful,arthritis,artichoke,article,articulate,articulatory,artifact,artifice,artificial,artisan,artistry,artwork,as,ascend,ascendant,ascension,ascent,ascertain,ascribe,ascription,aseptic,ash,ashame,ashamed,ashen,ashore,aside,ask,askance,askew,asleep,asparagus,aspect,aspen,asperity,aspirate,aspire,aspirin,assemblage,assemble,assent,assert,assessor,asset,assiduity,assiduous,assign,assist,assistant,associable,associate,assume,assumption,assurance,assure,asteria,asterisk,asteroid,asteroidal,asthma,astigmatic,astigmatism,astonish,astound,astral,astride,astringent,astrology,astronaut,astronautic,astronomer,astronomic,astronomy,astrophysical,astrophysicist,astrophysics,astute,asunder,asymmetry,asymptote,asymptotic,asynchronous,asynchrony,at,atavism,atavistic,ate,athle
te,athletic,athwart,atlantic,atlas,atmosphere,atmospheric,atom,atomic,atonal,atone,atop,atrium,atrocious,atrophic,atrophy,attach,attache,attain,attainder,attempt,attend,attendant,attendee,attention,attentive,attenuate,attest,attestation,attic,attire,attitude,attitudinal,attorney,attract,attribute,attribution,attributive,attrition,attune,auburn,auction,auctioneer,audacious,audacity,audible,audience,audio,audiotape,audiovisual,audit,audition,auditor,auditorium,auditory,auger,augment,augmentation,august,auk,aunt,auntie,aura,aural,auric,aurochs,aurora,auspices,auspicious,austere,authentic,author,authoritarian,authoritative,auto,autobiography,autoclave,autocracy,autocrat,autocratic,autograph,automate,automatic,automobile,automotive,autonomic,autonomous,autonomy,autumn,autumnal,auxiliary,avail,avalanche,avarice,avaricious,avenue,aver,average,averred,averring,averse,aviary,aviate,avid,avionic,avocado,await,awake,awaken,award,aware,awash,away,awe,awesome,awhile,awkward,awl,awn,awoke,awry,ax,axe,axes,axial,axiology,axiom,axiomatic,axis,axisymmetric,axle,axon,azalea,azimuth,azimuthal,azure,babble,baboon,baby,babyhood,babysat,babysit,babysitter,babysitting,baccalaureate,bacilli,bacillus,back,backboard,backbone,backdrop,backfill,backgammon,background,backhand,backlash,backorder,backpack,backplane,backstage,backstitch,backstop,backtrack,backup,backward,backwood,backyard,bacon,bacteria,bacterial,bacterium,bade,badge,badinage,badland,badminton,baffle,bag,bagatelle,bagel,baggage,bagpipe,bait,bake,bakery,balance,balcony,bald,baldy,bale,baleen,baleful,balk,balky,ball,ballad,ballast,ballerina,ballet,balletic,ballfield,balloon,ballot,ballroom,balm,balmy,balsa,balsam,balustrade,bamboo,ban,banal,banana,band,bandage,bandgap,bandit,bandpass,bandstand,bandstop,bandwagon,bandwidth,bandy,bane,baneberry,baneful,bangle,banish,banister,banjo,bank,bankrupt,bankruptcy,banquet,bantam,banter,barb,barbarian,barbaric,barbarism,barbarous,barbecue,barbell,barber,barberry,bard,barefoot,bargain,barge,baritone,barium,bark,barley,barn,barnacle,barnstorm,barnyard,barometer,baron,baroness,baronet,baronial,barony,baroque,barrack,barracuda,barrage,barre,barrel,barren,barrette,barricade,barrier,barrow,barter,barycentric,basal,basalt,base,baseball,baseband,baseboard,baseline,baseman,basemen,baseplate,basepoint,bash,bashaw,bashful,basic,basil,basilar,basilisk,basin,basis,bask,basket,basketball,basophilic,bass,bassi,bassinet,basso,basswood,baste,bastion,bat,batch,bate,bateau,bath,bathe,bathos,bathrobe,bathroom,bathtub,batik,baton,batt,battalion,batten,battery,battle,battlefield,battlefront,battleground,batwing,bauble,baud,bauxite,bawl,bay,bayed,bayonet,bayou,bazaar,be,beach,beachcomb,beachhead,beacon,bead,beadle,beady,beak,beam,bean,bear,bearberry,beard,bearish,beatific,beatify,beatitude,beauteous,beautiful,beautify,beauty,becalm,became,because,beck,becket,beckon,becloud,become,bed,bedazzle,bedbug,bedevil,bedfast,bedim,bedimmed,bedimming,bedlam,bedpost,bedraggle,bedridden,bedrock,bedroom,bedside,bedspread,bedspring,bedstraw,bedtime,bee,beebread,beech,beechwood,beef,beefsteak,beehive,been,beep,beet,beetle,befall,befallen,befell,befit,befitting,befog,befogging,before,beforehand,befuddle,beg,began,beggar,beggary,begging,begin,beginner,beginning,begonia,begotten,begrudge,beguile,begun,behalf,behave,behavioral,beheld,behest,behind,behold,beige,being,bel,belate,belfry,belie,belief,belies,believe,bell,belladonna,bellboy,belle,bellflower,bellhop,bellman,bellmen,bellow,bellum,bellwether,belly,bellyache,bellyfull,belong,belove,below,belt,belvedere,belvidere,belying,bemadden,beman,bemoan,bemuse,bench,benchmark,bend,beneath,benediction,benefactor,benefice,beneficent,beneficial,beneficiary,benefit,benevolent,benight,benign,bent,benzene,beplaster,bequeath,bequest,beret,berg,bergamot,beribbon,beriberi,berkelium,berne,berry,berth,beryl,beryllium,beseech,beset,besetting,beside,besiege,besmirch,besotte
d,bespeak,bespectacled,bespoke,best,bestir,bestirring,bestow,bestowal,bestseller,bestselling,bestubble,bet,beta,betatron,betroth,betrothal,bettor,between,betwixt,bevel,beverage,bevy,bewail,beware,bewhisker,bewilder,bey,beyond,bias,biaxial,bib,bibliography,bicameral,bicarbonate,bicentennial,bicep,biceps,bichromate,bicker,biconcave,biconnected,bicycle,bid,biddable,bidden,bide,bidiagonal,bidirectional,biennial,biennium,bifocal,big,biharmonic,bijection,bijective,bijouterie,bike,bilateral,bilayer,bilinear,bilingual,bilk,bill,billboard,billet,billfold,billiard,billion,billionth,billow,bimetallic,bimetallism,bimodal,bimolecular,bimonthly,bin,binary,binaural,bind,bindery,bindle,binocular,binomial,biochemic,biography,biopsy,biota,biotic,biotite,bipartisan,bipartite,biplane,bipolar,birch,bird,birdbath,birdie,birdlike,birdseed,birdwatch,birefringent,birth,birthday,birthplace,birthright,biscuit,bisect,bishop,bishopric,bismuth,bison,bisque,bistable,bistate,bit,bite,bitten,bitternut,bitterroot,bittersweet,bitumen,bituminous,bitwise,bivalve,bivariate,bivouac,biz,bizarre,blab,blackberry,blackbird,blackboard,blacken,blackout,blacksmith,blanch,bland,blandish,blank,blanket,blare,blast,blastula,blazon,bleach,bleak,bleary,bleat,blemish,blend,blight,blimp,blind,blindfold,blink,blip,bliss,blissful,blister,blithe,blitz,blizzard,block,blockade,blockage,blond,blonde,bloom,blossom,blot,blouse,blue,blueback,blueberry,bluebill,bluebird,bluebonnet,bluebush,bluefish,bluegill,bluegrass,bluejacket,blueprint,bluestocking,bluet,bluff,bluish,blunder,blunt,blur,blurb,blurry,blurt,blush,bluster,blustery,boa,boar,board,boardinghouse,boast,boastful,boat,boathouse,boatload,boatman,boatmen,boatswain,boatyard,bobcat,body,bodybuild,bodybuilder,bodybuilding,bodyguard,bog,bogey,boggle,boil,boisterous,bold,boldface,bolometer,bolster,bolt,bombard,bombast,bombastic,bon,bona,bonanza,bond,bondholder,bondsman,bondsmen,bone,bonfire,bongo,bonnet,bonus,book,bookbind,bookcase,bookend,bookish,bookkeep,booklet,bookmobile,bookplate,bookseller,bookshelf,bookshelves,bookstore,boomerang,boorish,boost,boot,booth,bop,borate,borax,border,borderland,borderline,born,borne,borough,borrow,boson,bosonic,boss,botanic,botanist,botany,botfly,both,bothersome,bottle,bottleneck,bouffant,bough,bought,boulder,boule,boulevard,bounce,bound,boundary,bounty,bouquet,bourgeois,bourgeoisie,bourn,bout,boutique,bovine,bow,bowfin,bowie,bowl,bowline,bowman,bowmen,bowstring,box,boxcar,boxwood,boxy,boy,boyar,boycott,boyhood,brace,bracelet,bracken,bracket,brackish,bract,brad,brae,brag,bragging,braid,brain,brainchild,brainchildren,brainstorm,brainy,brake,brakeman,bramble,bran,branch,brand,brandish,brant,brash,brass,brassy,bravado,brave,bravery,bravo,bravura,brawl,bray,brazier,breach,bread,breadboard,breadth,breadwinner,break,breakage,breakaway,breakdown,breakfast,breakoff,breakpoint,breakthrough,breakup,breakwater,bream,breath,breathe,breathtaking,breathy,breccia,breech,breed,breeze,breezy,brethren,breve,brevet,brevity,briar,brick,brickbat,bricklay,bricklayer,bricklaying,bridal,bride,bridegroom,bridesmaid,bridge,bridgeable,bridgehead,bridgework,bridle,brief,briefcase,brig,brigade,brigadier,brigantine,bright,brighten,brilliant,brim,brimful,brimstone,brindle,brine,bring,brink,brinkmanship,briny,brisk,bristle,brittle,broach,broadcast,broaden,broadloom,broadside,brocade,broccoli,brochure,brockle,broil,broke,broken,brokerage,bromide,bromine,bronchi,bronchial,bronchiolar,bronchiole,bronchitis,bronchus,bronco,bronze,bronzy,brood,broody,brook,brookside,broom,broomcorn,broth,brother,brotherhood,brought,brouhaha,brow,brown,brownie,brownish,browse,brucellosis,bruise,bruit,brunch,brunette,brunt,brush,brushfire,brushlike,brushwork,brushy,brusque,bryophyta,bryophyte,bryozoa,bubble,bucket,buckeye,buckle,buddy,budge,budget,budgetary,buffalo,buffet,bug,bugging,buggy,bugle,build,buildup,built,builtin,bulb,bulblet,bulge,bulk,bulkhead,bulky
,bulldog,bulldoze,bullet,bulletin,bullfrog,bullseye,bulrush,bulwark,bumble,bumblebee,bump,bumptious,bun,bunch,bundle,bungalow,bungle,bunk,bunny,bunt,buoy,buoyant,burbank,burdock,bureau,bureaucracy,bureaucrat,bureaucratic,buret,burette,burgeon,burgess,burgher,burglar,burglarproof,burl,burlap,burley,burly,burn,burnish,burnt,burro,burrow,burst,bursty,bury,bus,busboy,buses,bushel,business,businessman,businessmen,bustle,busy,but,butane,butler,buttercup,butterfat,butterfly,buttermilk,butternut,buttery,button,buy,buyer,buzz,buzzer,buzzing,buzzsaw,buzzword,buzzy,by,bye,bygone,bylaw,byline,bypass,bypath,byproduct,byroad,bystander,byway,byword';

  WORDS2 CONSTANT VARCHAR2(32726) := 'cab,cabana,cabaret,cabbage,cabdriver,cabin,cabinet,cabinetmake,cabinetry,cable,cacao,cachalot,cache,cackle,cacti,cactus,caddy,cadent,cadenza,cadet,cadmium,cadre,cafe,cafeteria,cage,cagey,cajole,cake,calamitous,calamity,calamus,calcareous,calcify,calcine,calcite,calcium,calculable,calculate,calculi,calculus,caldera,calendar,calendrical,calf,calfskin,caliber,calibrate,calibre,calico,caliper,caliph,caliphate,calisthenic,call,caller,calligraph,calligraphy,calliope,callous,callus,calm,caloric,calorie,calorimeter,calumniate,calumny,calve,calypso,camaraderie,camber,cambric,camel,camelback,camellia,cameo,camera,cameraman,cameramen,camilla,camouflage,camp,campaign,campanile,campfire,campground,campion,campsite,campus,can,canal,canary,cancellate,cancelled,cancelling,candela,candelabra,candid,candidacy,candidate,candle,candlelight,candlelit,candlestick,candlewick,candy,cane,canine,canister,cannel,cannery,cannibal,cannister,cannon,cannonball,canny,canoe,canon,canopy,canst,cant,cantaloupe,canteen,canterelle,canticle,cantilever,cantle,canto,canton,cantor,canvas,canvasback,canvass,canyon,cap,capacious,capacitance,capacitive,capacitor,capacity,cape,capella,caper,capillary,capita,capital,capitol,capitulate,capo,caprice,capricious,capsize,capstan,capstone,capsule,captain,captaincy,caption,captious,captivate,captive,captor,capture,capybara,car,carabao,caramel,caravan,caraway,carbide,carbine,carbohydrate,carbon,carbonaceous,carbonate,carbonic,carbonium,carbonyl,carborundum,carboxy,carboxylic,carbuncle,carburetor,carcinoma,card,cardamom,cardboard,cardiac,cardinal,cardiod,cardioid,cardiology,cardiovascular,care,careen,career,carefree,careful,caret,careworn,carfare,cargo,cargoes,caribou,caricature,carload,carnation,carne,carney,carnival,carob,carol,carouse,carp,carpenter,carpentry,carpet,carport,carrageen,carrel,carriage,carrot,carry,carryover,cart,carte,cartilage,cartilaginous,cartographer,cartographic,cartography,carton,cartoon,cartridge,cartwheel,carve,carven,caryatid,cascade,cascara,case,casebook,casein,casework,cash,cashew,cashier,cashmere,cask,casserole,cassette,cassock,cast,castanet,caste,casteth,castigate,castle,castor,casual,casualty,cat,catabolic,cataclysm,cataclysmic,catalogue,catalpa,catalysis,catalyst,catalytic,catapult,cataract,catastrophe,catastrophic,catatonia,catatonic,catawba,catbird,catch,catchup,catchword,catchy,catechism,categoric,category,catenate,cater,caterpillar,catfish,catharsis,cathedra,cathode,cation,cationic,catkin,catlike,catnip,catsup,cattail,cattle,cattleman,cattlemen,caucus,caught,cauldron,cauliflower,caulk,causal,causate,causation,cause,caustic,caution,cautionary,cautious,cavalcade,cavalier,cavalry,cave,caveat,caveman,cavemen,cavern,cavernous,caviar,cavil,cavilling,cavitate,cavort,caw,cayenne,cease,cedar,cede,cedilla,ceil,celandine,celebrant,celebrate,celebrity,celerity,celery,celesta,celestial,cell,cellar,cellophane,cellular,celluloid,cement,cemetery,censor,censorial,censorious,censure,census,cent,centaur,centenary,centennial,centerline,centerpiece,centigrade,centimeter,centipede,central,centric,centrifugal,centrifugate,centrifuge,centrist,centroid,centum,century,ceramic,ceramium,cereal,cerebellum,cerebral,cerebrate,ceremonial,ceremonious,ceremony,cereus,cerise,cerium,certain,certainty,certificate,certified,certify,cesium,cessation,cession,chagrin,chain,chair,chairlady,chairman,chairmen,chairperson,chairwoman,chairwomen,chaise,chalcedony,chalcocite,chalet,chalice,chalk,chalkboard,chalkline,chalky,challenge,chamber,chamberlain,chambermaid,chameleon,chamfer,chamois,chamomile,champ,champion,chance,chancel,chancellor,chancery,chancy,chandelier,chandler,change,changeable,changeover,channel,chanson,chant,chantey,chantry,chap,chaparral,chapel,chaperon,chaperone,chaplain,chaplaincy,chapter,character,characteristic,charcoal,chard,charge,chargeable,chariot,charisma,charismatic,charitable,charity,charm,chart,chartreuse,chartroom,cha
se,chasm,chassis,chaste,chastise,chat,chateau,chauffeur,chaw,cheap,check,checkbook,checkerboard,checklist,checkmate,checkout,checkpoint,checksum,checkup,cheek,cheekbone,cheer,cheerful,cheerlead,cheerleader,cheery,cheese,cheesecake,cheesecloth,cheesy,cheetah,chef,chelate,chemic,chemise,chemisorb,chemisorption,chemist,chenille,cherish,cherry,chert,cherub,cherubim,chess,chest,chestnut,chevalier,chevron,chevy,chew,chicken,chicory,chide,chief,chiefdom,chieftain,chiffon,child,childhood,childish,childlike,children,chili,chill,chilly,chime,chimera,chimeric,chimney,chimpanzee,chin,chinch,chinchilla,chine,chinquapin,chip,chipboard,chipmunk,chiropractor,chirp,chisel,chiton,chivalrous,chivalry,chive,chlorate,chlordane,chloride,chlorinate,chlorine,chloroform,chlorophyll,chloroplast,chock,chocolate,choice,choir,choirmaster,cholera,cholesterol,cholinesterase,choose,choosy,chop,choppy,choral,chorale,chord,chordal,chordata,chordate,chore,choreograph,choreography,chorine,chortle,chorus,chose,chosen,chow,chowder,chromate,chromatic,chromatin,chromatogram,chromatograph,chromatography,chrome,chromic,chromium,chromosome,chromosphere,chronic,chronicle,chronograph,chronography,chronology,chrysanthemum,chrysolite,chuckle,chuff,chunk,churchyard,churn,chute,chutney,cicada,cider,cilia,ciliate,cinch,cinder,cinema,cinematic,cinnabar,cinnamon,cinquefoil,cipher,circa,circle,circlet,circuit,circuitous,circuitry,circulant,circular,circulate,circulatory,circumcircle,circumference,circumvent,circumvention,circus,cistern,citadel,citation,cite,citizen,citizenry,citrate,citric,citron,citrus,city,cityscape,citywide,civet,civic,civil,civilian,clad,cladophora,claim,claimant,clairvoyant,clam,clamber,clammy,clamorous,clamp,clamshell,clan,clandestine,clapboard,claret,clarify,clarinet,clarity,clash,clasp,class,classic,classification,classificatory,classify,classmate,classroom,classy,clatter,clattery,clause,claustrophobia,claustrophobic,claw,clay,clean,cleanse,cleanup,clear,clearance,clearheaded,cleat,cleft,clement,clench,cleric,clerk,clever,cliche,click,client,clientele,cliff,cliffhang,climate,climatic,climatology,climb,clime,clinch,cling,clinging,clinic,clinician,clink,clip,clipboard,clique,cloak,cloakroom,clock,clockwatcher,clockwise,clockwork,clog,clogging,clone,clonic,close,closet,closeup,closure,clot,cloth,clothbound,clothe,clothesbrush,clotheshorse,clothesline,clothesman,clothesmen,clothier,cloture,cloud,cloudburst,cloudy,clout,clove,cloven,clown,cloy,club,clubhouse,clubroom,cluck,clue,clump,clumsy,clung,cluster,clutch,clutter,coach,coachman,coachmen,coachwork,coadjutor,coagulable,coagulate,coal,coalesce,coalescent,coalition,coarse,coarsen,coast,coastal,coastline,coat,coattail,coauthor,coax,coaxial,cobalt,cobble,cobblestone,cobra,cobweb,cockpit,cocoa,coconut,cocoon,cod,coda,code,codebreak,codeposit,codetermine,codeword,codfish,codicil,codify,codomain,coed,coeditor,coeducation,coefficient,coequal,coerce,coercible,coercion,coercive,coexist,coexistent,coextensive,cofactor,coffee,coffeecup,coffeepot,coffer,cog,cogent,cogitate,cognate,cognition,cognitive,cognizable,cognizant,cohere,coherent,cohesion,cohesive,cohomology,cohort,cohosh,coiffure,coil,coin,coinage,coincide,coincident,coincidental,colander,colatitude,cold,coleus,coliform,coliseum,collaborate,collage,collagen,collapse,collapsible,collar,collarbone,collard,collate,collateral,colleague,collect,collectible,collector,college,collegial,collegian,collegiate,collet,collide,collie,collimate,collinear,collision,collocation,colloidal,colloquia,colloquial,colloquium,colloquy,collude,collusion,colonel,colonial,colonist,colonnade,colony,colorate,coloratura,colorimeter,colossal,colossi,colossus,colt,coltish,column,columnar,colza,comb,combinate,combination,combinator,combinatorial,combinatoric,combine,combustible,combustion,comeback,comedian,comedy,comet,cometary,comfort,comic,comma,command,commemorate,commend,commendation,commendatory,commens
urable,commensurate,comment,commentary,commentator,commerce,commercial,commingle,commiserate,commissariat,commissary,commission,commit,committal,committed,committee,committeeman,committeemen,committeewoman,committeewomen,committing,commodious,commodity,commodore,common,commonality,commonplace,commonweal,commonwealth,commotion,communicable,communicant,communicate,communique,commutate,commute,compact,compacter,compactify,companion,companionway,company,comparative,comparator,compare,comparison,compartment,compass,compassion,compassionate,compatible,compatriot,compel,compellable,compelled,compelling,compendia,compendium,compensable,compensate,compensatory,compete,competent,compilation,compile,complacent,complain,complainant,complaint,complaisant,compleat,complement,complementary,complementation,complete,completion,complex,complexion,compliant,complicate,complicity,compliment,complimentary,compline,comply,component,componentry,comport,compose,composite,composition,compositor,composure,compote,compound,comprehend,comprehensible,comprehension,comprehensive,compress,compressible,compression,compressive,compressor,comprise,compromise,comptroller,compulsion,compulsory,compunction,computation,compute,comrade,concatenate,concave,conceal,concede,conceit,concentrate,concentric,concept,conceptual,concern,concert,concerti,concertina,concertmaster,concerto,concession,concessionaire,conch,concierge,conciliate,conciliatory,concise,concision,conclave,conclude,conclusion,conclusive,concoct,concomitant,concord,concordant,concourse,concrete,concretion,concur,concurred,concurrent,concurring,concussion,condemn,condemnate,condemnatory,condensate,condense,condensible,condescend,condescension,condiment,condition,condolence,condominium,condone,conduce,conducive,conduct,conductance,conductor,conduit,cone,confabulate,confect,confectionery,confederacy,confederate,confer,conferee,conference,conferrable,conferred,conferring,confess,confession,confessor,confidant,confidante,confide,confident,confidential,configuration,configure,confine,confirm,confirmation,confirmatory,confiscable,confiscate,confiscatory,conflagrate,conflagration,confluent,confocal,conform,conformal,conformance,conformation,confound,confrere,confront,confrontation,confute,congeal,congener,congenial,congest,congestion,congestive,conglomerate,congratulate,congratulatory,congregate,congress,congressional,congressman,congressmen,congresswoman,congresswomen,congruent,conic,conifer,coniferous,conjectural,conjecture,conjunct,conjuncture,conjure,connect,connector,connivance,connive,connoisseur,connotation,connotative,connote,conquer,conqueror,conquest,conquistador,consanguine,consanguineous,conscience,conscientious,conscionable,conscious,conscript,conscription,consecrate,consecutive,consensus,consent,consequent,consequential,conservation,conservatism,conservative,conservator,conservatory,conserve,consider,considerate,consign,consignee,consignor,consist,consistent,consolation,console,consolidate,consonant,consonantal,consortium,conspicuous,conspirator,conspiratorial,conspire,constant,constellate,consternate,constituent,constitute,constitution,constitutive,constrain,constraint,constrict,constrictor,construct,constructible,constructor,construe,consul,consular,consulate,consult,consultant,consultation,consultative,consume,consumption,consumptive,contact,contagion,contagious,contain,contaminant,contaminate,contemplate,contemporaneous,contemporary,contend,content,contention,contentious,context,contextual,contiguity,contiguous,continent,continental,contingent,continua,continual,continuant,continuation,continue,continued,continuity,continuo,continuous,continuum,contort,contour,contrabass,contract,contractor,contractual,contradict,contradictory,contradistinct,contradistinction,contradistinguish,contralateral,contralto,contraption,contrariety,contrariwise,contrary,contrast,contravariant,contravene,contravention,contretemps,contribute,contribution,contributor,contribu
tory,contrite,contrition,contrivance,contrive,control,controllable,controlled,controller,controlling,controversial,controversy,controvertible,contumacy,contusion,conundrum,convalesce,convalescent,convect,convene,convenient,convent,convention,converge,convergent,conversant,conversation,converse,conversion,convert,convertible,convex,convey,conveyance,conveyor,convict,convince,convivial,convocate,convocation,convoke,convolute,convolution,convolve,convoy,convulse,convulsion,convulsive,cook,cookbook,cookery,cookie,coolant,coolheaded,coop,cooperate,coordinate,coot,cop,cope,copious,coplanar,copolymer,copperas,copperhead,coppery,copra,coprinus,coproduct,copy,copybook,copywriter,coquette,coquina,coral,coralberry,coralline,corbel,cord,cordage,cordial,cordite,cordon,corduroy,core,coriander,cork,corkscrew,cormorant,corn,cornbread,cornea,cornerstone,cornet,cornfield,cornflower,cornish,cornmeal,cornstarch,cornucopia,corny,corollary,corona,coronary,coronate,coroner,coronet,coroutine,corpora,corporal,corporate,corporeal,corps,corpsman,corpsmen,corpulent,corpus,corpuscular,corral,corralled,correct,corrector,correlate,correspond,correspondent,corridor,corrigenda,corrigendum,corrigible,corroborate,corroboree,corrode,corrodible,corrosion,corrosive,corrugate,corsage,cortege,cortex,cortical,corundum,coruscate,corvette,cosmetic,cosmic,cosmology,cosmopolitan,cosmos,cosponsor,cost,costume,cosy,cot,cotangent,cotillion,cotman,cotoneaster,cotta,cottage,cotton,cottonmouth,cottonseed,cottonwood,couch,cougar,cough,could,coulomb,council,councilman,councilmen,councilwoman,councilwomen,counsel,counselor,count,countdown,countenance,counteract,counterbalance,counterclockwise,counterexample,counterflow,counterman,countermen,counterpart,counterpoint,counterpoise,counterproposal,countersink,countersunk,countervail,countrify,country,countryman,countrymen,countryside,countrywide,county,countywide,coup,coupe,couple,coupon,courage,courageous,courier,course,court,courteous,courtesy,courthouse,courtier,courtroom,courtyard,couscous,cousin,couturier,covalent,covariant,covariate,covary,cove,covenant,cover,coverage,coverall,coverlet,cowbell,cowbird,cowboy,cowgirl,cowhand,cowherd,cowhide,cowl,coworker,cowpox,coy,coyote,cozy,crab,crabapple,crabmeat,cradle,craft,craftsman,craftsmen,craftspeople,craftsperson,crafty,cramp,cranberry,crane,cranelike,crania,cranium,cranny,crass,crate,crater,cravat,crave,craw,crawl,crawlspace,crayfish,crayon,craze,crazy,creak,creaky,crease,create,creating,creature,creche,credent,credential,credenza,credible,credit,creditor,credo,credulity,credulous,creed,creedal,creek,creekside,creosote,crepe,crept,crescendo,crescent,cress,crest,crestfallen,crevice,crew,crewcut,crewel,crewman,crewmen,crib,cricket,cried,crime,crimson,crinkle,crisp,criss,crisscross,criteria,criterion,critic,critique,critter,croak,crochet,crocodile,crocodilian,croft,crone,crony,crook,croon,crop,croquet,cross,crossarm,crossbar,crossbill,crossbow,crosscut,crosshatch,crosslink,crossover,crosspoint,crossroad,crosstalk,crosswalk,crossway,crosswise,crossword,crosswort,crouch,crow,crowberry,crowd,crowfoot,crown,crucial,crucible,cruise,crumb,crumble,crumple,crunch,crupper,crusade,crush,crust,cry,cryptic,cryptographer,cryptography,cryptology,crystal,crystalline,crystallite,crystallographer,crystallography,cub,cube,cubic,cuckoo,cucumber,cud,cuddle,cuddly,cudgel,cue,cuff,cufflink,cuisine,culinary,cull,culminate,culpable,culprit,cultivable,cultivate,cultural,culture,culvert,cumbersome,cumin,cumulate,cumulus,cunning,cup,cupboard,cupful,cupidity,cupric,cuprous,cur,curate,curb,curbside,curd,curdle,cure,curfew,curia,curie,curio,curiosity,curious,curium,curl,curlew,curlicue,currant,current,curricula,curricular,curriculum,curry,cursive,cursor,cursory,curt,curtail,curtain,curtsey,curvature,curve,curvilinear,cushion,cusp,custodial,custodian,custody,custom,customary,customhouse,cut,cutaneous,cutback,cute,cutesy,cutlass,cutler,cutlet,cut
off,cutout,cutover,cutset,cuttlebone,cuttlefish,cutworm,cybernetic,cybernetics,cycad,cycle,cyclic,cyclist,cyclone,cyclopean,cyclorama,cyclotomic,cyclotron,cylinder,cylindric,cynic,cypress,cyst,cysteine,cytochemistry,cytology,cytolysis,cytoplasm,dab,dabble,dachshund,dactyl,dactylic,dad,daddy,daffodil,daffy,dagger,dahlia,dainty,dairy,dairyman,dairymen,daisy,dale,dally,damp,dampen,dance,dandelion,dandy,dapper,dapple,dare,daredevil,dark,darken,darkle,darling,dart,dash,dashboard,data,database,date,dateline,dater,datum,daub,daughter,daunt,dauphin,dauphine,davenport,davit,dawn,day,daybreak,daydream,daylight,daytime,daze,dazzle,deactivate,deadline,deadlock,deal,deallocate,dealt,dean,dear,dearie,dearth,debar,debarring,debate,debater,debenture,debilitate,debility,debit,debonair,debrief,debris,debt,debtor,debug,debugged,debunk,debut,debutante,decade,decadent,decaffeinate,decal,decant,decathlon,decay,decedent,deceit,decelerate,decennial,decent,decertify,decibel,decide,deciduous,decile,decimal,decipher,decision,decisional,decisive,deck,declaim,declamation,declamatory,declaration,declarative,declarator,declaratory,declare,declassify,declination,decline,declivity,decode,decollimate,decolonize,decommission,decompile,decomposable,decompose,decomposition,decompress,decompression,decontrol,decontrolled,decontrolling,deconvolution,deconvolve,decor,decorate,decorous,decorticate,decorum,decouple,decoy,decrease,decree,decreeing,decrement,decry,dedicate,deduce,deducible,deed,deem,deemphasize,deep,deepen,deer,deerskin,deface,default,defeat,defector,defend,defendant,defensible,defensive,defer,deferent,deferrable,deferred,deferring,define,definite,definition,definitive,deflect,deflector,deforest,deforestation,deft,degree,dehumidify,dehydrate,delay,delectable,delectate,delegable,delegate,deleterious,deliberate,delicacy,delicate,delicatessen,delicious,delight,delightful,delimit,delineament,delineate,deliquesce,deliquescent,delirious,delirium,deliver,deliverance,delivery,dell,delphine,delphinium,delta,deltoid,delude,deluge,delusion,delusive,deluxe,delve,demagnify,demand,demarcate,demark,demiscible,demitted,demitting,demo,democracy,democratic,demodulate,demography,demonstrable,demonstrate,demultiplex,demystify,den,denature,dendrite,dendritic,denizen,denominate,denotation,denotative,denote,denouement,dense,densitometer,dent,dental,dentistry,denture,denumerable,deoxyribose,depart,department,departure,depend,dependent,depict,deplete,depletion,deploy,depose,deposit,depositary,deposition,depositor,depository,depot,depreciable,depreciate,depth,deputation,depute,deputy,derby,dereference,deregulate,deregulatory,derivate,derive,dervish,descant,descend,descendant,descendent,descent,describe,description,descriptive,descriptor,desert,deserve,design,designate,desist,desk,despite,dessert,destinate,destine,destiny,detach,detail,detain,detect,detector,deter,detergent,determinant,determinate,determine,detour,deuce,develop,device,devote,devotee,devotion,dew,dewar,dewdrop,dexterity,dextrose,dextrous,diadem,diagnosable,diagnose,diagnoses,diagnosis,diagnostic,diagnostician,diagonal,diagram,diagrammatic,dial,dialect,dialectic,dialogue,diamagnetic,diamagnetism,diameter,diamond,diary,diathermy,diathesis,diatom,diatomaceous,diatomic,diatonic,dice,dichloride,dichondra,dichotomize,dichotomous,dichotomy,dictionary,did,didactic,dielectric,diesel,diet,dietary,dietetic,dietician,differ,different,differentiable,differential,differentiate,difficult,difficulty,diffident,diffract,diffractometer,diffuse,diffusible,diffusion,diffusive,difluoride,dig,digest,digestible,digging,digit,digital,dignify,dignitary,dignity,digram,digress,digression,dihedral,dilapidate,dilemma,dilettante,diligent,dill,diluent,dilute,dilution,dim,dime,dimension,dimethyl,diminish,diminution,diminutive,dimple,dine,dinnertime,dinnerware,dinosaur,diode,diopter,diorama,diorite,dioxide,dip,diphthong,diploid,diploidy,diplo
ma,diplomacy,diplomat,diplomatic,direct,director,directorate,directorial,directory,disaccharide,disburse,disc,discern,discernible,discipline,disco,discordant,discovery,discreet,discrepant,discrete,discretion,discretionary,discriminable,discriminant,discus,discuss,discussion,dish,dishes,dishevel,dishwasher,dishwater,disjunct,disk,disparate,dispel,dispelled,dispelling,dispensable,dispensary,dispensate,dispense,dispersal,disperse,dispersible,dispersion,dispersive,dissemble,disseminate,dissension,dissertation,dissipate,dissonant,dissuade,distaff,distal,distant,distinct,distinguish,distribution,distributive,distributor,district,disulfide,disyllable,dither,ditto,dive,diverge,divergent,diverse,diversify,diversion,diversionary,divert,divest,divestiture,divide,dividend,divisible,division,divisional,divisor,divulge,do,doberman,dock,docket,dockside,dockyard,doctor,doctoral,doctorate,doctrinaire,doctrinal,doctrine,document,documentary,documentation,dodecahedra,dodecahedral,dodecahedron,dodge,doe,dog,doghouse,dogwood,doldrum,doldrums,dole,doleful,doll,dollar,dollop,dolly,dolomite,dolomitic,dolphin,domain,dome,domestic,domesticate,domicile,domino,donate,done,door,doorbell,doorkeep,doorkeeper,doorknob,doorman,doormen,doorstep,doorway,dormant,dormitory,dosimeter,dossier,dot,dote,double,doubleheader,doublet,doubt,doubtful,dough,doughnut,dour,douse,dove,dovetail,dowel,down,downplay,downpour,downright,downstairs,downstream,downtown,downtrend,downward,downwind,dowry,doze,dozen,drab,draft,drag,dragging,dragnet,dragon,dragonfly,dragonhead,dragoon,drain,drainage,drake,dram,drama,dramatic,dramatist,dramaturgy,drape,drapery,drastic,draw,drawback,drawbridge,drawl,drawn,dream,dreamlike,dreamt,dreamy,dredge,dreg,drench,dress,dressmake,dressy,drew,drib,dried,drier,drift,drill,drink,drive,driven,driveway,drizzle,drizzly,droll,dromedary,drone,drop,droplet,drosophila,dross,drought,drove,drowse,drowsy,drub,drugstore,druid,drum,drumhead,drumlin,dry,dryad,dual,dualism,dub,dubitable,ducat,duchess,duck,duckling,duct,ductile,ductwork,dud,due,duel,duet,duff,duffel,dug,dugout,duke,dukedom,dulcet,dull,dully,dulse,duly,dune,dunk,duopolist,duopoly,duplex,duplicable,duplicate,duplicity,durable,durance,duration,during,dusk,dust,dustbin,dusty,dutchess,dutiable,dutiful,duty,dwindle,dyad,dyadic,dye,dyeing,dyer,dynamic,dynamism,dynasty,each,eager,eagle,ear,eardrum,earl,earmark,earn,earnest,earphone,earring,earsplitting,earth,earthmoving,earthworm,earthy,ease,easel,east,eastbound,eastern,easternmost,eastward,easy,easygoing,eave,eavesdrop,eavesdropped,eavesdropper,eavesdropping,ebb,ebony,ebullient,eccentric,ecclesiastic,echelon,echinoderm,echo,echoes,eclectic,eclipse,ecliptic,eclogue,ecology,econometric,economic,economist,economy,ecosystem,ectoderm,ectopic,ecumenic,ecumenist,eddy,edelweiss,edematous,edge,edgewise,edging,edgy,edict,edifice,edify,edit,edition,editor,editorial,educable,educate,eel,eerie,eerily,efface,effaceable,effect,effectuate,efferent,efficacious,efficacy,efficient,effloresce,efflorescent,effort,effusion,effusive,egalitarian,egg,eggplant,eggshell,egress,egret,eider,eidetic,eigenfunction,eigenspace,eigenstate,eigenvalue,eigenvector,eight,eighteen,eighteenth,eightfold,eighth,eightieth,eighty,einsteinium,either,elaborate,elapse,elastic,elastomer,elate,elbow,elder,eldest,elect,elector,electoral,electorate,electress,electret,electric,electrician,electrify,electro,electrocardiogram,electrocardiograph,electrode,electroencephalogram,electrolysis,electrolyte,electrolytic,electron,electronic,electrophoresis,electrophorus,elegant,elegiac,elegy,element,elementary,elephant,elephantine,elevate,eleven,eleventh,elfin,elicit,elide,eligible,elision,elite,elk,ellipse,ellipsis,ellipsoid,ellipsoidal,ellipsometer,elliptic,elm,eloquent,else,elsewhere,eluate,elucidate,elude,elusive,elute,elution,elves,elysian,emaciate,emanate,emancipate,embank,embarcadero,embargo,embargoes,embark,em
bassy,embellish,ember,embezzle,emblazon,emblem,emblematic,embodiment,embody,embolden,emboss,embouchure,embower,embrace,embraceable,embrittle,embroider,embroidery,emcee,emendable,emerald,emerge,emergent,emeriti,emeritus,emigrant,emigrate,eminent,emirate,emissary,emolument,emotion,emotional,empathy,emperor,emphases,emphasis,emphatic,emphysema,empire,empiric,emplace,employ,employed,employee,employer,employing,emporium,empower,empress,empty,emulate,emulsify,emulsion,enable,enamel,encapsulate,encephalitis,enclave,encomia,encomium,encore,encroach,encryption,encyclopedic,end,endemic,endgame,endoderm,endogamous,endogamy,endogenous,endomorphism,endorse,endothelial,endothermic,endow,endpoint,endurance,endure,energetic,energy,enervate,enfant,enforceable,enforcible,engage,engine,engineer,enhance,enigma,enigmatic,enjoinder,enliven,enol,enough,enquire,enquiry,enrollee,ensconce,ensemble,enstatite,entendre,enter,enterprise,entertain,enthalpy,enthrall,enthusiasm,enthusiast,enthusiastic,entice,entire,entirety,entity,entomology,entourage,entranceway,entrant,entrepreneur,entrepreneurial,entropy,entry,enumerable,enumerate,enunciable,enunciate,envelop,envelope,enviable,environ,envoy,enzymatic,enzyme,enzymology,ephemeral,epic,epicure,epicycle,epicyclic,epidemic,epidemiology,epidermic,epidermis,epigenetic,epigram,epigrammatic,epigraph,epileptic,epilogue,epimorphism,episcopate,episode,episodic,epistemology,epistle,epistolatory,epitaph,epithelial,epithelium,epithet,epitome,epoch,epochal,epoxy,epsilon,equable,equal,equanimity,equate,equatorial,equestrian,equidistant,equilateral,equilibrate,equilibria,equilibrium,equine,equinoctial,equinox,equip,equipoise,equipotent,equipped,equipping,equitable,equitation,equity,equivalent,equivocal,equivocate,era,eradicable,eradicate,erasable,erase,erasure,erg,ergative,ergodic,erode,erodible,erosible,erosion,erosive,errand,errant,errantry,ersatz,erudite,erudition,erupt,eruption,escadrille,escalate,escapade,escape,escapee,escheat,eschew,escort,escritoire,escrow,escutcheon,esophagi,esoteric,especial,espionage,esplanade,espousal,espouse,esprit,esquire,essay,essence,essential,establish,estate,esteem,ester,estimable,estimate,estrange,estuarine,estuary,etch,eternal,eternity,ethane,ethanol,ether,ethereal,ethic,ethnography,ethnology,ethology,ethos,ethyl,ethylene,etiquette,etude,etymology,eucalyptus,eucre,eugenic,eukaryote,eulogy,euphemism,euphemist,eureka,eutectic,evacuate,evade,evaluable,evaluate,evanescent,evangel,evangelic,evaporate,eve,even,evenhanded,evensong,event,eventful,eventide,eventual,eventuate,evergreen,everlasting,every,everybody,everyday,everyman,everyone,everything,everywhere,evict,evident,evidential,evocable,evocate,evocation,evoke,evolution,evolutionary,evolve,evzone,ewe,exacerbate,exact,exacter,exaggerate,exalt,exaltation,exam,examination,examine,example,exasperate,exasperater,excavate,exceed,excel,excelled,excellent,excelling,excelsior,except,exception,exceptional,excerpt,excess,excessive,exchange,exchangeable,exchequer,excisable,excise,excision,excitation,excitatory,excite,exclaim,exclamation,exclamatory,exclude,exclusion,exclusionary,exclusive,excommunicate,exculpatory,excursion,excusable,excuse,executive,executor,exemplar,exemplary,exemplify,exempt,exemption,exercisable,exercise,exert,exhale,exhaust,exhaustible,exhaustion,exhaustive,exhilarate,exhort,exhortation,exile,exist,existent,existential,exit,exodus,exonerate,exorbitant,exoskeleton,exothermic,expand,expanse,expansible,expansion,expansive,expatiate,expect,expectant,expectation,expedient,expedite,expedition,expeditious,expend,expenditure,expense,expensive,experience,experiential,experiment,experimentation,expert,expertise,expiable,expiate,expiration,expire,explain,explanation,explanatory,expletive,explicable,explicate,explicit,explode,exploit,exploitation,exploration,exploratory,explore,exponent,exponential,exponentiate,export,exportation,expose,exposit,exposition,expositor,expository
,exposure,expound,express,expressible,expression,expressive,expressway,expropriate,exquisite,extant,extemporaneous,extempore,extend,extendible,extensible,extension,extensive,extensor,extent,extenuate,exterior,exterminate,external,extinct,extinguish,extol,extolled,extoller,extolling,extra,extracellular,extract,extractor,extracurricular,extraditable,extradite,extradition,extralegal,extralinguistic,extramarital,extramural,extraneous,extraordinary,extrapolate,extraterrestrial,extravagant,extravaganza,extrema,extremal,extreme,extremis,extremum,extricable,extricate,extrinsic,extroversion,extrude,extrusion,extrusive,exuberant,exult,exultant,exultation,eye,eyeball,eyebright,eyebrow,eyed,eyeful,eyeglass,eyelash,eyelet,eyelid,eyepiece,eyesight,eyewitness';

  WORDS3 CONSTANT VARCHAR2(32726) := 'fable,fabric,fabulous,facade,face,facet,facetious,facial,facile,facilitate,facsimile,fact,factor,factorial,factory,factual,facultative,faculty,fad,fade,fadeout,fain,faint,fair,fairgoer,fairway,falcon,falconry,fall,fallen,fallible,falloff,fallout,fallow,fame,familial,familiar,familiarly,familism,family,famine,famish,famous,fan,fanatic,fanciful,fancy,fanfare,fanfold,fantastic,fantasy,far,farce,fare,farewell,farfetched,farm,farmhouse,farmland,farsighted,fascinate,fashion,fast,fasten,fastidious,fate,fateful,father,fathom,fatigue,faucet,faun,fauna,fawn,feasible,feast,feat,feather,featherbed,featherbedding,feathertop,featherweight,feathery,feature,fed,federal,federate,fee,feed,feedback,feel,feet,feign,feint,feldspar,felicitous,felicity,feline,fell,fellow,female,femur,fence,fencepost,fend,fennel,ferment,fermentation,fern,fernery,ferocious,ferocity,ferret,ferric,ferris,ferrite,ferroelectric,ferromagnet,ferromagnetic,ferromagnetism,ferrous,ferruginous,ferrule,ferry,fertile,fervent,fescue,fest,festival,festive,fetch,fete,fetid,fetish,fetter,fettle,feud,feudal,feudatory,fever,feverish,few,fiance,fiancee,fibrin,fibrosis,fibrous,fiche,fickle,fiction,fictitious,fictive,fiddle,fiddlestick,fide,fidelity,fidget,fiducial,fiduciary,fief,fiefdom,field,fieldstone,fieldwork,fiend,fiendish,fierce,fiery,fiesta,fife,fifteen,fifteenth,fifth,fiftieth,fifty,fig,figure,figurine,filament,filamentary,filbert,filch,file,filet,filial,filibuster,fill,filled,filler,fillet,filly,film,filmdom,filmstrip,filmy,filter,filtrate,fin,final,finale,finance,financial,financier,finch,find,fine,finery,finesse,finessed,finessing,finger,fingernail,fingerprint,fingertip,finicky,finish,finite,fir,fire,fireboat,firebreak,firebug,firecracker,firefly,firehouse,firelight,fireman,firemen,fireplace,firepower,fireproof,fireside,firewall,firewood,firework,firm,firmware,first,firsthand,fiscal,fish,fisherman,fishermen,fishery,fishmonger,fishpond,fishy,fission,fissure,fist,fit,fitful,five,fivefold,fix,fixate,fixture,fizzle,fjord,flabbergast,flack,flag,flagpole,flagrant,flagstone,flail,flair,flak,flake,flaky,flamboyant,flame,flamingo,flammable,flange,flank,flannel,flap,flare,flash,flashback,flashlight,flashy,flask,flat,flatbed,flathead,flatiron,flatland,flatten,flattery,flatware,flatworm,flaunt,flax,flaxen,flaxseed,flea,fleck,fled,fledge,fledgling,flee,fleece,fleeing,fleet,flemish,fletch,flew,flex,flexible,flick,flier,flight,flimsy,flinch,fling,flint,flintlock,flinty,flippant,flirt,flirtation,flirtatious,flit,float,flood,floodgate,floodlight,floodlit,floor,floorboard,flora,floral,florist,flotation,flotilla,flounder,flour,flourish,flow,flowchart,flowerpot,flowery,flown,flu,fluctuate,flue,fluency,fluent,fluff,fluffy,fluid,fluke,flung,fluoresce,fluorescein,fluorescent,fluoridate,fluoride,fluorine,fluorite,fluorocarbon,flurry,fluster,flute,flutter,fluvial,flux,fly,flycatcher,flyer,flyway,foal,foam,focal,foci,focus,focussed,foe,fog,fogging,foggy,fogy,foible,foil,foist,fold,foldout,foliage,foliate,folio,folk,folklore,folksong,folksy,follicle,follicular,follow,folly,fondly,font,food,foodstuff,foot,footage,football,footbridge,footfall,foothill,footman,footmen,footnote,footpad,footpath,footprint,footstep,footstool,footwear,footwork,for,forage,foray,forbade,forbear,forbearance,forbid,forbidden,forbidding,forbore,forborne,force,forceful,forcible,ford,fore,foregoing,foreign,forest,forestry,forever,forfeit,forfeiture,forfend,forgave,forge,forget,forgetful,forgettable,forgetting,forgive,forgiven,forgo,forgot,forgotten,fork,forklift,forlorn,form,formal,formaldehyde,formant,format,formate,formatted,formatting,formic,formidable,formula,formulae,formulaic,formulate,forsake,forsaken,forsook,forswear,fort,forte,forth,forthcome,forthright,forthwith,fortieth,fortify,fortin,fortiori,fortitude,fortnight,fortran,fortress,fortuitous,fortunate,fortune,forty,forum,forward,forwent,fossil,f
ossiliferous,foster,fosterite,fought,foul,found,foundation,fountain,fountainhead,four,fourfold,foursome,foursquare,fourteen,fourteenth,fourth,fovea,fowl,fox,foxglove,foxhole,foxhound,foxtail,foyer,fraction,fractionate,fractious,fracture,fragile,fragment,fragmentary,fragmentation,fragrant,frail,frailty,frame,framework,franc,franca,franchise,frank,frankfurter,franklin,fraternal,fraternity,fray,frayed,freckle,free,freed,freedmen,freedom,freehand,freehold,freeing,freeman,freemen,freer,freest,freestone,freethink,freeway,freewheel,freeze,freight,frenetic,frenzy,freon,frequent,fresco,frescoes,fresh,freshen,freshwater,friction,frictional,fried,friend,frieze,frigid,frill,frilly,fringe,frisky,frivolity,frivolous,frizzle,fro,frock,frog,frolic,from,front,frontier,frontiersman,frontiersmen,frost,frostbite,frostbitten,frosty,froth,frothy,frown,frowzy,froze,frozen,fructose,frugal,fruit,fruitful,fruition,frustrate,frustrater,fry,fudge,fuel,fugitive,fulcrum,fulfill,full,fullback,fully,fumble,fume,fumigant,fumigate,fun,function,functionary,functorial,fund,fundamental,fundraise,fungal,fungi,funnel,funny,fur,furbish,furious,furl,furlong,furlough,furnace,furnish,furniture,furrier,furrow,furry,further,furtherance,furthermore,furthermost,furthest,furtive,fury,furze,fuse,fuselage,fusible,fusillade,fusion,fuss,fussy,futile,future,fuzz,fuzzy,gab,gabardine,gabble,gable,gadget,gadgetry,gage,gaggle,gain,gainful,gait,gal,gala,galactic,galactose,galaxy,gale,gall,gallant,gallantry,gallery,galley,gallivant,gallon,gallonage,gallop,gallstone,galvanic,galvanism,galvanometer,gambit,gamble,game,gamesman,gamut,gander,gannet,gantlet,gantry,gap,gape,garage,garb,garble,garden,gardenia,gargantuan,gargle,garish,garland,garlic,garner,garnet,garrison,garrulous,garter,gash,gasket,gaslight,gasoline,gasp,gastronome,gastronomy,gate,gatekeep,gateway,gather,gator,gauche,gaudy,gauge,gaugeable,gauleiter,gaunt,gauntlet,gauss,gauze,gave,gavel,gavotte,gawk,gaze,gazelle,gazette,gear,gecko,geese,gel,gelable,gelatin,gelatine,gelatinous,gem,geminate,gemlike,gemstone,gene,genealogy,genera,general,generate,generic,generosity,generous,genesis,genetic,genial,genie,genius,genotype,genre,gent,genteel,gentian,gentile,gentility,gentle,gentleman,gentlemen,gentry,genuine,genus,geocentric,geochemical,geochronology,geographer,geometer,geometrician,geophysical,geopolitic,geranium,germ,germane,germanium,germicidal,germicide,germinal,germinate,gerontology,gerund,gestalt,gesticulate,gesture,get,getaway,geyser,ghastly,ghost,ghostlike,ghostly,ghoul,ghoulish,giant,giantess,gibberish,gibbet,gibbon,giblet,giddy,gift,gig,gigacycle,gigahertz,gigaherz,gigantic,gigavolt,gigawatt,giggle,gila,gild,gill,gilt,gimmick,ginger,gingham,gingko,ginseng,giraffe,girl,girth,gist,give,giveaway,given,giveth,glacial,glaciate,glacier,glad,gladden,glade,gladiator,glamor,glamorous,glamour,glance,gland,glandular,glare,glass,glassware,glassy,glaucoma,glaucous,glaze,gleam,glean,glee,gleeful,glen,glib,glide,glimmer,glimpse,glint,glissade,glisten,glitch,glitter,gloat,glob,global,globe,globular,globule,globulin,gloom,gloomy,glorify,glorious,glory,gloss,glossary,glossed,glossy,glottal,glottis,glove,glow,glucose,glue,glued,gluey,gluing,glum,glut,glutamate,glutamic,glutamine,glutinous,glutton,glyceride,glycerin,glycerinate,glycerine,glycerol,glycine,glycogen,glycol,glyph,gnarl,gnash,gnat,gnaw,gnome,gnu,go,goad,goal,goat,gobble,goblet,goes,gold,golden,goldfish,goldsmith,golf,gondola,gone,good,goodbye,goodwill,goose,gooseberry,gopher,gore,gorge,gorgeous,gorgon,gorilla,gorse,gory,gosling,gossamer,gossip,got,gouge,gourd,gourmet,gout,govern,governance,governess,governor,gown,grab,grace,graceful,gracious,grackle,grad,gradate,grade,gradient,gradual,graduate,graft,graham,grail,grain,grainy,grammar,grammarian,grammatic,granary,grand,grandchild,grandchildren,granddaughter,grandeur,grandfather,grandiloquent,grandiose,grandma,grand
mother,grandnephew,grandniece,grandpa,grandparent,grandson,grandstand,granite,granitic,granny,granola,grant,grantee,grantor,granular,granulate,granule,grape,grapefruit,grapevine,graph,graphic,graphite,grapple,grasp,grass,grassland,grassy,grate,grateful,grater,gratify,gratitude,gratuitous,gratuity,grave,gravel,graven,gravid,gravitate,gravy,gray,grayish,graze,grease,greasy,great,greater,grebe,greed,greedy,green,greenery,greengrocer,greenhouse,greenish,greensward,greenware,greenwood,greet,gregarious,grew,grey,greyhound,grid,griddle,gridiron,grief,grievance,grieve,grievous,griffin,grill,grille,grilled,grillwork,grim,grimace,grime,grin,grind,grindstone,grip,gripe,grisly,grist,gristmill,grit,gritty,grizzle,grizzly,groan,groat,grocer,grocery,groggy,groom,groove,gross,grotesque,ground,groundskeep,groundwork,group,grout,grove,grovel,grow,growl,grown,grownup,growth,grudge,gruesome,gruff,grumble,grunt,gryphon,guanidine,guanine,guarantee,guaranteeing,guarantor,guard,guardhouse,guardian,gubernatorial,guerdon,guernsey,guerrilla,guess,guesswork,guest,guffaw,guidance,guide,guidebook,guideline,guidepost,guiding,guignol,guild,guildhall,guile,guinea,guise,guitar,gulf,gull,gullet,gullible,gully,gulp,gum,gumbo,gumdrop,gummy,gumption,gumshoe,gurgle,guru,gush,gusset,gust,gusto,gusty,gut,gutsy,guttural,guy,guzzle,gym,gymnasium,gymnast,gymnastic,gypsite,gypsum,gypsy,gyroscope,habit,habitant,habitat,habitation,habitual,habituate,hacksaw,had,haddock,hadron,haggard,haggle,haiku,hail,hailstone,hailstorm,hair,haircut,hairdo,hairpin,hale,half,halfback,halfhearted,halfway,halibut,halide,halite,hall,hallelujah,hallmark,hallow,hallucinate,hallway,halo,halocarbon,halogen,halt,halve,ham,hamburger,hamlet,hammerhead,hammock,hamper,hamster,hand,handbag,handbook,handclasp,handcuff,handful,handicraft,handicraftsman,handicraftsmen,handiwork,handkerchief,handle,handleable,handlebar,handline,handmade,handmaiden,handout,handset,handshake,handsome,handspike,handstand,handwaving,handwrite,handwritten,handy,handyman,handymen,hang,hangar,hansom,haphazard,happen,happenstance,happy,harass,harbinger,hardbake,hardboard,hardboiled,harden,hardhat,hardscrabble,hardtack,hardtop,hardware,hardwood,hardworking,hardy,hare,hark,harm,harmful,harmonic,harmonica,harmonious,harmony,harness,harp,harpoon,harpsichord,harrow,harsh,harshen,hart,harvest,harvestman,hassle,hast,haste,hasten,hasty,hat,hatch,hatchet,hath,haul,haulage,haunch,haunt,have,haven,havoc,hawk,hay,hayfield,haystack,hayward,hazard,haze,hazel,hazelnut,hazy,he,head,headache,headboard,headdress,headland,headlight,headline,headmaster,headphone,headquarter,headquarters,headroom,headset,headsman,headsmen,headstand,headstrong,headwall,headwater,headway,headwind,heal,health,healthful,healthy,heap,hear,heard,hearken,heart,heartbeat,heartbreak,hearten,heartfelt,hearth,hearty,heat,heater,heath,heathen,heathenish,heave,heaven,heavenward,heavy,heavyweight,hectic,hector,hedge,hedgehog,heed,heel,heft,hefty,hegemony,height,heighten,heir,heiress,held,helical,helicopter,heliocentric,heliotrope,helium,helix,hello,helm,helmet,helmsman,helmsmen,help,helpful,helpmate,hem,hematite,hemisphere,hemispheric,hemlock,hemoglobin,hemolytic,hen,hence,henceforth,henpeck,heptane,her,herald,herb,herd,herdsman,here,hereabout,hereafter,hereby,hereditary,heredity,heretic,hereto,heretofore,hereunder,hereunto,herewith,heritable,heritage,hero,heroes,heroic,heroism,heron,herringbone,herself,hertz,hesitant,hesitate,hesitater,heterocyclic,heterodyne,heterogamous,heterogeneity,heterogeneous,heterostructure,heterozygous,heuristic,hewn,hex,hexachloride,hexadecimal,hexafluoride,hexagon,hexagonal,hexameter,hexane,hey,heyday,hi,hiatus,hibachi,hibernate,hickory,hid,hidden,hide,hideaway,hideous,hideout,hierarchal,hierarchic,hierarchy,hieratic,hieroglyphic,highest,highland,highlight,highroad,hightail,highway,highwayman,highwaymen,hike,hilarious,hilarity,hill,hillside,hilltop,hilly,h
ilt,him,himself,hindmost,hindrance,hindsight,hinge,hint,hinterland,hip,hippo,hippodrome,hippopotamus,hire,hireling,his,hiss,histamine,histidine,histochemic,histochemistry,histogram,histology,historian,historic,historiography,history,histrionic,hit,hitch,hither,hitherto,hive,hoard,hoarse,hobble,hobby,hockey,hodge,hodgepodge,hold,holden,holiday,holler,hollow,holly,hologram,holography,holster,holt,homage,home,homebound,homebuild,homebuilder,homebuilding,homecoming,homeland,homemade,homeopath,homeostasis,homeowner,homesick,homestead,homeward,homework,homogenate,homogeneity,homogeneous,homologous,homologue,homology,homonym,homozygous,hone,honest,honesty,honey,honeybee,honeycomb,honeydew,honeymoon,honoraria,honorarium,honorary,honoree,honorific,hoof,hoofmark,hook,hookworm,hoop,hoot,hooves,hop,hope,hopeful,hopscotch,horde,horizon,horizontal,horn,hornet,horoscope,horse,horseback,horsedom,horseflesh,horsefly,horsehair,horseman,horsemen,horseplay,horsepower,horseshoe,horsetail,horsewoman,horsewomen,horticulture,hose,hosiery,hospice,hospitable,hospital,host,hostage,hostess,hostile,hotel,hotelman,hound,hour,hourglass,house,houseboat,housebreak,housebroken,housefly,household,housekeep,housewares,housework,hove,hovel,hover,how,howdy,however,howl,hub,hubris,huddle,hue,hued,huff,hug,huge,hugging,hull,hum,human,humane,humanitarian,humanoid,humble,humerus,humid,humidify,humidistat,humility,hummingbird,hummock,humorous,humus,hunch,hundred,hundredfold,hundredth,hungry,hunt,hurdle,hurl,hurley,hurrah,hurray,hurricane,hurry,hurt,hurtle,husband,hush,husky,hustle,hut,hutch,hyacinth,hyaline,hybrid,hydra,hydrangea,hydrant,hydrate,hydraulic,hydride,hydro,hydrocarbon,hydrochloric,hydrochloride,hydrodynamic,hydroelectric,hydrofluoric,hydrogen,hydrogenate,hydrology,hydrolysis,hydrometer,hydronium,hydrophilic,hydrophobia,hydrophobic,hydrosphere,hydrostatic,hydrothermal,hydrous,hydroxide,hydroxy,hydroxyl,hydroxylate,hyena,hygiene,hygrometer,hygroscopic,hymn,hymnal,hyperbola,hyperbolic,hyperboloid,hyperboloidal,hypertensive,hyphen,hyphenate,hypnosis,hypnotic,hypoactive,hypochlorite,hypochlorous,hypotenuse,hypothalamic,hypothalamus,hypotheses,hypothesis,hypothetic,hypothyroid,hysteresis,iambic,ice,iceberg,icebox,iceland,icicle,icon,iconic,iconoclasm,iconoclast,icosahedra,icosahedral,icosahedron,icy,idea,ideal,identical,identify,identity,ideologue,ideology,idiom,idiomatic,idiosyncrasy,idiosyncratic,idle,idyll,idyllic,if,igloo,igneous,ignite,ignition,ileum,iliac,illegible,illimitable,illiteracy,illiterate,illogic,illume,illuminate,illumine,illusion,illusionary,illusive,illusory,illustrate,illustrious,image,imagery,imaginary,imaginate,imagine,imbalance,imbibe,imbrue,imbue,imitable,imitate,immaculate,immanent,immaterial,immature,immeasurable,immediacy,immediate,immemorial,immense,immerse,immersion,immigrant,immigrate,imminent,immiscible,immobile,immobility,immoderate,immodesty,immovable,immune,immunization,immutable,impact,impair,impale,impalpable,impart,impartation,impartial,impassable,impasse,impassion,impassive,impeach,impeccable,impedance,impede,impel,impelled,impeller,impelling,impend,imperate,imperative,imperceivable,imperceptible,imperfect,imperial,imperil,imperious,imperishable,impermeable,impermissible,impersonal,impersonate,impertinent,imperturbable,impervious,impetuous,impetus,impiety,impinge,implacable,implantation,implausible,implement,implementation,implementer,implementor,implicant,implicate,implicit,implore,implosion,imponderable,import,important,importation,importunate,importune,impose,imposition,impossible,impost,impound,impoverish,impracticable,impractical,imprecate,imprecise,imprecision,impregnable,impresario,impress,impressible,impression,impressive,imprimatur,imprint,improbable,impromptu,improve,improvident,improvisate,improvisation,improvise,imprudent,impudent,impugn,impulse,impulsive,impunity,imputation,impute,in,inability,inaccessib
le,inaccuracy,inaccurate,inaction,inactivate,inactive,inadequacy,inadequate,inadmissible,inadvertent,inadvisable,inalienable,inalterable,inanimate,inappeasable,inapplicable,inappreciable,inapproachable,inappropriate,inattention,inattentive,inaudible,inaugural,inaugurate,inauspicious,incalculable,incandescent,incant,incapable,incapacitate,incapacity,incarcerate,incarnate,incaution,incautious,incendiary,incense,incentive,inception,inceptor,incessant,inch,incident,incidental,incinerate,incipient,incise,incisive,incite,inclement,inclination,incline,inclose,include,inclusion,inclusive,incoherent,incombustible,income,incommensurable,incommensurate,incommunicable,incommutable,incomparable,incompatible,incomputable,inconceivable,incondensable,incongruity,incongruous,inconsequential,inconsiderable,inconsiderate,inconsistent,inconsolable,inconspicuous,inconstant,incontestable,incontrollable,incontrovertible,inconvenient,inconvertible,incorporable,incorporate,incorrigible,incorruptible,increasable,increase,incredible,incredulity,incredulous,increment,incubate,inculpable,incumbent,incur,incurred,incurrer,incurring,incursion,indebted,indecipherable,indecision,indecisive,indecomposable,indeed,indefatigable,indefensible,indefinable,indefinite,indelible,indelicate,indemnify,indemnity,indent,indentation,indenture,independent,indescribable,indestructible,indeterminable,indeterminacy,indeterminate,index,indicant,indicate,indices,indict,indifferent,indigene,indigenous,indigent,indigestible,indigestion,indignant,indignation,indigo,indirect,indiscernible,indiscoverable,indispensable,indispose,indisposition,indisputable,indissoluble,indistinct,indistinguishable,individual,individualism,individuate,indivisible,indoctrinate,indomitable,indoor,indorse,indubitable,induce,inducible,induct,inductance,inductee,inductor,industrial,industrialism,industrious,industry,ineffable,ineffective,inefficacy,inefficient,inelastic,inelegant,ineligible,ineluctable,inequality,inequitable,inequity,inequivalent,ineradicable,inert,inertance,inertia,inertial,inescapable,inestimable,inevitable,inexact,inexcusable,inexhaustible,inexorable,inexpedient,inexpensive,inexperience,inexpert,inexpiable,inexplainable,inexplicable,inexplicit,inexpressible,inextinguishable,inextricable,infallible,infancy,infant,infantile,infantry,infantryman,infantrymen,infatuate,infeasible,infectious,infelicitous,infelicity,infer,inference,inferential,inferred,inferring,infield,infight,infighting,infiltrate,infinite,infinitesimal,infinitive,infinitude,infinitum,infinity,infirm,infirmary,inflammable,inflammation,inflammatory,inflate,inflater,inflationary,inflect,inflexible,inflict,inflicter,inflow,influence,influent,influential,influenza,influx,inform,informal,informant,information,informative,infract,infrared,infrastructure,infrequent,infringe,infuriate,infuse,infusible,infusion,ingather,ingenious,ingenuity,ingenuous,ingest,ingestible,ingestion,inglorious,ingratiate,ingratitude,ingredient,ingrown,inhabit,inhabitant,inhabitation,inhalation,inhale,inharmonious,inhere,inherent,inherit,inheritance,inheritor,inhibit,inhibition,inhibitor,inhibitory,inhospitable,inhuman,inimical,inimitable,iniquitous,iniquity,initial,initiate,inject,injudicious,injunct,injunction,injure,injurious,injury,injustice,ink,inkling,inlaid,inland,inlay,inlet,inmate,inn,innate,inner,innermost,innkeeper,innocent,innocuous,innovate,innuendo,innumerable,inoculate,inoffensive,inoperable,inoperative,inopportune,inordinate,inorganic,input,inputting,inquest,inquire,inquiry,inquisition,inquisitive,inquisitor,inroad,insatiable,inscribe,inscription,inscrutable,insect,insecticide,insecure,inseminate,insensible,insensitive,inseparable,insert,inset,inshore,inside,insidious,insight,insightful,insignia,insignificant,insincere,insinuate,insist,insistent,insoluble,insolvable,insolvent,insomnia,insomniac,inspect,inspector,inspiration,inspire,install,installation,instance,instant,instantaneous,in
stantiate,instead,instep,instigate,instill,instillation,instinct,instinctual,institute,institution,instruct,instructor,instrument,instrumentation,insubordinate,insubstantial,insufferable,insufficient,insular,insulate,insulin,insult,insuperable,insupportable,insuppressible,insurance,insure,insurgent,insurmountable,insurrect,insurrection,intact,intake,intangible,integer,integrable,integral,integrand,integrate,integrity,integument,intellect,intellectual,intelligent,intelligentsia,intelligible,intemperance,intemperate,intend,intendant,intense,intensify,intensive,intent,intention,inter,intercalate,intercept,interception,interceptor,intercom,interest,interfere,interference,interferometer,interim,interior,interject,interlude,intermediary,intermit,intermittent,intern,internal,interpolant,interpolate,interpolatory,interpret,interpretation,interpretive,interrogate,interrogatory,interrupt,interruptible,interruption,intersect,intersperse,interstice,interstitial,interval,intervene,intervenor,intervention,interviewee,intestate,into,intonate,intone,intractable,intramolecular,intransigent,intransitive,intrepid,intricacy,intricate,intrigue,intrinsic,introduce,introduction,introductory,introit,introject,introspect,introversion,intrude,intrusion,intrusive,intuit,intuitable,intuition,intuitive,inundate,inure,invade,invaluable,invariable,invariant,invasion,invasive,invective,inveigh,inveigle,invent,invention,inventive,inventor,inventory,inverse,inversion,invert,invertebrate,invertible,invest,investigate,investigatory,investor,inveterate,inviable,invidious,invigorate,invincible,inviolable,inviolate,invisible,invitation,invite,invitee,invocate,invoice,invoke,involuntary,involve,invulnerable,inward,iodide,iodine,ion,ionic,ionosphere,ionospheric,irate,iridium,iris,iron,ironic,ironside,ironstone,ironwood,irradiate,irreclaimable,irreconcilable,irrecoverable,irredeemable,irredentism,irredentist,irreducible,irrefutable,irregular,irrelevancy,irremediable,irremovable,irreparable,irreplaceable,irrepressible,irreproachable,irreproducible,irresistible,irresolute,irresolution,irresolvable,irrespective,irreversible,irrigate,is,island,isle,isochronal,isochronous,isocline,isolate,isomer,isomorph,isomorphic,isotherm,isothermal,isotope,isotopic,isotropic,isotropy,issuance,issuant,issue,it,italic,item,iterate,itinerant,itinerary,itself,ivory,ivy,jacket,jackpot,jade,jag,jaguar,jamboree,jangle,janitor,janitorial,jar,jargon,jasper,jaundice,jaunty,javelin,jaw,jawbone,jawbreak,jazz,jazzy,jelly,jellyfish,jersey,jest,jet,jetliner,jettison,jewel,jewelry,jig,jigsaw,jilt,jingle,jittery,jive,job,jockey,jog,jogging,joggle,join,jolly,jolt,jostle,jot,joule,jounce,journal,journalese,journey,journeyman,journeymen,joust,jovial,jowl,jowly,joy,joyful,joyous,jubilant,jubilate,jubilee,judge,judicable,judicatory,judicature,judicial,judiciary,judicious,judo,jug,jugate,jugging,juggle,juice,jumble,jumbo,jump,junction,junctor,juncture,jungle,junior,juniper,jurisdiction,jurisprudent,jurisprudential,juror,jury,just,justice,justiciable,justify,jut,juvenile,juxtapose,juxtaposition,kaiser,kale,kaleidescope,kaleidoscope,kangaroo,keel,keen,keep,kept,kerchief,kern,kernel,kerosene,ketch,ketchup,ketone,ketosis,kettle,key,keyboard,keyed,keyhole,keynote,keys,keystone,khaki,kickoff,kid,kidney,kilo,kilohm,kimono,kin,kind,kindergarten,kindle,kindred,kinematic,kinesic,kinesthesis,kinetic,king,kingbird,kingdom,kiosk,kit,kitchen,kitchenette,kite,kitten,kittenish,kittle,kitty,kiwi,knack,knapsack,knead,knee,kneecap,kneel,knell,knelt,knew,knick,knight,knit,knobby,knock,knockdown,knockout,knoll,knot,knotty,know,knoweth,knowhow,knowledge,knowledgeable,known,knuckle,knuckleball,knurl,koala,kosher,kraft,lab,label,laboratory,laborious,labour,lace,lacerate,laconic,lacquer,lacrosse,lacuna,lacunae,lacy,lad,laden,ladle,lady,ladyfern,lag,lagging,lagoon,lain,lair,laissez,laity,lake,lakeside,lam,lamb,lament,lamentation,lamina
r,laminate,lamp,lampblack,lamplight,lampoon,lamprey,lance,land,landfill,landhold,landlord,landmark,landowner,landscape,landslide,lane,language,languid,languish,lanky,lantern,lanthanide,lanthanum,lap,lapel,lapelled,lapidary,lapse,larch,large,largesse,lariat,lark,larkspur,larva,larvae,larval,laryngeal,larynges,larynx,lash,lasso,last,latch,late,latent,later,latera,lateral,laterite,lath,lathe,latitude,latitudinal,latitudinary,latter,lattice,latus,laud,laudanum,laudatory,laugh,laughter,launch,laundry,laureate,laurel,lava,lavatory,lavender,lavish,law,lawful,lawn,lawyer,lay,layette,layman,laymen,layoff,layout,layup,laze,lazy,lea,lead,leaden,leadeth,leadsman,leadsmen,leaf,leaflet,leafy,league,leak,leakage,leaky,lean,leap,leapfrog,leapt,learn,lease,leasehold,leash,least,leather,leatherback,leatherneck,leatherwork,leathery,leave,leaven,lectern,lectionary,lecture,led,ledge,leek,leer,leery,leeward,leeway,left,leftmost,leftover,leftward,lefty,leg,legacy,legal,legate,legato,legend,legendary,legging,legible,legion,legislate,legislature,legitimacy,legitimate,leisure,lemming,lemon,lemonade,lend,length,lengthen,lengthwise,lengthy,lenient,lens,lenticular,lentil,leonine,leopard,lesson,lessor,lest,let,lethal,lethargic,lethargy,letterhead,letterman,lettermen,lettuce,leucine,levee,level,lever,leverage,levitate,levity,levulose,levy,lew,lexical,lexicography,lexicon,liable,liaison,liberal,liberate,libertarian,libertine,liberty,librarian,library,librate,librettist,libretto,licensable,licensee,licensor,lichen,licorice,lid,lien,lieu,lieutenant,life,lifeboat,lifeguard,lifelike,lifelong,lifespan,lifestyle,lifetime,lift,ligament,ligand,ligature,light,lighten,lighthearted,lighthouse,lightning,lightproof,lightweight,like,liken,likewise,lilac,lilt,lily,lim,limb,limbic,lime,limelight,limestone,limousine,limp,linden,line,lineage,lineal,linear,linebacker,lineman,linemen,linen,lineprinter,lineup,linger,lingual,linguist,liniment,link,linkage,linoleum,linseed,lint,lion,lioness,lip,lipid,lipread,lipstick,liquefaction,liquefy,liquid,liquidate,liquidus,lisle,list,listen,lit,litany,literacy,literal,literary,literate,literature,lithe,lithic,lithium,lithograph,lithography,lithology,lithosphere,lithospheric,litigant,litigate,litigious,litmus,litterbug,little,littleneck,littoral,live,liven,livery,livestock,liveth,livid,livre,lizard,load,loaf,loam,loamy,loan,loaves,lobby,lobe,lobster,lobular,lobule,local,locale,locate,loci,lock,lockout,locksmith,lockstep,lockup,locomote,locomotion,locomotive,locomotor,locomotory,locus,locust,locution,locutor,lodge,lodgepole,loft,lofty,log,logarithm,logarithmic,loge,logging,logic,logician,logistic,logjam,logo,lollipop,lone,lonesome,long,longevity,longhand,longhorn,longish,longitude,longitudinal,longleg,longstanding,longtime,look,lookout,lookup,loom,loop,loophole,loose,looseleaf,loosen,loot,lop,lope,lopseed,lopsided,loquacious,lore,losable,loss,lossy,lost,lot,lotion,lottery,lotus,loud,loudspeak,loudspeaker,loudspeaking,lounge,love,lovebird,lovelorn,low,lowdown,lower,lowland,loy,loyal,loyalty,lozenge,lucid,luck,lucky,lucrative,ludicrous,lug,luge,luggage,lugging,lukewarm,lull,lullaby,lumbar,lumber,lumberman,lumbermen,lumen,luminance,luminary,luminescent,luminosity,luminous,lump,lunar,lunary,lunate,lunch,luncheon,lunchroom,lunchtime,lung,lunge,lupine,lurch,lure,lurk,lute,lutetium,lux,luxe,luxuriant,luxuriate,luxurious,luxury,lyric,lyricism';

  WORDS4 CONSTANT VARCHAR2(32726) := 'machination,machine,machinelike,machinery,macintosh,mackerel,macro,macromolecular,macromolecule,macrophage,macroprocessor,macroscopic,macrostructure,madam,made,madrigal,maestro,magazine,magenta,magi,magic,magician,magisterial,magistrate,magma,magnanimity,magnanimous,magnate,magnesia,magnesite,magnesium,magnet,magnetic,magnetite,magnificent,magnify,magnitude,magnolia,magnum,mahogany,maid,maiden,mail,mailbox,mailman,mailmen,maim,main,mainland,mainline,mainstay,mainstream,maintain,maintenance,majestic,majesty,major,make,makeshift,makeup,maladapt,maladaptive,maladjust,malady,malaprop,malaria,malarial,maldistribute,male,maledict,malefactor,malformation,malformed,mall,mallard,malleable,mallet,mallow,malnourished,malnutrition,malocclusion,malposed,malpractice,malt,maltose,maltreat,mambo,mammal,mammalian,mammoth,man,manage,manageable,managerial,manatee,mandarin,mandate,mandatory,mandrake,mandrel,mandrill,mane,maneuver,manganese,mange,mangle,manhole,manhood,manic,manifest,manifestation,manifold,mankind,manna,mannequin,mannerism,manometer,manor,mansion,mantel,mantissa,mantle,mantlepiece,manual,manufacture,manumission,manumit,manumitted,manuscript,many,map,maple,mar,marathon,maraud,marble,march,mare,margarine,margin,marginal,marginalia,marigold,marimba,marina,marinade,marinate,marine,marionette,marital,maritime,mark,market,marketeer,marketplace,marketwise,marlin,marmalade,marmot,maroon,marquee,marquess,marquis,marriage,marriageable,married,marrow,marrowbone,marry,marsh,marshal,marshland,marshmallow,marsupial,mart,martial,marvel,marvelous,mascara,masculine,mash,mask,mason,masonry,masquerade,mass,massage,masseur,massive,mast,masterful,mastermind,masterpiece,mastery,mastodon,mat,match,matchbook,matchmake,mate,material,materiel,maternal,maternity,matinee,matriarch,matriarchal,matrices,matriculate,matrimonial,matrimony,matrix,matron,matte,mattress,maturate,mature,maudlin,maul,mausoleum,mauve,maverick,max,maxima,maximal,maximum,may,maybe,mayonnaise,mayor,mayoral,maze,me,mead,meadow,meadowland,meadowsweet,meager,meal,mealtime,meander,meaningful,meant,meantime,meanwhile,measle,measure,meat,meaty,mechanic,mechanism,mechanist,medal,medallion,meddle,media,medial,median,mediate,medic,medicate,medicinal,medicine,meditate,medium,medlar,medley,meek,meet,meetinghouse,megabit,megabyte,megahertz,megaton,megavolt,megawatt,megaword,megohm,meiosis,melamine,melancholy,melange,melanin,melanoma,meld,melee,meliorate,mellow,melodic,melodious,melodrama,melodramatic,melody,melon,melt,meltdown,meltwater,member,membrane,memento,memo,memoir,memorabilia,memorable,memoranda,memorandum,memorial,memory,men,menace,menagerie,mend,mendacious,mendacity,menial,meniscus,mensurable,mensuration,mention,mentor,menu,mercantile,merchandise,merchant,mercurial,mercuric,mercury,mere,merge,meridian,meringue,merit,meritorious,merlin,mermaid,merriment,merry,merrymake,mesa,mesh,mesmeric,mesoderm,meson,mesquite,mess,message,messenger,messy,met,metabole,metabolic,metabolism,metabolite,metal,metallic,metalliferous,metallography,metalloid,metallurgic,metallurgist,metallurgy,metalwork,metamorphic,metamorphism,metamorphose,metamorphosis,metaphor,metaphoric,meteor,meteoric,meteorite,meteoritic,meteorology,meter,methane,methanol,methionine,method,methodic,methodology,meticulous,metric,metro,metronome,metropolis,metropolitan,mettle,mettlesome,mew,mezzanine,mezzo,mica,mice,micro,microbial,microcosm,microfiche,micrography,microjoule,micron,microscopy,mid,midband,midday,middle,middleman,middlemen,middleweight,midnight,midpoint,midrange,midscale,midsection,midshipman,midshipmen,midspan,midst,midstream,midterm,midway,midweek,midwinter,might,mighty,mignon,migrant,migrate,migratory,mild,mildew,mile,mileage,milestone,milieu,militant,militarism,militarist,military,militate,milk,milkweed,milky,mill,millenarian,millenia,millennia,millennium,miller,millet,millinery,mill
ion,millionaire,millions,millionth,millipede,millstone,mimeograph,mimesis,mimetic,mimic,mimicked,mimicking,min,minaret,mince,mincemeat,mind,mindful,mine,mineral,mineralogy,minestrone,minesweeper,mingle,mini,miniature,minibike,minicomputer,minimal,minimum,minion,ministerial,ministry,mink,minnow,minor,minstrel,minstrelsy,mint,minuet,minus,minuscule,minute,minuteman,minutemen,minutiae,miracle,miraculous,mirage,mire,mirror,mirth,misanthrope,misanthropic,miscellaneous,miscellany,mischievous,miscible,miscreant,miser,misnomer,mispronunciation,miss,misshapen,missile,mission,missionary,missive,mist,mistletoe,misty,mite,mitigate,mitochondria,mitosis,mitral,mitre,mitt,mitten,mix,mixture,mixup,mnemonic,moat,mobile,mobility,moccasin,mock,mockery,mockingbird,mockup,modal,mode,model,modem,moderate,modern,modest,modesty,modify,modish,modular,modulate,module,moduli,modulo,modulus,modus,moiety,moire,moist,moisten,moisture,molal,molar,molasses,mold,moldboard,mole,molecular,molecule,molehill,mollify,mollusk,molt,molten,molybdate,molybdenite,molybdenum,moment,momenta,momentary,momentous,momentum,mommy,monad,monadic,monarch,monarchic,monarchy,monastery,monastic,monaural,monel,monetarism,monetarist,monetary,money,mongoose,monic,monies,monitor,monitory,monkey,monochromatic,monochromator,monocotyledon,monocular,monoid,monolith,monologist,monologue,monomer,monomeric,monomial,monopoly,monotonous,monotreme,monoxide,monsoon,monster,monstrosity,monstrous,montage,monte,month,monument,mood,moody,moon,moonlight,moonlit,moor,moose,moot,mop,moral,morale,more,morel,moreover,morn,morose,morpheme,morphemic,morphism,morphology,morphophonemic,morrow,morsel,mort,mortal,mortar,mortem,mortgage,mortgagee,mortify,mortise,mosaic,mosque,mosquito,moss,mossy,most,mot,motel,moth,mothball,mother,motherhood,motherland,motif,motion,motivate,motive,motley,motor,motorcycle,mottle,motto,mound,mount,mountain,mountaineer,mountainous,mountainside,mourn,mournful,mouse,moustache,mousy,mouth,mouthful,mouthpiece,move,movie,mow,much,mucosa,mucus,mud,muddle,muddlehead,muddy,mudguard,mudsling,muffin,muffle,mug,muggy,mulberry,mulch,mule,mulish,mull,mulligan,multi,multifarious,multinomial,multiple,multiplet,multiplex,multiplexor,multipliable,multiplicand,multiplication,multiplicative,multiplicity,multiply,multitude,multitudinous,mum,mumble,mummy,munch,mundane,mung,municipal,munificent,munition,muon,mural,murk,murky,murmur,muscle,muscular,musculature,museum,mush,mushroom,mushy,music,musicale,musician,musicology,musk,muskox,muskoxen,muskrat,mussel,must,mustache,mustang,mustard,musty,mutagen,mutandis,mutant,mutate,mutatis,mute,mutineer,mutiny,mutt,mutter,mutton,mutual,mutuel,muzzle,my,mycobacteria,mycology,myel,myeline,myeloid,mylar,mynah,myocardial,myocardium,myofibril,myoglobin,myopia,myopic,myosin,myriad,myrtle,myself,mysterious,mystery,mystic,mystify,mystique,myth,mythic,mythology,nab,nag,nagging,naiad,nail,name,nameable,nameplate,namesake,nanometer,nanosecond,nap,nape,napkin,narcissism,narcissist,narrate,narrow,nary,nasal,nascent,natal,nation,nationhood,nationwide,native,natural,nature,naturopath,nautical,nautilus,naval,nave,navel,navigable,navigate,navy,neap,near,nearby,nearest,nearsighted,neat,neater,neath,nebula,nebulae,nebular,nebulous,necessary,necessitate,necessity,neck,necklace,neckline,necktie,nectar,nectareous,nectarine,nectary,need,needful,needham,needle,needlepoint,needlework,negligible,negotiable,negotiate,neither,nemesis,neoclassic,neoconservative,neolithic,neon,neonatal,neonate,neophyte,neoprene,nepenthe,nephew,neptunium,nerve,nest,nestle,net,nether,nettle,nettlesome,network,neural,neuralgia,neurasthenic,neuritis,neuroanatomic,neuroanatomy,neuroanotomy,neurology,neuromuscular,neuron,neuronal,neuropathology,neurophysiology,neutral,neutrino,neutron,never,nevertheless,new,newborn,newcomer,newel,newfound,newline,newlywed,newsboy,newscast,newsletter,newsman,newsmen,newspaper,newspa
perman,newspapermen,newsreel,newsstand,newt,newton,next,niacin,nibble,nice,nicety,niche,nick,nickel,nickname,niece,nigh,night,nightfall,nighthawk,nightingale,nightmare,nimble,nimbus,nine,ninebark,ninefold,nineteen,nineteenth,ninetieth,ninety,ninth,nitrate,nitric,nitride,nitrite,nitrogen,nitrogenous,nitroglycerine,no,nob,nobelium,noble,nobleman,noblemen,noblesse,nobody,nocturnal,nocturne,nod,nodal,node,nodular,nodule,noise,noisemake,noisy,nomad,nomadic,nomenclature,nominal,nominate,nominee,nonchalant,nondescript,none,nonetheless,noodle,nook,noon,noontime,nor,north,northbound,northeast,northeastern,northerly,northern,northernmost,northland,northward,northwest,northwestern,nose,nostalgia,nostalgic,nostril,not,notary,notch,note,notebook,noteworthy,notice,noticeable,notify,notion,notoriety,notorious,notwithstanding,noun,nourish,nouveau,nova,novel,novelty,novice,now,nowaday,nowadays,nowhere,nozzle,nuance,nucleate,nuclei,nucleic,nucleoli,nucleolus,nucleotide,nucleus,nuclide,nudge,nugget,numb,numerable,numeral,numerate,numeric,numerology,numerous,numinous,numismatic,numismatist,nurse,nursery,nurture,nutmeg,nutrient,nutrition,nutritious,nutritive,nutshell,nuzzle,nylon,oak,oaken,oakwood,oar,oasis,oat,oath,oatmeal,obduracy,obdurate,obelisk,obey,object,objectivity,objector,objet,oblate,obligate,obligatory,oblige,oblique,oblivious,oblong,oboe,oboist,obsequious,observant,observation,observatory,observe,obsidian,obsolescent,obsolete,obstacle,obstruct,obstruent,obtain,obtrude,obtrusion,obtrusive,obverse,obviate,obvious,occasion,occident,occidental,occipital,occlude,occlusion,occlusive,occupant,occupation,occupy,occur,occurred,occurrent,occurring,ocean,oceanic,oceanographer,oceanography,oceanside,ocelot,octagon,octagonal,octahedra,octahedral,octahedron,octal,octane,octant,octave,octennial,octet,octile,octillion,octogenarian,octopus,ocular,ode,odious,odium,odometer,oersted,of,off,offal,offbeat,offend,offer,offertory,offhand,office,officeholder,officemate,official,officialdom,officiate,officio,officious,offload,offset,offsetting,offshoot,offshore,offspring,offstage,oft,often,oftentimes,ogle,ohm,ohmic,ohmmeter,oil,oilcloth,oilman,oilmen,oilseed,oily,oint,ointment,okay,old,olden,oldster,oldy,oleander,olefin,oleomargarine,olfactory,oligarchic,oligarchy,oligoclase,oligopoly,olive,olivine,omelet,omicron,ominous,omnibus,omnipotent,omnipresent,omniscient,on,once,oncology,oncoming,one,onerous,oneself,onetime,ongoing,onion,only,onomatopoeia,onrush,onrushing,onset,onslaught,onto,ontogeny,ontology,onus,onward,onyx,oocyte,ooze,opacity,opal,opalescent,opaque,open,opera,operable,operand,operant,operate,operatic,operetta,operon,ophthalmic,ophthalmology,opine,opinion,opinionate,opossum,opponent,opportune,opposable,oppose,opposite,opposition,opprobrium,opt,opthalmic,opthalmology,optic,optima,optimal,optimism,optimist,optimistic,optimum,option,optoacoustic,optoelectronic,optoisolate,optometrist,optometry,opulent,or,oracle,oracular,orange,orangeroot,orangutan,orate,oratoric,oratorical,oratorio,oratory,orb,orbit,orbital,orchard,orchestra,orchestral,orchestrate,orchid,ordain,ordeal,order,orderly,ordinal,ordinance,ordinary,ordinate,ordnance,ore,oregano,organic,origin,original,originate,oriole,ornament,ornamentation,ornate,ornately,orthant,orthicon,orthoclase,orthodontic,orthodontist,orthodox,orthodoxy,orthogonal,orthography,orthonormal,orthopedic,orthophosphate,oscillate,oscillatory,oscilloscope,osier,osmium,osmosis,osmotic,osprey,osseous,ossify,ostensible,ostentatious,osteology,osteopath,osteopathic,osteopathy,osteoporosis,ostrich,other,otherwise,otiose,otter,ought,ounce,our,ourselves,oust,out,outermost,outlandish,outlawry,outrageous,oval,oven,over,overhang,overt,overture,owl,owly,own,ox,oxalate,oxalic,oxcart,oxen,oxeye,oxidant,oxidate,oxide,oxygen,oxygenate,oyster,ozone,pace,pacemake,pacesetting,pacific,pacifism,pacifist,pacify,pack,package,packet,pact,pad,pad
dle,paddock,paddy,padlock,page,pageant,pageantry,paginate,paid,pail,paint,paintbrush,pair,pairwise,pal,palace,palate,palazzi,palazzo,pale,palette,palfrey,palindrome,palindromic,palisade,pall,palladia,palladium,pallet,palliate,pallid,palm,palmate,palmetto,palpable,palsy,pamper,pamphlet,pan,panacea,panama,pancake,pancreas,pancreatic,panda,pane,panel,panhandle,panorama,panoramic,pant,pantheism,pantheist,pantheon,panther,pantomime,pantomimic,pantry,papa,papery,papillary,paprika,papyrus,par,parabola,parabolic,paraboloid,paraboloidal,parachute,parade,paradigm,paradigmatic,paradise,paradox,paradoxic,paraffin,paragon,paragonite,paragraph,parakeet,paralinguistic,parallax,parallel,parallelepiped,paralysis,paramagnet,paramagnetic,paramedic,parameter,paramilitary,paramount,paraphrase,parapsychology,parasite,parasitic,parasol,parasympathetic,paratroop,paraxial,parboil,parcel,parch,pardon,pare,paregoric,parent,parentage,parental,parentheses,parenthesis,parenthetic,parenthood,pariah,parimutuel,park,parkish,parkland,parkway,parliament,parliamentarian,parliamentary,parody,parquet,parrot,parry,parse,parsimonious,parsimony,parsley,parsnip,parson,parsonage,part,partake,partial,participant,participate,participle,particle,particular,particulate,partisan,partition,partner,partook,partridge,party,paschal,pass,passage,passageway,passband,passe,passenger,passer,passerby,passion,passionate,passivate,passive,passport,past,paste,pasteboard,pastel,pastime,pastoral,pastry,pasture,pat,patch,patchwork,patchy,pate,patent,patentee,pater,paternal,path,pathfind,pathogen,pathogenesis,pathogenic,pathology,pathway,patient,patio,patriarch,patriarchal,patriarchy,patrician,patriot,patriotic,patristic,patrol,patrolled,patrolling,patrolman,patrolmen,patron,patronage,patroness,pattern,pause,pave,paw,pawn,pawnshop,pax,pay,paycheck,payday,paymaster,payoff,payroll,pea,peace,peaceable,peaceful,peacemake,peacetime,peach,peacock,peak,peal,peanut,pear,pearl,pearlstone,peat,pebble,pecan,peccary,peck,pectoral,pectoralis,peculate,peculiar,pecuniary,pedagogic,pedagogue,pedagogy,pedal,pedant,pedantic,pedantry,peddle,pedestal,pedestrian,pediatric,pediatrician,pedigree,pediment,peek,peel,peg,pegboard,pegging,pejorative,pelican,pellet,pelt,pemmican,pen,penalty,penance,pence,penchant,pencil,pend,pendant,pendulum,penetrable,penguin,penicillin,peninsula,penitent,penitential,penman,penmen,pennant,penny,pension,pensive,pent,pentagon,pentagonal,pentane,penultimate,penumbra,penurious,penury,people,pep,peppermint,pepperoni,peppery,peptide,per,perceive,percent,percentage,percentile,percept,perceptible,perception,perceptive,perceptual,perch,perchance,percolate,percussion,percussive,peregrine,perennial,perfect,perfecter,perfectible,perfidious,perfidy,perforate,perforce,perform,performance,perfume,perfumery,perfunctory,perfuse,perfusion,perhaps,perihelion,peril,perilous,perimeter,period,periodic,peripatetic,peripheral,periphery,periscope,periwinkle,perjure,perjury,perk,permalloy,permanent,permeable,permeate,permissible,permission,permissive,permit,permitted,permitting,permutation,permute,pernicious,peroxide,perpendicular,perpetrate,perpetual,perpetuate,perpetuity,perplex,perseverance,perseverant,persevere,persimmon,persist,persistent,person,persona,personage,personal,personify,personnel,perspective,perspicacious,perspicuity,perspicuous,persuade,persuasion,persuasive,pert,pertain,pertinacious,pertinent,perturb,perturbate,perturbation,perusal,peruse,pervade,pervasion,pervasive,pesticide,pestilent,pestilential,pestle,pet,petal,petit,petite,petition,petrel,petri,petrifaction,petrify,petrochemical,petroglyph,petrol,petroleum,petrology,petticoat,petty,petulant,petunia,pewter,pharmaceutic,pharmacist,pharmacology,pharmacopoeia,pharmacy,phase,pheasant,phenol,phenolic,phenomena,phenomenal,phenomenology,phenomenon,phenotype,phenyl,philanthrope,philanthropic,philanthropy,philharmonic,philology,philosoph,philosopher,
philosophic,philosophy,phlox,phobic,phoebe,phoenix,phone,phoneme,phonemic,phonetic,phonic,phonograph,phonology,phosgene,phosphate,phosphide,phosphine,phosphor,phosphoresce,phosphorescent,phosphoric,phosphorus,phosphorylate,photo,photogenic,photography,photolysis,photolytic,photometry,photon,phrase,phrasemake,phraseology,physician,physiochemical,physiognomy,physiology,physiotherapy,physique,phytoplankton,pi,pianissimo,pianist,piano,piccolo,pickerel,picket,pickle,picky,picnic,picnicked,picnicker,picnicking,picofarad,picojoule,picosecond,pictorial,picture,picturesque,piddle,pidgin,pie,piece,piecemeal,piecewise,pier,pierce,pietism,piety,piezoelectric,pig,pigeon,pigeonberry,pigeonfoot,pigeonhole,pigment,pigmentation,pigpen,pigskin,pigtail,pike,pile,pilfer,pilferage,pilgrim,pilgrimage,pill,pillage,pillar,pillory,pillow,pilot,pin,pinafore,pinball,pinch,pincushion,pine,pineapple,ping,pinhole,pinion,pink,pinkie,pinkish,pinnacle,pinnate,pinochle,pinpoint,pinscher,pint,pintail,pinwheel,pioneer,pipe,pipeline,pipette,piquant,pique,piracy,pirate,pirouette,pistachio,piston,pit,pitch,pitchblende,pitchfork,pitchstone,piteous,pitfall,pith,pithy,pivot,pivotal,pixel,pixy,pizza,pizzeria,pizzicato,placate,placater,place,placeable,placebo,placeholder,placid,plagiarism,plagiarist,plagioclase,plaid,plain,plaintiff,plaintive,plan,planar,plane,planeload,planet,planetaria,planetarium,planetary,planetesimal,planetoid,plank,plankton,planoconcave,planoconvex,plant,plantain,plantation,plaque,plasm,plasma,plaster,plastic,plastisol,plate,plateau,platelet,platform,platinum,platitude,platitudinous,platonic,platoon,platypus,plausible,play,playback,playful,playground,playhouse,playoff,playroom,playtime,playwright,playwriting,plaza,plea,plead,pleasant,please,pleat,plebeian,plebian,pledge,plenary,plenitude,plentiful,plenty,plenum,plethora,pleura,pleural,pliable,pliancy,pliant,pliers,plight,plot,plover,plowman,plowshare,pluck,plug,plugging,plum,plumage,plumb,plume,plummet,plunge,plunk,pluperfect,plural,plus,plush,pluton,plutonium,ply,plywood,pneumatic,pneumonia,poach,pocket,pocketbook,pocketful,pod,podium,poem,poesy,poet,poetic,poetry,pogo,poignant,poinsettia,point,pointwise,poise,poisonous,poke,pokerface,polar,polarimeter,polariscope,polariton,polarogram,polarograph,polarography,polaron,pole,polecat,polemic,police,policeman,policemen,policy,polio,polite,politic,politician,politicking,politico,polity,polka,polkadot,poll,pollen,pollinate,pollock,pollster,pollutant,pollute,pollution,polo,polonaise,polonium,polopony,polyglot,polygon,polygonal,polygynous,polyhedra,polyhedral,polyhedron,polymer,polymerase,polymeric,polymorph,polymorphic,polynomial,polyphony,polyploidy,polypropylene,polysaccharide,polytechnic,polytope,polytypy,pomade,pomegranate,pomp,pompadour,pompano,pompey,pomposity,pompous,poncho,pond,ponder,ponderous,pony,poodle,pool,pop,popcorn,poplar,poplin,poppy,populace,popular,populate,populism,populist,populous,porcelain,porch,porcine,porcupine,pore,porosity,porous,porpoise,porridge,port,portage,portal,portend,portent,portentous,porterhouse,portfolio,portico,portland,portmanteau,portrait,portraiture,portray,portrayal,posable,pose,posey,posh,position,positive,positron,posse,posseman,possemen,possess,possession,possessive,possessor,possible,possum,post,postage,postcard,postcondition,postdoctoral,posterity,postfix,postgraduate,posthumous,postman,postmark,postmaster,postmen,postmortem,postmultiply,postoperative,postorder,postpaid,postpone,postposition,postprocess,postprocessor,postscript,postulate,posture,posy,potable,potassium,potato,potatoes,potbelly,potent,potentate,potential,potentiometer,pothole,potion,potlatch,potpourri,pottery,pouch,poultry,pounce,pound,pour,pout,powder,powdery,power,powerful,powerhouse,practicable,practical,practice,practitioner,pragmatic,pragmatism,pragmatist,prairie,praise,praiseworthy,prance,preamble,precarious,precaution,precautionary,pre
cede,precedent,precept,precess,precession,precinct,precious,precipice,precipitable,precipitate,precipitous,precise,precision,preclude,precursor,predatory,predecessor,predicament,predicate,predilect,predispose,predisposition,predominant,predominate,preeminent,preempt,preemption,preemptive,preemptor,preen,prefabricate,preface,prefect,prefecture,prefer,preference,preferential,preferred,preferring,prefix,pregnant,prehistoric,preliminary,prelude,premeditate,premier,premiere,premise,premium,premonition,premonitory,preoccupy,prep,preparation,preparative,preparatory,prepare,preponderant,preponderate,preposition,preposterous,prerequisite,prerogative,presage,prescribe,prescript,prescription,prescriptive,presence,present,presentation,presentational,preservation,preserve,preside,president,presidential,press,pressure,prestige,prestigious,presume,presumed,presuming,presumption,presumptive,presumptuous,presuppose,presupposition,pretend,pretense,pretension,pretentious,pretext,pretty,prevail,prevalent,prevent,prevention,preventive,preview,previous,prey,price,prickle,pride,prim,prima,primacy,primal,primary,primate,prime,primeval,primitive,primitivism,primordial,primp,primrose,prince,princess,principal,principle,print,printmake,printout,prior,priori,priory,prism,prismatic,pristine,privacy,private,privet,privilege,prize,prizewinning,pro,probate,probe,procedural,procedure,proceed,process,procession,processor,proclaim,proclamation,proclivity,procrustean,procure,prod,prodigal,prodigious,prodigy,produce,producible,product,productivity,profess,profession,professional,professor,professorial,proficient,profile,profit,profiteer,profound,profundity,profuse,profusion,progenitor,progeny,prognosis,progress,progression,progressive,prohibit,prohibition,prohibitive,prohibitory,project,projectile,projector,prolate,prolegomena,proletariat,proline,prologue,prolong,prolongate,prolusion,prom,promenade,promethium,prominent,promise,promote,promotion,prompt,promptitude,promulgate,prone,pronoun,pronounce,pronounceable,pronunciation,proof,proofread,prop,propaganda,propagandist,propane,propel,propellant,propelled,propeller,propelling,propensity,proper,property,propionate,propitiate,propitious,proponent,proportion,proportionate,proposal,propose,proposition,propound,proprietary,proprietor,propriety,proprioception,propulsion,propyl,propylene,prorate,prorogue,prosaic,proscenium,proscribe,proscription,prose,prosecute,prosecution,prosecutor,prosodic,prosody,prosopopoeia,prospect,prospector,prospectus,prosper,prosperous,protactinium,protagonist,protean,protease,protect,protector,protectorate,protege,protein,proteolysis,proteolytic,protest,protestation,prothonotary,protocol,proton,protoplasm,protoplasmic,prototype,prototypic,protozoan,protract,proud,prove,proven,provenance,proverb,proverbial,provide,provident,providential,province,provincial,provision,provisional,proviso,provocateur,provocation,provoke,provost,prow,prowess,prowl,proximal,proximate,proximity,prudent,prudential,prune,prurient,pry,pseudo,psychobiology,psychology,psyllium,ptarmigan,pterodactyl,puddly,puerile,puffery,puffin,pugnacious,puissant,pull,pulley,pullover,pulmonary,pulp,pulpit,pulsar,pulsate,pulse,pulverable,puma,pumice,pump,pumpkin,pumpkinseed,pun,punctual,punctuate,puncture,pundit,punditry,pungent,punster,punt,pup,pupate,pupil,puppet,puppeteer,puppy,puppyish,purchasable,purchase,pure,purgation,purgative,purgatory,purge,purify,puritanic,purl,purple,purport,purpose,purposeful,purposive,purse,purslane,pursuant,pursue,pursuer,pursuit,purvey,purveyor,purview,push,pushbutton,pushout,pushpin,put,putative,putt,putty,puzzle,pygmy,pyknotic,pyracanth,pyramid,pyramidal,python,quad,quadrangle,quadrangular,quadrant,quadratic,quadrature,quadrennial,quadric,quadriceps,quadrilateral,quadrille,quadrillion,quadripartite,quadrivium,quadruple,quadrupole,quaff,quagmire,quail,quaint,quake,qualified,qualify,qualitative,quality,qualm,quandary,quanta,qu
antify,quantile,quantitative,quantity,quantum,quarantine,quark,quarrel,quarrelsome,quarry,quarryman,quarrymen,quart,quarterback,quartermaster,quartet,quartic,quartile,quartz,quartzite,quasar,quash,quasi,quasiorder,quasiparticle,quasiperiodic,quasistationary,quaternary,quatrain,quaver,quay,quell,quench,querulous,quest,question,questionnaire,quetzal,queue,quibble,quick,quicken,quicklime,quicksilver,quickstep,quiescent,quiet,quietus,quill,quilt,quince,quinine,quint,quintessence,quintessential,quintet,quintic,quintillion,quintus,quip,quipping,quirk,quirt,quite,quitting,quiver,quixotic,quiz,quizzes,quizzical,quonset,quorum,quota,quotation,quote,quotient,rabbit,rabble,raccoon,race,racetrack,raceway,racket,racketeer,rackety,radar,radial,radian,radiant,radiate,radical,radices,radii,radio,radioactive,radioastronomy,radiocarbon,radiochemical,radiochemistry,radiogram,radiography,radiology,radiometer,radiophysics,radiosonde,radiotelegraph,radiotelephone,radiotherapy,radish,radium,radius,radon,raffle,raft,ragout,raid,rail,railbird,railhead,raillery,railroad,railway,rain,rainbow,raincoat,raindrop,rainfall,rainstorm,rainy,raise,raisin,raj,rajah,rake,rakish,rally,ram,ramble,ramify,ramp,rampage,rampant,rampart,ran,ranch,rancho,random,rang,range,rangeland,rank,rankle,ransack,ransom,rapid,rapier,rapport,rapprochement,rapture,rare,rarefy,rascal,rash,rasp,raspberry,rate,ratepayer,rater,rather,ratify,ratio,ratiocinate,rationale,rattail,rattle,rattlesnake,ratty,raucous,ravage,rave,ravel,raven,ravenous,ravine,raw,rawhide,ray,raze,razor,razorback,razzle,reach,reactant,reactionary,read,readout,ready,real,realisable,realm,realtor,realty,ream,reap,reason,reave,reb,rebellion,recappable,receipt,receive,recent,receptacle,reception,receptive,receptor,recess,recession,recessive,recipe,recipient,reciprocal,reciprocate,reciprocity,recital,recitative,reckon,reclamation,recline,recluse,recombinant,recompense,reconcile,recondite,reconnaissance,recovery,recruit,rectangle,rectangular,rectifier,rectify,rectilinear,rectitude,rector,rectory,recumbent,recuperate,recur,recurred,recurrent,recurring,recursion,recusant,recuse,red,redact,redactor,redbird,redcoat,redden,reddish,redemption,redemptive,redhead,reduce,reducible,redundant,redwood,reed,reef,reek,reel,refection,refectory,refer,referable,referee,refereeing,referenda,referendum,referent,referential,referral,referred,referring,refinery,reflect,reflectance,reflector,reflexive,reformatory,refract,refractometer,refractory,refrain,refrigerate,refuge,refugee,refusal,refutation,refute,regal,regale,regalia,regard,regatta,regent,regime,regimen,regiment,regimentation,region,regional,registrable,registrant,registrar,registration,registry,regular,regulate,regulatory,regurgitate,rehabilitate,rehearsal,rehearse,reign,reimbursable,reimburse,rein,reindeer,reinforce,reinstate,rejoice,rejoinder,rejuvenate,relate,relaxation,relayed,releasable,relevant,reliant,relic,relict,relief,relieve,religion,relinquish,reliquary,relish,reluctant,remainder,remark,remediable,remedy,remember,remembrance,reminisce,reminiscent,remiss,remission,remit,remittance,remitted,remitting,remnant,remonstrate,remorse,remorseful,remote,removal,remunerate,renaissance,rend,render,rendezvous,rendition,renegotiable,renewal,renounce,renovate,renown,rent,rental,renunciate,repairman,repairmen,reparation,repartee,repeal,repeat,repeater,repel,repelled,repellent,repelling,repent,repentant,repertoire,repertory,repetition,repetitious,repetitive,replaceable,replenish,replete,replica,replicate,report,reportorial,repository,reprehensible,representative,repression,repressive,reprieve,reprimand,reprisal,reprise,reproach,reptile,reptilian,republic,repudiate,reputation,repute,request,require,requisite,requisition,requited,rerouted,rerouting,rescind,rescue,resemblant,resemble,resent,resentful,reservation,reserve,reservoir,reside,resident,residential,residual,residuary,residue,residuum,resign,resignation,res
ilient,resin,resist,resistant,resistible,resistive,resistor,resolute,resolution,resolve,resonant,resonate,resort,resourceful,respect,respecter,respectful,respiration,respirator,respiratory,respire,respite,respond,respondent,response,responsible,responsive,rest,restaurant,restaurateur,restful,restitution,restive,restoration,restorative,restrain,restraint,restrict,result,resultant,resume,resuming,resumption,resurgent,resurrect,resuscitate,retail,retain,retaliate,retention,retentive,reticent,reticulate,reticulum,retina,retinal,retinue,retire,retiree,retort,retract,retribution,retrieval,retrieve,retroactive,retrofit,retrofitted,retrofitting,retrograde,retrogress,retrogression,retrogressive,retrospect,retrovision,return,reveal,revel,revelation,revelatory,revelry,revenue,rever,reverberate,revere,reverend,reverent,reverie,reversal,reverse,reversible,reversion,revert,revertive,revery,revile,revisable,revisal,revise,revision,revisionary,revival,revive,revocable,revoke,revolt,revolution,revolutionary,revolve,revved,revving,reward,rhapsodic,rhapsody,rhenium,rheology,rheostat,rhesus,rhetoric,rhetorician,rheum,rheumatic,rheumatism,rhinestone,rhino,rhinoceros,rhodium,rhododendron,rhodolite,rhodonite,rhombic,rhombohedral,rhombus,rhubarb,rhyme,rhythm,rhythmic,rib,ribald,ribbon,riboflavin,ribonucleic,ribose,ribosome,rice,rich,ricochet,rid,riddance,ridden,riddle,ride,ridge,ridgepole,riffle,rift,rig,rigging,right,righteous,rightful,rightmost,rightward,rigid,rigorous,rim,ring,ringlet,ringmaster,ringside,rink,rinse,rip,ripen,ripple,rise,risen,risible,rite,ritual,rival,rivalry,riven,river,riverbank,riverfront,riverine,riverside,rivet,rivulet,road,roadbed,roadblock,roadhouse,roadside,roadster,roadway,roam,roar,roast,robe,robin,robot,robotic,robotics,robust,rock,rockabye,rockaway,rocket,rocky,rode,rodent,rodeo,roe,roebuck,rogue,roil,roister,role,roll,rollback,rollick,romance,romp,roof,rooftop,rook,rookie,room,roomful,roommate,roomy,roost,root,rope,rose,rosebud,rosebush,rosemary,rosette,roster,rosy,rotary,rotate,rote,rotor,rotunda,rouge,roughcast,roughen,round,roundabout,roundhouse,roundoff,roundtable,roundup,roustabout,rout,route,routine,rove,row,rowboat,royal,royalty,rubble,rubdown,rubicund,rubidium,rubric,ruby,ruckus,rudder,ruddy,rudiment,rudimentary,ruff,ruffle,rufous,rug,rule,rumble,rumen,ruminant,ruminate,rummage,run,runabout,runaway,rundown,rune,rung,runic,runneth,runoff,runway,rupee,rupture,rural,ruse,rush,rusk,russet,russula,rust,rustic,rustle,rustproof,rusty,rut,rutabaga,ruthenium,ruthless,rutile,rutty,rye';

  WORDS5 CONSTANT VARCHAR2(32726) := 'sabbatical,sable,sabotage,saccade,saccharine,sachem,sack,sacrosanct,saddle,saddlebag,safari,safe,safeguard,safekeeping,safety,saffron,sag,saga,sagacious,sagacity,sage,sagebrush,sagging,sagittal,said,sail,sailboat,sailfish,sailor,saint,sainthood,sake,salacious,salad,salamander,salami,salaried,salary,sale,salesgirl,saleslady,salesman,salesmen,salesperson,salient,saline,sallow,sally,salmon,salmonberry,salmonella,salon,saloon,saloonkeep,saloonkeeper,salt,saltwater,salty,salubrious,salutary,salutation,salute,salvage,salvageable,salvation,samba,same,sample,sanctify,sanctimonious,sanction,sanctity,sanctuary,sand,sandal,sandalwood,sandbag,sandblast,sanderling,sandhill,sandman,sandpaper,sandpile,sandpiper,sandstone,sandwich,sandy,sane,sang,sangaree,sanguinary,sanguine,sanguineous,sanicle,sanitarium,sanitary,sanitate,sank,sans,sapiens,sapient,sapling,saponify,sapphire,sarcasm,sarcastic,sarcoma,sarcophagus,sardine,sardonic,sari,sarsaparilla,sarsparilla,sash,sashay,sassafras,sat,satellite,satiable,satiate,satiety,satin,satire,satiric,satisfaction,satisfactory,satisfy,saturable,saturate,saturater,saturnine,sauce,saucepan,saucy,saute,sauterne,savage,savagery,savant,save,savoy,savvy,saw,sawbelly,sawdust,sawfish,sawfly,sawmill,sawtimber,sawtooth,sawyer,saxophone,say,scabbard,scabrous,scaffold,scalar,scald,scale,scallop,scalp,scan,scandal,scandium,scant,scanty,scapula,scapular,scar,scarce,scare,scarecrow,scarf,scarify,scarlet,scarves,scary,scathe,scavenge,scenario,scene,scenery,scenic,scent,schedule,schelling,schema,schematic,scheme,scholar,scholastic,school,schoolbook,schoolhouse,schoolmaster,schoolmate,schoolroom,schoolteacher,schoolwork,schooner,sciatica,scientific,scientist,scintillate,scion,scissor,scoff,scold,scoop,scoot,scope,scorch,score,scoreboard,scoria,scorn,scornful,scorpion,scotch,scour,scout,scowl,scrabble,scram,scramble,scrap,scrapbook,scrape,scratch,scratchy,scrawl,scream,screech,screechy,screen,screenplay,screwbean,screwdriver,scribble,scribe,scrimmage,script,scription,scriptural,scripture,scriven,scroll,scrooge,scrub,scrumptious,scruple,scrupulosity,scrupulous,scrutable,scrutiny,scuba,scuff,scuffle,scull,sculpin,sculpt,sculptor,sculptural,sculpture,scurry,scurvy,scuttle,scutum,scythe,sea,seaboard,seacoast,seafare,seafood,seagull,seahorse,seal,sealant,seam,seamstress,seaport,seaquake,sear,search,searchlight,seashore,seaside,season,seasonal,seat,seater,seaward,seaweed,secant,secede,secession,seclude,seclusion,second,secondary,secondhand,secrecy,secret,secretarial,secretariat,secretary,secrete,secretion,secretive,sectarian,section,sector,secular,secure,sedan,sedate,sedentary,sedge,sediment,sedimentary,sedimentation,see,seeable,seed,seedbed,seedling,seeing,seek,seem,seen,seep,seepage,seethe,seethed,seething,segment,segmentation,segregant,segregate,seismic,seismograph,seismography,seismology,seize,seizure,seldom,select,selectman,selectmen,selector,selenate,selenite,selenium,self,selfadjoint,sell,seller,sellout,seltzer,selves,semantic,semaphore,semblance,semester,semi,seminar,seminarian,seminary,semper,senate,senatorial,send,senile,senior,sense,sensible,sensitive,sensor,sensorimotor,sensory,sent,sentence,sentential,sentient,sentiment,sentinel,sentry,sepal,separable,separate,septate,septennial,septillion,septuagenarian,septum,sepuchral,sepulchral,sequel,sequent,sequential,sequester,sequestration,sequin,sequitur,seraphim,serenade,serendipitous,serendipity,serene,serge,sergeant,serial,seriate,seriatim,series,serif,serine,serious,serology,serpent,serpentine,serum,servant,serve,service,serviceable,serviceman,servicemen,serviette,servile,servitor,servitude,sesame,session,set,setback,setscrew,settle,setup,seven,sevenfold,seventeen,seventeenth,seventh,seventieth,seventy,sever,several,severalfold,severalty,severe,sew,sewage,sewerage,sewn,shack,shackle,shad,shade,shadflower,shadow,shadowy,shady,shag,shaggy,shah,shake,shakeable,
shakedown,shaken,shaky,shale,shall,shallot,shallow,shamble,shame,shampoo,shamrock,shape,shard,share,sharecrop,shareholder,shareown,shark,sharp,sharpen,sharpshoot,shatter,shatterproof,shave,shaven,shaw,shawl,shay,she,sheaf,shear,sheath,sheathe,sheave,shed,sheen,sheep,sheepskin,sheer,sheet,sheik,shelf,shell,shelter,shelve,shenanigan,shepherd,sherbet,sheriff,shied,shield,shift,shin,shinbone,shine,shingle,shiny,ship,shipboard,shipbuild,shipbuilding,shiplap,shipman,shipmate,shipmen,shipshape,shipwreck,shipyard,shire,shirk,shirt,shiver,shoal,shock,shod,shoe,shoehorn,shoelace,shoemake,shoestring,shone,shoofly,shook,shop,shopkeep,shore,shoreline,short,shortage,shortcut,shorten,shortfall,shorthand,shortish,shortsighted,shortstop,shot,shotbush,should,shoulder,shout,shove,shovel,show,showboat,showcase,showdown,showman,showmen,shown,showpiece,showplace,showroom,shrank,shrapnel,shred,shrew,shrewd,shriek,shrift,shrike,shrill,shrilly,shrine,shrink,shrinkage,shrive,shrivel,shroud,shrove,shrub,shrubbery,shrug,shrugging,shrunk,shrunken,shuck,shudder,shuddery,shuffle,shuffleboard,shun,shunt,shut,shutdown,shutoff,shutout,shuttle,shy,sibilant,sibling,sickle,side,sideband,sideboard,sidecar,sidelight,sideline,sidelong,sideman,sidemen,sidereal,siderite,sidesaddle,sideshow,sidestep,sidestepping,sidetrack,sidewalk,sidewall,sideway,sidewinder,sidewise,sidle,siege,sienna,sierra,siesta,sieve,sift,sigh,sight,sightsee,sightseeing,sightseer,sign,signal,signature,signboard,signet,significant,signify,signpost,silage,silane,silent,silhouette,silica,silicate,silicon,silk,silken,silkworm,silky,sill,silly,silo,silt,siltation,siltstone,silty,silver,silversmith,silverware,silvery,similar,simile,similitude,simmer,simper,simple,simplectic,simplex,simplicial,simplicity,simplify,simplistic,simply,simulate,simulcast,simultaneity,simultaneous,since,sincere,sinew,sinewy,sinful,sing,singable,singe,single,singlehanded,singlet,singleton,singsong,singular,sink,sinkhole,sinter,sinuous,sinus,sinusoid,sinusoidal,sip,sir,sire,siren,sister,sit,site,situate,six,sixfold,sixgun,sixteen,sixteenth,sixth,sixtieth,sixty,size,sizzle,skat,skate,skater,skeet,skeletal,skeleton,skeptic,sketch,sketchbook,sketchpad,sketchy,skew,ski,skid,skiddy,skied,skiff,skill,skillet,skillful,skim,skimp,skinny,skip,skirmish,skirt,skit,skittle,skulk,skull,skullcap,skunk,sky,skyhook,skylark,skylight,skyline,skyrocket,skyscraper,skyward,skywave,skyway,slab,slag,slam,slander,slant,slap,slapstick,slash,slat,slate,slater,sled,sledge,sledgehammer,sleek,sleep,sleepwalk,sleet,sleeve,sleigh,sleight,slender,slept,sleuth,slew,slice,slick,slid,slide,slight,slim,slime,sling,slingshot,slip,slippage,slippery,slither,sliver,slivery,slob,sloe,slog,slogan,sloganeer,slop,slope,slosh,slot,sloth,slouch,slough,sloven,slow,slowdown,sludge,slumber,small,smaller,smallpox,smalltime,smart,smash,smatter,smattering,smear,smelt,smile,smirk,smith,smithereens,smithy,smitten,smog,smoke,smokehouse,smokescreen,smokestack,smoky,smolder,smooth,smother,smudge,snack,snag,snagging,snail,snake,snakebird,snakelike,snakeroot,snap,snapback,snapdragon,snappish,snappy,snapshot,snare,snark,snarl,snatch,snazzy,sneak,sneaky,sneer,sneeze,snell,snick,snippet,snippy,snivel,snook,snoop,snoopy,snore,snorkel,snort,snout,snow,snowball,snowfall,snowflake,snowmobile,snowshoe,snowstorm,snowy,snub,snuffer,snuffle,snuffly,snug,snuggle,snuggly,snyaptic,so,soak,soap,soapstone,soapsud,soapy,soar,sob,sobriquet,soccer,sociable,social,societal,society,socioeconomic,sociology,sociometry,sock,socket,sockeye,sod,soda,sodden,sodium,sofa,soffit,soft,softball,soften,software,softwood,soggy,soil,soiree,sojourn,solace,solar,sold,solder,soldier,soldiery,sole,solecism,solemn,solemnity,solenoid,solicit,solicitation,solicitor,solicitous,solicitude,solid,solidarity,solidify,solidus,soliloquy,solipsism,solitaire,solitary,soliton,solitude,solo,solstice,soluble,solute,solution,solvate,solve,solvent,soma
,somal,somatic,somber,sombre,some,somebody,someday,somehow,someone,someplace,somersault,something,sometime,somewhat,somewhere,sommelier,somnolent,son,sonant,sonar,sonata,song,songbag,songbook,songful,sonic,sonnet,sonogram,sonority,sonorous,soon,soot,sooth,soothe,soothsay,soothsayer,sop,sophisticate,sophistry,sophomore,sophomoric,soprano,sorcery,sordid,sore,sorption,sorrel,sorrow,sorrowful,sorry,sort,souffle,sough,sought,soul,soulful,sound,soundproof,soup,sour,sourberry,source,sourdough,sourwood,soutane,south,southbound,southeast,southeastern,southern,southernmost,southland,southward,southwest,southwestern,souvenir,sovereign,sovereignty,sow,sown,soy,soybean,spa,space,spacecraft,spacesuit,spacetime,spacious,spade,spaghetti,spalding,span,spandrel,spangle,spaniel,spar,spare,sparge,spark,sparkle,sparky,sparling,sparrow,sparse,spasm,spat,spate,spatial,spatlum,spatula,spavin,spawn,speak,speakeasy,spear,spearhead,spearmint,spec,special,species,specific,specify,specimen,specious,speck,speckle,spectacle,spectacular,spectator,spectra,spectral,spectrogram,spectrograph,spectrography,spectrometer,spectrophotometer,spectroscope,spectroscopic,spectroscopy,spectrum,specular,speculate,sped,speech,speed,speedboat,speedometer,speedup,speedwell,speedy,spell,spellbound,spend,spent,sphere,spheric,spheroid,spheroidal,spherule,sphinx,spice,spicy,spider,spidery,spigot,spike,spikenard,spiky,spill,spilt,spin,spinach,spinal,spindle,spine,spinoff,spinster,spiny,spiral,spire,spirit,spiritual,spite,spiteful,splash,splashy,splat,splay,splayed,spleen,splendid,splenetic,splice,spline,splint,splintery,split,splotch,splotchy,splurge,splutter,spoil,spoilage,spoke,spoken,spokesman,spokesmen,spokesperson,sponge,spongy,sponsor,spontaneity,spontaneous,spoof,spooky,spool,spoon,spoonful,sporadic,spore,sport,sportsman,sportsmen,sportswear,sportswrite,sportswriter,sportswriting,sporty,spot,spotlight,spotty,spouse,spout,sprain,sprang,sprawl,spray,spread,spree,sprig,sprightly,spring,springboard,springe,springtail,springtime,springy,sprinkle,sprint,sprite,sprocket,sprout,spruce,sprue,sprung,spumoni,spun,spur,spurge,spurious,spurn,spurt,sputnik,sputter,spy,spyglass,squabble,squad,squadron,squalid,squall,squamous,squander,square,squash,squashberry,squawk,squawroot,squeak,squeaky,squeal,squeamish,squeegee,squeeze,squelch,squid,squill,squint,squire,squirehood,squirm,squirmy,squirrel,squirt,squishy,stab,stabile,stable,stableman,stablemen,staccato,stack,stadia,stadium,staff,stag,stage,stagecoach,stagestruck,stagnant,stagnate,stagy,staid,stain,stair,staircase,stairway,stairwell,stake,stalactite,stale,stalemate,stalk,stall,stallion,stalwart,stamen,stamina,staminate,stammer,stamp,stampede,stance,stanch,stanchion,stand,standard,standby,standeth,standoff,standpoint,standstill,stannic,stannous,stanza,staph,staple,star,starboard,starch,starchy,stardom,stare,starfish,stargaze,stark,starlet,starlight,starling,start,startle,startup,stash,state,stater,stateroom,statesman,statesmanlike,statesmen,statewide,static,stationarity,stationary,stationery,stationmaster,statistician,stator,statuary,statue,statuette,stature,status,statute,statutory,staunch,stave,stay,stayed,stead,steadfast,steady,steak,stealth,stealthy,steam,steamboat,steamy,stearate,stearic,steed,steel,steelmake,steely,steep,steepen,steeple,steeplechase,steer,stein,stellar,stem,stencil,stenographer,stenography,stenotype,step,stepchild,stephanotis,stepmother,steprelation,stepson,stepwise,steradian,stereo,stereography,stereoscopy,sterile,sterling,stern,sternal,sternum,steroid,stethoscope,stevedore,stew,steward,stewardess,stick,stickle,stickleback,stickpin,sticktight,sticky,stifle,stigma,stigmata,stile,stiletto,still,stillwater,stilt,stimulant,stimulate,stimulatory,stimuli,stimulus,sting,stingy,stint,stipend,stipple,stipulate,stir,stirrup,stitch,stochastic,stock,stockade,stockbroker,stockholder,stockpile,stockroom,stocky,stodgy,stoic,stoichiometry,stoke,stolid,stomach,
stomp,stone,stonecrop,stonewall,stoneware,stonewort,stony,stood,stoop,stop,stopband,stopgap,stopover,stoppage,stopwatch,storage,store,storehouse,storekeep,storeroom,stork,storm,stormbound,stormy,story,storyboard,storyteller,stout,stove,stow,stowage,stowaway,strabismus,straddle,strafe,straggle,straight,straightaway,straighten,straightforward,straightway,strain,strait,strand,strange,strangle,strap,strata,stratagem,strategic,strategist,strategy,stratify,stratosphere,stratospheric,stratum,straw,strawberry,strawflower,stray,streak,stream,streamline,streamside,street,streetcar,strength,strengthen,strenuous,stress,stressful,stretch,strewn,striate,stricken,strict,stricter,stricture,stride,strident,strife,strike,strikebreak,string,stringent,stringy,stripe,stripy,strive,striven,strobe,stroboscopic,strode,stroke,stroll,strong,stronghold,strongroom,strontium,strop,strophe,strove,struck,structural,structure,struggle,strum,strung,strut,stub,stubble,stubborn,stubby,stucco,stuck,student,studio,studious,study,stuff,stuffy,stultify,stumble,stump,stumpage,stun,stung,stunt,stupefaction,stupefy,stupendous,sturdy,sturgeon,style,styli,stylish,stylites,stylus,stymie,styrene,suave,sub,subject,subjectivity,subjunctive,sublimate,subliminal,submersible,submit,submittal,submitted,submitting,subpoena,subrogation,subservient,subsidiary,subsidy,subsist,subsistent,substantial,substantiate,substantive,substituent,substitute,substitution,substitutionary,substrate,subsume,subsumed,subsuming,subterfuge,subterranean,subtle,subtlety,subtly,subtracter,subtrahend,suburb,suburbia,subversive,subvert,succeed,success,successful,succession,successive,successor,succinct,such,sucrose,sudden,sue,suffer,suffice,sufficient,suffix,suffocate,suffrage,suffuse,sugar,suggest,suggestible,suggestion,suit,suitcase,suite,suitor,sulfa,sulfate,sulfide,sulfite,sulfonamide,sulfur,sulfuric,sulfurous,sulk,sulky,sullen,sully,sulphur,sultan,sultanate,sultry,sum,sumac,summand,summarily,summary,summate,summation,summertime,summit,summitry,summon,sumptuous,sun,sunbeam,sunbonnet,sunburn,sunburnt,sunder,sundew,sundial,sundown,sundry,sunfish,sunflower,sung,sunglasses,sunk,sunken,sunlight,sunlit,sunny,sunrise,sunscreen,sunset,sunshade,sunshine,sunspot,suntan,suntanned,suntanning,sup,super,superannuate,superb,superbly,supercilious,superficial,superfluity,superfluous,superintendent,superior,superlative,superlunary,supernatant,supernovae,superposable,supersede,superstition,superstitious,supervene,supervisory,supine,supplant,supple,supplementary,supplicate,supply,support,supposable,suppose,supposition,suppress,suppressible,suppression,suppressor,supranational,supreme,supremum,surcease,surcharge,sure,surety,surf,surface,surfactant,surfeit,surge,surgeon,surgery,surgical,surjection,surjective,surmise,surmount,surname,surpass,surplus,surprise,surreal,surrender,surreptitious,surrey,surround,surtax,surtout,surveillant,survey,surveyor,survival,survive,survivor,susceptance,susceptible,sushi,suspect,suspend,suspense,suspension,suspensor,suspicion,sustain,sustenance,suture,svelte,swab,swage,swain,swam,swamp,swan,swanlike,swap,swarm,swart,swarthy,swat,swatch,swathe,sway,sweat,sweatband,sweater,sweatshirt,sweaty,sweep,sweepstake,sweet,sweeten,sweetheart,sweetish,swell,swelt,swelter,swept,swerve,swift,swim,swimsuit,swindle,swing,swingable,swipe,swirl,swirly,swiss,switch,switchboard,switchman,swivel,swizzle,swollen,swoop,sword,swordfish,swordplay,swordtail,swore,sworn,swum,swung,sybarite,sycamore,sycophant,sycophantic,syllabi,syllabic,syllabify,syllable,syllabus,syllogism,syllogistic,sylvan,symbiosis,symbiotic,symbol,symbolic,symmetry,sympathetic,sympathy,symphonic,symphony,symplectic,symposia,symposium,symptom,symptomatic,synapse,synapses,synaptic,synchronism,synchronous,synchrony,synchrotron,syncopate,syndicate,syndrome,synergism,synergistic,synergy,synonym,synonymous,synonymy,synopses,synopsis,synoptic,syntactic,syntax,syntheses,synthesis,syntheti
c,syringa,syringe,syrinx,syrup,syrupy,system,systematic,systemic,systemization,systemwide,tab,table,tablecloth,tableland,tablespoon,tablespoonful,tablet,tabloid,tabular,tabulate,tachinid,tachometer,tacit,tack,tackle,tacky,tact,tactful,tactic,tactician,tactile,tactual,tad,tadpole,taffeta,taffy,taft,tag,tagging,tail,tailgate,tailor,tailspin,tailwind,taint,take,taken,takeoff,takeover,taketh,talc,talcum,tale,talent,talisman,talismanic,talk,talkative,tall,tallow,tally,talon,tamarack,tamarind,tambourine,tame,tamp,tan,tanager,tandem,tangent,tangential,tangerine,tangible,tangle,tango,tangy,tank,tannin,tansy,tantalum,tantamount,tantrum,tap,tape,taper,tapestry,tar,tarantula,tardy,target,tariff,tarnish,tarpaper,tarpaulin,tarpon,tarry,tartar,task,taskmaster,tassel,taste,tasteful,tasting,tasty,tat,tate,tater,tattle,tattoo,taught,taunt,taut,tautology,tavern,taverna,tawdry,tawny,tax,taxation,taxi,taxicab,taxied,taxiway,taxonomic,taxonomy,taxpayer,taxpaying,tea,teacart,teach,teacup,teahouse,teakettle,teakwood,teal,team,teammate,teamster,teamwork,teapot,tear,teardrop,tearful,tease,teasel,teaspoon,teaspoonful,technician,technique,technocrat,technocratic,technology,tectonic,tedious,tedium,tee,teeing,teem,teen,teenage,teeter,teeth,tektite,telecommunicate,teleconference,telegram,telegraph,telegraphy,telekinesis,telemeter,teleology,teleost,telepathic,telepathy,telephone,telephonic,telephony,telephotography,teleprinter,teleprocessing,teleprompter,telescope,telescopic,telethon,teletype,teletypesetting,teletypewrite,televise,television,tell,teller,telltale,tellurium,temerity,temper,tempera,temperance,temperate,temperature,tempest,template,temple,tempo,temporal,temporary,tempt,temptation,ten,tenable,tenacious,tenacity,tenant,tend,tendency,tenderfoot,tenderloin,tendon,tenebrous,tenement,tenet,tenfold,tennis,tenon,tenor,tense,tensile,tension,tensional,tensor,tenspot,tent,tentacle,tentative,tenterhooks,tenth,tenuous,tenure,tepee,tepid,terbium,tercel,term,terminable,terminal,terminate,termini,terminology,terminus,termite,tern,ternary,terpsichorean,terrace,terrain,terramycin,terrapin,terrestrial,terrible,terrier,terrific,territorial,territory,terry,terse,tertiary,tessellate,test,testate,testbed,testify,testimonial,testimony,testy,tetanus,tete,tether,tetrachloride,tetrafluoride,tetrafluouride,tetragonal,tetrahedra,tetrahedral,tetrahedron,tetravalent,text,textbook,textile,textual,textural,texture,thallium,thallophyte,than,thank,thankful,thanksgiving,that,thatch,thaw,the,theatric,thee,theft,their,theism,theist,them,thematic,theme,themselves,then,thence,thenceforth,theocracy,theologian,theology,theorem,theoretic,theoretician,theorist,theory,therapeutic,therapist,therapy,there,thereabouts,thereafter,thereat,thereby,therefore,therefrom,therein,thereof,thereon,thereto,theretofore,thereunder,thereupon,therewith,thermal,thermionic,thermistor,thermostat,thesaurus,these,theses,thesis,they,thiamin,thick,thicken,thicket,thigh,thimble,thin,thine,thing,think,thinnish,thiocyanate,thiouracil,third,thirst,thirsty,thirteen,thirteenth,thirtieth,thirty,this,thistle,thistledown,thither,thong,thoriate,thorium,thorn,thorny,thorough,thoroughbred,thoroughfare,thoroughgoing,those,thou,though,thought,thoughtful,thousand,thousandfold,thousandth,thrall,thread,threadbare,three,threefold,threonine,thresh,threshold,threw,thrice,thrift,thrifty,thrill,thrive,throes,thrombosis,throne,throng,throttle,through,throughout,throughput,throw,throwaway,throwback,thrown,thrum,thrush,thud,thulium,thumb,thumbnail,thump,thunder,thunderbird,thunderbolt,thunderclap,thunderflower,thunderous,thundershower,thunderstorm,thus,thwart,thy,thyme,thymine,thymus,thyratron,thyroid,thyroidal,thyronine,thyroxine,tibia,tick,ticket,tickle,ticklish,tidal,tidbit,tide,tideland,tidewater,tidy,tie,tied,tier,tift,tiger,tight,tighten,tigress,til,tilde,tile,till,tilt,tilth,timber,timberland,timbre,time,timepiece,timeshare,timetable,timeworn,timid,tin,tin
cture,tinder,tine,tinfoil,tinge,tingle,tinker,tinkle,tinsel,tint,tintype,tiny,tip,tipoff,tippy,tiptoe,tirade,tire,tiresome,tissue,titanate,titanic,titanium,tithe,titian,title,to,toad,toady,toast,toastmaster,today,toe,toenail,toffee,tofu,together,togging,toggle,toil,toilsome,token,told,tolerable,tolerant,tolerate,toll,tollgate,tollhouse,toluene,tomato,tomatoes,tombstone,tome,tomograph,tomography,tomorrow,ton,tonal,tone,tong,tonic,tonight,tonnage,tonsil,tonsillitis,too,took,tool,toolkit,toolmake,toolsmith,toot,tooth,toothbrush,toothpaste,toothpick,top,topaz,topcoat,topgallant,topic,topmost,topnotch,topocentric,topography,topologize,topology,topple,topsoil,torch,tore,torn,tornado,toroid,toroidal,torpedo,torpid,torpor,torque,torrent,torrid,torsion,torso,tort,tortoise,tortoiseshell,toss,tot,total,totalitarian,tote,totem,totemic,touch,touchdown,touchstone,tough,tour,tournament,tousle,tout,tow,toward,towboat,towel,tower,town,townhouse,townsman,townsmen,toxic,toxicology,toxin,toy,trace,traceable,tracery,trachea,track,trackage,tract,tractor,trade,trademark,tradeoff,tradesman,tradesmen,tradition,traffic,tragedian,tragedy,tragic,tragicomic,trail,trailblaze,trailhead,trailside,train,trainee,trainman,trainmen,traipse,trait,traitor,traitorous,trajectory,tram,trammel,trample,tramway,trance,tranquil,tranquillity,transact,transalpine,transatlantic,transceiver,transcend,transcendent,transcendental,transconductance,transcontinental,transcribe,transcript,transcription,transducer,transduction,transect,transept,transfer,transferable,transferee,transference,transferor,transferral,transferred,transferring,transfinite,transfix,transform,transformation,transfusable,transfuse,transfusion,transgress,transgression,transgressor,transistor,transit,transition,transitive,translate,transliterate,translucent,transmissible,transmission,transmit,transmittable,transmittal,transmittance,transmitted,transmitter,transmitting,transmogrify,transmutation,transmute,transoceanic,transom,transpacific,transparent,transpiration,transpire,transplant,transplantation,transpond,transport,transportation,transposable,transpose,transposition,transship,transshipped,transshipping,transversal,transverse,trapezoid,trapezoidal,travail,travel,travelogue,traversable,traversal,traverse,travertine,travesty,trawl,tray,tread,treadle,treadmill,treason,treasure,treasury,treat,treatise,treaty,treble,tree,treetop,trefoil,trek,trellis,tremble,tremendous,tremor,tremulous,trench,trenchant,trencherman,trenchermen,trend,trendy,trepidation,trespass,tress,trestle,triad,trial,triangle,triangular,triangulate,triatomic,tribal,tribe,tribesman,tribesmen,tribulate,tribunal,tribune,tributary,tribute,trichrome,trick,trickery,trickle,trickster,tricky,trident,tridiagonal,tried,triennial,trifle,trifluoride,trifluouride,trig,trigonal,trigonometry,trigram,trihedral,trill,trillion,trillionth,trilobite,trilogy,trim,trimer,trimester,trinitarian,trinity,trinket,trio,triode,trioxide,trip,tripartite,tripe,triphenylphosphine,triple,triplet,triplex,triplicate,tripod,tripoli,triptych,trisodium,tristate,trisyllable,trite,tritium,triton,triumph,triumphal,triumphant,triune,trivalent,trivia,trivial,trivium,trod,trodden,troglodyte,troika,troll,trolley,trollop,trombone,trompe,troop,trophic,trophy,tropic,tropopause,troposphere,tropospheric,trot,troubador,trough,trounce,troupe,trouser,trout,troy,truancy,truant,truce,truck,truculent,trudge,true,truism,truly,trump,trumpery,trumpet,truncate,trundle,trunk,truss,trust,trustee,trustful,trustworthy,truth,truthful,try,trypsin,trytophan,tsunami,tub,tuba,tube,tuberculin,tuberculosis,tubular,tubule,tuck,tuff,tuft,tug,tugging,tuition,tularemia,tulip,tulle,tumble,tumbrel,tumult,tumultuous,tuna,tundra,tune,tuneful,tungstate,tungsten,tunic,tunnel,tupelo,tuple,turban,turbid,turbidity,turbinate,turbine,turbofan,turbojet,turbulent,turf,turgid,turk,turkey,turmoil,turn,turnabout,turnaround,turnery,turnip,turnkey,turnoff,turnout,tur
nover,turnpike,turnstone,turntable,turpentine,turpitude,turquoise,turret,turtle,turtleback,turtleneck,turvy,tusk,tussle,tutelage,tutor,tutorial,tutu,tuxedo,twain,tweak,tweed,tweedy,tweeze,twelfth,twelve,twentieth,twenty,twice,twiddle,twig,twigging,twilight,twill,twin,twine,twinge,twinkle,twirl,twirly,twist,twisty,twitch,twitchy,two,twofold,twosome,tycoon,tying,type,typeface,typescript,typeset,typesetter,typesetting,typewrite,typewritten,typhoid,typhoon,typhus,typic,typify,typo,typographer,typography,typology,tyrannic,tyranny,tyrosine,ubiquitous,ubiquity,ulterior,ultimate,ultimatum,ultra,umber,umbra,umbrage,umbrella,umlaut,umpire,unanimity,unanimous,unary,unbeknownst,unbidden,uncle,unction,under,underclassman,underclassmen,undulate,uniaxial,unicorn,unidimensional,unidirectional,uniform,unify,unilateral,unimodal,unimodular,uninominal,union,uniplex,unipolar,uniprocessor,unique,unison,unitarian,unitary,unite,unity,univalent,univariate,universal,universe,until,unwieldy,up,upbeat,upbraid,upbring,upcome,update,updraft,upend,upgrade,upheaval,upheld,uphill,uphold,upholster,upholstery,upkeep,upland,uplift,upon,upper,upperclassman,upperclassmen,uppercut,uppermost,upraise,upright,uprise,upriver,uproar,uproarious,uproot,upset,upsetting,upshot,upside,upsilon,upslope,upstair,upstand,upstart,upstate,upstater,upstream,upsurge,upswing,uptake,uptown,uptrend,upturn,upward,upwind,uranium,urban,urbane,urbanite,urchin,urge,urgency,urgent,urging,us,usable,usage,use,useful,usher,usual,usurer,usurious,usurp,usurpation,usury,utensil,utilitarian,utility,utmost,utopia,utopian,utter,utterance,uttermost,vacant,vacate,vacationland,vaccinate,vaccine,vacillate,vacua,vacuo,vacuolate,vacuole,vacuous,vacuum,vade,vagabond,vagary,vagrant,vague,vain,vainglorious,vale,valediction,valedictorian,valedictory,valent,valentine,valet,valeur,valiant,valid,validate,valine,valley,valuate,value,valve,vamp,vampire,van,vanadium,vandal,vane,vanguard,vanilla,vanish,vanity,vanquish,vantage,vapid,vaporous,variable,variac,variant,variate,variegate,variety,various,varistor,varnish,varsity,vary,vascular,vase,vassal,vast,vat,vaudeville,vault,vaunt,veal,vector,vectorial,vee,veer,veery,vegetable,vegetarian,vegetate,vehicle,vehicular,veil,vein,velar,veldt,vellum,velocity,velours,velvet,velvety,venal,vend,vendetta,vendible,vendor,veneer,venerable,venerate,venial,venous,vent,ventilate,ventricle,venture,venturesome,venturi,veracious,veracity,veranda,verandah,verb,verbal,verbatim,verbena,verbiage,verbose,verbosity,verdant,verdict,verge,veridic,verify,veritable,verity,vermeil,vermiculite,vermilion,vermin,vermouth,vernacular,vernal,vernier,versa,versatec,versatile,verse,version,versus,vertebra,vertebrae,vertebral,vertebrate,vertex,vertical,vertices,vertigo,verve,very,vesper,vessel,vest,vestal,vestibule,vestige,vestigial,vestry,vet,vetch,veteran,veterinarian,veterinary,veto,via,viaduct,vial,vibrant,vibrate,vibrato,viburnum,vicar,viceroy,vicinal,vicinity,vicious,vicissitude,victor,victorious,victory,victrola,victual,vide,video,videotape,vie,view,viewpoint,vigil,vigilant,vigilante,vigilantism,vignette,vigorous,villa,village,villain,villainous,villein,vindicate,vine,vinegar,vineyard,vintage,vintner,vinyl,viola,violate,violent,violet,violin,virgule,virtual,virtue,virtuosi,virtuosity,virtuoso,virtuous,virulent,virus,vis,visa,visage,viscoelastic,viscometer,viscosity,viscount,viscous,vise,visible,vision,visionary,visit,visitation,visitor,visor,vista,visual,vita,vitae,vital,vitamin,vitiate,vitreous,vitrify,vitriol,vitriolic,vitro,viva,vivace,vivacious,vivacity,vivid,vivify,vivo,vixen,viz,vocable,vocabularian,vocal,vocalic,vocate,vociferous,vogue,voice,voiceband,void,volatile,volcanic,volcanism,volcano,volition,volley,volleyball,volt,voltage,voltaic,voltmeter,voluble,volume,volumetric,voluminous,voluntarism,voluntary,volunteer,voracious,voracity,vortex,vortices,vorticity,votary,vote,votive,vouch,vouchsafe,vow,vowel,voyage,vulgar,vulnerable,vulpi
ne,vulture,vying,wacky,wad,waddle,wade,wafer,waffle,wag,wage,wagging,waggle,wagoneer,wail,waist,waistcoat,waistline,wait,waitress,waive,wake,wakeful,waken,wakeup,wale,walk,walkout,walkover,walkway,wall,wallaby,wallboard,wallet,wallop,wallow,wallpaper,wally,walnut,walrus,waltz,waltzing,wan,wand,wander,wane,wangle,want,wanton,wapato,wapiti,war,warble,ward,warden,wardrobe,wardroom,ware,warehouse,warehouseman,warm,warmhearted,warmth,warmup,warn,warp,warplane,warrant,warranty,warren,warrior,wary,was,wash,washbasin,washboard,washbowl,washout,washy,wasp,waspish,wast,wastage,wastebasket,wasteful,wasteland,wastewater,wastrel,watch,watchband,watchdog,watchful,watchmake,watchman,watchmen,watchword,water,watercourse,waterfall,waterfront,waterline,watermelon,waterproof,watershed,waterside,waterway,watery,watt,wattage,wattle,wave,waveform,wavefront,waveguide,wavelength,wavelet,wavenumber,wavy,wax,waxen,waxwork,waxy,way,waybill,waylaid,waylay,wayside,wayward,we,weak,weaken,weal,wealth,wealthy,wean,wear,wearied,wearisome,weary,weasel,weather,weatherbeaten,weatherproof,weatherstrip,weatherstripping,weave,web,weber,wed,wedge,wedlock,wee,weed,weedy,week,weekday,weekend,weep,weigh,weight,weighty,weir,weird,welcome,weld,welfare,well,wellbeing,wellington,welsh,welt,went,wept,were,wert,west,westbound,westerly,western,westernmost,westward,wet,wetland,whale,wharf,wharves,what,whatever,whatnot,whatsoever,wheat,wheedle,wheel,wheelbase,wheelchair,wheelhouse,wheeze,wheezy,whelk,whelm,when,whence,whenever,where,whereabout,whereas,whereby,wherefore,wherein,whereof,whereon,wheresoever,whereupon,wherever,wherewith,wherewithal,whet,whether,which,whichever,whiff,whig,while,whim,whimper,whimsey,whimsic,whiplash,whipsaw,whir,whirl,whirlpool,whirlwind,whish,whisk,whisper,whistle,whistleable,whit,white,whiteface,whitehead,whiten,whitetail,whitewash,whither,whittle,who,whoever,whole,wholehearted,wholesale,wholesome,wholly,whom,whomever,whomsoever,whose,whosoever,why,wick,wicket,wide,widen,widespread,widgeon,widget,widow,widowhood,width,widthwise,wield,wig,wigging,wiggle,wild,wildcat,wildcatter,wilderness,wildfire,wildlife,wile,wilful,will,willful,willow,willowy,wilt,wily,win,wince,wind,windbag,windbreak,windfall,windmill,window,windowpane,windowsill,windshield,windstorm,windsurf,windup,windward,windy,wing,wingback,wingman,wingmen,wingspan,wingtip,wink,winkle,winnow,winsome,winter,wintertime,wintry,winy,wipe,wire,wireman,wiremen,wiretap,wiretapper,wiretapping,wiry,wisdom,wise,wish,wishbone,wishful,wisp,wispy,wistful,wit,with,withal,withdraw,withdrawal,withdrawn,withdrew,withe,wither,withheld,withhold,within,without,withstand,withstood,withy,witness,witty,wizard,wobble,woe,woebegone,woeful,wok,woke,wold,wolf,wolfish,wolves,woman,wombat,women,won,wonder,wonderful,wonderland,wondrous,wont,woo,wood,woodcarver,woodcut,wooden,woodgrain,woodhen,woodland,woodlot,woodpeck,woodrow,woodruff,woodshed,woodside,woodward,woodwind,woodwork,wool,woolgather,word,wordy,wore,work,workaday,workbench,workbook,workday,workforce,workhorse,workload,workman,workmanlike,workmen,workout,workpiece,workplace,worksheet,workshop,workspace,workstation,worktable,world,worldwide,worm,worn,worth,worthwhile,worthy,would,wound,wove,woven,wow,wrack,wraith,wrangle,wrap,wrapup,wrath,wrathful,wreak,wreath,wreathe,wreck,wreckage,wrench,wrest,wrestle,wretch,wriggle,wright,wring,wrinkle,wrist,wristband,wristwatch,writ,write,writeup,writhe,written,wrote,wrought,wry,xenon,xerography,xylem,xylene,xylophone,yacht,yachtsman,yachtsmen,yak,yam,yap,yapping,yard,yardage,yardstick,yarmulke,yarn,yarrow,yawn,yea,yeah,year,yearbook,yearn,yeast,yell,yellow,yellowish,yelp,yen,yeoman,yeomanry,yesterday,yesteryear,yet,yield,yip,yipping,yodel,yoga,yoghurt,yogi,yogurt,yoke,yolk,yon,yond,yore,you,young,youngish,youngster,your,yourself,yourselves,youth,youthful,yule,zag,zagging,zap,zazen,zeal,zealot,zealous,zebra,zenith,zero,zeroes,zeroth,zest
,zesty,zeta,zig,zigging,zigzag,zigzagging,zinc,zip,zippy,zircon,zirconium,zodiac,zodiacal,zombie,zone,zoo,zoology,zoom,zucchini';
*/

  VULGAR   CONSTANT VARCHAR2(500) := 'DAMN,DIC,FART,LUST,SEX,SHIT,SUC,FUC,TIT,ASS,PRIC,COC,DORK,FAG,CUNT,BOOB,LICK';
  NEGATIVE CONSTANT VARCHAR2(500) := 'DUMB,FAIL,LOSE,FLUNK';
  NINES    CONSTANT VARCHAR2(25) := '999999999999999999999999';


  FUNCTION PROGRAMIDFORCUSTOMERNPRODUCT(CUSTOMERID NUMBER,
                                        PRODUCTID  NUMBER,
                                        STARTDATE  DATE) RETURN NUMBER;
  FUNCTION ISTESTRESTRICTEDFORSTUDENT(STUDENTID     NUMBER,
                                      TESTITEMSETID NUMBER) RETURN NUMBER;
  FUNCTION GET_FIXED_LENGTH_RAND_NO(NO_OF_DIGITS NUMBER)
    RETURN NUMBER;                                       
  FUNCTION GETTESTSESSIONSTATUS(VCONFIGDATA TEST_SCHEDULE_CONFIG%ROWTYPE)
    RETURN VARCHAR2;
  FUNCTION GENERATEPASSWORD(DESIREDLENGTH NUMBER, ISACCESSCODE NUMBER)
    RETURN VARCHAR2;
  PROCEDURE LOG_MESSAGE(P_ID            INTEGER,
                        P_STATUS        IN VARCHAR2,
                        P_ERROR_MESSAGE IN VARCHAR2);
                                          
  PROCEDURE SCHEDULE_SESSIONS_FOR_OK(INPUT_CUSTOMER_ID     INTEGER,
                                     INPUT_TESTING_WINDOW  VARCHAR2);
  
  PROCEDURE SCHEDULE_NOT_TESTED_STUDENTS(INPUT_CUSTOMER_ID INTEGER);                                   
                                     
END OAS_OK_TEST_PRE_SCHEDULING;
/
CREATE OR REPLACE PACKAGE BODY OAS_OK_TEST_PRE_SCHEDULING IS

  /* Constant declarations */
 
  OPTIONAL_RETEST_PRODUCT_ID      CONSTANT PRODUCT.PRODUCT_ID%TYPE := 9001;
  WINTER_TRIMESTER_PRODUCT_ID     CONSTANT PRODUCT.PRODUCT_ID%TYPE := 9002;
  
  OPTIONAL_RETEST_TEST_WINDOW     CONSTANT CUSTOMER_DEMOGRAPHIC_VALUE.VALUE_NAME%TYPE := 'Optional Retest Window';
  WINTER_TRIMESTER_TEST_WINDOW    CONSTANT CUSTOMER_DEMOGRAPHIC_VALUE.VALUE_NAME%TYPE := 'Winter/Trimester';

  SCHOOL_CATEGORY_LEVEL           CONSTANT INTEGER := 3;
  DEFAULT_CREATED_BY              CONSTANT INTEGER := 1;
  TEST_TIME_EXPIRED               CONSTANT VARCHAR2(1) := 'F';
  
  --TEST_ADMIN
  V_ACTIVATION_STATUS             CONSTANT VARCHAR2(2) := 'AC';
  ENFORCE_BREAK                   CONSTANT VARCHAR2(1) := 'T';
  TEST_ADMIN_TYPE                 CONSTANT VARCHAR2(2) := 'SE';
  ENFORCE_TIME_LIMIT              CONSTANT VARCHAR2(1) := 'T';
  FORM_ASSIGNMENT_METHOD          CONSTANT VARCHAR2(10) := 'roundrobin';
  
  --TEST_ADMIN_USER_ROLE
  ACC_MANAGER_ROLE_ID             CONSTANT INTEGER := 1004;
  ADMINISTRATOR_ROLE_ID           CONSTANT INTEGER := 1005;

  --TEST_ROSTER
  TEST_COMPLETION_STATUS          CONSTANT VARCHAR2(2) := 'SC';
  VALIDATION_STATUS               CONSTANT VARCHAR2(2) := 'VA';
  OVERRIDE_TEST_WINDOW            CONSTANT VARCHAR2(1) := 'F';
  SCORING_STATUS                  CONSTANT VARCHAR2(2) := 'NA';
  
  
  --Password / Acesss_Code

  V_GEN_STD_PASS_LENGTH           CONSTANT NUMBER(2) := 6;
  V_GENERATED_ACCESS_CODE_LENGTH  CONSTANT NUMBER(2) := 8;

  -- LOG STATUS ;
  V_STATUS_SUCCESS                CONSTANT VARCHAR2(10) := 'SUCCESS';
  V_STATUS_WARN                   CONSTANT VARCHAR2(10) := 'WARNING';
  V_STATUS_ERROR                  CONSTANT VARCHAR2(10) := 'FAILURE';
  V_STATUS_COMPLETE               CONSTANT VARCHAR2(10) := 'COMPLETE';
  V_STATUS_START                  CONSTANT VARCHAR2(10) := 'STARTED';
  
  /* Type declarations */                                
   TYPE STRING_ARRAY IS TABLE OF VARCHAR2(50) INDEX BY VARCHAR2(20);
   /*   TYPE SUBJECT_RECORD IS RECORD (
      SUBJECT_CODE     VARCHAR2(20), 
      SUBJECT_NAME     VARCHAR2(200)); 
   TYPE SUBJECT_MAP IS VARRAY(20) OF SUBJECT_RECORD;*/
  
 
  /* Variable declarations */ 
  V_FORM_ASSIGNMENT               TEST_ROSTER.FORM_ASSIGNMENT%TYPE;
  PREFERRED_FORM                  TEST_ADMIN.PREFERRED_FORM%TYPE;
  VROSTER_STATUS_FLAG             VARCHAR2(300) := 'Roster_Status_Flag';
  /*V_SUBJECT_MAP                   SUBJECT_MAP;*/
  V_SUBJECT_ARR                   STRING_ARRAY;
  V_LOG_ID                        INTEGER := TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY') ||
                                                       TO_CHAR(SYSDATE, 'MM') ||
                                                       TO_CHAR(SYSDATE, 'DD') ||
                                                       TO_CHAR(SYSDATE, 'hh24') ||
                                                       TO_CHAR(SYSDATE, 'MI') ||
                                                       TO_CHAR(SYSDATE, 'SS')); 
   
  /* CURSOR declarations */ 

  --Retrieve all item_set_id of type 'TC' associated to given product of OK customer


  CURSOR CUR_GET_TCTEST_FOR_PRODUCT(V_PRODUCTID INTEGER, V_USERID USERS.USER_ID%TYPE) IS
    SELECT DISTINCT ISET.ITEM_SET_ID,
                    ISET.ITEM_SET_DISPLAY_NAME,
                    ISET.GRADE,
                    MAX(ONTC.RANDOM_DISTRACTOR_ALLOWABLE) AS RANDOM_DISTRACTOR_ALLOWABLE,
                    MAX(ONTC.OVERRIDE_FORM_ASSIGNMENT) AS OVERRIDE_FORM_ASSIGN_METHOD
      FROM PRODUCT PROD,
           ITEM_SET_PRODUCT ISP,
           ITEM_SET ISET,
           ORG_NODE_TEST_CATALOG ONTC,
           USER_ROLE UROLE,
           USERS
     WHERE PROD.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND ISET.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND ISP.PRODUCT_ID = PROD.PRODUCT_ID
       AND ISET.ITEM_SET_ID = ISP.ITEM_SET_ID
       AND ISET.ITEM_SET_TYPE = 'TC'
       AND PROD.PRODUCT_ID = V_PRODUCTID
       AND ONTC.ITEM_SET_ID = ISET.ITEM_SET_ID
       AND ONTC.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND UROLE.ORG_NODE_ID = ONTC.ORG_NODE_ID
       AND UROLE.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND USERS.USER_ID = UROLE.USER_ID
       AND USERS.USER_ID = V_USERID
     GROUP BY ISET.ITEM_SET_ID,
              ISET.ITEM_SET_DISPLAY_NAME,
              ISET.ACTIVATION_STATUS,
              ISET.GRADE;

              
   CURSOR CUR_STU_FOR_OPTIONAL_RETEST(V_DEPTT_NODE_ID   ORG_NODE_ANCESTOR.ORG_NODE_ID%TYPE, 
                                      V_PRODUCT_ID      INTEGER,
                                      V_TESTING_SUBJECT STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                      V_TEST_WINDOW     STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE) IS
    SELECT STU.STUDENT_ID,
           STU.USER_NAME,
           STU.ACTIVATION_STATUS,
           STU.GRADE,
           MAX(ONS.ORG_NODE_ID) AS ORG_NODE_ID
    
      FROM ORG_NODE_STUDENT ONS, STUDENT STU, ORG_NODE NODE
     WHERE ONS.STUDENT_ID = STU.STUDENT_ID
       AND ONS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND STU.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND STU.PRECODE_ID IS NOT NULL -- Can be commented to use procedure for scheduling all type of student(UI and Informatica)
       AND NVL(STU.OUT_OF_SCHOOL, 'No') <> 'Yes'
       AND ONS.ORG_NODE_ID = NODE.ORG_NODE_ID
       AND ONS.ORG_NODE_ID IN
           (SELECT ORG_NODE_ID
              FROM ORG_NODE_ANCESTOR ONS
             WHERE ANCESTOR_ORG_NODE_ID = V_DEPTT_NODE_ID
               AND NUMBER_OF_LEVELS IN (0, 1))
       AND (SELECT DECODE(COUNT(1), 0, 1, 0)
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = V_PRODUCT_ID) = 1
       AND (SELECT DECODE(COUNT(1), 0, 1, 0)
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = WINTER_TRIMESTER_PRODUCT_ID) = 1
       AND EXISTS (SELECT * FROM STUDENT_DEMOGRAPHIC_DATA DEMO
             WHERE DEMO.STUDENT_ID = STU.STUDENT_ID
               AND DEMO.VALUE_NAME = V_TESTING_SUBJECT)
       AND EXISTS (SELECT * FROM STUDENT_DEMOGRAPHIC_DATA DEMO
             WHERE DEMO.STUDENT_ID = STU.STUDENT_ID
               AND DEMO.VALUE_NAME = V_TEST_WINDOW)
     GROUP BY STU.STUDENT_ID,
              STU.ACTIVATION_STATUS,
              STU.USER_NAME,
              STU.GRADE;
              
   CURSOR CUR_STU_FOR_WINTER_TRIMESTER(V_DEPTT_NODE_ID    ORG_NODE_ANCESTOR.ORG_NODE_ID%TYPE, 
                                       V_PRODUCT_ID       INTEGER,
                                       V_TESTING_SUBJECT  STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                       V_TEST_WINDOW      STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                       V_TEST_NAME        TEST_CATALOG.TEST_NAME%TYPE) IS
    SELECT STU.STUDENT_ID,
           STU.USER_NAME,
           STU.ACTIVATION_STATUS,
           STU.GRADE,
           MAX(ONS.ORG_NODE_ID) AS ORG_NODE_ID
      FROM ORG_NODE_STUDENT ONS, STUDENT STU, ORG_NODE NODE
     WHERE ONS.STUDENT_ID = STU.STUDENT_ID
       AND ONS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND STU.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND STU.PRECODE_ID IS NOT NULL -- Can be commented to use procedure for scheduling all type of student(UI and Informatica)
       AND NVL(STU.OUT_OF_SCHOOL, 'No') <> 'Yes'
       AND ONS.ORG_NODE_ID = NODE.ORG_NODE_ID
       AND ONS.ORG_NODE_ID IN
           (SELECT ORG_NODE_ID
              FROM ORG_NODE_ANCESTOR ONS
             WHERE ANCESTOR_ORG_NODE_ID = V_DEPTT_NODE_ID
               AND NUMBER_OF_LEVELS IN (0, 1))
       AND (SELECT DECODE(COUNT(1), 0, 1, 0)
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = V_PRODUCT_ID) = 1
       AND (SELECT DECODE(COUNT(1), 0, 1, 0)
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = OPTIONAL_RETEST_PRODUCT_ID) = 1
       AND EXISTS (SELECT *
              FROM STUDENT_DEMOGRAPHIC_DATA DEMO
             WHERE DEMO.STUDENT_ID = STU.STUDENT_ID
               AND DEMO.VALUE_NAME = V_TESTING_SUBJECT)
       AND EXISTS (SELECT *
              FROM STUDENT_DEMOGRAPHIC_DATA DEMO
             WHERE DEMO.STUDENT_ID = STU.STUDENT_ID
               AND DEMO.VALUE_NAME = V_TEST_WINDOW)
     GROUP BY STU.STUDENT_ID,
              STU.ACTIVATION_STATUS,
              STU.USER_NAME,
              STU.GRADE
    
    UNION
    
    SELECT STU.STUDENT_ID,
           STU.USER_NAME,
           STU.ACTIVATION_STATUS,
           STU.GRADE,
           MAX(ONS.ORG_NODE_ID) AS ORG_NODE_ID
      FROM ORG_NODE_STUDENT ONS, STUDENT STU, ORG_NODE NODE
     WHERE ONS.STUDENT_ID = STU.STUDENT_ID
       AND ONS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND STU.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       --AND STU.PRECODE_ID IS NOT NULL -- Can be commented to use procedure for scheduling all type of student(UI and Informatica)
       AND NVL(STU.OUT_OF_SCHOOL, 'No') <> 'Yes'
       AND ONS.ORG_NODE_ID = NODE.ORG_NODE_ID
       AND ONS.ORG_NODE_ID IN
           (SELECT ORG_NODE_ID
              FROM ORG_NODE_ANCESTOR ONS
             WHERE ANCESTOR_ORG_NODE_ID = V_DEPTT_NODE_ID
               AND NUMBER_OF_LEVELS IN (0, 1))
       AND (SELECT DECODE(COUNT(1), 0, 1, 0)
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS, TEST_CATALOG CAT
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.TEST_CATALOG_ID = CAT.TEST_CATALOG_ID
               AND CAT.TEST_NAME = V_TEST_NAME
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = V_PRODUCT_ID) = 1
       AND EXISTS
     (SELECT *
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS, TEST_CATALOG CAT
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.TEST_CATALOG_ID = CAT.TEST_CATALOG_ID
               AND REPLACE(CAT.TEST_NAME, 'Retest') =
                   REPLACE(V_TEST_NAME, 'Test')
               AND ROS.TEST_COMPLETION_STATUS IN ('SC', 'NT')
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = OPTIONAL_RETEST_PRODUCT_ID)
    /*AND EXISTS (SELECT *
                      FROM STUDENT_DEMOGRAPHIC_DATA DEMO
                     WHERE DEMO.STUDENT_ID = STU.STUDENT_ID
                       AND DEMO.VALUE_NAME = V_TESTING_SUBJECT)*/
    /*AND EXISTS (SELECT FROM STUDENT_DEMOGRAPHIC_DATA DEMO
                     WHERE DEMO.STUDENT_ID = STU.STUDENT_ID
                       AND DEMO.VALUE_NAME = V_TEST_WINDOW)*/
     GROUP BY STU.STUDENT_ID,
              STU.ACTIVATION_STATUS,
              STU.USER_NAME,
              STU.GRADE;

  /** Added for User Story : Place not tested into next session **/
    CURSOR CUR_NOT_TESTED_STUDENTS(V_DEPTT_NODE_ID    ORG_NODE_ANCESTOR.ORG_NODE_ID%TYPE, 
                                   V_PRODUCT_ID       INTEGER,
                                   V_TESTING_SUBJECT  STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                   V_TEST_WINDOW      STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                   V_TEST_NAME        TEST_CATALOG.TEST_NAME%TYPE) IS
    SELECT STU.STUDENT_ID,
           STU.USER_NAME,
           STU.ACTIVATION_STATUS,
           STU.GRADE,
           MAX(ONS.ORG_NODE_ID) AS ORG_NODE_ID
      FROM ORG_NODE_STUDENT ONS, STUDENT STU, ORG_NODE NODE
     WHERE ONS.STUDENT_ID = STU.STUDENT_ID
       AND ONS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND STU.ACTIVATION_STATUS = V_ACTIVATION_STATUS
          --AND STU.PRECODE_ID IS NOT NULL -- Can be commented to use procedure for scheduling all type of student(UI and Informatica)
       AND NVL(STU.OUT_OF_SCHOOL, 'No') <> 'Yes'
       AND ONS.ORG_NODE_ID = NODE.ORG_NODE_ID
       AND ONS.ORG_NODE_ID IN
           (SELECT ORG_NODE_ID
              FROM ORG_NODE_ANCESTOR ONS
             WHERE ANCESTOR_ORG_NODE_ID = V_DEPTT_NODE_ID
               AND NUMBER_OF_LEVELS IN (0, 1))
       AND (SELECT DECODE(COUNT(1), 0, 0, 1, 1, 2)
              FROM TEST_ADMIN ADM, TEST_ROSTER ROS, TEST_CATALOG CAT
             WHERE ROS.STUDENT_ID = STU.STUDENT_ID
               AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
               AND ADM.TEST_CATALOG_ID = CAT.TEST_CATALOG_ID
               AND CAT.TEST_NAME = V_TEST_NAME
               AND ROS.TEST_COMPLETION_STATUS IN ('SC', 'NT')
               AND ADM.ACTIVATION_STATUS = 'AC'
               AND ADM.PRODUCT_ID = V_PRODUCT_ID) = 1
     GROUP BY STU.STUDENT_ID,
              STU.ACTIVATION_STATUS,
              STU.USER_NAME,
              STU.GRADE;
     
  CURSOR CRSGETSCHEDULABLEUNITSFORTEST(VPARENTITEMSETID ITEM_SET.ITEM_SET_ID%TYPE) IS
    SELECT ISET.ITEM_SET_ID
      FROM ITEM_SET ISET, ITEM_SET_PARENT ISP
     WHERE ISET.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND ISET.ITEM_SET_ID = ISP.ITEM_SET_ID
       AND ISET.ITEM_SET_TYPE = 'TS'
       AND ISP.PARENT_ITEM_SET_ID = VPARENTITEMSETID /*{parentItemSetId}-- TC ItemsetId*/
     ORDER BY ISP.ITEM_SET_SORT_ORDER;

  CURSOR CRSGETTDTESTELEMENTLIST(VPARENTITEMSETID ITEM_SET.ITEM_SET_ID%TYPE, VFORM ITEM_SET.ITEM_SET_FORM%TYPE) IS
    SELECT ISET.ITEM_SET_ID
      FROM ITEM_SET ISET, ITEM_SET_PARENT ISP
     WHERE ISET.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       AND ISET.ITEM_SET_ID = ISP.ITEM_SET_ID
       AND ISET.ITEM_SET_TYPE = 'TD'
       AND ISP.PARENT_ITEM_SET_ID = VPARENTITEMSETID
       AND ISET.ITEM_SET_FORM = VFORM
     ORDER BY ISP.ITEM_SET_SORT_ORDER;

  /* Type & Variable declaration */
  TYPE ARR_STU_FOR_TESTING_WINDOW IS TABLE OF CUR_STU_FOR_OPTIONAL_RETEST%ROWTYPE;
  V_STUDENT          CUR_STU_FOR_OPTIONAL_RETEST%ROWTYPE;
  V_ARRAY_OF_STUDENT ARR_STU_FOR_TESTING_WINDOW;

  -- getting a random no. of desired length
  FUNCTION GET_FIXED_LENGTH_RAND_NO(NO_OF_DIGITS NUMBER)
    RETURN NUMBER IS
    V_RANDOM_NO   NUMBER;
    V_NO_OF_NINES VARCHAR2(25);
  BEGIN
       V_NO_OF_NINES := SUBSTR(NINES, 1, NO_OF_DIGITS);
       V_RANDOM_NO := ABS(MOD(DBMS_RANDOM.RANDOM, TO_NUMBER(V_NO_OF_NINES)));
       IF LENGTH(V_RANDOM_NO) < NO_OF_DIGITS THEN
          V_RANDOM_NO := GET_FIXED_LENGTH_RAND_NO(NO_OF_DIGITS);
       END IF; 
       RETURN V_RANDOM_NO;
  END;
  
  FUNCTION GENERATEPASSWORD(DESIREDLENGTH NUMBER, ISACCESSCODE NUMBER)
    RETURN VARCHAR2 AS
    V_RAND_NO1     NUMBER(2) := DBMS_RANDOM.VALUE(1, 5);
    V_RAND_NO2     NUMBER(10);
    V_LENGTH       NUMBER(10);
    V_PASS         VARCHAR2(32726);
    V_FIRST_OCCUR  NUMBER(10);
    V_SECOND_OCCUR NUMBER(10);
    V_MAGNITUDE    VARCHAR2(25);
    VAL1           NUMBER(10);
    V_RECORD_COUNT NUMBER(3);
    V_RECORD_COUNT1 NUMBER(3);

  BEGIN

    ---------------------------------------------------------
    ------------ GENERATING RENDOM VALUE --------------------
    ---------------------------------------------------------
    CASE V_RAND_NO1
      WHEN 1 THEN
        V_LENGTH      := LENGTH(WORDS1) - LENGTH(REPLACE(WORDS1, ','));
        V_RAND_NO2    := DBMS_RANDOM.VALUE(1, V_LENGTH);
        V_FIRST_OCCUR := (INSTR(WORDS1, ',', 1, V_RAND_NO2));

        IF (V_LENGTH = V_RAND_NO1) THEN
          V_PASS := SUBSTR(WORDS1, V_FIRST_OCCUR + 1);
        ELSE
          V_SECOND_OCCUR := (INSTR(WORDS1, ',', V_FIRST_OCCUR + 1));
          V_PASS         := SUBSTR(WORDS1,
                                   V_FIRST_OCCUR + 1,
                                   V_SECOND_OCCUR - V_FIRST_OCCUR - 1);
        END IF;

      WHEN 2 THEN
        V_LENGTH      := LENGTH(WORDS2) - LENGTH(REPLACE(WORDS2, ','));
        V_RAND_NO2    := DBMS_RANDOM.VALUE(1, V_LENGTH);
        V_FIRST_OCCUR := (INSTR(WORDS2, ',', 1, V_RAND_NO2));
        IF (V_LENGTH = V_RAND_NO1) THEN
          V_PASS := SUBSTR(WORDS2, V_FIRST_OCCUR + 1);
        ELSE
          V_SECOND_OCCUR := (INSTR(WORDS2, ',', V_FIRST_OCCUR + 1));
          V_PASS         := SUBSTR(WORDS2,
                                   V_FIRST_OCCUR + 1,
                                   V_SECOND_OCCUR - V_FIRST_OCCUR - 1);
        END IF;

      WHEN 3 THEN
        V_LENGTH      := LENGTH(WORDS3) - LENGTH(REPLACE(WORDS3, ','));
        V_RAND_NO2    := DBMS_RANDOM.VALUE(1, V_LENGTH);
        V_FIRST_OCCUR := (INSTR(WORDS3, ',', 1, V_RAND_NO2));
        IF (V_LENGTH = V_RAND_NO1) THEN
          V_PASS := SUBSTR(WORDS3, V_FIRST_OCCUR + 1);
        ELSE
          V_SECOND_OCCUR := (INSTR(WORDS3, ',', V_FIRST_OCCUR + 1));
          V_PASS         := SUBSTR(WORDS3,
                                   V_FIRST_OCCUR + 1,
                                   V_SECOND_OCCUR - V_FIRST_OCCUR - 1);
        END IF;

      WHEN 4 THEN
        V_LENGTH      := LENGTH(WORDS4) - LENGTH(REPLACE(WORDS4, ','));
        V_RAND_NO2    := DBMS_RANDOM.VALUE(1, V_LENGTH);
        V_FIRST_OCCUR := (INSTR(WORDS4, ',', 1, V_RAND_NO2));
        IF (V_LENGTH = V_RAND_NO1) THEN
          V_PASS := SUBSTR(WORDS4, V_FIRST_OCCUR + 1);
        ELSE
          V_SECOND_OCCUR := (INSTR(WORDS4, ',', V_FIRST_OCCUR + 1));
          V_PASS         := SUBSTR(WORDS4,
                                   V_FIRST_OCCUR + 1,
                                   V_SECOND_OCCUR - V_FIRST_OCCUR - 1);
        END IF;

      WHEN 5 THEN
        V_LENGTH      := LENGTH(WORDS5) - LENGTH(REPLACE(WORDS5, ','));
        V_RAND_NO2    := DBMS_RANDOM.VALUE(1, V_LENGTH);
        V_FIRST_OCCUR := (INSTR(WORDS5, ',', 1, V_RAND_NO2));
        IF (V_LENGTH = V_RAND_NO1) THEN
          V_PASS := SUBSTR(WORDS5, V_FIRST_OCCUR + 1);
        ELSE
          V_SECOND_OCCUR := (INSTR(WORDS5, ',', V_FIRST_OCCUR + 1));
          V_PASS         := SUBSTR(WORDS5,
                                   V_FIRST_OCCUR + 1,
                                   V_SECOND_OCCUR - V_FIRST_OCCUR - 1);
        END IF;
    END CASE;
  ----------------------------------------------------------
    ------------- REMOVING WHITESPACE CHARACTER---------------
    ----------------------------------------------------------
    SELECT REGEXP_REPLACE(V_PASS, '\s*', '') INTO V_PASS FROM DUAL;

    ---------------------------------------------------------
    ----- CHECKING VULGAR OR NOT FOR PASSWORD ---------------
    ---------------------------------------------------------
    IF (ISACCESSCODE = 0) THEN
      IF ((INSTR(VULGAR, LOWER(V_PASS), 1)) > 0) THEN
        V_PASS := GENERATEPASSWORD(DESIREDLENGTH, ISACCESSCODE);
      ELSIF ((INSTR(NEGATIVE, LOWER(V_PASS), 1)) > 0) THEN
        V_PASS := GENERATEPASSWORD(DESIREDLENGTH, ISACCESSCODE);
      END IF;

    END IF;

    ---------------------------------------------------------
    ----- GENERATING ALFA NUMERIC VALUE ---------------------------
    ---------------------------------------------------------
    V_LENGTH := DESIREDLENGTH - LENGTH(V_PASS);

    IF (V_LENGTH > 1) THEN
      /*V_MAGNITUDE := SUBSTR(NINES, 1, V_LENGTH);
      VAL1        := ABS(MOD(DBMS_RANDOM.RANDOM, TO_NUMBER(V_MAGNITUDE)));*/
      VAL1        := GET_FIXED_LENGTH_RAND_NO(V_LENGTH);
      V_PASS      := V_PASS || VAL1;
    ELSE
      VAL1   := ABS(MOD(DBMS_RANDOM.RANDOM, 9));
      V_PASS := V_PASS || VAL1;
    END IF;

    ---------------------------------------------------------
    ----- VALIDATING ACCESS CODE ---------------------------
    ---------------------------------------------------------

    IF (ISACCESSCODE = 1) THEN
      SELECT COUNT(ACCESS_CODE)
        INTO V_RECORD_COUNT
        FROM TEST_ADMIN
       WHERE upper(ACCESS_CODE) = upper(V_PASS);
       
      SELECT COUNT(TSIT.ACCESS_CODE)
        INTO V_RECORD_COUNT1
        FROM TEST_ADMIN_ITEM_SET TSIT
       WHERE upper(TSIT.ACCESS_CODE) = upper(V_PASS); 
      
      IF (V_RECORD_COUNT > 0) OR (V_RECORD_COUNT1 > 0) THEN
        
        V_PASS := GENERATEPASSWORD(DESIREDLENGTH, ISACCESSCODE);
      END IF;
    END IF;

    RETURN UPPER(V_PASS);
  END GENERATEPASSWORD;

  -- for generating TestSessionStatus

  FUNCTION GETTESTSESSIONSTATUS(VCONFIGDATA TEST_SCHEDULE_CONFIG%ROWTYPE)
    RETURN VARCHAR2 IS
    V_STATUS TEST_ADMIN.TEST_ADMIN_STATUS%TYPE := 'FU';
  BEGIN
    IF ((TO_DATE(TO_CHAR(SYSDATE, 'YYYYMMDD'), 'YYYYMMDD') -
       (TO_DATE(TO_CHAR(VCONFIGDATA.LOGIN_END_DATE, 'YYYYMMDD'),
                  'YYYYMMDD')) > 0)) THEN
      V_STATUS := 'PA';
    ELSIF (((TO_DATE(TO_CHAR(SYSDATE, 'YYYYMMDD'), 'YYYYMMDD') -
          (TO_DATE(TO_CHAR(VCONFIGDATA.LOGIN_END_DATE, 'YYYYMMDD'),
                      'YYYYMMDD')) = 0)) AND
          (((TO_DATE(TO_CHAR(SYSDATE, 'HH24MISS'), 'HH24MISS') -
          (TO_DATE(TO_CHAR(VCONFIGDATA.DAILY_LOGIN_END_TIME, 'HH24MISS'),
                       'HH24MISS')) > 0)))) THEN
      V_STATUS := 'PA';
    ELSIF ((TO_DATE(TO_CHAR(SYSDATE, 'YYYYMMDD'), 'YYYYMMDD') -
          (TO_DATE(TO_CHAR(VCONFIGDATA.LOGIN_START_DATE, 'YYYYMMDD'),
                     'YYYYMMDD')) > 0)) THEN
      V_STATUS := 'CU';
    ELSIF (((TO_DATE(TO_CHAR(SYSDATE, 'YYYYMMDD'), 'YYYYMMDD') -
          (TO_DATE(TO_CHAR(VCONFIGDATA.LOGIN_START_DATE, 'YYYYMMDD'),
                      'YYYYMMDD')) = 0)) AND
          (((TO_DATE(TO_CHAR(SYSDATE, 'HH24MISS'), 'HH24MISS') -
          (TO_DATE(TO_CHAR(VCONFIGDATA.DAILY_LOGIN_START_TIME,
                               'HH24MISS'),
                       'HH24MISS')) > 0)))) THEN
      V_STATUS := 'CU';
    END IF;

    RETURN V_STATUS;
  END GETTESTSESSIONSTATUS;

  -- for getting PROGRAM_ID, also includes validation
  FUNCTION PROGRAMIDFORCUSTOMERNPRODUCT(CUSTOMERID NUMBER,
                                        PRODUCTID  NUMBER,
                                        STARTDATE  DATE) RETURN NUMBER AS
    V_PROGRAM_ID PROGRAM.PROGRAM_ID%TYPE := NULL;
  BEGIN
    SELECT MIN(PR.PROGRAM_ID)
      INTO V_PROGRAM_ID
      FROM PROGRAM PR, PRODUCT P
     WHERE PR.CUSTOMER_ID = CUSTOMERID
       AND PR.PRODUCT_ID = P.PARENT_PRODUCT_ID
       AND TRUNC(PR.PROGRAM_START_DATE) <= TRUNC(STARTDATE)
       AND TRUNC(PR.PROGRAM_END_DATE) >= TRUNC(STARTDATE)
       AND P.PRODUCT_ID = PRODUCTID;
    RETURN V_PROGRAM_ID;
  EXCEPTION
    WHEN TOO_MANY_ROWS THEN
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_ERROR,
                  'Customer[' || CUSTOMERID ||
                  '] has too many programs for product [' || PRODUCTID || '].');
      RAISE_APPLICATION_ERROR(-20000,
                              'Customer[' || CUSTOMERID ||
                              '] has too many programs for product [' ||
                              PRODUCTID || '].');
    WHEN NO_DATA_FOUND THEN
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_WARN,
                  'Customer does not have program product [' || PRODUCTID || '].');
      RETURN NULL;
  END PROGRAMIDFORCUSTOMERNPRODUCT;

  -- validation for Restricted Student 1 for non restricted 0 restricted
  FUNCTION ISTESTRESTRICTEDFORSTUDENT(STUDENTID     NUMBER,
                                      TESTITEMSETID NUMBER) RETURN NUMBER AS
    V_IS_TEST_RESTRICTED NUMBER(2) := 0;
  BEGIN
    SELECT DECODE(COUNT(*), 0, 1, 0)
      INTO V_IS_TEST_RESTRICTED
      FROM TEST_ADMIN ADM, TEST_ROSTER ROS
     WHERE ROS.STUDENT_ID = STUDENTID
       AND ROS.TEST_ADMIN_ID = ADM.TEST_ADMIN_ID
       AND ADM.ITEM_SET_ID = TESTITEMSETID;

    RETURN V_IS_TEST_RESTRICTED;

  END ISTESTRESTRICTEDFORSTUDENT;

  --------------------------------------------
  ----------- Procedure for logging ----------
  --------------------------------------------

  PROCEDURE LOG_MESSAGE(P_ID            INTEGER,
                        P_STATUS        IN VARCHAR2,
                        P_ERROR_MESSAGE IN VARCHAR2) AS
    PRAGMA AUTONOMOUS_TRANSACTION;
  BEGIN
    INSERT INTO OAS_TEST_SCHEDULE_LOG
      (ID, LOG_TIME, STATUS, LOG_MESSAGE)
    VALUES
      (P_ID, SYSTIMESTAMP, P_STATUS, SUBSTR(P_ERROR_MESSAGE, 1, 4000));
    COMMIT;
  END;
  
  PROCEDURE INITIALIZE_SUBJECT_ARRAY AS
  BEGIN
    V_SUBJECT_ARR('OCCTALG1') := 'Algebra I';
    V_SUBJECT_ARR('OCCTALG2') := 'Algebra II';
    V_SUBJECT_ARR('OCCTBIO1') := 'Biology I';
    V_SUBJECT_ARR('OCCTENG2') := 'English II';
    V_SUBJECT_ARR('OCCTENG3') := 'English III';
    V_SUBJECT_ARR('OCCTGEOM') := 'Geometry';
    V_SUBJECT_ARR('OCCTHIST') := 'U.S. History';
  END;

  --------------------------------------------
  ----------- Procedure for         ----------
  --------------------------------------------

  PROCEDURE INSERT_TEST_ADMIN(VPRODUCTID           INTEGER,
                              VCUSTOMERID          INTEGER,
                              RECTCITEMSETID       CUR_GET_TCTEST_FOR_PRODUCT%ROWTYPE,
                              VCONFIGDATA          TEST_SCHEDULE_CONFIG%ROWTYPE,
                              VSHOWSTUDENTFEEDBACK PRODUCT.SHOW_STUDENT_FEEDBACK%TYPE,
                              VTESTCATALOGID       TEST_CATALOG.TEST_CATALOG_ID %TYPE,
                              VCREATEDBY           USERS.USER_ID%TYPE,
                              VTESTAMINACCESSCODE  TEST_ADMIN_ITEM_SET.ACCESS_CODE%TYPE,
                              ORG_NODE_ID          ORG_NODE.ORG_NODE_ID%TYPE,
                              VTESTADMINID         TEST_ADMIN.TEST_ADMIN_ID%TYPE) AS

    -------------------------------------------------------------
    --- generating TEST SESSION STATUS

    V_TEST_SESSION_STATUS VARCHAR2(10) := GETTESTSESSIONSTATUS(VCONFIGDATA);
    V_SESSION_SEQUENCE NUMBER(4);

  BEGIN

    SELECT COUNT(1) + 1 INTO V_SESSION_SEQUENCE
    FROM TEST_ADMIN TA
    WHERE TA.CREATOR_ORG_NODE_ID = ORG_NODE_ID
    AND TA.ITEM_SET_ID = RECTCITEMSETID.ITEM_SET_ID;

    INSERT INTO TEST_ADMIN
      (TEST_ADMIN_ID,
       CUSTOMER_ID,
       TEST_ADMIN_NAME,
       PRODUCT_ID,
       CREATOR_ORG_NODE_ID,
       ACCESS_CODE,
       LOCATION,
       LOGIN_START_DATE,
       LOGIN_END_DATE,
       DAILY_LOGIN_START_TIME,
       DAILY_LOGIN_END_TIME,
       CREATED_BY,
       ACTIVATION_STATUS,
       ITEM_SET_ID,
       TEST_ADMIN_STATUS,
       SESSION_NUMBER,
       TEST_ADMIN_TYPE,
       ENFORCE_TIME_LIMIT,
       ENFORCE_BREAK,
       TIME_ZONE,
       TEST_CATALOG_ID,
       PREFERRED_FORM,
       FORM_ASSIGNMENT_METHOD,
       SHOW_STUDENT_FEEDBACK,
       PROGRAM_ID,
       RANDOM_DISTRACTOR_STATUS,
       CREATED_DATE_TIME)
    VALUES
      (VTESTADMINID,
       VCUSTOMERID,
       RECTCITEMSETID.ITEM_SET_DISPLAY_NAME|| ' - ' || V_SESSION_SEQUENCE,
       VPRODUCTID,
       ORG_NODE_ID,
       VTESTAMINACCESSCODE,
       VCONFIGDATA.LOCATION,
       VCONFIGDATA.LOGIN_START_DATE,
       VCONFIGDATA.LOGIN_END_DATE,
       VCONFIGDATA.DAILY_LOGIN_START_TIME,
       VCONFIGDATA.DAILY_LOGIN_END_TIME,
       VCREATEDBY,
       V_ACTIVATION_STATUS,
       RECTCITEMSETID.ITEM_SET_ID,
       V_TEST_SESSION_STATUS,
       (ABS(MOD(DBMS_RANDOM.RANDOM, 9999999))),
       TEST_ADMIN_TYPE,
       ENFORCE_TIME_LIMIT,
       ENFORCE_BREAK,
       VCONFIGDATA.TIME_ZONE,
       VTESTCATALOGID,
       PREFERRED_FORM,
       FORM_ASSIGNMENT_METHOD,
       VSHOWSTUDENTFEEDBACK,
       PROGRAMIDFORCUSTOMERNPRODUCT(VCUSTOMERID,
                                    VPRODUCTID,
                                    VCONFIGDATA.LOGIN_START_DATE),
       RECTCITEMSETID.RANDOM_DISTRACTOR_ALLOWABLE,
       SYSDATE);

    /*
    Insert the user recored associated with created test session
    */


    INSERT INTO TEST_ADMIN_USER_ROLE
      (TEST_ADMIN_ID, USER_ID, ROLE_ID, CREATED_BY, CREATED_DATE_TIME)
    VALUES
      (VTESTADMINID, VCREATEDBY, ACC_MANAGER_ROLE_ID, VCREATEDBY, SYSDATE);

  END INSERT_TEST_ADMIN;

  --------------------------------------------
  ----------- Procedure for         ----------
  --------------------------------------------
  PROCEDURE INSERT_TEST_ROSTER_RETEST(VPRODUCTID          INTEGER,
                                      VCUSTOMERID         INTEGER,
                                      VCREATEDBY          USERS.USER_ID%TYPE,
                                      VTESTADMINID        TEST_ADMIN.TEST_ADMIN_ID%TYPE,
                                      ORG_NODE_ID         ORG_NODE.ORG_NODE_ID%TYPE,
                                      V_STUDENT_LIST        IN OUT VARCHAR2,
                                      VCUSTOMERFLAGSTATUS CUSTOMER_CONFIGURATION.DEFAULT_VALUE%TYPE,
                                      V_TESTING_SUBJECT STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                      V_TEST_WINDOW     STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE) AS

    V_IS_CURSOR_RETURNS_VALUE BOOLEAN := FALSE;

  BEGIN

    OPEN CUR_STU_FOR_OPTIONAL_RETEST(ORG_NODE_ID, VPRODUCTID,V_TESTING_SUBJECT,V_TEST_WINDOW);
    LOOP
      FETCH CUR_STU_FOR_OPTIONAL_RETEST BULK COLLECT
        INTO V_ARRAY_OF_STUDENT LIMIT 500;

      EXIT WHEN(V_ARRAY_OF_STUDENT.COUNT = 0);

      FOR I IN 1 .. V_ARRAY_OF_STUDENT.COUNT LOOP

        --- ACTUAL CODE START HERE
        V_IS_CURSOR_RETURNS_VALUE := TRUE;

        IF ((V_STUDENT_LIST IS NOT NULL) AND (LENGTH(TRIM(V_STUDENT_LIST)) > 0)) THEN
          V_STUDENT_LIST := V_STUDENT_LIST || ',' || V_ARRAY_OF_STUDENT(I)
                         .STUDENT_ID;
        ELSE
          V_STUDENT_LIST := V_ARRAY_OF_STUDENT(I).STUDENT_ID;
        END IF;

        /*  DBMS_OUTPUT.put_line('Admin'||V_RESTRICTED_ADMIN);*/
        BEGIN
          INSERT INTO TEST_ROSTER
            (TEST_ROSTER_ID,
             TEST_ADMIN_ID,
             TEST_COMPLETION_STATUS,
             VALIDATION_STATUS,
             OVERRIDE_TEST_WINDOW,
             PASSWORD,
             STUDENT_ID,
             CREATED_BY,
             ACTIVATION_STATUS,
             CUSTOMER_ID,
             SCORING_STATUS,
             ORG_NODE_ID,
             FORM_ASSIGNMENT,
             CUSTOMER_FLAG_STATUS)
          VALUES
            (SEQ_TEST_ROSTER_ID.NEXTVAL,
             VTESTADMINID,
             TEST_COMPLETION_STATUS,
             VALIDATION_STATUS,
             OVERRIDE_TEST_WINDOW,
             GENERATEPASSWORD(V_GEN_STD_PASS_LENGTH, 0),
             V_ARRAY_OF_STUDENT(I).STUDENT_ID,
             VCREATEDBY,
             V_ACTIVATION_STATUS,
             VCUSTOMERID,
             SCORING_STATUS,
             V_ARRAY_OF_STUDENT(I).ORG_NODE_ID,
             V_FORM_ASSIGNMENT,
             VCUSTOMERFLAGSTATUS);

        EXCEPTION
          WHEN OTHERS THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_ERROR,
                        'Insert into table test_roster fails' ||
                        DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            RAISE;
        END;

      --- ACTUAL CODE END HERE

      END LOOP;
      EXIT WHEN CUR_STU_FOR_OPTIONAL_RETEST%NOTFOUND;
    END LOOP;

    CLOSE CUR_STU_FOR_OPTIONAL_RETEST;

    IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
      -- LOGGING ONLY, WHEN CURSOR "crsGetStuForAllGradeAtSchool" DOES NOT RETURNS ANY VALUE
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_WARN,
                  'No student found for school id [' || ORG_NODE_ID ||
                  '] FOR OPTIONAL RETEST');
      -- RAISE_APPLICATION_ERROR(-20000,'No student found for school id ['||recSchoolNode.org_node_id || '] with grade ['||recTCItemSetId.grade||'].');
    END IF;

  END INSERT_TEST_ROSTER_RETEST;
  

  PROCEDURE INSERT_TEST_ROSTER_WINTER(VPRODUCTID          INTEGER,
                                      VCUSTOMERID         INTEGER,
                                      VCREATEDBY          USERS.USER_ID%TYPE,
                                      VTESTADMINID        TEST_ADMIN.TEST_ADMIN_ID%TYPE,
                                      ORG_NODE_ID         ORG_NODE.ORG_NODE_ID%TYPE,
                                      V_STUDENT_LIST      IN OUT VARCHAR2,
                                      VCUSTOMERFLAGSTATUS CUSTOMER_CONFIGURATION.DEFAULT_VALUE%TYPE,
                                      V_TESTING_SUBJECT   STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                      V_TEST_WINDOW       STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                      V_TEST_NAME         TEST_CATALOG.TEST_NAME%TYPE) AS

    V_IS_CURSOR_RETURNS_VALUE BOOLEAN := FALSE;

  BEGIN

    OPEN CUR_STU_FOR_WINTER_TRIMESTER(ORG_NODE_ID, VPRODUCTID,V_TESTING_SUBJECT,V_TEST_WINDOW,V_TEST_NAME);
    LOOP
      FETCH CUR_STU_FOR_WINTER_TRIMESTER BULK COLLECT
        INTO V_ARRAY_OF_STUDENT LIMIT 500;

      EXIT WHEN(V_ARRAY_OF_STUDENT.COUNT = 0);

      FOR I IN 1 .. V_ARRAY_OF_STUDENT.COUNT LOOP

        --- ACTUAL CODE START HERE
        V_IS_CURSOR_RETURNS_VALUE := TRUE;

        IF ((V_STUDENT_LIST IS NOT NULL) AND (LENGTH(TRIM(V_STUDENT_LIST)) > 0)) THEN
          V_STUDENT_LIST := V_STUDENT_LIST || ',' || V_ARRAY_OF_STUDENT(I)
                         .STUDENT_ID;
        ELSE
          V_STUDENT_LIST := V_ARRAY_OF_STUDENT(I).STUDENT_ID;
        END IF;

        /*  DBMS_OUTPUT.put_line('Admin'||V_RESTRICTED_ADMIN);*/
        BEGIN
          INSERT INTO TEST_ROSTER
            (TEST_ROSTER_ID,
             TEST_ADMIN_ID,
             TEST_COMPLETION_STATUS,
             VALIDATION_STATUS,
             OVERRIDE_TEST_WINDOW,
             PASSWORD,
             STUDENT_ID,
             CREATED_BY,
             ACTIVATION_STATUS,
             CUSTOMER_ID,
             SCORING_STATUS,
             ORG_NODE_ID,
             FORM_ASSIGNMENT,
             CUSTOMER_FLAG_STATUS)
          VALUES
            (SEQ_TEST_ROSTER_ID.NEXTVAL,
             VTESTADMINID,
             TEST_COMPLETION_STATUS,
             VALIDATION_STATUS,
             OVERRIDE_TEST_WINDOW,
             GENERATEPASSWORD(V_GEN_STD_PASS_LENGTH, 0),
             V_ARRAY_OF_STUDENT(I).STUDENT_ID,
             VCREATEDBY,
             V_ACTIVATION_STATUS,
             VCUSTOMERID,
             SCORING_STATUS,
             V_ARRAY_OF_STUDENT(I).ORG_NODE_ID,
             V_FORM_ASSIGNMENT,
             VCUSTOMERFLAGSTATUS);

        EXCEPTION
          WHEN OTHERS THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_ERROR,
                        'Insert into table test_roster fails' ||
                        DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            RAISE;
        END;

      --- ACTUAL CODE END HERE

      END LOOP;
      EXIT WHEN CUR_STU_FOR_WINTER_TRIMESTER%NOTFOUND;
    END LOOP;

    CLOSE CUR_STU_FOR_WINTER_TRIMESTER;

    IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
      -- LOGGING ONLY, WHEN CURSOR "crsGetStuForAllGradeAtSchool" DOES NOT RETURNS ANY VALUE
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_WARN,
                  'No student found for school id [' || ORG_NODE_ID ||
                  '] FOR WINTER/TRIMESTER');
      -- RAISE_APPLICATION_ERROR(-20000,'No student found for school id ['||recSchoolNode.org_node_id || '] with grade ['||recTCItemSetId.grade||'].');
    END IF;

  END INSERT_TEST_ROSTER_WINTER;

  /** Added for User Story : Place not tested into next session **/  
  PROCEDURE INSERT_TEST_ROSTER_NOT_TESTED(VPRODUCTID          INTEGER,
                                          VCUSTOMERID         INTEGER,
                                          VCREATEDBY          USERS.USER_ID%TYPE,
                                          VTESTADMINID        TEST_ADMIN.TEST_ADMIN_ID%TYPE,
                                          ORG_NODE_ID         ORG_NODE.ORG_NODE_ID%TYPE,
                                          V_STUDENT_LIST      IN OUT VARCHAR2,
                                          VCUSTOMERFLAGSTATUS CUSTOMER_CONFIGURATION.DEFAULT_VALUE%TYPE,
                                          V_TESTING_SUBJECT   STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                          V_TEST_WINDOW       STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE,
                                          V_TEST_NAME         TEST_CATALOG.TEST_NAME%TYPE) AS

    V_IS_CURSOR_RETURNS_VALUE BOOLEAN := FALSE;

  BEGIN

    OPEN CUR_NOT_TESTED_STUDENTS(ORG_NODE_ID, VPRODUCTID,V_TESTING_SUBJECT,V_TEST_WINDOW,V_TEST_NAME);
    LOOP
      FETCH CUR_NOT_TESTED_STUDENTS BULK COLLECT
        INTO V_ARRAY_OF_STUDENT LIMIT 500;

      EXIT WHEN(V_ARRAY_OF_STUDENT.COUNT = 0);

      FOR I IN 1 .. V_ARRAY_OF_STUDENT.COUNT LOOP

        --- ACTUAL CODE START HERE
        V_IS_CURSOR_RETURNS_VALUE := TRUE;

        IF ((V_STUDENT_LIST IS NOT NULL) AND (LENGTH(TRIM(V_STUDENT_LIST)) > 0)) THEN
          V_STUDENT_LIST := V_STUDENT_LIST || ',' || V_ARRAY_OF_STUDENT(I)
                         .STUDENT_ID;
        ELSE
          V_STUDENT_LIST := V_ARRAY_OF_STUDENT(I).STUDENT_ID;
        END IF;

        /*  DBMS_OUTPUT.put_line('Admin'||V_RESTRICTED_ADMIN);*/
        BEGIN
          INSERT INTO TEST_ROSTER
            (TEST_ROSTER_ID,
             TEST_ADMIN_ID,
             TEST_COMPLETION_STATUS,
             VALIDATION_STATUS,
             OVERRIDE_TEST_WINDOW,
             PASSWORD,
             STUDENT_ID,
             CREATED_BY,
             ACTIVATION_STATUS,
             CUSTOMER_ID,
             SCORING_STATUS,
             ORG_NODE_ID,
             FORM_ASSIGNMENT,
             CUSTOMER_FLAG_STATUS)
          VALUES
            (SEQ_TEST_ROSTER_ID.NEXTVAL,
             VTESTADMINID,
             TEST_COMPLETION_STATUS,
             VALIDATION_STATUS,
             OVERRIDE_TEST_WINDOW,
             GENERATEPASSWORD(V_GEN_STD_PASS_LENGTH, 0),
             V_ARRAY_OF_STUDENT(I).STUDENT_ID,
             VCREATEDBY,
             V_ACTIVATION_STATUS,
             VCUSTOMERID,
             SCORING_STATUS,
             V_ARRAY_OF_STUDENT(I).ORG_NODE_ID,
             V_FORM_ASSIGNMENT,
             VCUSTOMERFLAGSTATUS);

        EXCEPTION
          WHEN OTHERS THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_ERROR,
                        'Insert into table test_roster fails' ||
                        DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
            RAISE;
        END;

      --- ACTUAL CODE END HERE

      END LOOP;
      EXIT WHEN CUR_NOT_TESTED_STUDENTS%NOTFOUND;
    END LOOP;

    CLOSE CUR_NOT_TESTED_STUDENTS;

    IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
      -- LOGGING ONLY, WHEN CURSOR "crsGetStuForAllGradeAtSchool" DOES NOT RETURNS ANY VALUE
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_WARN,
                  'No student found for school id [' || ORG_NODE_ID ||
                  '] FOR WINTER/TRIMESTER');
      -- RAISE_APPLICATION_ERROR(-20000,'No student found for school id ['||recSchoolNode.org_node_id || '] with grade ['||recTCItemSetId.grade||'].');
    END IF;

  END INSERT_TEST_ROSTER_NOT_TESTED;


  --------------------------------------------
  ----------- Procedure for         ----------
  --------------------------------------------

  PROCEDURE INSERT_SCHEDULABLE_UNITS(VCUSTOMERID    INTEGER,
                                     RECTCITEMSETID CUR_GET_TCTEST_FOR_PRODUCT%ROWTYPE,
                                     NODE_NAME      ORG_NODE.ORG_NODE_NAME%TYPE,
                                     VTESTADMINID   TEST_ADMIN.TEST_ADMIN_ID%TYPE,
                                     PACCESSCODE    TEST_ADMIN_ITEM_SET.ACCESS_CODE%TYPE,
                                     V_STUDENT_LIST   VARCHAR2) AS
    V_IS_CURSOR_RETURNS_VALUE BOOLEAN := FALSE;
    VITEMSETORDER             INTEGER := 0;
    VACCESSCODE               TEST_ADMIN_ITEM_SET.ACCESS_CODE%TYPE := PACCESSCODE;
    VTDITEMSETORDER           TEST_ADMIN_ITEM_SET.ITEM_SET_ORDER%TYPE := 0;
  BEGIN

    FOR RECTSITEMSETID IN CRSGETSCHEDULABLEUNITSFORTEST(RECTCITEMSETID.ITEM_SET_ID) LOOP

      V_IS_CURSOR_RETURNS_VALUE := TRUE;

      INSERT INTO TEST_ADMIN_ITEM_SET
        (ITEM_SET_ID, TEST_ADMIN_ID, ITEM_SET_ORDER, ACCESS_CODE)
      VALUES
        (RECTSITEMSETID.ITEM_SET_ID,
         VTESTADMINID,
         VITEMSETORDER,
         VACCESSCODE);

      --VITEMSETORDER := VITEMSETORDER + 1;
      VACCESSCODE   := GENERATEPASSWORD(V_GENERATED_ACCESS_CODE_LENGTH, 1);

      IF ((V_STUDENT_LIST IS NOT NULL) AND (LENGTH(TRIM(V_STUDENT_LIST)) > 0)) THEN
        --VTDITEMSETORDER := 0;
        VTDITEMSETORDER := VITEMSETORDER;
        ---------- FOR LOOP 1.1.2.1  ------

        V_IS_CURSOR_RETURNS_VALUE := FALSE;
        FOR RECTDITEMSETID IN CRSGETTDTESTELEMENTLIST(RECTSITEMSETID.ITEM_SET_ID,
                                                      V_FORM_ASSIGNMENT) LOOP
          V_IS_CURSOR_RETURNS_VALUE := TRUE;
          EXECUTE IMMEDIATE 'insert into student_item_set_status
              (test_roster_id,
               item_set_id,
               completion_status,
               validation_status,
               time_expired,
               item_set_order,
               customer_flag_status)
              (select distinct test_roster_id,' ||
                            RECTDITEMSETID.ITEM_SET_ID || ',' || '''' ||
                            TEST_COMPLETION_STATUS || '''' || ',' || '''' ||
                            VALIDATION_STATUS || '''' || ',' || '''' ||
                            TEST_TIME_EXPIRED || '''' || ',' ||
                            VTDITEMSETORDER || ',
                               max(default_value) as default_value
                 from (select distinct test_roster_id, cc.default_value
                         from test_roster, customer_configuration cc
                        where cc.customer_id = ' ||
                            VCUSTOMERID || '
                          and cc.customer_configuration_name = ' || '''' ||
                            VROSTER_STATUS_FLAG || '''' ||
                            ' and test_admin_id = ' || VTESTADMINID || '
                          and student_id in (' ||
                            V_STUDENT_LIST || ' )
                       union
                       select distinct test_roster_id, null as default_value
                         from test_roster
                        where test_admin_id = ' ||
                            VTESTADMINID || '
                          and student_id in (' ||
                            V_STUDENT_LIST || '))
                group by test_roster_id)';

          LOG_MESSAGE(V_LOG_ID,
                      V_STATUS_SUCCESS,
                      'For Grade:' || RECTCITEMSETID.GRADE ||
                      ', For School : ' || NODE_NAME /*RECSCHOOLNODE.ORG_NODE_NAME*/
                      || ', Test Assignment is Successful for  This test :' ||
                      RECTCITEMSETID.ITEM_SET_DISPLAY_NAME ||
                      ', no Of Students are Scheduled :' ||
                      (LENGTH(V_STUDENT_LIST) -
                      LENGTH(REPLACE(V_STUDENT_LIST, ',')) + 1));

          VTDITEMSETORDER := VTDITEMSETORDER + 1;
        END LOOP;

        IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
          -- LOGGING ONLY, WHEN CURSOR "crsGetTDTestElementList" DOES NOT RETURNS ANY VALUE
          LOG_MESSAGE(V_LOG_ID,
                      V_STATUS_WARN,
                      'No valid Item found for itemset id [' ||
                      RECTSITEMSETID.ITEM_SET_ID || '] with type TD.');
          V_IS_CURSOR_RETURNS_VALUE := TRUE; -- SETTING TRUE AS PREVIOUS LOOP IS EXECUTING
        END IF;

      ELSE
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_WARN,
                    'No Test Assignment is Successful for  This test :' ||
                    RECTCITEMSETID.ITEM_SET_DISPLAY_NAME ||
                    ', Reason no  Students are there in the school or Already the students are scheduled ');
      END IF;
      VITEMSETORDER := VITEMSETORDER + 1;
    END LOOP;

    IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
      -- LOGGING ONLY, WHEN CURSOR "crsGetSchedulableUnitsForTest" DOES NOT RETURNS ANY VALUE
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_WARN,
                  'No valid Item found for itemset id [' ||
                  RECTCITEMSETID.ITEM_SET_ID || '] with type TS.');
      -- IF YOU DO NOT WISH THROW ERROR THEN SET TO  TRUE "V_IS_CURSOR_RETURNS_VALUE" AS PREVIOUS LOOP IS EXECUTING
      RAISE_APPLICATION_ERROR(-20000,
                              'No valid Item found for itemset id [' ||
                              RECTCITEMSETID.ITEM_SET_ID ||
                              '] with type TS.');
    END IF;

  END INSERT_SCHEDULABLE_UNITS;
  

 
  /*****************************************/
  /* Entry Point : Pre-scheduling Process */
  /****************************************/
  PROCEDURE SCHEDULE_SESSIONS_FOR_OK(INPUT_CUSTOMER_ID     INTEGER,
                                     INPUT_TESTING_WINDOW  VARCHAR2) IS
  
    V_TEST_ADMIN_ID              TEST_ADMIN.TEST_ADMIN_ID%TYPE := NULL;
    V_TEST_ACCESS_CODE           TEST_ADMIN.ACCESS_CODE%TYPE := NULL;
    V_CREATEDBY                  USERS.USER_ID%TYPE := DEFAULT_CREATED_BY;
    V_PRODUCTNAME                PRODUCT.PRODUCT_NAME%TYPE := NULL;
    V_PRODUCT_ID                 PRODUCT.PRODUCT_ID%TYPE;
    V_SHOW_STUDENT_FEEDBACK      PRODUCT.SHOW_STUDENT_FEEDBACK%TYPE := NULL;
    V_CONFIG_DATA                TEST_SCHEDULE_CONFIG%ROWTYPE;
    V_TEST_CATALOG_ID            TEST_CATALOG.TEST_CATALOG_ID%TYPE := NULL;
    V_TEST_NAME                  TEST_CATALOG.TEST_NAME%TYPE := NULL;
    V_CUSTOMER_FLAG_STATUS       CUSTOMER_CONFIGURATION.DEFAULT_VALUE%TYPE;
    V_DIFF_START_DATE            NUMBER(8);
    V_DIFF_END_DATE              NUMBER(8);
    V_DIFF_STSRT_END_DATE        NUMBER(8);
    V_STUDENT_LIST               VARCHAR2(32767) := '';
    V_REC_COUNT                  NUMBER(10) := 0;
    V_IS_CURSOR_RETURNS_VALUE    BOOLEAN := FALSE;
    V_CORPORATE_CODE             ORG_NODE.ORG_NODE_CODE%TYPE := NULL;
    V_ITEM_SET_ID                ITEM_SET.ITEM_SET_ID%TYPE := '';
    V_ROLE_ID                    USER_ROLE.ROLE_ID%TYPE;
    V_SUBJECT_NAME               VARCHAR2(50);
    V_TESTING_SUBJECT            STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE;
    V_TEST_WINDOW                STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE;
    V_CHAR_LENGTH                NUMBER;
    V_PATTERN_STR                VARCHAR2(10) := 'II';
  
    /* Retrieve all school level org_node_ids for Okhlahoma customer */
    CURSOR CUR_FETCH_ALL_SCHOOL_NODES(V_CUSTOMERID INTEGER) IS
      SELECT NODE.ORG_NODE_ID,
             NODE.ORG_NODE_NAME,
             ONC.CATEGORY_NAME,
             NODE.ORG_NODE_CODE
        FROM ORG_NODE NODE, ORG_NODE_CATEGORY ONC
       WHERE ONC.ORG_NODE_CATEGORY_ID = NODE.ORG_NODE_CATEGORY_ID
         AND ONC.CATEGORY_LEVEL = SCHOOL_CATEGORY_LEVEL
         AND NODE.CUSTOMER_ID = V_CUSTOMERID
         AND EXISTS
       (SELECT *
                FROM ORG_NODE_PARENT
               WHERE PARENT_ORG_NODE_ID = NODE.ORG_NODE_ID);
  
    /* Retrieves admin user for a particular school node */
    CURSOR CUR_GET_ADMIN_USER(V_SCHOOL_NODE_ID ORG_NODE.ORG_NODE_ID%TYPE) IS
      SELECT USERS.USER_ID, UROLE.ROLE_ID
        FROM USERS, USER_ROLE UROLE, ROLE R
       WHERE UROLE.USER_ID = USERS.USER_ID
         AND UROLE.ACTIVATION_STATUS = V_ACTIVATION_STATUS
         AND UROLE.ROLE_ID = R.ROLE_ID
         AND R.ROLE_NAME IN ('ADMINISTRATOR', 'ADMINISTRATIVE COORDINATOR')
         AND UROLE.ORG_NODE_ID = V_SCHOOL_NODE_ID
         AND USERS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       ORDER BY UROLE.ROLE_ID;
  
    /* Retrieves coordinator user for a particular school node */
    CURSOR CUR_GET_COORDINATOR_USER(V_SCHOOL_NODE_ID ORG_NODE.ORG_NODE_ID%TYPE) IS
      SELECT USERS.USER_ID, UROLE.ROLE_ID
        FROM USERS, USER_ROLE UROLE, ROLE R
       WHERE UROLE.USER_ID = USERS.USER_ID
         AND UROLE.ACTIVATION_STATUS = V_ACTIVATION_STATUS
         AND UROLE.ROLE_ID = R.ROLE_ID
         AND R.ROLE_NAME = ('COORDINATOR')
         AND UROLE.ORG_NODE_ID = V_SCHOOL_NODE_ID
         AND USERS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       ORDER BY UROLE.ROLE_ID;
       
    /* Retrieve all department nodes for a particular school node*/
    CURSOR CUR_GET_DEPARTMENT_NODES(V_SCHOOL_NODE_ID ORG_NODE.ORG_NODE_ID%TYPE) IS
      SELECT ORG.*
        FROM ORG_NODE ORG, ORG_NODE_PARENT ONP
       WHERE ORG.ORG_NODE_ID = ONP.ORG_NODE_ID
         AND ONP.PARENT_ORG_NODE_ID = V_SCHOOL_NODE_ID
         AND EXISTS
       (SELECT *
                FROM ORG_NODE_PARENT
               WHERE PARENT_ORG_NODE_ID = ORG.ORG_NODE_ID);
           
  
  BEGIN
  
    --DBMS_OUTPUT.PUT_LINE('TODO:: Initial Logging');
    /* Initial Logging :: */
    LOG_MESSAGE(V_LOG_ID,
                V_STATUS_START,
                'Procedure started with Testing Window [' || INPUT_TESTING_WINDOW ||
                '] and Customer Id [' || INPUT_CUSTOMER_ID || '].');
    
    INITIALIZE_SUBJECT_ARRAY; -- Initialize the global array for subject_codes
              
    /* Setting product_id & test_window based on the input testing window */
    IF INPUT_TESTING_WINDOW = 'Retest' THEN
         V_PRODUCT_ID := OPTIONAL_RETEST_PRODUCT_ID;
         V_TEST_WINDOW := OPTIONAL_RETEST_TEST_WINDOW;
    ELSIF INPUT_TESTING_WINDOW = 'Operational' THEN
         V_PRODUCT_ID := WINTER_TRIMESTER_PRODUCT_ID;
         V_TEST_WINDOW := WINTER_TRIMESTER_TEST_WINDOW;
    END IF;                 
    
    /* Basic Validations :: Start */  
    
    --- (1) Validation of customer_id
    BEGIN
      SELECT 1
        INTO V_REC_COUNT
        FROM CUSTOMER
       WHERE CUSTOMER.CUSTOMER_ID = INPUT_CUSTOMER_ID;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Customer id [' || INPUT_CUSTOMER_ID ||
                    '] is not valid. Give Existing Id.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Customer id [' || INPUT_CUSTOMER_ID ||
                                '] is not valid. Give Existing Id.');
    END;
    
    --- (2) Validation of product_id
    BEGIN      
      SELECT PRO.PRODUCT_NAME, PRO.SHOW_STUDENT_FEEDBACK
        INTO V_PRODUCTNAME, V_SHOW_STUDENT_FEEDBACK
        FROM PRODUCT PRO
       WHERE PRO.PRODUCT_ID = V_PRODUCT_ID;

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Product id [' || V_PRODUCT_ID ||
                    '] is not valid for the input Testing Window.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Product id [' || V_PRODUCT_ID ||
                                '] is not valid for the input Testing Window.');
    END;
    
    --- (3) Validation of config data :: 
    BEGIN
      SELECT *
        INTO V_CONFIG_DATA
        FROM TEST_SCHEDULE_CONFIG TSC
       WHERE CUSTOMER_ID = INPUT_CUSTOMER_ID;
      V_DIFF_START_DATE     := (TO_DATE(TO_CHAR(V_CONFIG_DATA.LOGIN_START_DATE,
                                                'YYYY-MM-DD'),
                                        'YYYY-MM-DD') -
                               TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD'),
                                        'YYYY-MM-DD'));
      V_DIFF_END_DATE       := (TO_DATE(TO_CHAR(V_CONFIG_DATA.LOGIN_END_DATE,
                                                'YYYY-MM-DD'),
                                        'YYYY-MM-DD') -
                               TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD'),
                                        'YYYY-MM-DD'));
      V_DIFF_STSRT_END_DATE := (V_CONFIG_DATA.LOGIN_END_DATE -
                               V_CONFIG_DATA.LOGIN_START_DATE);

      IF (V_DIFF_START_DATE IS NULL OR V_DIFF_END_DATE IS NULL) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule start date or end date can not be null.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule start date or end date can not be null.');
      ELSIF (V_DIFF_START_DATE < 0) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule start date can not be earlier than now.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule start date can not be earlier than now.');
      ELSIF (V_DIFF_END_DATE < 0) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule end date can not be earlier than now.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule end date can not be earlier than now.');
      ELSIF (V_DIFF_STSRT_END_DATE < 0) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule  end date can not be earlier than Schedule start date.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule  end date can not be earlier than Schedule start date.');
      ELSIF (V_DIFF_STSRT_END_DATE = 0) THEN
        IF ((TO_DATE(TO_CHAR(V_CONFIG_DATA.DAILY_LOGIN_END_TIME, 'HH24:MI'),
                     'HH24:MI')) -
           (TO_DATE(TO_CHAR(V_CONFIG_DATA.DAILY_LOGIN_START_TIME, 'HH24:MI'),
                     'HH24:MI')) <= 0) THEN

          LOG_MESSAGE(V_LOG_ID,
                      V_STATUS_ERROR,
                      'Schedule  end time can not be earlier than Schedule start time.');
          RAISE_APPLICATION_ERROR(-20000,
                                  'Schedule  end time can not be earlier than Schedule start time.');
        END IF;

      END IF;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'No record exist in configuration table for customer id [' ||
                    INPUT_CUSTOMER_ID || '] ');
        RAISE_APPLICATION_ERROR(-20000,
                                'No record exist in configuration table for customer id [' ||
                                INPUT_CUSTOMER_ID || '] ');
      WHEN TOO_MANY_ROWS THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'More than one record exists in configuration table for customer id [' ||
                    INPUT_CUSTOMER_ID || '] ');
        RAISE_APPLICATION_ERROR(-20000,
                                'More than one record exists in configuration table for customer id [' ||
                                INPUT_CUSTOMER_ID || '] ');
    END;

    --- (4) Validation for customer configuration 'Roster_Status_Flag'
    BEGIN
      SELECT CC.DEFAULT_VALUE
        INTO V_CUSTOMER_FLAG_STATUS
        FROM CUSTOMER_CONFIGURATION CC
       WHERE CC.CUSTOMER_ID = INPUT_CUSTOMER_ID
         AND CC.CUSTOMER_CONFIGURATION_NAME = 'Roster_Status_Flag';

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_WARN,
                    'CustomerFlagStatus not found for customer[' ||
                    INPUT_CUSTOMER_ID ||
                    '] with configuration name- Roster_Status_Flag  ');

      WHEN TOO_MANY_ROWS THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Too many CustomerFlagStatus found for customer [' ||
                    INPUT_CUSTOMER_ID ||
                    '] with configuration name- Roster_Status_Flag .');
        RAISE_APPLICATION_ERROR(-20000,
                                'Too many CustomerFlagStatus found for customer [' ||
                                INPUT_CUSTOMER_ID ||
                                '] with configuration name- Roster_Status_Flag .');
      WHEN OTHERS THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Exception occurred while retrieving CustomerFlagStatus of customer [' ||
                    INPUT_CUSTOMER_ID || '].');

        RAISE;
    END;
        
    /* Basic Validations :: End */   
    
    /* Pre-scheduling Process :: Start*/
    V_IS_CURSOR_RETURNS_VALUE := FALSE;
    
    --- 1.0 :: Loop for all school level org_node_ids 
    FOR REC_SCHOOL_NODE IN CUR_FETCH_ALL_SCHOOL_NODES(INPUT_CUSTOMER_ID) LOOP
        V_IS_CURSOR_RETURNS_VALUE := TRUE;
        V_CREATEDBY               := NULL;
        
        /* Checking for admin user or coordinator for the school node */
        IF REC_SCHOOL_NODE.ORG_NODE_ID IS NOT NULL THEN
        BEGIN

          OPEN CUR_GET_ADMIN_USER(REC_SCHOOL_NODE.ORG_NODE_ID);

          FETCH CUR_GET_ADMIN_USER
            INTO V_CREATEDBY, V_ROLE_ID;

          IF CUR_GET_ADMIN_USER%NOTFOUND THEN

            OPEN CUR_GET_COORDINATOR_USER(REC_SCHOOL_NODE.ORG_NODE_ID);
            FETCH CUR_GET_COORDINATOR_USER
              INTO V_CREATEDBY, V_ROLE_ID;

            IF CUR_GET_COORDINATOR_USER%NOTFOUND THEN

              RAISE NO_DATA_FOUND;

            END IF;

            CLOSE CUR_GET_COORDINATOR_USER;
          END IF;

          CLOSE CUR_GET_ADMIN_USER;

        EXCEPTION
          -- OTHER THAN NO_DATA_FOUND EXCEPTION IS THROWN
          WHEN NO_DATA_FOUND THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_WARN,
                        'No Administrator is found for school node id [' ||
                        REC_SCHOOL_NODE.ORG_NODE_ID || '].');
                        
            IF CUR_GET_COORDINATOR_USER%ISOPEN THEN
              CLOSE CUR_GET_COORDINATOR_USER;
            END IF;

            IF CUR_GET_ADMIN_USER%ISOPEN THEN
              CLOSE CUR_GET_ADMIN_USER;
            END IF;

          WHEN OTHERS THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_ERROR,
                        'Exception occurred while retrieving Administrator information for school node id [' ||
                        REC_SCHOOL_NODE.ORG_NODE_ID || '].');

            IF CUR_GET_COORDINATOR_USER%ISOPEN THEN
              CLOSE CUR_GET_COORDINATOR_USER;
            END IF;

            IF CUR_GET_ADMIN_USER%ISOPEN THEN
              CLOSE CUR_GET_ADMIN_USER;
            END IF;

            RAISE;
        END;
      END IF;
      
      IF V_CREATEDBY IS NOT NULL THEN
         --DBMS_OUTPUT.PUT_LINE('TODO:: Pre-scheduling');
/*         DBMS_OUTPUT.PUT_LINE('REC_SCHOOL_NODE NAME........' || 
                                               REC_SCHOOL_NODE.ORG_NODE_NAME || 
                                               '     SCHOOL ORG_NODE_ID' || REC_SCHOOL_NODE.ORG_NODE_ID);
                                               */
         --- 1.1 :: Loop for all Department level org_node_ids
         FOR REC_DEPTT_NODE IN CUR_GET_DEPARTMENT_NODES(REC_SCHOOL_NODE.ORG_NODE_ID) LOOP
             --DBMS_OUTPUT.PUT_LINE('In Loop 1.1.... ');
             ---1.1.1 :: Loop for all 'TC' level
             V_IS_CURSOR_RETURNS_VALUE := FALSE;

             FOR REC_TC_ITEMSETID IN CUR_GET_TCTEST_FOR_PRODUCT(V_PRODUCT_ID, V_CREATEDBY) LOOP
                 V_IS_CURSOR_RETURNS_VALUE := TRUE;
                 
                 /* Getting test_catalog details */
                 BEGIN
                    SELECT DISTINCT CAT.TEST_CATALOG_ID, CAT.TEST_NAME
                      INTO V_TEST_CATALOG_ID, V_TEST_NAME
                      FROM TEST_CATALOG CAT
                     WHERE ACTIVATION_STATUS = V_ACTIVATION_STATUS
                       AND ITEM_SET_ID = REC_TC_ITEMSETID.ITEM_SET_ID;
                 EXCEPTION
                    WHEN NO_DATA_FOUND THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Catalog does not exists with item set id [' ||
                                  REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                      RAISE_APPLICATION_ERROR(-20000,
                                              'Catalog does not exists with item set id [' ||
                                              REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                    WHEN TOO_MANY_ROWS THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Too many catalog associated with item set id [' ||
                                  REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                      RAISE_APPLICATION_ERROR(-20000,
                                              'Too many catalog associated with item set id [' ||
                                              REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                    WHEN OTHERS THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Exception occurred while retrieving catalog id [' ||
                                  REC_TC_ITEMSETID.ITEM_SET_ID || '].');

                    RAISE;
                 END;
                 --DBMS_OUTPUT.PUT_LINE(REC_DEPTT_NODE.ORG_NODE_CODE);
                 BEGIN
                 V_SUBJECT_NAME := V_SUBJECT_ARR(REC_DEPTT_NODE.ORG_NODE_CODE);
                 EXCEPTION
                 WHEN NO_DATA_FOUND THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Not a valid subject code [' ||
                                  REC_DEPTT_NODE.ORG_NODE_CODE || '].');
                      V_SUBJECT_NAME := '-1';            
                 END;
                 IF V_SUBJECT_NAME IS NULL THEN
                    V_SUBJECT_NAME := '-1';
                 END IF;
                /* DBMS_OUTPUT.PUT_LINE(V_SUBJECT_NAME);*/
                
                 V_CHAR_LENGTH := LENGTH(V_TEST_NAME) - LENGTH(REPLACE(V_TEST_NAME,'I'));
                 IF V_CHAR_LENGTH = 3 THEN 
                    V_PATTERN_STR := 'III';
                 ELSE
                    V_PATTERN_STR := 'II';    
                 END IF;
                                  
                 /* Department code value i.e subject name matched with test :: will schedule session for students of this deptt. */
                
                 IF INSTR(V_TEST_NAME, V_SUBJECT_NAME) != 0 THEN
                    IF NOT((INSTR(V_TEST_NAME,V_PATTERN_STR) != 0) AND (INSTR(V_SUBJECT_NAME,V_PATTERN_STR) = 0)) THEN
                    /*DBMS_OUTPUT.PUT_LINE(V_TEST_NAME);*/
                      BEGIN                    
                        SELECT CDV.VALUE_NAME
                          INTO V_TESTING_SUBJECT
                          FROM CUSTOMER_DEMOGRAPHIC       CD,
                               CUSTOMER_DEMOGRAPHIC_VALUE CDV
                         WHERE CD.CUSTOMER_DEMOGRAPHIC_ID =
                               CDV.CUSTOMER_DEMOGRAPHIC_ID
                           AND CDV.VALUE_CODE = REC_DEPTT_NODE.ORG_NODE_CODE
                           AND CD.CUSTOMER_ID = INPUT_CUSTOMER_ID;
                      EXCEPTION
                         WHEN NO_DATA_FOUND THEN
                              LOG_MESSAGE(V_LOG_ID,
                                          V_STATUS_ERROR,
                                          'No record found in customer_demographic_value for the code [' ||
                                          REC_DEPTT_NODE.ORG_NODE_CODE || '].');
                              V_TESTING_SUBJECT := '';            
                      END;                 
                                         
                     /* SELECT CDV.VALUE_NAME
                        INTO V_TEST_WINDOW
                        FROM CUSTOMER_DEMOGRAPHIC       CD,
                             CUSTOMER_DEMOGRAPHIC_VALUE CDV
                       WHERE CD.CUSTOMER_DEMOGRAPHIC_ID =
                             CDV.CUSTOMER_DEMOGRAPHIC_ID
                         AND CDV.VALUE_CODE = INPUT_TESTING_WINDOW
                         AND CD.CUSTOMER_ID = INPUT_CUSTOMER_ID;*/
                    
                      IF V_PRODUCT_ID = OPTIONAL_RETEST_PRODUCT_ID THEN
                        --DBMS_OUTPUT.PUT_LINE('Schedule students for Optional Retest...' || V_PRODUCT_ID);
                        PREFERRED_FORM := 'Retest';
                        V_FORM_ASSIGNMENT := 'Retest';
                        
/*                        DBMS_OUTPUT.PUT_LINE(REC_DEPTT_NODE.ORG_NODE_ID||','||
                                                         V_PRODUCT_ID||','||
                                                         V_TESTING_SUBJECT||','||
                                                         V_TEST_WINDOW);*/
                        OPEN CUR_STU_FOR_OPTIONAL_RETEST(REC_DEPTT_NODE.ORG_NODE_ID,
                                                         V_PRODUCT_ID,
                                                         V_TESTING_SUBJECT,
                                                         V_TEST_WINDOW);
                        FETCH CUR_STU_FOR_OPTIONAL_RETEST INTO V_STUDENT;
                        
                        IF (CUR_STU_FOR_OPTIONAL_RETEST%FOUND) THEN
      
                          CLOSE CUR_STU_FOR_OPTIONAL_RETEST;
      
                          V_TEST_ACCESS_CODE := GENERATEPASSWORD(V_GENERATED_ACCESS_CODE_LENGTH,
                                                                  1);
      
                          SELECT SEQ_TEST_ADMIN_ID.NEXTVAL
                            INTO V_TEST_ADMIN_ID
                            FROM DUAL;   
    
  
                          INSERT_TEST_ADMIN(V_PRODUCT_ID,
                                            INPUT_CUSTOMER_ID,
                                            REC_TC_ITEMSETID,
                                            V_CONFIG_DATA,
                                            V_SHOW_STUDENT_FEEDBACK,
                                            V_TEST_CATALOG_ID,
                                            V_CREATEDBY,
                                            V_TEST_ACCESS_CODE,
                                            REC_SCHOOL_NODE.ORG_NODE_ID,
                                            V_TEST_ADMIN_ID);
    
                          V_REC_COUNT := 0;
                          INSERT_TEST_ROSTER_RETEST(V_PRODUCT_ID,
                                                   INPUT_CUSTOMER_ID,
                                                   V_CREATEDBY,
                                                   V_TEST_ADMIN_ID,
                                                   REC_DEPTT_NODE.ORG_NODE_ID,
                                                   V_STUDENT_LIST,
                                                   V_CUSTOMER_FLAG_STATUS,
                                                   V_TESTING_SUBJECT,
                                                   V_TEST_WINDOW);
    
                          INSERT_SCHEDULABLE_UNITS(INPUT_CUSTOMER_ID,
                                                   REC_TC_ITEMSETID,
                                                   REC_SCHOOL_NODE.ORG_NODE_NAME,
                                                   V_TEST_ADMIN_ID,
                                                   V_TEST_ACCESS_CODE,
                                                   V_STUDENT_LIST);
  
                          V_STUDENT_LIST := '';
      
                        ELSE
                          CLOSE CUR_STU_FOR_OPTIONAL_RETEST;
                        END IF;
                      
                      ELSIF V_PRODUCT_ID = WINTER_TRIMESTER_PRODUCT_ID THEN
                          --DBMS_OUTPUT.PUT_LINE('Schedule students for Winter/Trimester...');
                          PREFERRED_FORM := '1';
                          V_FORM_ASSIGNMENT := '1';
                         
                          OPEN CUR_STU_FOR_WINTER_TRIMESTER(REC_DEPTT_NODE.ORG_NODE_ID,
                                                            V_PRODUCT_ID,
                                                            V_TESTING_SUBJECT,
                                                            V_TEST_WINDOW,
                                                            V_TEST_NAME);
                          FETCH CUR_STU_FOR_WINTER_TRIMESTER INTO V_STUDENT;
                        
                          IF (CUR_STU_FOR_WINTER_TRIMESTER%FOUND) THEN
        
                            CLOSE CUR_STU_FOR_WINTER_TRIMESTER;
        
                            V_TEST_ACCESS_CODE := GENERATEPASSWORD(V_GENERATED_ACCESS_CODE_LENGTH,
                                                                    1);
        
                            SELECT SEQ_TEST_ADMIN_ID.NEXTVAL
                              INTO V_TEST_ADMIN_ID
                              FROM DUAL;   
      
    
                            INSERT_TEST_ADMIN(V_PRODUCT_ID,
                                              INPUT_CUSTOMER_ID,
                                              REC_TC_ITEMSETID,
                                              V_CONFIG_DATA,
                                              V_SHOW_STUDENT_FEEDBACK,
                                              V_TEST_CATALOG_ID,
                                              V_CREATEDBY,
                                              V_TEST_ACCESS_CODE,
                                              REC_SCHOOL_NODE.ORG_NODE_ID,
                                              V_TEST_ADMIN_ID);
      
                            V_REC_COUNT := 0;
                            INSERT_TEST_ROSTER_WINTER(V_PRODUCT_ID,
                                                     INPUT_CUSTOMER_ID,
                                                     V_CREATEDBY,
                                                     V_TEST_ADMIN_ID,
                                                     REC_DEPTT_NODE.ORG_NODE_ID,
                                                     V_STUDENT_LIST,
                                                     V_CUSTOMER_FLAG_STATUS,
                                                     V_TESTING_SUBJECT,
                                                     V_TEST_WINDOW,
                                                     V_TEST_NAME);
      
                            INSERT_SCHEDULABLE_UNITS(INPUT_CUSTOMER_ID,
                                                     REC_TC_ITEMSETID,
                                                     REC_SCHOOL_NODE.ORG_NODE_NAME,
                                                     V_TEST_ADMIN_ID,
                                                     V_TEST_ACCESS_CODE,
                                                     V_STUDENT_LIST);
    
                            V_STUDENT_LIST := '';
        
                          ELSE
                            CLOSE CUR_STU_FOR_WINTER_TRIMESTER;
                          END IF;
                         
                        END IF;
                   ELSE
                       V_TEST_NAME := NULL; 
                   END IF; 
                 END IF;
                  
             END LOOP;
             
             IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
                -- LOGGING ONLY, WHEN CURSOR "crsGetTCTestForProduct" DOES NOT RETURNS ANY VALUE
                LOG_MESSAGE(V_LOG_ID,
                            V_STATUS_ERROR,
                            'No valid catalog found for product id [' ||
                            V_PRODUCT_ID || '] and user id [' || V_CREATEDBY || '].');
                -- IF YOU DO NOT WISH THROW ERROR THEN SET TO  TRUE "V_IS_CURSOR_RETURNS_VALUE" AS PREVIOUS LOOP IS EXECUTING
                RAISE_APPLICATION_ERROR(-20000,
                                        'No valid catalog found for product id [' ||
                                        V_PRODUCT_ID || '] and user id [' ||
                                        V_CREATEDBY || '].');
            END IF;                 
             
         END LOOP;

         /* COMMIT Point :: At Department level*/
         COMMIT; -- need to remove comment before QA delivery
                  
      END IF;      
      
      /* COMMIT Point :: At School level*/
      --COMMIT; -- need to remove comment before QA delivery 
      
    END LOOP;
    
    IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
      -- LOGGING ONLY, WHEN CURSOR "CUR_FETCH_ALL_SCHOOL_NODES" DOES NOT RETURNS ANY VALUE
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_ERROR,
                  'No valid school level org_node_id is found for Customer id [' ||
                  INPUT_CUSTOMER_ID || '].');
      RAISE_APPLICATION_ERROR(-20000,
                              'No valid school level org_node_id is found for Customer id [' ||
                              INPUT_CUSTOMER_ID || '].');
    END IF;

    LOG_MESSAGE(V_LOG_ID,
                V_STATUS_COMPLETE,
                'Procedure completed successfully.');
  EXCEPTION
    WHEN OTHERS THEN
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_COMPLETE,
                  'Procedure completed with error:' ||
                  DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      ROLLBACK; -- ROLLBACK ALL DATA MODIFIED EXPLICITELY
      RAISE;         
                  
  END SCHEDULE_SESSIONS_FOR_OK;
  
  
  /** Added for User Story : Place not tested into next session **/
  
  PROCEDURE SCHEDULE_NOT_TESTED_STUDENTS(INPUT_CUSTOMER_ID INTEGER) IS
  
    V_TEST_ADMIN_ID              TEST_ADMIN.TEST_ADMIN_ID%TYPE := NULL;
    V_TEST_ACCESS_CODE           TEST_ADMIN.ACCESS_CODE%TYPE := NULL;
    V_CREATEDBY                  USERS.USER_ID%TYPE := DEFAULT_CREATED_BY;
    V_PRODUCTNAME                PRODUCT.PRODUCT_NAME%TYPE := NULL;
    V_PRODUCT_ID                 PRODUCT.PRODUCT_ID%TYPE;
    V_SHOW_STUDENT_FEEDBACK      PRODUCT.SHOW_STUDENT_FEEDBACK%TYPE := NULL;
    V_CONFIG_DATA                TEST_SCHEDULE_CONFIG%ROWTYPE;
    V_TEST_CATALOG_ID            TEST_CATALOG.TEST_CATALOG_ID%TYPE := NULL;
    V_TEST_NAME                  TEST_CATALOG.TEST_NAME%TYPE := NULL;
    V_CUSTOMER_FLAG_STATUS       CUSTOMER_CONFIGURATION.DEFAULT_VALUE%TYPE;
    V_DIFF_START_DATE            NUMBER(8);
    V_DIFF_END_DATE              NUMBER(8);
    V_DIFF_STSRT_END_DATE        NUMBER(8);
    V_STUDENT_LIST               VARCHAR2(32767) := '';
    V_REC_COUNT                  NUMBER(10) := 0;
    V_IS_CURSOR_RETURNS_VALUE    BOOLEAN := FALSE;
    V_CORPORATE_CODE             ORG_NODE.ORG_NODE_CODE%TYPE := NULL;
    V_ITEM_SET_ID                ITEM_SET.ITEM_SET_ID%TYPE := '';
    V_ROLE_ID                    USER_ROLE.ROLE_ID%TYPE;
    V_SUBJECT_NAME               VARCHAR2(50);
    V_TESTING_SUBJECT            STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE;
    V_TEST_WINDOW                STUDENT_DEMOGRAPHIC_DATA.VALUE_NAME%TYPE;
    V_CHAR_LENGTH                NUMBER;
    V_PATTERN_STR                VARCHAR2(10) := 'II';
  
    /* Retrieve all school level org_node_ids for Okhlahoma customer */
    CURSOR CUR_FETCH_ALL_SCHOOL_NODES(V_CUSTOMERID INTEGER) IS
      SELECT NODE.ORG_NODE_ID,
             NODE.ORG_NODE_NAME,
             ONC.CATEGORY_NAME,
             NODE.ORG_NODE_CODE
        FROM ORG_NODE NODE, ORG_NODE_CATEGORY ONC
       WHERE ONC.ORG_NODE_CATEGORY_ID = NODE.ORG_NODE_CATEGORY_ID
         AND ONC.CATEGORY_LEVEL = SCHOOL_CATEGORY_LEVEL
         AND NODE.CUSTOMER_ID = V_CUSTOMERID
         AND EXISTS
       (SELECT *
                FROM ORG_NODE_PARENT
               WHERE PARENT_ORG_NODE_ID = NODE.ORG_NODE_ID);
  
    /* Retrieves admin user for a particular school node */
    CURSOR CUR_GET_ADMIN_USER(V_SCHOOL_NODE_ID ORG_NODE.ORG_NODE_ID%TYPE) IS
      SELECT USERS.USER_ID, UROLE.ROLE_ID
        FROM USERS, USER_ROLE UROLE, ROLE R
       WHERE UROLE.USER_ID = USERS.USER_ID
         AND UROLE.ACTIVATION_STATUS = V_ACTIVATION_STATUS
         AND UROLE.ROLE_ID = R.ROLE_ID
         AND R.ROLE_NAME IN ('ADMINISTRATOR', 'ADMINISTRATIVE COORDINATOR')
         AND UROLE.ORG_NODE_ID = V_SCHOOL_NODE_ID
         AND USERS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       ORDER BY UROLE.ROLE_ID;
  
    /* Retrieves coordinator user for a particular school node */
    CURSOR CUR_GET_COORDINATOR_USER(V_SCHOOL_NODE_ID ORG_NODE.ORG_NODE_ID%TYPE) IS
      SELECT USERS.USER_ID, UROLE.ROLE_ID
        FROM USERS, USER_ROLE UROLE, ROLE R
       WHERE UROLE.USER_ID = USERS.USER_ID
         AND UROLE.ACTIVATION_STATUS = V_ACTIVATION_STATUS
         AND UROLE.ROLE_ID = R.ROLE_ID
         AND R.ROLE_NAME = ('COORDINATOR')
         AND UROLE.ORG_NODE_ID = V_SCHOOL_NODE_ID
         AND USERS.ACTIVATION_STATUS = V_ACTIVATION_STATUS
       ORDER BY UROLE.ROLE_ID;
       
    /* Retrieve all department nodes for a particular school node*/
    CURSOR CUR_GET_DEPARTMENT_NODES(V_SCHOOL_NODE_ID ORG_NODE.ORG_NODE_ID%TYPE) IS
      SELECT ORG.*
        FROM ORG_NODE ORG, ORG_NODE_PARENT ONP
       WHERE ORG.ORG_NODE_ID = ONP.ORG_NODE_ID
         AND ONP.PARENT_ORG_NODE_ID = V_SCHOOL_NODE_ID
         AND EXISTS
       (SELECT *
                FROM ORG_NODE_PARENT
               WHERE PARENT_ORG_NODE_ID = ORG.ORG_NODE_ID);

  BEGIN
       
    --DBMS_OUTPUT.PUT_LINE('TODO:: Initial Logging');
    /* Initial Logging :: */
    LOG_MESSAGE(V_LOG_ID,
                V_STATUS_START,
                'Procedure started for Customer Id [' || INPUT_CUSTOMER_ID || '].');
    
    INITIALIZE_SUBJECT_ARRAY; -- Initialize the global array for subject_codes
              
    /* Setting product_id and test_window to  WINTER_TRIMESTER_PRODUCT_ID and WINTER_TRIMESTER_TEST_WINDOW respectively*/

    V_PRODUCT_ID := WINTER_TRIMESTER_PRODUCT_ID;
    V_TEST_WINDOW := WINTER_TRIMESTER_TEST_WINDOW;
         
    
    /* Basic Validations :: Start */  
    
    --- (1) Validation of customer_id
    BEGIN
      SELECT 1
        INTO V_REC_COUNT
        FROM CUSTOMER
       WHERE CUSTOMER.CUSTOMER_ID = INPUT_CUSTOMER_ID;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Customer id [' || INPUT_CUSTOMER_ID ||
                    '] is not valid. Give Existing Id.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Customer id [' || INPUT_CUSTOMER_ID ||
                                '] is not valid. Give Existing Id.');
    END;
    
    --- (2) Validation of product_id
    BEGIN      
      SELECT PRO.PRODUCT_NAME, PRO.SHOW_STUDENT_FEEDBACK
        INTO V_PRODUCTNAME, V_SHOW_STUDENT_FEEDBACK
        FROM PRODUCT PRO
       WHERE PRO.PRODUCT_ID = V_PRODUCT_ID;

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Product id [' || V_PRODUCT_ID ||
                    '] is not valid for the input Testing Window.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Product id [' || V_PRODUCT_ID ||
                                '] is not valid for the input Testing Window.');
    END;
    
    --- (3) Validation of config data :: 
    BEGIN
      SELECT *
        INTO V_CONFIG_DATA
        FROM TEST_SCHEDULE_CONFIG TSC
       WHERE CUSTOMER_ID = INPUT_CUSTOMER_ID;
      V_DIFF_START_DATE     := (TO_DATE(TO_CHAR(V_CONFIG_DATA.LOGIN_START_DATE,
                                                'YYYY-MM-DD'),
                                        'YYYY-MM-DD') -
                               TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD'),
                                        'YYYY-MM-DD'));
      V_DIFF_END_DATE       := (TO_DATE(TO_CHAR(V_CONFIG_DATA.LOGIN_END_DATE,
                                                'YYYY-MM-DD'),
                                        'YYYY-MM-DD') -
                               TO_DATE(TO_CHAR(SYSDATE, 'YYYY-MM-DD'),
                                        'YYYY-MM-DD'));
      V_DIFF_STSRT_END_DATE := (V_CONFIG_DATA.LOGIN_END_DATE -
                               V_CONFIG_DATA.LOGIN_START_DATE);

      IF (V_DIFF_START_DATE IS NULL OR V_DIFF_END_DATE IS NULL) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule start date or end date can not be null.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule start date or end date can not be null.');
      ELSIF (V_DIFF_START_DATE < 0) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule start date can not be earlier than now.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule start date can not be earlier than now.');
      ELSIF (V_DIFF_END_DATE < 0) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule end date can not be earlier than now.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule end date can not be earlier than now.');
      ELSIF (V_DIFF_STSRT_END_DATE < 0) THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Schedule  end date can not be earlier than Schedule start date.');
        RAISE_APPLICATION_ERROR(-20000,
                                'Schedule  end date can not be earlier than Schedule start date.');
      ELSIF (V_DIFF_STSRT_END_DATE = 0) THEN
        IF ((TO_DATE(TO_CHAR(V_CONFIG_DATA.DAILY_LOGIN_END_TIME, 'HH24:MI'),
                     'HH24:MI')) -
           (TO_DATE(TO_CHAR(V_CONFIG_DATA.DAILY_LOGIN_START_TIME, 'HH24:MI'),
                     'HH24:MI')) <= 0) THEN

          LOG_MESSAGE(V_LOG_ID,
                      V_STATUS_ERROR,
                      'Schedule  end time can not be earlier than Schedule start time.');
          RAISE_APPLICATION_ERROR(-20000,
                                  'Schedule  end time can not be earlier than Schedule start time.');
        END IF;

      END IF;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'No record exist in configuration table for customer id [' ||
                    INPUT_CUSTOMER_ID || '] ');
        RAISE_APPLICATION_ERROR(-20000,
                                'No record exist in configuration table for customer id [' ||
                                INPUT_CUSTOMER_ID || '] ');
      WHEN TOO_MANY_ROWS THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'More than one record exists in configuration table for customer id [' ||
                    INPUT_CUSTOMER_ID || '] ');
        RAISE_APPLICATION_ERROR(-20000,
                                'More than one record exists in configuration table for customer id [' ||
                                INPUT_CUSTOMER_ID || '] ');
    END;

    --- (4) Validation for customer configuration 'Roster_Status_Flag'
    BEGIN
      SELECT CC.DEFAULT_VALUE
        INTO V_CUSTOMER_FLAG_STATUS
        FROM CUSTOMER_CONFIGURATION CC
       WHERE CC.CUSTOMER_ID = INPUT_CUSTOMER_ID
         AND CC.CUSTOMER_CONFIGURATION_NAME = 'Roster_Status_Flag';

    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_WARN,
                    'CustomerFlagStatus not found for customer[' ||
                    INPUT_CUSTOMER_ID ||
                    '] with configuration name- Roster_Status_Flag  ');

      WHEN TOO_MANY_ROWS THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Too many CustomerFlagStatus found for customer [' ||
                    INPUT_CUSTOMER_ID ||
                    '] with configuration name- Roster_Status_Flag .');
        RAISE_APPLICATION_ERROR(-20000,
                                'Too many CustomerFlagStatus found for customer [' ||
                                INPUT_CUSTOMER_ID ||
                                '] with configuration name- Roster_Status_Flag .');
      WHEN OTHERS THEN
        LOG_MESSAGE(V_LOG_ID,
                    V_STATUS_ERROR,
                    'Exception occurred while retrieving CustomerFlagStatus of customer [' ||
                    INPUT_CUSTOMER_ID || '].');

        RAISE;
    END;
        
    /* Basic Validations :: End */   
    
    /* Pre-scheduling Process :: Start*/
    V_IS_CURSOR_RETURNS_VALUE := FALSE;
    
    --- 1.0 :: Loop for all school level org_node_ids 
    FOR REC_SCHOOL_NODE IN CUR_FETCH_ALL_SCHOOL_NODES(INPUT_CUSTOMER_ID) LOOP
        V_IS_CURSOR_RETURNS_VALUE := TRUE;
        V_CREATEDBY               := NULL;
        
        /* Checking for admin user or coordinator for the school node */
        IF REC_SCHOOL_NODE.ORG_NODE_ID IS NOT NULL THEN
        BEGIN

          OPEN CUR_GET_ADMIN_USER(REC_SCHOOL_NODE.ORG_NODE_ID);

          FETCH CUR_GET_ADMIN_USER
            INTO V_CREATEDBY, V_ROLE_ID;

          IF CUR_GET_ADMIN_USER%NOTFOUND THEN

            OPEN CUR_GET_COORDINATOR_USER(REC_SCHOOL_NODE.ORG_NODE_ID);
            FETCH CUR_GET_COORDINATOR_USER
              INTO V_CREATEDBY, V_ROLE_ID;

            IF CUR_GET_COORDINATOR_USER%NOTFOUND THEN

              RAISE NO_DATA_FOUND;

            END IF;

            CLOSE CUR_GET_COORDINATOR_USER;
          END IF;

          CLOSE CUR_GET_ADMIN_USER;

        EXCEPTION
          -- OTHER THAN NO_DATA_FOUND EXCEPTION IS THROWN
          WHEN NO_DATA_FOUND THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_WARN,
                        'No Administrator is found for school node id [' ||
                        REC_SCHOOL_NODE.ORG_NODE_ID || '].');
                        
            IF CUR_GET_COORDINATOR_USER%ISOPEN THEN
              CLOSE CUR_GET_COORDINATOR_USER;
            END IF;

            IF CUR_GET_ADMIN_USER%ISOPEN THEN
              CLOSE CUR_GET_ADMIN_USER;
            END IF;

          WHEN OTHERS THEN
            LOG_MESSAGE(V_LOG_ID,
                        V_STATUS_ERROR,
                        'Exception occurred while retrieving Administrator information for school node id [' ||
                        REC_SCHOOL_NODE.ORG_NODE_ID || '].');

            IF CUR_GET_COORDINATOR_USER%ISOPEN THEN
              CLOSE CUR_GET_COORDINATOR_USER;
            END IF;

            IF CUR_GET_ADMIN_USER%ISOPEN THEN
              CLOSE CUR_GET_ADMIN_USER;
            END IF;

            RAISE;
        END;
      END IF;
      
      IF V_CREATEDBY IS NOT NULL THEN
         --DBMS_OUTPUT.PUT_LINE('TODO:: Pre-scheduling');
/*         DBMS_OUTPUT.PUT_LINE('REC_SCHOOL_NODE NAME........' || 
                                               REC_SCHOOL_NODE.ORG_NODE_NAME || 
                                               '     SCHOOL ORG_NODE_ID' || REC_SCHOOL_NODE.ORG_NODE_ID);
                                               */
         --- 1.1 :: Loop for all Department level org_node_ids
         FOR REC_DEPTT_NODE IN CUR_GET_DEPARTMENT_NODES(REC_SCHOOL_NODE.ORG_NODE_ID) LOOP
             --DBMS_OUTPUT.PUT_LINE('In Loop 1.1.... ');
             ---1.1.1 :: Loop for all 'TC' level
             V_IS_CURSOR_RETURNS_VALUE := FALSE;

             FOR REC_TC_ITEMSETID IN CUR_GET_TCTEST_FOR_PRODUCT(V_PRODUCT_ID, V_CREATEDBY) LOOP
                 V_IS_CURSOR_RETURNS_VALUE := TRUE;
                 
                 /* Getting test_catalog details */
                 BEGIN
                    SELECT DISTINCT CAT.TEST_CATALOG_ID, CAT.TEST_NAME
                      INTO V_TEST_CATALOG_ID, V_TEST_NAME
                      FROM TEST_CATALOG CAT
                     WHERE ACTIVATION_STATUS = V_ACTIVATION_STATUS
                       AND ITEM_SET_ID = REC_TC_ITEMSETID.ITEM_SET_ID;
                 EXCEPTION
                    WHEN NO_DATA_FOUND THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Catalog does not exists with item set id [' ||
                                  REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                      RAISE_APPLICATION_ERROR(-20000,
                                              'Catalog does not exists with item set id [' ||
                                              REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                    WHEN TOO_MANY_ROWS THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Too many catalog associated with item set id [' ||
                                  REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                      RAISE_APPLICATION_ERROR(-20000,
                                              'Too many catalog associated with item set id [' ||
                                              REC_TC_ITEMSETID.ITEM_SET_ID || '].');
                    WHEN OTHERS THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Exception occurred while retrieving catalog id [' ||
                                  REC_TC_ITEMSETID.ITEM_SET_ID || '].');

                    RAISE;
                 END;
                 --DBMS_OUTPUT.PUT_LINE(REC_DEPTT_NODE.ORG_NODE_CODE);
                 BEGIN
                      V_SUBJECT_NAME := V_SUBJECT_ARR(REC_DEPTT_NODE.ORG_NODE_CODE);
                 EXCEPTION
                 WHEN NO_DATA_FOUND THEN
                      LOG_MESSAGE(V_LOG_ID,
                                  V_STATUS_ERROR,
                                  'Not a valid subject code [' ||
                                  REC_DEPTT_NODE.ORG_NODE_CODE || '].');
                      V_SUBJECT_NAME := '-1';            
                 END;
                 IF V_SUBJECT_NAME IS NULL THEN
                    V_SUBJECT_NAME := '-1';
                 END IF;
                /* DBMS_OUTPUT.PUT_LINE(V_SUBJECT_NAME);*/
                
                 V_CHAR_LENGTH := LENGTH(V_TEST_NAME) - LENGTH(REPLACE(V_TEST_NAME,'I'));
                 IF V_CHAR_LENGTH = 3 THEN 
                    V_PATTERN_STR := 'III';
                 ELSE
                    V_PATTERN_STR := 'II';    
                 END IF;
                                  
                 /* Department code value i.e subject name matched with test :: will schedule session for students of this deptt. */
                
                 IF INSTR(V_TEST_NAME, V_SUBJECT_NAME) != 0 THEN
                    IF NOT((INSTR(V_TEST_NAME,V_PATTERN_STR) != 0) AND (INSTR(V_SUBJECT_NAME,V_PATTERN_STR) = 0)) THEN
                    /*DBMS_OUTPUT.PUT_LINE(V_TEST_NAME);*/
                      BEGIN                    
                        SELECT CDV.VALUE_NAME
                          INTO V_TESTING_SUBJECT
                          FROM CUSTOMER_DEMOGRAPHIC       CD,
                               CUSTOMER_DEMOGRAPHIC_VALUE CDV
                         WHERE CD.CUSTOMER_DEMOGRAPHIC_ID =
                               CDV.CUSTOMER_DEMOGRAPHIC_ID
                           AND CDV.VALUE_CODE = REC_DEPTT_NODE.ORG_NODE_CODE
                           AND CD.CUSTOMER_ID = INPUT_CUSTOMER_ID;
                      EXCEPTION
                         WHEN NO_DATA_FOUND THEN
                              LOG_MESSAGE(V_LOG_ID,
                                          V_STATUS_ERROR,
                                          'No record found in customer_demographic_value for the code [' ||
                                          REC_DEPTT_NODE.ORG_NODE_CODE || '].');
                              V_TESTING_SUBJECT := '';            
                      END;                 
                                         
                     /* SELECT CDV.VALUE_NAME
                        INTO V_TEST_WINDOW
                        FROM CUSTOMER_DEMOGRAPHIC       CD,
                             CUSTOMER_DEMOGRAPHIC_VALUE CDV
                       WHERE CD.CUSTOMER_DEMOGRAPHIC_ID =
                             CDV.CUSTOMER_DEMOGRAPHIC_ID
                         AND CDV.VALUE_CODE = INPUT_TESTING_WINDOW
                         AND CD.CUSTOMER_ID = INPUT_CUSTOMER_ID;*/                    

                      IF V_PRODUCT_ID = WINTER_TRIMESTER_PRODUCT_ID THEN
                          --DBMS_OUTPUT.PUT_LINE('Schedule students for Winter/Trimester...');
                          PREFERRED_FORM := '1';
                          V_FORM_ASSIGNMENT := '1';
                         
                          OPEN CUR_NOT_TESTED_STUDENTS(REC_DEPTT_NODE.ORG_NODE_ID,
                                                       V_PRODUCT_ID,
                                                       V_TESTING_SUBJECT,
                                                       V_TEST_WINDOW,
                                                       V_TEST_NAME);
                          FETCH CUR_NOT_TESTED_STUDENTS INTO V_STUDENT;
                        
                          IF (CUR_NOT_TESTED_STUDENTS%FOUND) THEN
        
                            CLOSE CUR_NOT_TESTED_STUDENTS;
        
                            V_TEST_ACCESS_CODE := GENERATEPASSWORD(V_GENERATED_ACCESS_CODE_LENGTH,
                                                                    1);
        
                            SELECT SEQ_TEST_ADMIN_ID.NEXTVAL
                              INTO V_TEST_ADMIN_ID
                              FROM DUAL;   
      
    
                            INSERT_TEST_ADMIN(V_PRODUCT_ID,
                                              INPUT_CUSTOMER_ID,
                                              REC_TC_ITEMSETID,
                                              V_CONFIG_DATA,
                                              V_SHOW_STUDENT_FEEDBACK,
                                              V_TEST_CATALOG_ID,
                                              V_CREATEDBY,
                                              V_TEST_ACCESS_CODE,
                                              REC_SCHOOL_NODE.ORG_NODE_ID,
                                              V_TEST_ADMIN_ID);
      
                            V_REC_COUNT := 0;
                            INSERT_TEST_ROSTER_NOT_TESTED(V_PRODUCT_ID,
                                                          INPUT_CUSTOMER_ID,
                                                          V_CREATEDBY,
                                                          V_TEST_ADMIN_ID,
                                                          REC_DEPTT_NODE.ORG_NODE_ID,
                                                          V_STUDENT_LIST,
                                                          V_CUSTOMER_FLAG_STATUS,
                                                          V_TESTING_SUBJECT,
                                                          V_TEST_WINDOW,
                                                          V_TEST_NAME);
      
                            INSERT_SCHEDULABLE_UNITS(INPUT_CUSTOMER_ID,
                                                     REC_TC_ITEMSETID,
                                                     REC_SCHOOL_NODE.ORG_NODE_NAME,
                                                     V_TEST_ADMIN_ID,
                                                     V_TEST_ACCESS_CODE,
                                                     V_STUDENT_LIST);
    
                            V_STUDENT_LIST := '';
        
                          ELSE
                            CLOSE CUR_NOT_TESTED_STUDENTS;
                          END IF;
                         
                        END IF;
                   ELSE
                       V_TEST_NAME := NULL; 
                   END IF; 
                 END IF;
                  
             END LOOP;
             
             IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
                -- LOGGING ONLY, WHEN CURSOR "crsGetTCTestForProduct" DOES NOT RETURNS ANY VALUE
                LOG_MESSAGE(V_LOG_ID,
                            V_STATUS_ERROR,
                            'No valid catalog found for product id [' ||
                            V_PRODUCT_ID || '] and user id [' || V_CREATEDBY || '].');
                -- IF YOU DO NOT WISH THROW ERROR THEN SET TO  TRUE "V_IS_CURSOR_RETURNS_VALUE" AS PREVIOUS LOOP IS EXECUTING
                RAISE_APPLICATION_ERROR(-20000,
                                        'No valid catalog found for product id [' ||
                                        V_PRODUCT_ID || '] and user id [' ||
                                        V_CREATEDBY || '].');
            END IF;                 
             
         END LOOP;

         /* COMMIT Point :: At Department level*/
         COMMIT; -- need to remove comment before QA delivery
                  
      END IF;      
      
      /* COMMIT Point :: At School level*/
      --COMMIT; -- need to remove comment before QA delivery 
      
    END LOOP;
    
    IF (NOT V_IS_CURSOR_RETURNS_VALUE) THEN
      -- LOGGING ONLY, WHEN CURSOR "CUR_FETCH_ALL_SCHOOL_NODES" DOES NOT RETURNS ANY VALUE
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_ERROR,
                  'No valid school level org_node_id is found for Customer id [' ||
                  INPUT_CUSTOMER_ID || '].');
      RAISE_APPLICATION_ERROR(-20000,
                              'No valid school level org_node_id is found for Customer id [' ||
                              INPUT_CUSTOMER_ID || '].');
    END IF;

    LOG_MESSAGE(V_LOG_ID,
                V_STATUS_COMPLETE,
                'Procedure completed successfully.');
  EXCEPTION
    WHEN OTHERS THEN
      LOG_MESSAGE(V_LOG_ID,
                  V_STATUS_COMPLETE,
                  'Procedure completed with error:' ||
                  DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
      ROLLBACK; -- ROLLBACK ALL DATA MODIFIED EXPLICITELY
      RAISE;         
  END SCHEDULE_NOT_TESTED_STUDENTS;

END OAS_OK_TEST_PRE_SCHEDULING;
/