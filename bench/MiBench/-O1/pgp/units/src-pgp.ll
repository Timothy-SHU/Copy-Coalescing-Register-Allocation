; ModuleID = 'src/pgp.c'
source_filename = "src/pgp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashedpw = type { ptr, [16 x i8] }

@rel_version = dso_local global [8 x i8] c"2.6.3ia\00", align 1
@rel_date = dso_local global [11 x i8] c"1996-03-04\00", align 1
@PGP_EXTENSION = dso_local global [5 x i8] c".pgp\00", align 1
@ASC_EXTENSION = dso_local global [5 x i8] c".asc\00", align 1
@SIG_EXTENSION = dso_local global [5 x i8] c".sig\00", align 1
@BAK_EXTENSION = dso_local local_unnamed_addr global [5 x i8] c".bak\00", align 1
@CONSOLE_FILENAME = dso_local global [9 x i8] c"_CONSOLE\00", align 1
@verbose = dso_local local_unnamed_addr global i8 0, align 1
@compressSig = internal unnamed_addr constant [10 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 16
@.str = private unnamed_addr constant [6 x i8] c"-lh5-\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"\0Areceived signal %d\0A\00", align 1
@pgpout = dso_local local_unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"\0AStopped at user request\0A\00", align 1
@emit_radix_64 = dso_local local_unnamed_addr global i8 0, align 1
@moreflag = dso_local local_unnamed_addr global i8 0, align 1
@filter_mode = dso_local local_unnamed_addr global i8 0, align 1
@clear_signatures = dso_local local_unnamed_addr global i8 1, align 1
@encrypt_to_self = dso_local local_unnamed_addr global i8 0, align 1
@sign_new_userids = dso_local local_unnamed_addr global i8 1, align 1
@batchmode = dso_local local_unnamed_addr global i8 0, align 1
@quietmode = dso_local local_unnamed_addr global i8 1, align 1
@force_flag = dso_local local_unnamed_addr global i8 1, align 1
@literal_mode = dso_local global i8 98, align 1
@my_name = dso_local global [256 x i8] zeroinitializer, align 16
@keepctx = dso_local local_unnamed_addr global i8 0, align 1
@interactive_add = dso_local local_unnamed_addr global i8 0, align 1
@compress_enabled = dso_local local_unnamed_addr global i8 1, align 1
@timeshift = dso_local local_unnamed_addr global i64 0, align 8
@version_byte = dso_local local_unnamed_addr global i32 3, align 4
@nomanual = dso_local local_unnamed_addr global i8 0, align 1
@makerandom = dso_local local_unnamed_addr global i32 0, align 4
@signature_checked = dso_local local_unnamed_addr global i8 0, align 1
@checksig_pass = dso_local local_unnamed_addr global i32 0, align 4
@charset_header = dso_local local_unnamed_addr global [16 x i8] zeroinitializer, align 16
@myArgc = dso_local local_unnamed_addr global i32 2, align 4
@passwds = dso_local global ptr null, align 8
@keypasswds = dso_local local_unnamed_addr global ptr null, align 8
@pubring_file = dso_local local_unnamed_addr global ptr null, align 8
@secring_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"PGPPASS\00", align 1
@passwdstail = internal unnamed_addr global ptr @passwds, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"PGPPASSFD\00", align 1
@mcguffin = internal global [256 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [7 x i8] c".pgprc\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"config.txt\00", align 1
@globalPubringName = dso_local global [256 x i8] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [12 x i8] c"pubring.pgp\00", align 1
@globalSecringName = dso_local global [256 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"secring.pgp\00", align 1
@globalRandseedName = dso_local global [256 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [13 x i8] c"randseed.bin\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@myArgv = dso_local local_unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A\07Out of memory.\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"-@\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"abcdefghiklmo:prstu:vwxz:ABCDEFGHIKLMO:PRSTU:VWX?\00", align 1
@strip_sig_flag = internal unnamed_addr global i1 false, align 1
@c_flag = internal unnamed_addr global i1 false, align 1
@decrypt_only_flag = internal unnamed_addr global i1 false, align 1
@preserve_filename = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global ptr, align 8
@outputfile = internal unnamed_addr global ptr null, align 8
@sign_flag = internal unnamed_addr global i1 false, align 1
@u_flag = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@de_armor_only = internal unnamed_addr global i1 false, align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"\0AFile %s wiped and deleted. \00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"\0A\07Error: Can't wipe out file '%s' - read only, maybe?\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"\0A\07File '%s' does not exist.\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"myARgc: %d\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [222 x i8] c"\0AFor details on licensing and distribution, see the PGP User's Guide.\0AFor other cryptography products and custom development services, contact:\0APhilip Zimmermann, 3021 11th St, Boulder CO 80304 USA, phone +1 303 541-0140\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"@translator@\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"\0AFor a usage summary, type:  pgp -h\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Here: %s; %s;\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Error writing file \22%s\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"File %s created containing %d random bytes.\0A\00", align 1
@errorLvl = internal unnamed_addr global i32 0, align 4
@.str.28 = private unnamed_addr constant [34 x i8] c"\07Invalid filename: '%s' too long\0A\00", align 1
@plainfile = dso_local global [256 x i8] zeroinitializer, align 16
@strip_spaces = dso_local local_unnamed_addr global i8 0, align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"\0A\07Input file '%s' looks like it may have been created by PGP. \00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"\0AIs it safe to assume that it was created by PGP (y/N)? \00", align 1
@.str.31 = private unnamed_addr constant [75 x i8] c"\0ANote: '%s' is not a pure text file.\0AFile will be treated as binary data.\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"\0A\07Error: Only text files may be sent as display-only.\0A\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"\0AA secret key is required to make a signature. \00", align 1
@.str.34 = private unnamed_addr constant [145 x i8] c"\0AYou specified no user ID to select your secret key,\0Aso the default user ID and key will be the most recently\0Aadded key on your secret keyring.\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"\07Signature error\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"\0A\0ARecipients' public key(s) will be used to encrypt. \00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"\0AA user ID is required to select the recipient's public key. \00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"\0AEnter the recipient's user ID: \00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"\07Encryption error\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"\0ACiphertext file: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"\0ASignature file: %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"For more detailed help, consult the PGP User's Guide.\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"exitPGP: exitcode = %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"\0AIncluding \22%s\22...\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"PGP\00", align 1
@globalCommentString = dso_local local_unnamed_addr global [128 x i8] zeroinitializer, align 16
@use_charset_header = dso_local local_unnamed_addr global i8 0, align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"PK\03\04\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ZOO \00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"GIF8\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\EA`\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"Rar!\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"HPAK\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\1F\8B\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\1F\9D\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\1A\0B\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"\1AHP%\00", align 1
@signon_msg.printed = internal unnamed_addr global i1 false, align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"Pretty Good Privacy(tm) %s - Public-key encryption for the masses.\0A\00", align 1
@.str.59 = private unnamed_addr constant [60 x i8] c"(c) 1990-96 Philip Zimmermann, Phil's Pretty Good Software.\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [70 x i8] c"International version - not for use in the USA. Does not use RSAREF.\0A\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"Current time: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"\0A\07Error: Transport armor stripping failed for file %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [53 x i8] c"Stripped transport armor from '%s', producing '%s'.\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"\0ALooking for next packet in '%s'...\0A\00", align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"globalPubringName: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"globalSecringName: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"\0A\07Can't open ciphertext file '%s'\0A\00", align 1
@.str.71 = private unnamed_addr constant [57 x i8] c"\0AFile is encrypted.  Secret key is required to read it. \00", align 1
@.str.72 = private unnamed_addr constant [58 x i8] c"\0AThis file has a signature, which will be left in place.\0A\00", align 1
@.str.73 = private unnamed_addr constant [66 x i8] c"\0AFile has signature.  Public key is required to check signature.\0A\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"\0AFile is conventionally encrypted.  \00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"\0AFile contains key(s).  Contents follow...\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"\0ADo you want to add this keyfile to keyring '%s' (y/N)? \00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"\07Keyring add error. \00", align 1
@.str.80 = private unnamed_addr constant [57 x i8] c"\07\0AERROR: Nested data has unexpected format.  CTB=0x%02X\0A\00", align 1
@.str.81 = private unnamed_addr constant [60 x i8] c"\07\0AError: '%s' is not a ciphertext, signature, or key file.\0A\00", align 1
@.str.82 = private unnamed_addr constant [68 x i8] c"\0A\0AThis message is marked \22For your eyes only\22.  Display now (Y/n)? \00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"\0A\0APlaintext message follows...\0A\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"------------------------------\0A\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"Save this file permanently (y/N)? \00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"Enter filename to save file as: \00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"[%s]: \00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"\0APlaintext filename: %s\00", align 1
@.str.89 = private unnamed_addr constant [58 x i8] c"\0APlaintext file '%s' looks like it contains a public key.\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"\0APlaintext file '%s' looks like a %s file.\00", align 1
@reltable.do_decrypt = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.93 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.95 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.96 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.97 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.98 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.99 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.100 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.101 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.102 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.103 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.104 to i64), i64 ptrtoint (ptr @reltable.do_decrypt to i64)) to i32)], align 4
@reltable.do_decrypt.153 = internal unnamed_addr constant [12 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.105 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.106 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.107 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.108 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.109 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.110 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.111 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.112 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.113 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.114 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.115 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.116 to i64), i64 ptrtoint (ptr @reltable.do_decrypt.153 to i64)) to i32)], align 4
@.str.91 = private unnamed_addr constant [61 x i8] c"\0A\07Output file '%s' may contain more ciphertext or signature.\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"\0A\1B[0;0H\1B[J\0D           \0D\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"PKZIP\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"Zoo\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"Arj\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"RAR\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"Hpack\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"PAK\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"Hyper\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"Lha\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"Lharc\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c".zip\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c".zoo\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c".arj\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c".rar\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c".hpk\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c".pak\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c".hyp\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c".lha\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c".lzh\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"\07Keygen error. \00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"\07Keyring check error.\0A\00", align 1
@.str.124 = private unnamed_addr constant [26 x i8] c"\07Maintenance pass error. \00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"File '%s' is not a public keyring\0A\00", align 1
@.str.126 = private unnamed_addr constant [67 x i8] c"\0AA user ID is required to select the public key you want to sign. \00", align 1
@.str.127 = private unnamed_addr constant [34 x i8] c"\0AEnter the public key's user ID: \00", align 1
@.str.128 = private unnamed_addr constant [39 x i8] c"Warning: '%s' is not a public keyring\0A\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"\07Key signature error. \00", align 1
@.str.130 = private unnamed_addr constant [73 x i8] c"\0AA user ID is required to select the key you want to revoke or disable. \00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"\0AEnter user ID: \00", align 1
@.str.132 = private unnamed_addr constant [60 x i8] c"\0AA user ID is required to select the key you want to edit. \00", align 1
@.str.133 = private unnamed_addr constant [27 x i8] c"\0AEnter the key's user ID: \00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"\07Keyring edit error. \00", align 1
@.str.135 = private unnamed_addr constant [33 x i8] c"\0A\07Key file '%s' does not exist.\0A\00", align 1
@.str.136 = private unnamed_addr constant [63 x i8] c"\0AA user ID is required to select the key you want to extract. \00", align 1
@.str.137 = private unnamed_addr constant [25 x i8] c"\07Keyring extract error. \00", align 1
@.str.138 = private unnamed_addr constant [96 x i8] c"\0AA user ID is required to select the public key you want to\0Aremove certifying signatures from. \00", align 1
@.str.139 = private unnamed_addr constant [62 x i8] c"\0AA user ID is required to select the key you want to remove. \00", align 1
@.str.140 = private unnamed_addr constant [30 x i8] c"\07Key signature remove error. \00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"\07Keyring remove error. \00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"\07Keyring view error. \00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"\0AInvalid arguments.\0A\00", align 1
@ext_c_ptr = external local_unnamed_addr global ptr, align 8
@CONVERSION = external local_unnamed_addr global i32, align 4
@.str.144 = private unnamed_addr constant [813 x i8] c"\0AUsage summary:\0ATo encrypt a plaintext file with recipent's public key, type:\0A   pgp -e textfile her_userid [other userids] (produces textfile.pgp)\0ATo sign a plaintext file with your secret key:\0A   pgp -s textfile [-u your_userid]           (produces textfile.pgp)\0ATo sign a plaintext file with your secret key, and then encrypt it\0A   with recipent's public key, producing a .pgp file:\0A   pgp -es textfile her_userid [other userids] [-u your_userid]\0ATo encrypt with conventional encryption only:\0A   pgp -c textfile\0ATo decrypt or check a signature for a ciphertext (.pgp) file:\0A   pgp ciphertextfile [-o plaintextfile]\0ATo produce output in ASCII for email, add the -a option to other options.\0ATo generate your own unique public/secret key pair:  pgp -kg\0AFor help on other key management functions, type:   pgp -k\0A\00", align 1
@language = external global [0 x i8], align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@HLP_EXTENSION = internal global [5 x i8] c".hlp\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"/usr/local/lib/pgp/\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"pgp\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.149 = private unnamed_addr constant [794 x i8] c"\0AKey management functions:\0ATo generate your own unique public/secret key pair:\0A   pgp -kg\0ATo add a key file's contents to your public or secret key ring:\0A   pgp -ka keyfile [keyring]\0ATo remove a key or a user ID from your public or secret key ring:\0A   pgp -kr userid [keyring]\0ATo edit your user ID or pass phrase:\0A   pgp -ke your_userid [keyring]\0ATo extract (copy) a key from your public or secret key ring:\0A   pgp -kx userid keyfile [keyring]\0ATo view the contents of your public key ring:\0A   pgp -kv[v] [userid] [keyring]\0ATo check signatures on your public key ring:\0A   pgp -kc [userid] [keyring]\0ATo sign someone else's public key on your public key ring:\0A   pgp -ks her_userid [-u your_userid] [keyring]\0ATo remove selected signatures from a userid on a keyring:\0A   pgp -krs userid [keyring]\0A\00", align 1
@str = private unnamed_addr constant [16 x i8] c"Here: do_keyopt\00", align 1
@str.150 = private unnamed_addr constant [10 x i8] c"Do armor!\00", align 1
@str.151 = private unnamed_addr constant [17 x i8] c"Here: do_decrypt\00", align 1
@str.152 = private unnamed_addr constant [10 x i8] c"Here sec!\00", align 1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compressSignature(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %4 = getelementptr inbounds [10 x ptr], ptr @compressSig, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #21
  %7 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %5, i64 noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 10
  br i1 %11, label %12, label %2, !llvm.loop !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %0, i64 2
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(6) @.str, i64 noundef 5) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = load i8, ptr %13, align 1, !tbaa !11
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %0, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 108
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 4
  %25 = load i8, ptr %24, align 1, !tbaa !11
  switch i8 %25, label %33 [
    i8 122, label %26
    i8 104, label %26
  ]

26:                                               ; preds = %23, %23
  %27 = getelementptr inbounds i8, ptr %0, i64 6
  %28 = load i8, ptr %27, align 1, !tbaa !11
  %29 = icmp eq i8 %28, 45
  %30 = select i1 %29, i32 11, i32 -1
  br label %33

31:                                               ; preds = %2
  %32 = trunc i64 %3 to i32
  br label %33

33:                                               ; preds = %31, %26, %16, %19, %23, %12
  %34 = phi i32 [ 10, %12 ], [ -1, %23 ], [ -1, %19 ], [ -1, %16 ], [ %30, %26 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @breakHandler(i32 noundef %0) #3 {
  switch i32 %0, label %4 [
    i32 13, label %2
    i32 2, label %7
  ]

2:                                                ; preds = %1
  %3 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22
  tail call void @exitPGP(i32 noundef 6)
  unreachable

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %0) #23
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %9 = tail call ptr @LANG(ptr noundef nonnull @.str.2) #22
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef %9)
  br label %11

11:                                               ; preds = %7, %4
  tail call void @exitPGP(i32 noundef 6)
  unreachable
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @exitPGP(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i8, ptr @verbose, align 1, !tbaa !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.44, i32 noundef %0)
  br label %7

7:                                                ; preds = %4, %1
  %8 = load ptr, ptr @passwds, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %13, %7
  %11 = load ptr, ptr @keypasswds, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %18

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %16, %13 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.hashedpw, ptr %14, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %14, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %13, !llvm.loop !12

18:                                               ; preds = %10, %18
  %19 = phi ptr [ %21, %18 ], [ %11, %10 ]
  %20 = getelementptr inbounds %struct.hashedpw, ptr %19, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = load ptr, ptr %19, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !13

23:                                               ; preds = %18, %10
  tail call void @cleanup_tmpf() #22
  %24 = tail call i32 @cryptRandOpen(ptr noundef null) #22
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @cryptRandSave(ptr noundef null) #22
  br label %27

27:                                               ; preds = %26, %23
  tail call void @exit(i32 noundef %0) #24
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @LANG(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [8 x i8], align 1
  %4 = alloca [256 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8, align 1
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #22
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  store ptr %18, ptr @pgpout, align 8, !tbaa !5
  %19 = tail call ptr @getenv(ptr noundef nonnull @.str.3) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = tail call ptr @xmalloc(i32 noundef 24) #22
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #21
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.hashedpw, ptr %22, i64 0, i32 1
  tail call void @hashpass(ptr noundef nonnull %19, i32 noundef %24, ptr noundef nonnull %25) #22
  %26 = load ptr, ptr @keypasswds, align 8, !tbaa !5
  store ptr %26, ptr %22, align 8, !tbaa !14
  store ptr %22, ptr @keypasswds, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %21, %2
  %28 = icmp sgt i32 %0, 1
  br i1 %28, label %29, label %71

29:                                               ; preds = %27, %67
  %30 = phi i32 [ %69, %67 ], [ 1, %27 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = icmp eq i8 %34, 45
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !11
  %39 = icmp eq i8 %38, 122
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %33, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = add nsw i32 %30, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi ptr [ %41, %40 ], [ %48, %44 ]
  %51 = phi i32 [ %30, %40 ], [ %45, %44 ]
  %52 = icmp eq ptr %50, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @xmalloc(i32 noundef 24) #22
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #21
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.hashedpw, ptr %54, i64 0, i32 1
  tail call void @hashpass(ptr noundef nonnull %50, i32 noundef %56, ptr noundef nonnull %57) #22
  %58 = load i8, ptr %50, align 1, !tbaa !11
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53, %60
  %61 = phi ptr [ %62, %60 ], [ %50, %53 ]
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 32, ptr %61, align 1, !tbaa !11
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %60, !llvm.loop !16

65:                                               ; preds = %60, %53
  store ptr null, ptr %54, align 8, !tbaa !14
  %66 = load ptr, ptr @passwdstail, align 8, !tbaa !5
  store ptr %54, ptr %66, align 8, !tbaa !5
  store ptr %54, ptr @passwdstail, align 8, !tbaa !5
  br label %67

67:                                               ; preds = %29, %36, %65
  %68 = phi i32 [ %30, %29 ], [ %30, %36 ], [ %51, %65 ]
  %69 = add nsw i32 %68, 1
  %70 = icmp slt i32 %69, %0
  br i1 %70, label %29, label %71, !llvm.loop !17

71:                                               ; preds = %67, %49, %27
  %72 = tail call ptr @getenv(ptr noundef nonnull @.str.4) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %71
  %75 = load i8, ptr %72, align 1, !tbaa !11
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %74
  %78 = tail call i64 @strtol(ptr nocapture noundef nonnull %72, ptr noundef null, i32 noundef 10) #22
  %79 = trunc i64 %78 to i32
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #22
  %82 = call i64 @read(i32 noundef %79, ptr noundef nonnull %16, i64 noundef 1) #22
  %83 = icmp eq i64 %82, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %81, %88
  %85 = phi ptr [ %89, %88 ], [ %16, %81 ]
  %86 = load i8, ptr %85, align 1, !tbaa !11
  %87 = icmp eq i8 %86, 10
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %85, i64 1
  %90 = call i64 @read(i32 noundef %79, ptr noundef nonnull %89, i64 noundef 1) #22
  %91 = icmp eq i64 %90, 1
  br i1 %91, label %84, label %92, !llvm.loop !18

92:                                               ; preds = %84, %88, %81
  %93 = phi ptr [ %16, %81 ], [ %85, %84 ], [ %89, %88 ]
  %94 = tail call ptr @xmalloc(i32 noundef 24) #22
  %95 = ptrtoint ptr %93 to i64
  %96 = ptrtoint ptr %16 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.hashedpw, ptr %94, i64 0, i32 1
  call void @hashpass(ptr noundef nonnull %16, i32 noundef %98, ptr noundef nonnull %99) #22
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %16, i8 0, i64 %97, i1 false)
  store ptr null, ptr %94, align 8, !tbaa !14
  %100 = load ptr, ptr @passwdstail, align 8, !tbaa !5
  store ptr %94, ptr %100, align 8, !tbaa !5
  store ptr %94, ptr @passwdstail, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #22
  br label %101

101:                                              ; preds = %74, %77, %92, %71
  %102 = call ptr @buildsysfilename(ptr noundef nonnull @mcguffin, ptr noundef nonnull @.str.5) #22
  %103 = call i32 @access(ptr noundef nonnull @mcguffin, i32 noundef 0) #22
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call ptr @buildsysfilename(ptr noundef nonnull @mcguffin, ptr noundef nonnull @.str.6) #22
  br label %107

107:                                              ; preds = %105, %101
  %108 = call i32 @access(ptr noundef nonnull @mcguffin, i32 noundef 0) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @processConfigFile(ptr noundef nonnull @mcguffin) #22
  br label %112

112:                                              ; preds = %110, %107
  %113 = call ptr @buildfilename(ptr noundef nonnull @globalPubringName, ptr noundef nonnull @.str.7) #22
  %114 = call ptr @buildfilename(ptr noundef nonnull @globalSecringName, ptr noundef nonnull @.str.8) #22
  %115 = call ptr @buildfilename(ptr noundef nonnull @globalRandseedName, ptr noundef nonnull @.str.9) #22
  store i8 0, ptr @my_name, align 16, !tbaa !11
  %116 = call ptr @buildfilename(ptr noundef nonnull @mcguffin, ptr noundef nonnull @.str.5) #22
  %117 = call i32 @access(ptr noundef nonnull @mcguffin, i32 noundef 0) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = call ptr @buildfilename(ptr noundef nonnull @mcguffin, ptr noundef nonnull @.str.6) #22
  br label %121

121:                                              ; preds = %119, %112
  %122 = call i32 @access(ptr noundef nonnull @mcguffin, i32 noundef 0) #22
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = call i32 @processConfigFile(ptr noundef nonnull @mcguffin) #22
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @exit(i32 noundef 5) #24
  unreachable

128:                                              ; preds = %124, %121
  call void @init_charset() #22
  %129 = call ptr @getenv(ptr noundef nonnull @.str.10) #22
  %130 = icmp eq ptr %129, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load i8, ptr %129, align 1, !tbaa !11
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @settmpdir(ptr noundef nonnull %129) #22
  br label %135

135:                                              ; preds = %134, %131, %128
  %136 = add nsw i32 %0, 2
  %137 = sext i32 %136 to i64
  %138 = shl nsw i64 %137, 3
  %139 = call noalias ptr @malloc(i64 noundef %138) #25
  store ptr %139, ptr @myArgv, align 8, !tbaa !5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load ptr, ptr @stderr, align 8, !tbaa !5
  %143 = call ptr @LANG(ptr noundef nonnull @.str.11) #22
  %144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef %143) #23
  call void @exitPGP(i32 noundef 7)
  unreachable

145:                                              ; preds = %135
  %146 = load ptr, ptr @myArgv, align 8, !tbaa !5
  store ptr null, ptr %146, align 8, !tbaa !5
  %147 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %148 = getelementptr inbounds ptr, ptr %147, i64 1
  store ptr null, ptr %148, align 8, !tbaa !5
  %149 = load i32, ptr @optind, align 4, !tbaa !19
  %150 = icmp slt i32 %149, %0
  br i1 %150, label %151, label %280

151:                                              ; preds = %145, %271
  %152 = phi i32 [ %278, %271 ], [ %149, %145 ]
  %153 = phi i8 [ %204, %271 ], [ 0, %145 ]
  %154 = phi i8 [ %277, %271 ], [ 0, %145 ]
  %155 = phi i8 [ %276, %271 ], [ 0, %145 ]
  %156 = phi i8 [ %275, %271 ], [ 0, %145 ]
  %157 = phi i8 [ %274, %271 ], [ 0, %145 ]
  %158 = phi i8 [ %273, %271 ], [ 0, %145 ]
  %159 = phi i8 [ %272, %271 ], [ 0, %145 ]
  %160 = icmp eq i8 %156, 0
  br label %161

161:                                              ; preds = %151, %199
  %162 = phi i32 [ %152, %151 ], [ %201, %199 ]
  %163 = phi i8 [ %153, %151 ], [ %200, %199 ]
  br label %164

164:                                              ; preds = %161, %177
  %165 = phi i32 [ %162, %161 ], [ %187, %177 ]
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %1, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %168, ptr noundef nonnull dereferenceable(3) @.str.12, i64 noundef 2) #21
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = call i32 (i32, ptr, ptr, ...) @pgp_getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13) #22
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %189

174:                                              ; preds = %171, %164
  %175 = load i32, ptr @optind, align 4, !tbaa !19
  %176 = icmp eq i32 %175, %0
  br i1 %176, label %280, label %177

177:                                              ; preds = %174
  %178 = add nsw i32 %175, 1
  store i32 %178, ptr @optind, align 4, !tbaa !19
  %179 = sext i32 %175 to i64
  %180 = getelementptr inbounds ptr, ptr %1, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !5
  %182 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %183 = load i32, ptr @myArgc, align 4, !tbaa !19
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr @myArgc, align 4, !tbaa !19
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds ptr, ptr %182, i64 %185
  store ptr %181, ptr %186, align 8, !tbaa !5
  %187 = load i32, ptr @optind, align 4, !tbaa !19
  %188 = icmp slt i32 %187, %0
  br i1 %188, label %164, label %280, !llvm.loop !21

189:                                              ; preds = %171
  %190 = call i32 @to_lower(i32 noundef %172) #22
  br i1 %160, label %203, label %191

191:                                              ; preds = %189
  %192 = icmp eq i8 %163, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %191
  %194 = icmp eq i8 %163, 118
  %195 = icmp eq i32 %190, 118
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %199, label %203

197:                                              ; preds = %191
  %198 = trunc i32 %190 to i8
  br label %199

199:                                              ; preds = %193, %197
  %200 = phi i8 [ %198, %197 ], [ 86, %193 ]
  %201 = load i32, ptr @optind, align 4, !tbaa !19
  %202 = icmp slt i32 %201, %0
  br i1 %202, label %161, label %280, !llvm.loop !21

203:                                              ; preds = %193, %189
  %204 = phi i8 [ %163, %193 ], [ %153, %189 ]
  switch i32 %190, label %258 [
    i32 97, label %205
    i32 98, label %206
    i32 99, label %207
    i32 100, label %208
    i32 101, label %209
    i32 102, label %210
    i32 63, label %211
    i32 104, label %211
    i32 107, label %234
    i32 108, label %235
    i32 109, label %236
    i32 112, label %237
    i32 111, label %238
    i32 115, label %240
    i32 116, label %241
    i32 117, label %242
    i32 119, label %245
    i32 122, label %271
    i32 43, label %246
  ]

205:                                              ; preds = %203
  store i8 1, ptr @emit_radix_64, align 1, !tbaa !11
  br label %271

206:                                              ; preds = %203
  store i1 true, ptr @strip_sig_flag, align 1
  br label %271

207:                                              ; preds = %203
  store i1 true, ptr @c_flag, align 1
  br label %271

208:                                              ; preds = %203
  store i1 true, ptr @decrypt_only_flag, align 1
  br label %271

209:                                              ; preds = %203
  br label %271

210:                                              ; preds = %203
  store i8 1, ptr @filter_mode, align 1, !tbaa !11
  br label %271

211:                                              ; preds = %203, %203
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #22
  call fastcc void @signon_msg()
  call fastcc void @build_helpfile(ptr noundef nonnull %12, ptr noundef nonnull @.str.39)
  %212 = load ptr, ptr @ext_c_ptr, align 8, !tbaa !5
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %214

214:                                              ; preds = %211
  %215 = call ptr @tempfile(i32 noundef 4) #22
  store i32 2, ptr @CONVERSION, align 4, !tbaa !19
  %216 = call i32 @copyfiles_by_name(ptr noundef nonnull %12, ptr noundef %215) #22
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  call void @rmtemp(ptr noundef %215) #22
  br label %219

219:                                              ; preds = %218, %214
  %220 = phi ptr [ %12, %218 ], [ %215, %214 ]
  store i32 0, ptr @CONVERSION, align 4, !tbaa !19
  br label %221

221:                                              ; preds = %219, %211
  %222 = phi ptr [ %220, %219 ], [ %12, %211 ]
  %223 = call i32 @more_file(ptr noundef %222, i8 noundef zeroext 0) #22
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %227 = call ptr @LANG(ptr noundef nonnull @.str.144) #22
  %228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef %227)
  br label %229

229:                                              ; preds = %225, %221
  %230 = load ptr, ptr @ext_c_ptr, align 8, !tbaa !5
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call void @rmtemp(ptr noundef %222) #22
  br label %233

233:                                              ; preds = %232, %229
  call void @exit(i32 noundef 5) #24
  unreachable

234:                                              ; preds = %203
  br label %271

235:                                              ; preds = %203
  store i8 1, ptr @verbose, align 1, !tbaa !11
  br label %271

236:                                              ; preds = %203
  store i8 1, ptr @moreflag, align 1, !tbaa !11
  br label %271

237:                                              ; preds = %203
  store i1 true, ptr @preserve_filename, align 1
  br label %271

238:                                              ; preds = %203
  %239 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %239, ptr @outputfile, align 8, !tbaa !5
  br label %271

240:                                              ; preds = %203
  store i1 true, ptr @sign_flag, align 1
  br label %271

241:                                              ; preds = %203
  store i8 116, ptr @literal_mode, align 1, !tbaa !11
  br label %271

242:                                              ; preds = %203
  %243 = load ptr, ptr @optarg, align 8, !tbaa !5
  %244 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @my_name, ptr noundef nonnull dereferenceable(1) %243, i64 noundef 255) #22
  store i1 true, ptr @u_flag, align 1
  br label %271

245:                                              ; preds = %203
  br label %271

246:                                              ; preds = %203
  %247 = load ptr, ptr @optarg, align 8, !tbaa !5
  %248 = call i32 @processConfigLine(ptr noundef %247) #22
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = load ptr, ptr @optarg, align 8, !tbaa !5
  %252 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %251, ptr noundef nonnull dereferenceable(3) @.str.14, i64 noundef 2) #21
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %271

254:                                              ; preds = %250
  call void @init_charset() #22
  br label %271

255:                                              ; preds = %246
  %256 = load ptr, ptr @stderr, align 8, !tbaa !5
  %257 = call i32 @fputc(i32 10, ptr %256)
  br label %258

258:                                              ; preds = %203, %255
  call fastcc void @signon_msg()
  %259 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %260 = call ptr @LANG(ptr noundef nonnull @.str.143) #22
  %261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef %260)
  store i32 5, ptr @errorLvl, align 4, !tbaa !19
  %262 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %263 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef %263)
  %265 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %266 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %267 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef %266)
  %268 = load i32, ptr @errorLvl, align 4
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 127, i32 %268
  call void @exitPGP(i32 noundef %270)
  unreachable

271:                                              ; preds = %250, %254, %203, %245, %242, %241, %240, %238, %237, %236, %235, %234, %210, %209, %208, %207, %206, %205
  %272 = phi i8 [ %159, %250 ], [ %159, %254 ], [ %159, %203 ], [ 1, %245 ], [ %159, %242 ], [ %159, %241 ], [ %159, %240 ], [ %159, %238 ], [ %159, %237 ], [ %159, %236 ], [ %159, %235 ], [ %159, %234 ], [ %159, %210 ], [ %159, %209 ], [ %159, %208 ], [ %159, %207 ], [ %159, %206 ], [ %159, %205 ]
  %273 = phi i8 [ %158, %250 ], [ %158, %254 ], [ %158, %203 ], [ %158, %245 ], [ %158, %242 ], [ %158, %241 ], [ %158, %240 ], [ %158, %238 ], [ %158, %237 ], [ %158, %236 ], [ %158, %235 ], [ %158, %234 ], [ %158, %210 ], [ %158, %209 ], [ %158, %208 ], [ %158, %207 ], [ %158, %206 ], [ 1, %205 ]
  %274 = phi i8 [ %157, %250 ], [ %157, %254 ], [ %157, %203 ], [ %157, %245 ], [ %157, %242 ], [ %157, %241 ], [ %157, %240 ], [ %157, %238 ], [ %157, %237 ], [ %157, %236 ], [ %157, %235 ], [ %157, %234 ], [ %157, %210 ], [ %157, %209 ], [ %157, %208 ], [ %157, %207 ], [ 1, %206 ], [ %157, %205 ]
  %275 = phi i8 [ %156, %250 ], [ %156, %254 ], [ %156, %203 ], [ %156, %245 ], [ %156, %242 ], [ %156, %241 ], [ %156, %240 ], [ %156, %238 ], [ %156, %237 ], [ %156, %236 ], [ %156, %235 ], [ 1, %234 ], [ %156, %210 ], [ %156, %209 ], [ %156, %208 ], [ %156, %207 ], [ %156, %206 ], [ %156, %205 ]
  %276 = phi i8 [ %155, %250 ], [ %155, %254 ], [ %155, %203 ], [ %155, %245 ], [ %155, %242 ], [ %155, %241 ], [ %155, %240 ], [ %155, %238 ], [ %155, %237 ], [ %155, %236 ], [ %155, %235 ], [ %155, %234 ], [ %155, %210 ], [ 1, %209 ], [ %155, %208 ], [ 1, %207 ], [ %155, %206 ], [ %155, %205 ]
  %277 = phi i8 [ %154, %250 ], [ %154, %254 ], [ %154, %203 ], [ %154, %245 ], [ %154, %242 ], [ %154, %241 ], [ %154, %240 ], [ %154, %238 ], [ %154, %237 ], [ %154, %236 ], [ %154, %235 ], [ %154, %234 ], [ %154, %210 ], [ %154, %209 ], [ %154, %208 ], [ 1, %207 ], [ %154, %206 ], [ %154, %205 ]
  %278 = load i32, ptr @optind, align 4, !tbaa !19
  %279 = icmp slt i32 %278, %0
  br i1 %279, label %151, label %280, !llvm.loop !21

280:                                              ; preds = %271, %199, %177, %174, %145
  %281 = phi i8 [ 0, %145 ], [ %159, %174 ], [ %159, %177 ], [ %159, %199 ], [ %272, %271 ]
  %282 = phi i8 [ 0, %145 ], [ %158, %174 ], [ %158, %177 ], [ %158, %199 ], [ %273, %271 ]
  %283 = phi i8 [ 0, %145 ], [ %157, %174 ], [ %157, %177 ], [ %157, %199 ], [ %274, %271 ]
  %284 = phi i8 [ 0, %145 ], [ %156, %174 ], [ %156, %177 ], [ 1, %199 ], [ %275, %271 ]
  %285 = phi i8 [ 0, %145 ], [ %155, %174 ], [ %155, %177 ], [ %155, %199 ], [ %276, %271 ]
  %286 = phi i8 [ 0, %145 ], [ %154, %174 ], [ %154, %177 ], [ %154, %199 ], [ %277, %271 ]
  %287 = phi i8 [ 0, %145 ], [ %163, %174 ], [ %163, %177 ], [ %200, %199 ], [ %204, %271 ]
  %288 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %289 = load i32, ptr @myArgc, align 4, !tbaa !19
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %288, i64 %290
  store ptr null, ptr %291, align 8, !tbaa !5
  %292 = icmp ne i8 %284, 0
  %293 = icmp eq i8 %287, 0
  %294 = select i1 %292, i1 %293, i1 false
  br i1 %294, label %295, label %318

295:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #22
  call fastcc void @signon_msg()
  call fastcc void @build_helpfile(ptr noundef nonnull %11, ptr noundef nonnull @.str.148)
  %296 = load ptr, ptr @ext_c_ptr, align 8, !tbaa !5
  %297 = icmp eq ptr %296, null
  br i1 %297, label %305, label %298

298:                                              ; preds = %295
  %299 = call ptr @tempfile(i32 noundef 4) #22
  store i32 2, ptr @CONVERSION, align 4, !tbaa !19
  %300 = call i32 @copyfiles_by_name(ptr noundef nonnull %11, ptr noundef %299) #22
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  call void @rmtemp(ptr noundef %299) #22
  br label %303

303:                                              ; preds = %302, %298
  %304 = phi ptr [ %11, %302 ], [ %299, %298 ]
  store i32 0, ptr @CONVERSION, align 4, !tbaa !19
  br label %305

305:                                              ; preds = %303, %295
  %306 = phi ptr [ %304, %303 ], [ %11, %295 ]
  %307 = call i32 @more_file(ptr noundef %306, i8 noundef zeroext 0) #22
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %311 = call ptr @LANG(ptr noundef nonnull @.str.149) #22
  %312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %310, ptr noundef %311)
  br label %313

313:                                              ; preds = %309, %305
  %314 = load ptr, ptr @ext_c_ptr, align 8, !tbaa !5
  %315 = icmp eq ptr %314, null
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  call void @rmtemp(ptr noundef %306) #22
  br label %317

317:                                              ; preds = %316, %313
  call void @exit(i32 noundef 5) #24
  unreachable

318:                                              ; preds = %280
  call fastcc void @signon_msg()
  %319 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %320 = icmp eq ptr %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %319, ptr noundef nonnull dereferenceable(2) @.str.16) #21
  %323 = icmp eq i32 %322, 0
  %324 = zext i1 %323 to i8
  br label %327

325:                                              ; preds = %318
  %326 = load i8, ptr @filter_mode, align 1, !tbaa !11
  br label %327

327:                                              ; preds = %325, %321
  %328 = phi i8 [ %324, %321 ], [ %326, %325 ]
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %331, ptr @pgpout, align 8, !tbaa !5
  br label %332

332:                                              ; preds = %330, %327
  %333 = call i32 @umask(i32 noundef 63) #22
  %334 = call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22
  %335 = icmp eq ptr %334, inttoptr (i64 1 to ptr)
  br i1 %335, label %338, label %336

336:                                              ; preds = %332
  %337 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @breakHandler) #22
  br label %338

338:                                              ; preds = %336, %332
  %339 = call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22
  %340 = icmp eq ptr %339, inttoptr (i64 1 to ptr)
  br i1 %340, label %343, label %341

341:                                              ; preds = %338
  %342 = call ptr @signal(i32 noundef 1, ptr noundef nonnull @breakHandler) #22
  br label %343

343:                                              ; preds = %341, %338
  %344 = call ptr @signal(i32 noundef 3, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22
  %345 = icmp eq ptr %344, inttoptr (i64 1 to ptr)
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = call ptr @signal(i32 noundef 3, ptr noundef nonnull @breakHandler) #22
  br label %348

348:                                              ; preds = %343, %346
  %349 = call ptr @signal(i32 noundef 13, ptr noundef nonnull @breakHandler) #22
  %350 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @breakHandler) #22
  %351 = call i64 @noise() #22
  %352 = icmp eq i8 %284, 0
  br i1 %352, label %919, label %353

353:                                              ; preds = %348
  %354 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #22
  %355 = load i8, ptr @filter_mode, align 1
  %356 = icmp ne i8 %355, 0
  %357 = load i8, ptr @batchmode, align 1
  %358 = icmp ne i8 %357, 0
  %359 = select i1 %356, i1 true, i1 %358
  br i1 %359, label %360, label %378

360:                                              ; preds = %353
  switch i8 %287, label %361 [
    i8 103, label %365
    i8 101, label %365
    i8 100, label %365
  ]

361:                                              ; preds = %360
  %362 = icmp eq i8 %287, 114
  %363 = load i1, ptr @sign_flag, align 1
  %364 = select i1 %362, i1 %363, i1 false
  br i1 %364, label %365, label %378

365:                                              ; preds = %361, %360, %360, %360
  store i32 4, ptr @errorLvl, align 4, !tbaa !19
  call fastcc void @signon_msg()
  %366 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %367 = call ptr @LANG(ptr noundef nonnull @.str.143) #22
  %368 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef %367)
  store i32 5, ptr @errorLvl, align 4, !tbaa !19
  %369 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %370 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %371 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef %370)
  %372 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %373 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %372, ptr noundef %373)
  %375 = load i32, ptr @errorLvl, align 4
  %376 = icmp eq i32 %375, 0
  %377 = select i1 %376, i32 127, i32 %375
  call void @exitPGP(i32 noundef %377)
  unreachable

378:                                              ; preds = %361, %353
  %379 = icmp eq i8 %355, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %378
  %381 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %381, ptr @pgpout, align 8, !tbaa !5
  br label %382

382:                                              ; preds = %380, %378
  switch i8 %287, label %892 [
    i8 103, label %383
    i8 99, label %413
    i8 109, label %470
    i8 115, label %499
    i8 100, label %559
    i8 101, label %603
    i8 97, label %647
    i8 120, label %713
    i8 114, label %793
    i8 118, label %845
    i8 86, label %845
  ]

383:                                              ; preds = %382
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #22
  store i8 1, ptr @nomanual, align 1, !tbaa !11
  %384 = load i32, ptr @myArgc, align 4, !tbaa !19
  %385 = icmp sgt i32 %384, 2
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %388 = getelementptr inbounds ptr, ptr %387, i64 2
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  %390 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %389, i64 noundef 5) #22
  br label %392

391:                                              ; preds = %383
  store i8 0, ptr %8, align 1, !tbaa !11
  br label %392

392:                                              ; preds = %391, %386
  %393 = icmp sgt i32 %384, 3
  br i1 %393, label %394, label %399

394:                                              ; preds = %392
  %395 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %396 = getelementptr inbounds ptr, ptr %395, i64 3
  %397 = load ptr, ptr %396, align 8, !tbaa !5
  %398 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %397, i64 noundef 5) #22
  br label %400

399:                                              ; preds = %392
  store i8 0, ptr %9, align 1, !tbaa !11
  br label %400

400:                                              ; preds = %399, %394
  %401 = load i1, ptr @u_flag, align 1
  %402 = load i8, ptr @my_name, align 16
  %403 = icmp ne i8 %402, 0
  %404 = select i1 %401, i1 %403, i1 false
  %405 = select i1 %404, ptr @my_name, ptr null
  %406 = call i32 @dokeygen(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %405) #22
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %412

408:                                              ; preds = %400
  %409 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %410 = call ptr @LANG(ptr noundef nonnull @.str.121) #22
  %411 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %409, ptr noundef %410)
  store i32 10, ptr @errorLvl, align 4, !tbaa !19
  br label %412

412:                                              ; preds = %408, %400
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #22
  br label %905

413:                                              ; preds = %382
  %414 = load i32, ptr @myArgc, align 4
  %415 = icmp slt i32 %414, 3
  br i1 %415, label %423, label %416

416:                                              ; preds = %413
  %417 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %418 = getelementptr inbounds ptr, ptr %417, i64 2
  %419 = load ptr, ptr %418, align 8, !tbaa !5
  %420 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %419) #22
  %421 = load i16, ptr @mcguffin, align 16
  %422 = icmp eq i16 %421, 42
  br i1 %422, label %423, label %424

423:                                              ; preds = %416, %413
  store i8 0, ptr @mcguffin, align 16, !tbaa !11
  br label %424

424:                                              ; preds = %423, %416
  %425 = icmp slt i32 %414, 4
  br i1 %425, label %426, label %428

426:                                              ; preds = %424
  %427 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @globalPubringName) #22
  br label %433

428:                                              ; preds = %424
  %429 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %430 = getelementptr inbounds ptr, ptr %429, i64 3
  %431 = load ptr, ptr %430, align 8, !tbaa !5
  %432 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %431, i64 noundef 255) #22
  br label %433

433:                                              ; preds = %428, %426
  %434 = icmp eq i32 %414, 3
  br i1 %434, label %435, label %446

435:                                              ; preds = %433
  %436 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %437 = getelementptr inbounds ptr, ptr %436, i64 2
  %438 = load ptr, ptr %437, align 8, !tbaa !5
  %439 = call zeroext i8 @has_extension(ptr noundef %438, ptr noundef nonnull @PGP_EXTENSION) #22
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %446, label %441

441:                                              ; preds = %435
  %442 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %443 = getelementptr inbounds ptr, ptr %442, i64 2
  %444 = load ptr, ptr %443, align 8, !tbaa !5
  %445 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %444) #22
  store i8 0, ptr @mcguffin, align 16, !tbaa !11
  br label %446

446:                                              ; preds = %441, %435, %433
  %447 = call i32 @dokeycheck(ptr noundef nonnull @mcguffin, ptr noundef nonnull %7, i32 noundef 0) #22
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %446
  %450 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %451 = call ptr @LANG(ptr noundef nonnull @.str.123) #22
  %452 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %450, ptr noundef %451)
  store i32 17, ptr @errorLvl, align 4, !tbaa !19
  br label %453

453:                                              ; preds = %449, %446
  %454 = icmp sgt i32 %447, -1
  %455 = load i8, ptr @mcguffin, align 16
  %456 = icmp ne i8 %455, 0
  %457 = select i1 %454, i1 %456, i1 false
  br i1 %457, label %905, label %458

458:                                              ; preds = %453
  %459 = call i32 @maint_check(ptr noundef nonnull %7, i32 noundef 0) #22
  %460 = icmp slt i32 %459, 0
  %461 = icmp ne i32 %459, -7
  %462 = and i1 %460, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %458
  %464 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %465 = call ptr @LANG(ptr noundef nonnull @.str.124) #22
  %466 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %464, ptr noundef %465)
  store i32 17, ptr @errorLvl, align 4, !tbaa !19
  br label %467

467:                                              ; preds = %463, %458
  %468 = icmp eq i32 %459, -7
  %469 = select i1 %468, i32 0, i32 %459
  br label %905

470:                                              ; preds = %382
  %471 = load i32, ptr @myArgc, align 4, !tbaa !19
  %472 = icmp slt i32 %471, 3
  br i1 %472, label %477, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %475 = getelementptr inbounds ptr, ptr %474, i64 2
  %476 = load ptr, ptr %475, align 8, !tbaa !5
  br label %477

477:                                              ; preds = %470, %473
  %478 = phi ptr [ %476, %473 ], [ @globalPubringName, %470 ]
  %479 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %478) #22
  %480 = call zeroext i8 @file_exists(ptr noundef nonnull %7) #22
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %477
  call void @default_extension(ptr noundef nonnull %7, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %483

483:                                              ; preds = %482, %477
  %484 = load i1, ptr @c_flag, align 1
  %485 = zext i1 %484 to i32
  %486 = or disjoint i32 %485, 2
  %487 = call i32 @maint_check(ptr noundef nonnull %7, i32 noundef %486) #22
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %489, label %905

489:                                              ; preds = %483
  %490 = icmp eq i32 %487, -7
  br i1 %490, label %491, label %495

491:                                              ; preds = %489
  %492 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %493 = call ptr @LANG(ptr noundef nonnull @.str.125) #22
  %494 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %492, ptr noundef %493, ptr noundef nonnull %7)
  br label %495

495:                                              ; preds = %491, %489
  %496 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %497 = call ptr @LANG(ptr noundef nonnull @.str.124) #22
  %498 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %496, ptr noundef %497)
  store i32 17, ptr @errorLvl, align 4, !tbaa !19
  br label %905

499:                                              ; preds = %382
  %500 = load i32, ptr @myArgc, align 4, !tbaa !19
  %501 = icmp sgt i32 %500, 3
  br i1 %501, label %502, label %507

502:                                              ; preds = %499
  %503 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %504 = getelementptr inbounds ptr, ptr %503, i64 3
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %505, i64 noundef 255) #22
  br label %509

507:                                              ; preds = %499
  %508 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @globalPubringName) #22
  br label %509

509:                                              ; preds = %507, %502
  %510 = icmp sgt i32 %500, 2
  br i1 %510, label %511, label %516

511:                                              ; preds = %509
  %512 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %513 = getelementptr inbounds ptr, ptr %512, i64 2
  %514 = load ptr, ptr %513, align 8, !tbaa !5
  %515 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %514) #22
  br label %527

516:                                              ; preds = %509
  %517 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %518 = call ptr @LANG(ptr noundef nonnull @.str.126) #22
  %519 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %517, ptr noundef %518)
  %520 = load i8, ptr @batchmode, align 1, !tbaa !11
  %521 = icmp eq i8 %520, 0
  br i1 %521, label %522, label %905

522:                                              ; preds = %516
  %523 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %524 = call ptr @LANG(ptr noundef nonnull @.str.127) #22
  %525 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %523, ptr noundef %524)
  %526 = call i32 @getstring(ptr noundef nonnull @mcguffin, i32 noundef 255, i32 noundef 1) #22
  br label %527

527:                                              ; preds = %522, %511
  %528 = load i8, ptr @my_name, align 16, !tbaa !11
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %530, label %537

530:                                              ; preds = %527
  %531 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %532 = call ptr @LANG(ptr noundef nonnull @.str.33) #22
  %533 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %531, ptr noundef %532)
  %534 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %535 = call ptr @LANG(ptr noundef nonnull @.str.34) #22
  %536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %534, ptr noundef %535)
  br label %537

537:                                              ; preds = %530, %527
  %538 = call i32 @signkey(ptr noundef nonnull @mcguffin, ptr noundef nonnull @my_name, ptr noundef nonnull %6) #22
  %539 = icmp sgt i32 %538, -1
  br i1 %539, label %540, label %552

540:                                              ; preds = %537
  %541 = call i32 @maint_update(ptr noundef nonnull %6, ptr noundef null) #22
  %542 = icmp eq i32 %541, -7
  br i1 %542, label %543, label %546

543:                                              ; preds = %540
  %544 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %544, ptr noundef nonnull @.str.128, ptr noundef nonnull %6)
  br label %905

546:                                              ; preds = %540
  %547 = icmp slt i32 %541, 0
  br i1 %547, label %548, label %552

548:                                              ; preds = %546
  %549 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %550 = call ptr @LANG(ptr noundef nonnull @.str.124) #22
  %551 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %549, ptr noundef %550)
  br label %552

552:                                              ; preds = %548, %546, %537
  %553 = phi i32 [ %541, %548 ], [ %541, %546 ], [ %538, %537 ]
  %554 = icmp slt i32 %553, 0
  br i1 %554, label %555, label %905

555:                                              ; preds = %552
  %556 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %557 = call ptr @LANG(ptr noundef nonnull @.str.129) #22
  %558 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %556, ptr noundef %557)
  store i32 18, ptr @errorLvl, align 4, !tbaa !19
  br label %905

559:                                              ; preds = %382
  %560 = load i32, ptr @myArgc, align 4, !tbaa !19
  %561 = icmp sgt i32 %560, 3
  br i1 %561, label %562, label %567

562:                                              ; preds = %559
  %563 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %564 = getelementptr inbounds ptr, ptr %563, i64 3
  %565 = load ptr, ptr %564, align 8, !tbaa !5
  %566 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %565, i64 noundef 255) #22
  br label %569

567:                                              ; preds = %559
  %568 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @globalPubringName) #22
  br label %569

569:                                              ; preds = %567, %562
  %570 = icmp sgt i32 %560, 2
  br i1 %570, label %571, label %576

571:                                              ; preds = %569
  %572 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %573 = getelementptr inbounds ptr, ptr %572, i64 2
  %574 = load ptr, ptr %573, align 8, !tbaa !5
  %575 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %574) #22
  br label %584

576:                                              ; preds = %569
  %577 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %578 = call ptr @LANG(ptr noundef nonnull @.str.130) #22
  %579 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %577, ptr noundef %578)
  %580 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %581 = call ptr @LANG(ptr noundef nonnull @.str.131) #22
  %582 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %580, ptr noundef %581)
  %583 = call i32 @getstring(ptr noundef nonnull @mcguffin, i32 noundef 255, i32 noundef 1) #22
  br label %584

584:                                              ; preds = %576, %571
  %585 = call i32 @disable_key(ptr noundef nonnull @mcguffin, ptr noundef nonnull %6) #22
  %586 = icmp sgt i32 %585, -1
  br i1 %586, label %587, label %599

587:                                              ; preds = %584
  %588 = call i32 @maint_update(ptr noundef nonnull %6, ptr noundef null) #22
  %589 = icmp eq i32 %588, -7
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %592 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %591, ptr noundef nonnull @.str.128, ptr noundef nonnull %6)
  br label %905

593:                                              ; preds = %587
  %594 = icmp slt i32 %588, 0
  br i1 %594, label %595, label %599

595:                                              ; preds = %593
  %596 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %597 = call ptr @LANG(ptr noundef nonnull @.str.124) #22
  %598 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %596, ptr noundef %597)
  br label %599

599:                                              ; preds = %595, %593, %584
  %600 = phi i32 [ %588, %595 ], [ %588, %593 ], [ %585, %584 ]
  %601 = icmp slt i32 %600, 0
  br i1 %601, label %602, label %905

602:                                              ; preds = %599
  store i32 18, ptr @errorLvl, align 4, !tbaa !19
  br label %905

603:                                              ; preds = %382
  %604 = load i32, ptr @myArgc, align 4, !tbaa !19
  %605 = icmp sgt i32 %604, 3
  br i1 %605, label %606, label %611

606:                                              ; preds = %603
  %607 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %608 = getelementptr inbounds ptr, ptr %607, i64 3
  %609 = load ptr, ptr %608, align 8, !tbaa !5
  %610 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %609, i64 noundef 255) #22
  br label %613

611:                                              ; preds = %603
  %612 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @globalPubringName) #22
  br label %613

613:                                              ; preds = %611, %606
  %614 = icmp sgt i32 %604, 2
  br i1 %614, label %615, label %620

615:                                              ; preds = %613
  %616 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %617 = getelementptr inbounds ptr, ptr %616, i64 2
  %618 = load ptr, ptr %617, align 8, !tbaa !5
  %619 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %618) #22
  br label %628

620:                                              ; preds = %613
  %621 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %622 = call ptr @LANG(ptr noundef nonnull @.str.132) #22
  %623 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %621, ptr noundef %622)
  %624 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %625 = call ptr @LANG(ptr noundef nonnull @.str.133) #22
  %626 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %624, ptr noundef %625)
  %627 = call i32 @getstring(ptr noundef nonnull @mcguffin, i32 noundef 255, i32 noundef 1) #22
  br label %628

628:                                              ; preds = %620, %615
  %629 = call i32 @dokeyedit(ptr noundef nonnull @mcguffin, ptr noundef nonnull %7) #22
  %630 = icmp sgt i32 %629, -1
  br i1 %630, label %631, label %640

631:                                              ; preds = %628
  %632 = call i32 @maint_update(ptr noundef nonnull %7, ptr noundef null) #22
  %633 = icmp eq i32 %632, -7
  %634 = select i1 %633, i32 0, i32 %632
  %635 = icmp slt i32 %634, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %631
  %637 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %638 = call ptr @LANG(ptr noundef nonnull @.str.124) #22
  %639 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %637, ptr noundef %638)
  br label %640

640:                                              ; preds = %636, %631, %628
  %641 = phi i32 [ %634, %636 ], [ %634, %631 ], [ %629, %628 ]
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %905

643:                                              ; preds = %640
  %644 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %645 = call ptr @LANG(ptr noundef nonnull @.str.134) #22
  %646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %644, ptr noundef %645)
  store i32 14, ptr @errorLvl, align 4, !tbaa !19
  br label %905

647:                                              ; preds = %382
  %648 = load i32, ptr @myArgc, align 4, !tbaa !19
  %649 = icmp sgt i32 %648, 2
  %650 = or i1 %356, %649
  br i1 %650, label %664, label %651

651:                                              ; preds = %647
  call fastcc void @signon_msg()
  %652 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %653 = call ptr @LANG(ptr noundef nonnull @.str.143) #22
  %654 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %652, ptr noundef %653)
  store i32 5, ptr @errorLvl, align 4, !tbaa !19
  %655 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %656 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %657 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %655, ptr noundef %656)
  %658 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %659 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %660 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %658, ptr noundef %659)
  %661 = load i32, ptr @errorLvl, align 4
  %662 = icmp eq i32 %661, 0
  %663 = select i1 %662, i32 127, i32 %661
  call void @exitPGP(i32 noundef %663)
  unreachable

664:                                              ; preds = %647
  br i1 %379, label %665, label %680

665:                                              ; preds = %664
  %666 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %667 = getelementptr inbounds ptr, ptr %666, i64 2
  %668 = load ptr, ptr %667, align 8, !tbaa !5
  %669 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %668, i64 noundef 255) #22
  %670 = call zeroext i8 @file_exists(ptr noundef nonnull %6) #22
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %672, label %673

672:                                              ; preds = %665
  call void @default_extension(ptr noundef nonnull %6, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %673

673:                                              ; preds = %672, %665
  %674 = call zeroext i8 @file_exists(ptr noundef nonnull %6) #22
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %676, label %683

676:                                              ; preds = %673
  %677 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %678 = call ptr @LANG(ptr noundef nonnull @.str.135) #22
  %679 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %677, ptr noundef %678, ptr noundef nonnull %6)
  store i32 11, ptr @errorLvl, align 4, !tbaa !19
  br label %905

680:                                              ; preds = %664
  %681 = call ptr @tempfile(i32 noundef 5) #22
  %682 = call i32 @readPhantomInput(ptr noundef %681) #22
  br label %683

683:                                              ; preds = %680, %673
  %684 = phi ptr [ %681, %680 ], [ %6, %673 ]
  %685 = load i32, ptr @myArgc, align 4, !tbaa !19
  %686 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %687 = icmp eq i8 %686, 0
  %688 = select i1 %687, i32 4, i32 3
  %689 = icmp slt i32 %685, %688
  br i1 %689, label %690, label %696

690:                                              ; preds = %683
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  %691 = call i32 @get_header_info_from_file(ptr noundef %684, ptr noundef nonnull %10, i32 noundef 1) #22
  %692 = load i8, ptr %10, align 1, !tbaa !11
  %693 = icmp eq i8 %692, -107
  %694 = select i1 %693, ptr @globalSecringName, ptr @globalPubringName
  %695 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %694) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  br label %702

696:                                              ; preds = %683
  %697 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %698 = select i1 %687, i64 3, i64 2
  %699 = getelementptr inbounds ptr, ptr %697, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !5
  %701 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %700, i64 noundef 255) #22
  call void @default_extension(ptr noundef nonnull %7, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %702

702:                                              ; preds = %696, %690
  %703 = call i32 @addto_keyring(ptr noundef %684, ptr noundef nonnull %7) #22
  %704 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %705 = icmp eq i8 %704, 0
  br i1 %705, label %707, label %706

706:                                              ; preds = %702
  call void @rmtemp(ptr noundef %684) #22
  br label %707

707:                                              ; preds = %706, %702
  %708 = icmp slt i32 %703, 0
  br i1 %708, label %709, label %905

709:                                              ; preds = %707
  %710 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %711 = call ptr @LANG(ptr noundef nonnull @.str.79) #22
  %712 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %710, ptr noundef %711)
  store i32 12, ptr @errorLvl, align 4, !tbaa !19
  br label %905

713:                                              ; preds = %382
  %714 = load i32, ptr @myArgc, align 4, !tbaa !19
  %715 = select i1 %379, i32 5, i32 4
  %716 = icmp slt i32 %714, %715
  br i1 %716, label %723, label %717

717:                                              ; preds = %713
  %718 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %719 = select i1 %379, i64 4, i64 3
  %720 = getelementptr inbounds ptr, ptr %718, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !5
  %722 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %721, i64 noundef 255) #22
  br label %725

723:                                              ; preds = %713
  %724 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @globalPubringName) #22
  br label %725

725:                                              ; preds = %723, %717
  %726 = select i1 %379, i32 3, i32 2
  %727 = icmp slt i32 %714, %726
  br i1 %727, label %736, label %728

728:                                              ; preds = %725
  %729 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %730 = getelementptr inbounds ptr, ptr %729, i64 2
  %731 = load ptr, ptr %730, align 8, !tbaa !5
  %732 = icmp eq ptr %731, null
  br i1 %732, label %735, label %733

733:                                              ; preds = %728
  %734 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %731) #22
  br label %747

735:                                              ; preds = %728
  store i8 0, ptr @mcguffin, align 16
  br label %747

736:                                              ; preds = %725
  %737 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %738 = call ptr @LANG(ptr noundef nonnull @.str.136) #22
  %739 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %737, ptr noundef %738)
  %740 = load i8, ptr @batchmode, align 1, !tbaa !11
  %741 = icmp eq i8 %740, 0
  br i1 %741, label %742, label %905

742:                                              ; preds = %736
  %743 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %744 = call ptr @LANG(ptr noundef nonnull @.str.133) #22
  %745 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %743, ptr noundef %744)
  %746 = call i32 @getstring(ptr noundef nonnull @mcguffin, i32 noundef 255, i32 noundef 1) #22
  br label %747

747:                                              ; preds = %742, %735, %733
  %748 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %750, label %759

750:                                              ; preds = %747
  %751 = load i32, ptr @myArgc, align 4, !tbaa !19
  %752 = icmp sgt i32 %751, 3
  br i1 %752, label %753, label %758

753:                                              ; preds = %750
  %754 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %755 = getelementptr inbounds ptr, ptr %754, i64 3
  %756 = load ptr, ptr %755, align 8, !tbaa !5
  %757 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %756, i64 noundef 255) #22
  br label %761

758:                                              ; preds = %750
  store i8 0, ptr %6, align 16, !tbaa !11
  br label %761

759:                                              ; preds = %747
  %760 = call ptr @tempfile(i32 noundef 5) #22
  br label %761

761:                                              ; preds = %759, %758, %753
  %762 = phi ptr [ %760, %759 ], [ %6, %758 ], [ %6, %753 ]
  call void @default_extension(ptr noundef nonnull %7, ptr noundef nonnull @PGP_EXTENSION) #22
  %763 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %764 = icmp eq i8 %763, 0
  %765 = load i8, ptr @emit_radix_64, align 1
  %766 = select i1 %764, i8 %765, i8 0
  %767 = call i32 @extract_from_keyring(ptr noundef nonnull @mcguffin, ptr noundef %762, ptr noundef nonnull %7, i8 noundef zeroext %766) #22
  %768 = icmp slt i32 %767, 0
  br i1 %768, label %769, label %776

769:                                              ; preds = %761
  %770 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %771 = call ptr @LANG(ptr noundef nonnull @.str.137) #22
  %772 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %770, ptr noundef %771)
  store i32 13, ptr @errorLvl, align 4, !tbaa !19
  %773 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %774 = icmp eq i8 %773, 0
  br i1 %774, label %905, label %775

775:                                              ; preds = %769
  call void @rmtemp(ptr noundef %762) #22
  br label %905

776:                                              ; preds = %761
  %777 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %778 = icmp eq i8 %777, 0
  %779 = icmp ne i32 %767, 0
  %780 = or i1 %779, %778
  br i1 %780, label %905, label %781

781:                                              ; preds = %776
  %782 = load i8, ptr @emit_radix_64, align 1, !tbaa !11
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %788, label %784

784:                                              ; preds = %781
  %785 = call i32 @armor_file(ptr noundef %762, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #22
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %792, label %787

787:                                              ; preds = %784
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %905

788:                                              ; preds = %781
  %789 = call i32 @writePhantomOutput(ptr noundef %762) #22
  %790 = icmp slt i32 %789, 0
  br i1 %790, label %791, label %792

791:                                              ; preds = %788
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %905

792:                                              ; preds = %788, %784
  call void @rmtemp(ptr noundef %762) #22
  br label %905

793:                                              ; preds = %382
  %794 = load i32, ptr @myArgc, align 4, !tbaa !19
  %795 = icmp sgt i32 %794, 3
  br i1 %795, label %796, label %800

796:                                              ; preds = %793
  %797 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %798 = getelementptr inbounds ptr, ptr %797, i64 3
  %799 = load ptr, ptr %798, align 8, !tbaa !5
  br label %800

800:                                              ; preds = %793, %796
  %801 = phi ptr [ %799, %796 ], [ @globalPubringName, %793 ]
  %802 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %801) #22
  %803 = icmp sgt i32 %794, 2
  br i1 %803, label %804, label %809

804:                                              ; preds = %800
  %805 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %806 = getelementptr inbounds ptr, ptr %805, i64 2
  %807 = load ptr, ptr %806, align 8, !tbaa !5
  %808 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %807) #22
  br label %822

809:                                              ; preds = %800
  %810 = load i1, ptr @sign_flag, align 1
  %811 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %812 = select i1 %810, ptr @.str.138, ptr @.str.139
  %813 = call ptr @LANG(ptr noundef nonnull %812) #22
  %814 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %811, ptr noundef %813)
  %815 = load i8, ptr @batchmode, align 1, !tbaa !11
  %816 = icmp eq i8 %815, 0
  br i1 %816, label %817, label %905

817:                                              ; preds = %809
  %818 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %819 = call ptr @LANG(ptr noundef nonnull @.str.133) #22
  %820 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %818, ptr noundef %819)
  %821 = call i32 @getstring(ptr noundef nonnull @mcguffin, i32 noundef 255, i32 noundef 1) #22
  br label %822

822:                                              ; preds = %817, %804
  %823 = call zeroext i8 @file_exists(ptr noundef nonnull %7) #22
  %824 = icmp eq i8 %823, 0
  br i1 %824, label %825, label %826

825:                                              ; preds = %822
  call void @default_extension(ptr noundef nonnull %7, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %826

826:                                              ; preds = %825, %822
  %827 = load i1, ptr @sign_flag, align 1
  br i1 %827, label %828, label %835

828:                                              ; preds = %826
  %829 = call i32 @remove_sigs(ptr noundef nonnull @mcguffin, ptr noundef nonnull %7) #22
  %830 = icmp slt i32 %829, 0
  br i1 %830, label %831, label %905

831:                                              ; preds = %828
  %832 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %833 = call ptr @LANG(ptr noundef nonnull @.str.140) #22
  %834 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %832, ptr noundef %833)
  store i32 19, ptr @errorLvl, align 4, !tbaa !19
  br label %905

835:                                              ; preds = %826
  %836 = load i32, ptr @myArgc, align 4, !tbaa !19
  %837 = icmp slt i32 %836, 4
  %838 = zext i1 %837 to i8
  %839 = call i32 @remove_from_keyring(ptr noundef null, ptr noundef nonnull @mcguffin, ptr noundef nonnull %7, i8 noundef zeroext %838) #22
  %840 = icmp slt i32 %839, 0
  br i1 %840, label %841, label %905

841:                                              ; preds = %835
  %842 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %843 = call ptr @LANG(ptr noundef nonnull @.str.141) #22
  %844 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %842, ptr noundef %843)
  store i32 16, ptr @errorLvl, align 4, !tbaa !19
  br label %905

845:                                              ; preds = %382, %382
  %846 = load i32, ptr @myArgc, align 4, !tbaa !19
  %847 = icmp slt i32 %846, 4
  br i1 %847, label %852, label %848

848:                                              ; preds = %845
  %849 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %850 = getelementptr inbounds ptr, ptr %849, i64 3
  %851 = load ptr, ptr %850, align 8, !tbaa !5
  br label %852

852:                                              ; preds = %845, %848
  %853 = phi ptr [ %851, %848 ], [ @globalPubringName, %845 ]
  %854 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %853) #22
  %855 = icmp sgt i32 %846, 2
  br i1 %855, label %856, label %863

856:                                              ; preds = %852
  %857 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %858 = getelementptr inbounds ptr, ptr %857, i64 2
  %859 = load ptr, ptr %858, align 8, !tbaa !5
  %860 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @mcguffin, ptr noundef nonnull dereferenceable(1) %859) #22
  %861 = load i16, ptr @mcguffin, align 16
  %862 = icmp eq i16 %861, 42
  br i1 %862, label %863, label %864

863:                                              ; preds = %852, %856
  store i8 0, ptr @mcguffin, align 16, !tbaa !11
  br label %864

864:                                              ; preds = %863, %856
  %865 = icmp eq i32 %846, 3
  br i1 %865, label %866, label %877

866:                                              ; preds = %864
  %867 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %868 = getelementptr inbounds ptr, ptr %867, i64 2
  %869 = load ptr, ptr %868, align 8, !tbaa !5
  %870 = call zeroext i8 @has_extension(ptr noundef %869, ptr noundef nonnull @PGP_EXTENSION) #22
  %871 = icmp eq i8 %870, 0
  br i1 %871, label %877, label %872

872:                                              ; preds = %866
  %873 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %874 = getelementptr inbounds ptr, ptr %873, i64 2
  %875 = load ptr, ptr %874, align 8, !tbaa !5
  %876 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %875) #22
  store i8 0, ptr @mcguffin, align 16, !tbaa !11
  br label %877

877:                                              ; preds = %872, %866, %864
  %878 = call zeroext i8 @file_exists(ptr noundef nonnull %7) #22
  %879 = icmp eq i8 %878, 0
  br i1 %879, label %880, label %881

880:                                              ; preds = %877
  call void @default_extension(ptr noundef nonnull %7, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %881

881:                                              ; preds = %880, %877
  %882 = icmp eq i8 %287, 86
  %883 = zext i1 %882 to i8
  %884 = load i1, ptr @c_flag, align 1
  %885 = zext i1 %884 to i8
  %886 = call i32 @view_keyring(ptr noundef nonnull @mcguffin, ptr noundef nonnull %7, i8 noundef zeroext %883, i8 noundef zeroext %885) #22
  %887 = icmp slt i32 %886, 0
  br i1 %887, label %888, label %905

888:                                              ; preds = %881
  %889 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %890 = call ptr @LANG(ptr noundef nonnull @.str.142) #22
  %891 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %889, ptr noundef %890)
  store i32 15, ptr @errorLvl, align 4, !tbaa !19
  br label %905

892:                                              ; preds = %382
  call fastcc void @signon_msg()
  %893 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %894 = call ptr @LANG(ptr noundef nonnull @.str.143) #22
  %895 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %893, ptr noundef %894)
  store i32 5, ptr @errorLvl, align 4, !tbaa !19
  %896 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %897 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %898 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %896, ptr noundef %897)
  %899 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %900 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %901 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %899, ptr noundef %900)
  %902 = load i32, ptr @errorLvl, align 4
  %903 = icmp eq i32 %902, 0
  %904 = select i1 %903, i32 127, i32 %902
  call void @exitPGP(i32 noundef %904)
  unreachable

905:                                              ; preds = %412, %453, %467, %483, %495, %516, %543, %552, %555, %590, %599, %602, %640, %643, %676, %707, %709, %736, %769, %775, %776, %787, %791, %792, %809, %828, %831, %835, %841, %881, %888
  %906 = phi i32 [ -1, %831 ], [ -1, %841 ], [ -1, %787 ], [ -1, %791 ], [ -1, %676 ], [ 0, %590 ], [ 0, %543 ], [ %469, %467 ], [ %406, %412 ], [ %447, %453 ], [ %487, %495 ], [ %487, %483 ], [ -1, %516 ], [ %553, %555 ], [ %553, %552 ], [ %600, %602 ], [ %600, %599 ], [ %641, %643 ], [ %641, %640 ], [ %703, %709 ], [ %703, %707 ], [ -1, %736 ], [ %767, %775 ], [ %767, %769 ], [ 0, %792 ], [ 0, %776 ], [ -1, %809 ], [ 0, %835 ], [ 0, %828 ], [ %886, %888 ], [ %886, %881 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #22
  %907 = icmp slt i32 %906, 0
  br i1 %907, label %908, label %918

908:                                              ; preds = %905
  %909 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %910 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %911 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %909, ptr noundef %910)
  %912 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %913 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %914 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %912, ptr noundef %913)
  %915 = load i32, ptr @errorLvl, align 4
  %916 = icmp eq i32 %915, 0
  %917 = select i1 %916, i32 127, i32 %915
  call void @exitPGP(i32 noundef %917)
  unreachable

918:                                              ; preds = %905
  call void @exitPGP(i32 noundef %906)
  unreachable

919:                                              ; preds = %348
  %920 = load i1, ptr @decrypt_only_flag, align 1
  %921 = load i1, ptr @strip_sig_flag, align 1
  %922 = select i1 %920, i1 %921, i1 false
  br i1 %922, label %923, label %924

923:                                              ; preds = %919
  store i1 false, ptr @decrypt_only_flag, align 1
  br label %924

924:                                              ; preds = %923, %919
  %925 = load i1, ptr @decrypt_only_flag, align 1
  %926 = icmp ne i8 %282, 0
  %927 = select i1 %925, i1 %926, i1 false
  br i1 %927, label %928, label %929

928:                                              ; preds = %924
  store i1 true, ptr @de_armor_only, align 1
  br label %929

929:                                              ; preds = %928, %924
  %930 = phi i8 [ 1, %928 ], [ 0, %924 ]
  %931 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %932 = icmp eq ptr %931, null
  br i1 %932, label %934, label %933

933:                                              ; preds = %929
  store i1 false, ptr @preserve_filename, align 1
  br label %934

934:                                              ; preds = %933, %929
  %935 = load i1, ptr @sign_flag, align 1
  %936 = icmp ne i8 %285, 0
  %937 = select i1 %935, i1 true, i1 %936
  %938 = icmp ne i8 %286, 0
  %939 = select i1 %937, i1 true, i1 %938
  %940 = select i1 %939, i1 true, i1 %926
  br i1 %940, label %993, label %941

941:                                              ; preds = %934
  %942 = icmp eq i8 %281, 0
  br i1 %942, label %993, label %943

943:                                              ; preds = %941
  %944 = load i32, ptr @myArgc, align 4, !tbaa !19
  %945 = icmp eq i32 %944, 3
  br i1 %945, label %959, label %946

946:                                              ; preds = %943
  call fastcc void @signon_msg()
  %947 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %948 = call ptr @LANG(ptr noundef nonnull @.str.143) #22
  %949 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %947, ptr noundef %948)
  store i32 5, ptr @errorLvl, align 4, !tbaa !19
  %950 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %951 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %952 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %950, ptr noundef %951)
  %953 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %954 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %955 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %953, ptr noundef %954)
  %956 = load i32, ptr @errorLvl, align 4
  %957 = icmp eq i32 %956, 0
  %958 = select i1 %957, i32 127, i32 %956
  call void @exitPGP(i32 noundef %958)
  unreachable

959:                                              ; preds = %943
  %960 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %961 = getelementptr inbounds ptr, ptr %960, i64 2
  %962 = load ptr, ptr %961, align 8, !tbaa !5
  %963 = call i32 @wipefile(ptr noundef %962) #22
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %965, label %980

965:                                              ; preds = %959
  %966 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %967 = getelementptr inbounds ptr, ptr %966, i64 2
  %968 = load ptr, ptr %967, align 8, !tbaa !5
  %969 = call i32 @remove(ptr noundef %968) #22
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %971, label %980

971:                                              ; preds = %965
  %972 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %973 = call ptr @LANG(ptr noundef nonnull @.str.17) #22
  %974 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %975 = getelementptr inbounds ptr, ptr %974, i64 2
  %976 = load ptr, ptr %975, align 8, !tbaa !5
  %977 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %972, ptr noundef %973, ptr noundef %976)
  %978 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %979 = call i32 @fputc(i32 10, ptr %978)
  call void @exitPGP(i32 noundef 0)
  unreachable

980:                                              ; preds = %965, %959
  %981 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %982 = getelementptr inbounds ptr, ptr %981, i64 2
  %983 = load ptr, ptr %982, align 8, !tbaa !5
  %984 = call zeroext i8 @file_exists(ptr noundef %983) #22
  %985 = icmp eq i8 %984, 0
  %986 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %987 = select i1 %985, ptr @.str.19, ptr @.str.18
  %988 = call ptr @LANG(ptr noundef nonnull %987) #22
  %989 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %990 = getelementptr inbounds ptr, ptr %989, i64 2
  %991 = load ptr, ptr %990, align 8, !tbaa !5
  %992 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %986, ptr noundef %988, ptr noundef %991)
  call void @exitPGP(i32 noundef 3)
  unreachable

993:                                              ; preds = %941, %934
  %994 = phi i8 [ %930, %934 ], [ 1, %941 ]
  %995 = load i32, ptr @myArgc, align 4, !tbaa !19
  %996 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %995)
  %997 = load i32, ptr @myArgc, align 4, !tbaa !19
  switch i32 %997, label %1087 [
    i32 2, label %998
    i32 4, label %1041
    i32 5, label %1053
    i32 6, label %1066
  ]

998:                                              ; preds = %993
  %999 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1000 = icmp eq i8 %999, 0
  br i1 %1000, label %1001, label %1020

1001:                                             ; preds = %998
  %1002 = load ptr, ptr @stdin, align 8, !tbaa !5
  %1003 = call i32 @fileno(ptr noundef %1002) #22
  %1004 = call i32 @isatty(i32 noundef %1003) #22
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1020

1006:                                             ; preds = %1001
  %1007 = load i8, ptr @moreflag, align 1, !tbaa !11
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1009, label %1011

1009:                                             ; preds = %1006
  %1010 = load ptr, ptr @stderr, align 8, !tbaa !5
  store ptr %1010, ptr @pgpout, align 8, !tbaa !5
  br label %1011

1011:                                             ; preds = %1009, %1006
  store i8 1, ptr @filter_mode, align 1, !tbaa !11
  %1012 = load ptr, ptr @stdout, align 8, !tbaa !5
  %1013 = call i32 @fileno(ptr noundef %1012) #22
  %1014 = call i32 @isatty(i32 noundef %1013) #22
  %1015 = icmp eq i32 %1014, 0
  %1016 = load i8, ptr @moreflag, align 1
  %1017 = icmp ne i8 %1016, 0
  %1018 = select i1 %1015, i1 true, i1 %1017
  br i1 %1018, label %1020, label %1019

1019:                                             ; preds = %1011
  store i1 true, ptr @preserve_filename, align 1
  br label %1020

1020:                                             ; preds = %1011, %1019, %1001, %998
  %1021 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1022 = icmp eq i8 %1021, 0
  br i1 %1022, label %1023, label %1099

1023:                                             ; preds = %1020
  %1024 = load i8, ptr @quietmode, align 1, !tbaa !11
  %1025 = icmp eq i8 %1024, 0
  br i1 %1025, label %1027, label %1026

1026:                                             ; preds = %1023
  store i8 0, ptr @quietmode, align 1, !tbaa !11
  call fastcc void @signon_msg()
  br label %1027

1027:                                             ; preds = %1026, %1023
  %1028 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1029 = call ptr @LANG(ptr noundef nonnull @.str.21) #22
  %1030 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1028, ptr noundef %1029)
  %1031 = call ptr @LANG(ptr noundef nonnull @.str.22) #22
  %1032 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1031, ptr noundef nonnull dereferenceable(13) @.str.22) #21
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1037, label %1034

1034:                                             ; preds = %1027
  %1035 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1036 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1035, ptr noundef %1031)
  br label %1037

1037:                                             ; preds = %1034, %1027
  %1038 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1039 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1040 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1038, ptr noundef %1039)
  call void @exit(i32 noundef 5) #24
  unreachable

1041:                                             ; preds = %993
  %1042 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1043 = icmp eq i8 %1042, 0
  %1044 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %1045 = getelementptr inbounds ptr, ptr %1044, i64 2
  br i1 %1043, label %1046, label %1049

1046:                                             ; preds = %1041
  %1047 = load ptr, ptr %1045, align 8, !tbaa !5
  %1048 = getelementptr inbounds ptr, ptr %1044, i64 3
  br label %1049

1049:                                             ; preds = %1041, %1046
  %1050 = phi ptr [ %1048, %1046 ], [ %1045, %1041 ]
  %1051 = phi ptr [ %1047, %1046 ], [ null, %1041 ]
  %1052 = call ptr @ParseRecipients(ptr noundef nonnull %1050)
  br label %1099

1053:                                             ; preds = %993
  %1054 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %1055 = getelementptr inbounds ptr, ptr %1054, i64 2
  %1056 = load ptr, ptr %1055, align 8, !tbaa !5
  %1057 = getelementptr inbounds ptr, ptr %1054, i64 3
  %1058 = load ptr, ptr %1057, align 8, !tbaa !5
  store ptr %1058, ptr @pubring_file, align 8, !tbaa !5
  %1059 = getelementptr inbounds ptr, ptr %1054, i64 4
  %1060 = load ptr, ptr %1059, align 8, !tbaa !5
  store ptr %1060, ptr @secring_file, align 8, !tbaa !5
  %1061 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %1058, ptr noundef %1060)
  %1062 = load ptr, ptr @pubring_file, align 8, !tbaa !5
  %1063 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalPubringName, ptr noundef nonnull dereferenceable(1) %1062) #22
  %1064 = load ptr, ptr @secring_file, align 8, !tbaa !5
  %1065 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalSecringName, ptr noundef nonnull dereferenceable(1) %1064) #22
  br label %1099

1066:                                             ; preds = %993
  %1067 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1068 = icmp eq i8 %1067, 0
  %1069 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %1070 = getelementptr inbounds ptr, ptr %1069, i64 2
  br i1 %1068, label %1071, label %1083

1071:                                             ; preds = %1066
  %1072 = load ptr, ptr %1070, align 8, !tbaa !5
  %1073 = getelementptr inbounds ptr, ptr %1069, i64 3
  %1074 = load ptr, ptr %1073, align 8, !tbaa !5
  store ptr %1074, ptr @pubring_file, align 8, !tbaa !5
  %1075 = getelementptr inbounds ptr, ptr %1069, i64 4
  %1076 = load ptr, ptr %1075, align 8, !tbaa !5
  store ptr %1076, ptr @secring_file, align 8, !tbaa !5
  %1077 = getelementptr inbounds ptr, ptr %1069, i64 5
  %1078 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %1074, ptr noundef %1076)
  %1079 = load ptr, ptr @pubring_file, align 8, !tbaa !5
  %1080 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalPubringName, ptr noundef nonnull dereferenceable(1) %1079) #22
  %1081 = load ptr, ptr @secring_file, align 8, !tbaa !5
  %1082 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @globalSecringName, ptr noundef nonnull dereferenceable(1) %1081) #22
  br label %1083

1083:                                             ; preds = %1066, %1071
  %1084 = phi ptr [ %1077, %1071 ], [ %1070, %1066 ]
  %1085 = phi ptr [ %1072, %1071 ], [ null, %1066 ]
  %1086 = call ptr @ParseRecipients(ptr noundef nonnull %1084)
  br label %1099

1087:                                             ; preds = %993
  %1088 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1089 = icmp eq i8 %1088, 0
  %1090 = load ptr, ptr @myArgv, align 8, !tbaa !5
  %1091 = getelementptr inbounds ptr, ptr %1090, i64 2
  br i1 %1089, label %1092, label %1095

1092:                                             ; preds = %1087
  %1093 = load ptr, ptr %1091, align 8, !tbaa !5
  %1094 = getelementptr inbounds ptr, ptr %1090, i64 3
  br label %1095

1095:                                             ; preds = %1087, %1092
  %1096 = phi ptr [ %1094, %1092 ], [ %1091, %1087 ]
  %1097 = phi ptr [ %1093, %1092 ], [ null, %1087 ]
  %1098 = call ptr @ParseRecipients(ptr noundef nonnull %1096)
  br label %1099

1099:                                             ; preds = %1049, %1083, %1095, %1053, %1020
  %1100 = phi ptr [ null, %1020 ], [ %1052, %1049 ], [ null, %1053 ], [ %1086, %1083 ], [ %1098, %1095 ]
  %1101 = phi ptr [ null, %1020 ], [ %1051, %1049 ], [ %1056, %1053 ], [ %1085, %1083 ], [ %1097, %1095 ]
  %1102 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1103 = icmp eq i8 %1102, 0
  br i1 %1103, label %1104, label %1154

1104:                                             ; preds = %1099
  %1105 = load i32, ptr @makerandom, align 4, !tbaa !19
  %1106 = icmp sgt i32 %1105, 0
  br i1 %1106, label %1107, label %1121

1107:                                             ; preds = %1104
  %1108 = call i32 @cryptRandWriteFile(ptr noundef %1101, ptr noundef null, i32 noundef %1105) #22
  %1109 = icmp slt i32 %1108, 0
  br i1 %1109, label %1110, label %1113

1110:                                             ; preds = %1107
  %1111 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1111, ptr noundef nonnull @.str.26, ptr noundef %1101) #23
  call void @exitPGP(i32 noundef 1)
  unreachable

1113:                                             ; preds = %1107
  %1114 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1115 = call ptr @LANG(ptr noundef nonnull @.str.27) #22
  %1116 = load i32, ptr @makerandom, align 4, !tbaa !19
  %1117 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1114, ptr noundef %1115, ptr noundef %1101, i32 noundef %1116)
  %1118 = icmp eq i8 %994, 0
  br i1 %1118, label %1120, label %1119

1119:                                             ; preds = %1113
  call void @exitPGP(i32 noundef 0)
  unreachable

1120:                                             ; preds = %1113
  store i8 98, ptr @literal_mode, align 1, !tbaa !11
  br label %1154

1121:                                             ; preds = %1104
  %1122 = icmp eq i8 %994, 0
  br i1 %1122, label %1137, label %1123

1123:                                             ; preds = %1121
  %1124 = call zeroext i8 @no_extension(ptr noundef %1101) #22
  %1125 = icmp eq i8 %1124, 0
  br i1 %1125, label %1137, label %1126

1126:                                             ; preds = %1123
  %1127 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1101) #22
  call void @force_extension(ptr noundef nonnull %14, ptr noundef nonnull @ASC_EXTENSION) #22
  %1128 = call zeroext i8 @file_exists(ptr noundef nonnull %14) #22
  %1129 = icmp eq i8 %1128, 0
  br i1 %1129, label %1130, label %1137

1130:                                             ; preds = %1126
  call void @force_extension(ptr noundef nonnull %14, ptr noundef nonnull @PGP_EXTENSION) #22
  %1131 = call zeroext i8 @file_exists(ptr noundef nonnull %14) #22
  %1132 = icmp eq i8 %1131, 0
  br i1 %1132, label %1133, label %1137

1133:                                             ; preds = %1130
  call void @force_extension(ptr noundef nonnull %14, ptr noundef nonnull @SIG_EXTENSION) #22
  %1134 = call zeroext i8 @file_exists(ptr noundef nonnull %14) #22
  %1135 = icmp eq i8 %1134, 0
  %1136 = select i1 %1135, ptr %1101, ptr %14
  br label %1137

1137:                                             ; preds = %1133, %1130, %1126, %1123, %1121
  %1138 = phi ptr [ %1101, %1123 ], [ %1101, %1121 ], [ %14, %1126 ], [ %14, %1130 ], [ %1136, %1133 ]
  %1139 = call zeroext i8 @file_exists(ptr noundef %1138) #22
  %1140 = icmp eq i8 %1139, 0
  br i1 %1140, label %1141, label %1154

1141:                                             ; preds = %1137
  %1142 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1143 = call ptr @LANG(ptr noundef nonnull @.str.19) #22
  %1144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1142, ptr noundef %1143, ptr noundef %1138)
  store i32 2, ptr @errorLvl, align 4, !tbaa !19
  %1145 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1146 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1145, ptr noundef %1146)
  %1148 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1149 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1148, ptr noundef %1149)
  %1151 = load i32, ptr @errorLvl, align 4
  %1152 = icmp eq i32 %1151, 0
  %1153 = select i1 %1152, i32 127, i32 %1151
  call void @exitPGP(i32 noundef %1153)
  unreachable

1154:                                             ; preds = %1099, %1120, %1137
  %1155 = phi ptr [ %1101, %1120 ], [ %1138, %1137 ], [ @.str.25, %1099 ]
  %1156 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1155) #21
  %1157 = icmp ugt i64 %1156, 251
  br i1 %1157, label %1158, label %1171

1158:                                             ; preds = %1154
  %1159 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1160 = call ptr @LANG(ptr noundef nonnull @.str.28) #22
  %1161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1159, ptr noundef %1160, ptr noundef %1155)
  store i32 1, ptr @errorLvl, align 4, !tbaa !19
  %1162 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1163 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1162, ptr noundef %1163)
  %1165 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1166 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1165, ptr noundef %1166)
  %1168 = load i32, ptr @errorLvl, align 4
  %1169 = icmp eq i32 %1168, 0
  %1170 = select i1 %1169, i32 127, i32 %1168
  call void @exitPGP(i32 noundef %1170)
  unreachable

1171:                                             ; preds = %1154
  %1172 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @plainfile, ptr noundef nonnull dereferenceable(1) %1155) #22
  %1173 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1174 = icmp eq i8 %1173, 0
  br i1 %1174, label %1176, label %1175

1175:                                             ; preds = %1171
  call void @setoutdir(ptr noundef null) #22
  br label %1181

1176:                                             ; preds = %1171
  %1177 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %1178 = icmp eq ptr %1177, null
  br i1 %1178, label %1180, label %1179

1179:                                             ; preds = %1176
  call void @setoutdir(ptr noundef nonnull %1177) #22
  br label %1181

1180:                                             ; preds = %1176
  call void @setoutdir(ptr noundef %1155) #22
  br label %1181

1181:                                             ; preds = %1179, %1180, %1175
  %1182 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1183 = icmp eq i8 %1182, 0
  br i1 %1183, label %1187, label %1184

1184:                                             ; preds = %1181
  %1185 = call ptr @tempfile(i32 noundef 5) #22
  %1186 = call i32 @readPhantomInput(ptr noundef %1185) #22
  br label %1187

1187:                                             ; preds = %1181, %1184
  %1188 = phi ptr [ %1185, %1184 ], [ %1155, %1181 ]
  %1189 = call i32 @get_header_info_from_file(ptr noundef %1188, ptr noundef nonnull %15, i32 noundef 1) #22
  %1190 = icmp eq i8 %994, 0
  br i1 %1190, label %1324, label %1191

1191:                                             ; preds = %1187
  store i8 0, ptr @strip_spaces, align 1, !tbaa !11
  %1192 = load i8, ptr %15, align 1, !tbaa !11
  %1193 = icmp sgt i8 %1192, -1
  br i1 %1193, label %1194, label %1314

1194:                                             ; preds = %1191
  %1195 = call zeroext i8 @is_armor_file(ptr noundef %1188, i64 noundef 0) #22
  %1196 = icmp eq i8 %1195, 0
  br i1 %1196, label %1314, label %1197

1197:                                             ; preds = %1194
  %1198 = call i32 @puts(ptr nonnull dereferenceable(1) @str.150)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !22
  %1199 = call ptr @tempfile(i32 noundef 0) #22
  store i8 0, ptr @strip_spaces, align 1, !tbaa !11
  store i8 1, ptr @use_charset_header, align 1, !tbaa !11
  %1200 = load i64, ptr %5, align 8, !tbaa !22
  %1201 = call i32 @de_armor_file(ptr noundef %1188, ptr noundef %1199, ptr noundef nonnull %5) #22
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1216, label %1203

1203:                                             ; preds = %1305, %1197
  %1204 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1205 = call ptr @LANG(ptr noundef nonnull @.str.64) #22
  %1206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1204, ptr noundef %1205, ptr noundef %1188)
  store i32 1, ptr @errorLvl, align 4, !tbaa !19
  %1207 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1208 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1207, ptr noundef %1208)
  %1210 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1211 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1210, ptr noundef %1211)
  %1213 = load i32, ptr @errorLvl, align 4
  %1214 = icmp eq i32 %1213, 0
  %1215 = select i1 %1214, i32 127, i32 %1213
  call void @exitPGP(i32 noundef %1215)
  unreachable

1216:                                             ; preds = %1197, %1305
  %1217 = phi i64 [ %1310, %1305 ], [ %1200, %1197 ]
  %1218 = phi ptr [ %1309, %1305 ], [ %1199, %1197 ]
  %1219 = phi i32 [ %1289, %1305 ], [ 0, %1197 ]
  %1220 = load i8, ptr @keepctx, align 1, !tbaa !11
  %1221 = icmp ne i8 %1220, 0
  %1222 = load i1, ptr @de_armor_only, align 1
  %1223 = select i1 %1221, i1 true, i1 %1222
  br i1 %1223, label %1224, label %1265

1224:                                             ; preds = %1216
  %1225 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %1226 = icmp ne ptr %1225, null
  %1227 = select i1 %1226, i1 %1222, i1 false
  br i1 %1227, label %1228, label %1235

1228:                                             ; preds = %1224
  %1229 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1225, ptr noundef nonnull dereferenceable(2) @.str.16) #21
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1231, label %1233

1231:                                             ; preds = %1228
  %1232 = call i32 @writePhantomOutput(ptr noundef %1218) #22
  call void @rmtemp(ptr noundef %1218) #22
  br label %1313

1233:                                             ; preds = %1228
  %1234 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1225) #22
  br label %1238

1235:                                             ; preds = %1224
  %1236 = call ptr @file_tail(ptr noundef %1188) #22
  %1237 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1236) #22
  call void @force_extension(ptr noundef nonnull %4, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %1238

1238:                                             ; preds = %1235, %1233
  %1239 = call ptr @savetemp(ptr noundef %1218, ptr noundef nonnull %4) #22
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1241, label %1251

1241:                                             ; preds = %1238
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  %1242 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1243 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1242, ptr noundef %1243)
  %1245 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1246 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1247 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1245, ptr noundef %1246)
  %1248 = load i32, ptr @errorLvl, align 4
  %1249 = icmp eq i32 %1248, 0
  %1250 = select i1 %1249, i32 127, i32 %1248
  call void @exitPGP(i32 noundef %1250)
  unreachable

1251:                                             ; preds = %1238
  %1252 = load i8, ptr @quietmode, align 1, !tbaa !11
  %1253 = icmp eq i8 %1252, 0
  br i1 %1253, label %1254, label %1258

1254:                                             ; preds = %1251
  %1255 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1256 = call ptr @LANG(ptr noundef nonnull @.str.65) #22
  %1257 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1255, ptr noundef %1256, ptr noundef %1188, ptr noundef nonnull %1239)
  br label %1258

1258:                                             ; preds = %1254, %1251
  %1259 = load i1, ptr @de_armor_only, align 1
  br i1 %1259, label %1263, label %1260

1260:                                             ; preds = %1258
  %1261 = call fastcc i32 @do_decrypt(ptr noundef nonnull %1239), !range !24
  %1262 = icmp sgt i32 %1261, -1
  br i1 %1262, label %1263, label %1288

1263:                                             ; preds = %1260, %1258
  %1264 = add nsw i32 %1219, 1
  br label %1288

1265:                                             ; preds = %1216
  %1266 = load i8, ptr @charset_header, align 16, !tbaa !11
  %1267 = icmp eq i8 %1266, 0
  br i1 %1267, label %1269, label %1268

1268:                                             ; preds = %1265
  store i32 1, ptr @checksig_pass, align 4, !tbaa !19
  br label %1269

1269:                                             ; preds = %1268, %1265
  %1270 = call fastcc i32 @do_decrypt(ptr noundef %1218), !range !24
  %1271 = icmp sgt i32 %1270, -1
  %1272 = zext i1 %1271 to i32
  %1273 = add nsw i32 %1219, %1272
  call void @rmtemp(ptr noundef %1218) #22
  %1274 = load i8, ptr @charset_header, align 16, !tbaa !11
  %1275 = icmp eq i8 %1274, 0
  br i1 %1275, label %1288, label %1276

1276:                                             ; preds = %1269
  %1277 = load i32, ptr @checksig_pass, align 4, !tbaa !19
  %1278 = icmp eq i32 %1277, 2
  br i1 %1278, label %1279, label %1286

1279:                                             ; preds = %1276
  %1280 = call ptr @tempfile(i32 noundef 0) #22
  store i8 0, ptr @use_charset_header, align 1, !tbaa !11
  store i64 %1217, ptr %5, align 8, !tbaa !22
  %1281 = call i32 @de_armor_file(ptr noundef %1188, ptr noundef %1280, ptr noundef nonnull %5) #22
  %1282 = call fastcc i32 @do_decrypt(ptr noundef %1280), !range !24
  %1283 = icmp sgt i32 %1282, -1
  %1284 = zext i1 %1283 to i32
  %1285 = add nsw i32 %1273, %1284
  call void @rmtemp(ptr noundef %1280) #22
  br label %1286

1286:                                             ; preds = %1279, %1276
  %1287 = phi i32 [ %1285, %1279 ], [ %1273, %1276 ]
  store i32 0, ptr @checksig_pass, align 4, !tbaa !19
  br label %1288

1288:                                             ; preds = %1286, %1269, %1263, %1260
  %1289 = phi i32 [ %1264, %1263 ], [ %1219, %1260 ], [ %1287, %1286 ], [ %1273, %1269 ]
  %1290 = load i64, ptr %5, align 8, !tbaa !22
  %1291 = call zeroext i8 @is_armor_file(ptr noundef %1188, i64 noundef %1290) #22
  %1292 = icmp eq i8 %1291, 0
  br i1 %1292, label %1293, label %1305

1293:                                             ; preds = %1288
  %1294 = icmp eq i32 %1289, 0
  br i1 %1294, label %1295, label %1313

1295:                                             ; preds = %1293
  %1296 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1297 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1298 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1296, ptr noundef %1297)
  %1299 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1300 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1299, ptr noundef %1300)
  %1302 = load i32, ptr @errorLvl, align 4
  %1303 = icmp eq i32 %1302, 0
  %1304 = select i1 %1303, i32 127, i32 %1302
  call void @exitPGP(i32 noundef %1304)
  unreachable

1305:                                             ; preds = %1288
  %1306 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1307 = call ptr @LANG(ptr noundef nonnull @.str.66) #22
  %1308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1306, ptr noundef %1307, ptr noundef %1188)
  %1309 = call ptr @tempfile(i32 noundef 0) #22
  store i8 0, ptr @strip_spaces, align 1, !tbaa !11
  store i8 1, ptr @use_charset_header, align 1, !tbaa !11
  %1310 = load i64, ptr %5, align 8, !tbaa !22
  %1311 = call i32 @de_armor_file(ptr noundef %1188, ptr noundef %1309, ptr noundef nonnull %5) #22
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1216, label %1203, !llvm.loop !25

1313:                                             ; preds = %1231, %1293
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #22
  br label %1316

1314:                                             ; preds = %1194, %1191
  %1315 = call fastcc i32 @do_decrypt(ptr noundef %1188), !range !24
  br label %1316

1316:                                             ; preds = %1314, %1313
  %1317 = load i8, ptr @batchmode, align 1, !tbaa !11
  %1318 = icmp eq i8 %1317, 0
  %1319 = load i8, ptr @signature_checked, align 1
  %1320 = icmp ne i8 %1319, 0
  %1321 = select i1 %1318, i1 true, i1 %1320
  br i1 %1321, label %1323, label %1322

1322:                                             ; preds = %1316
  call void @exitPGP(i32 noundef 1)
  unreachable

1323:                                             ; preds = %1316
  call void @exitPGP(i32 noundef 0)
  unreachable

1324:                                             ; preds = %1187
  %1325 = load i8, ptr @batchmode, align 1, !tbaa !11
  %1326 = icmp ne i8 %1325, 0
  %1327 = load i8, ptr @filter_mode, align 1
  %1328 = icmp ne i8 %1327, 0
  %1329 = select i1 %1326, i1 true, i1 %1328
  br i1 %1329, label %1342, label %1330

1330:                                             ; preds = %1324
  %1331 = load i8, ptr %15, align 1, !tbaa !11
  %1332 = call zeroext i8 @legal_ctb(i8 noundef zeroext %1331) #22
  %1333 = icmp eq i8 %1332, 0
  br i1 %1333, label %1342, label %1334

1334:                                             ; preds = %1330
  %1335 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1336 = call ptr @LANG(ptr noundef nonnull @.str.29) #22
  %1337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1335, ptr noundef %1336, ptr noundef %1155)
  %1338 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1339 = call ptr @LANG(ptr noundef nonnull @.str.30) #22
  %1340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1338, ptr noundef %1339)
  %1341 = call zeroext i8 @getyesno(i8 noundef signext 110) #22
  br label %1353

1342:                                             ; preds = %1330, %1324
  %1343 = load i8, ptr @force_flag, align 1, !tbaa !11
  %1344 = icmp ne i8 %1343, 0
  %1345 = load i32, ptr @makerandom, align 4
  %1346 = icmp eq i32 %1345, 0
  %1347 = select i1 %1344, i1 %1346, i1 false
  br i1 %1347, label %1348, label %1353

1348:                                             ; preds = %1342
  %1349 = load i8, ptr %15, align 1, !tbaa !11
  %1350 = call zeroext i8 @legal_ctb(i8 noundef zeroext %1349) #22
  %1351 = icmp ne i8 %1350, 0
  %1352 = zext i1 %1351 to i8
  br label %1353

1353:                                             ; preds = %1348, %1342, %1334
  %1354 = phi i8 [ 0, %1342 ], [ %1341, %1334 ], [ %1352, %1348 ]
  %1355 = load i8, ptr @moreflag, align 1, !tbaa !11
  %1356 = icmp ne i8 %1355, 0
  %1357 = load i32, ptr @makerandom, align 4
  %1358 = icmp eq i32 %1357, 0
  %1359 = select i1 %1356, i1 %1358, i1 false
  br i1 %1359, label %1360, label %1362

1360:                                             ; preds = %1353
  %1361 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @CONSOLE_FILENAME) #22
  store i8 116, ptr @literal_mode, align 1, !tbaa !11
  br label %1365

1362:                                             ; preds = %1353
  %1363 = call ptr @file_tail(ptr noundef %1155) #22
  %1364 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1363) #22
  br label %1365

1365:                                             ; preds = %1362, %1360
  %1366 = load i8, ptr @literal_mode, align 1, !tbaa !11
  %1367 = icmp eq i8 %1366, 116
  br i1 %1367, label %1368, label %1375

1368:                                             ; preds = %1365
  %1369 = call i32 @is_text_file(ptr noundef %1188) #22
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1371, label %1375

1371:                                             ; preds = %1368
  %1372 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1373 = call ptr @LANG(ptr noundef nonnull @.str.31) #22
  %1374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1372, ptr noundef %1373, ptr noundef %1188)
  store i8 98, ptr @literal_mode, align 1, !tbaa !11
  br label %1375

1375:                                             ; preds = %1371, %1368, %1365
  %1376 = load i8, ptr @moreflag, align 1, !tbaa !11
  %1377 = icmp ne i8 %1376, 0
  %1378 = load i8, ptr @literal_mode, align 1
  %1379 = icmp eq i8 %1378, 98
  %1380 = select i1 %1377, i1 %1379, i1 false
  br i1 %1380, label %1381, label %1394

1381:                                             ; preds = %1375
  %1382 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1383 = call ptr @LANG(ptr noundef nonnull @.str.32) #22
  %1384 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1382, ptr noundef %1383)
  store i32 1, ptr @errorLvl, align 4, !tbaa !19
  %1385 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1386 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1387 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1385, ptr noundef %1386)
  %1388 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1389 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1390 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1388, ptr noundef %1389)
  %1391 = load i32, ptr @errorLvl, align 4
  %1392 = icmp eq i32 %1391, 0
  %1393 = select i1 %1392, i32 127, i32 %1391
  call void @exitPGP(i32 noundef %1393)
  unreachable

1394:                                             ; preds = %1375
  %1395 = load i8, ptr @compress_enabled, align 1, !tbaa !11
  %1396 = icmp eq i8 %1395, 0
  %1397 = icmp ne i8 %283, 0
  %1398 = select i1 %1396, i1 true, i1 %1397
  %1399 = icmp ne i8 %1354, 0
  %1400 = select i1 %1398, i1 true, i1 %1399
  %1401 = load i32, ptr @makerandom, align 4
  %1402 = icmp ne i32 %1401, 0
  %1403 = select i1 %1400, i1 true, i1 %1402
  br i1 %1403, label %1440, label %1404

1404:                                             ; preds = %1394
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %1405 = call i32 @get_header_info_from_file(ptr noundef nonnull @plainfile, ptr noundef nonnull %3, i32 noundef 8) #22
  br label %1406

1406:                                             ; preds = %1413, %1404
  %1407 = phi i64 [ 0, %1404 ], [ %1414, %1413 ]
  %1408 = getelementptr inbounds [10 x ptr], ptr @compressSig, i64 0, i64 %1407
  %1409 = load ptr, ptr %1408, align 8, !tbaa !5
  %1410 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1409) #21
  %1411 = call i32 @strncmp(ptr noundef nonnull %3, ptr noundef %1409, i64 noundef %1410) #21
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1434, label %1413

1413:                                             ; preds = %1406
  %1414 = add nuw nsw i64 %1407, 1
  %1415 = icmp eq i64 %1414, 10
  br i1 %1415, label %1416, label %1406, !llvm.loop !9

1416:                                             ; preds = %1413
  %1417 = getelementptr inbounds i8, ptr %3, i64 2
  %1418 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1417, ptr noundef nonnull dereferenceable(5) @.str, i64 5)
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1437, label %1420

1420:                                             ; preds = %1416
  %1421 = load i8, ptr %1417, align 1, !tbaa !11
  %1422 = icmp eq i8 %1421, 45
  %1423 = getelementptr inbounds i8, ptr %3, i64 3
  %1424 = load i8, ptr %1423, align 1
  %1425 = icmp eq i8 %1424, 108
  %1426 = select i1 %1422, i1 %1425, i1 false
  br i1 %1426, label %1427, label %1437

1427:                                             ; preds = %1420
  %1428 = getelementptr inbounds i8, ptr %3, i64 4
  %1429 = load i8, ptr %1428, align 1, !tbaa !11
  switch i8 %1429, label %1437 [
    i8 122, label %1430
    i8 104, label %1430
  ]

1430:                                             ; preds = %1427, %1427
  %1431 = getelementptr inbounds i8, ptr %3, i64 6
  %1432 = load i8, ptr %1431, align 1, !tbaa !11
  %1433 = icmp eq i8 %1432, 45
  br label %1437

1434:                                             ; preds = %1406
  %1435 = and i64 %1407, 2147483648
  %1436 = icmp eq i64 %1435, 0
  br label %1437

1437:                                             ; preds = %1416, %1420, %1427, %1430, %1434
  %1438 = phi i1 [ true, %1416 ], [ false, %1427 ], [ false, %1420 ], [ %1433, %1430 ], [ %1436, %1434 ]
  %1439 = xor i1 %1438, true
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %1440

1440:                                             ; preds = %1437, %1394
  %1441 = phi i1 [ false, %1394 ], [ %1439, %1437 ]
  %1442 = zext i1 %1441 to i8
  %1443 = load i1, ptr @sign_flag, align 1
  br i1 %1443, label %1444, label %1512

1444:                                             ; preds = %1440
  %1445 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1446 = icmp ne i8 %1445, 0
  %1447 = load i8, ptr @quietmode, align 1
  %1448 = icmp ne i8 %1447, 0
  %1449 = select i1 %1446, i1 true, i1 %1448
  br i1 %1449, label %1454, label %1450

1450:                                             ; preds = %1444
  %1451 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1452 = call ptr @LANG(ptr noundef nonnull @.str.33) #22
  %1453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1451, ptr noundef %1452)
  br label %1454

1454:                                             ; preds = %1450, %1444
  %1455 = load i8, ptr @quietmode, align 1, !tbaa !11
  %1456 = icmp eq i8 %1455, 0
  %1457 = load i8, ptr @my_name, align 16
  %1458 = icmp eq i8 %1457, 0
  %1459 = select i1 %1456, i1 %1458, i1 false
  br i1 %1459, label %1460, label %1464

1460:                                             ; preds = %1454
  %1461 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1462 = call ptr @LANG(ptr noundef nonnull @.str.34) #22
  %1463 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1461, ptr noundef %1462)
  br label %1464

1464:                                             ; preds = %1460, %1454
  store i8 0, ptr @strip_spaces, align 1, !tbaa !11
  %1465 = load i8, ptr @literal_mode, align 1, !tbaa !11
  %1466 = icmp eq i8 %1465, 116
  br i1 %1466, label %1467, label %1483

1467:                                             ; preds = %1464
  %1468 = call ptr @tempfile(i32 noundef 5) #22
  %1469 = select i1 %936, i1 true, i1 %1397
  %1470 = xor i1 %1469, true
  %1471 = load i8, ptr @emit_radix_64, align 1
  %1472 = icmp ne i8 %1471, 0
  %1473 = select i1 %1470, i1 %1472, i1 false
  %1474 = load i8, ptr @clear_signatures, align 1
  %1475 = icmp ne i8 %1474, 0
  %1476 = select i1 %1473, i1 %1475, i1 false
  br i1 %1476, label %1477, label %1478

1477:                                             ; preds = %1467
  store i8 1, ptr @strip_spaces, align 1, !tbaa !11
  br label %1478

1478:                                             ; preds = %1477, %1467
  %1479 = phi ptr [ %1188, %1477 ], [ null, %1467 ]
  %1480 = call i32 @make_canonical(ptr noundef %1188, ptr noundef %1468) #22
  %1481 = icmp eq ptr %1479, null
  br i1 %1481, label %1482, label %1483

1482:                                             ; preds = %1478
  call void @rmtemp(ptr noundef %1188) #22
  br label %1483

1483:                                             ; preds = %1478, %1482, %1464
  %1484 = phi ptr [ %1188, %1464 ], [ %1468, %1482 ], [ %1468, %1478 ]
  %1485 = phi ptr [ null, %1464 ], [ %1479, %1482 ], [ %1479, %1478 ]
  %1486 = select i1 %1441, i1 true, i1 %936
  %1487 = load i8, ptr @emit_radix_64, align 1
  %1488 = or i8 %1487, %328
  %1489 = icmp ne i8 %1488, 0
  %1490 = select i1 %1486, i1 true, i1 %1489
  %1491 = select i1 %1490, i32 5, i32 1
  %1492 = call ptr @tempfile(i32 noundef %1491) #22
  %1493 = icmp ne ptr %1485, null
  %1494 = or i1 %1397, %1493
  %1495 = zext i1 %1494 to i8
  %1496 = load i8, ptr @literal_mode, align 1, !tbaa !11
  %1497 = call i32 @signfile(i8 noundef zeroext %1354, i8 noundef zeroext %1495, ptr noundef nonnull @my_name, ptr noundef %1484, ptr noundef %1492, i8 noundef signext %1496, ptr noundef nonnull %13) #22
  call void @rmtemp(ptr noundef %1484) #22
  %1498 = icmp slt i32 %1497, 0
  br i1 %1498, label %1499, label %1523

1499:                                             ; preds = %1483
  %1500 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1501 = call ptr @LANG(ptr noundef nonnull @.str.35) #22
  %1502 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1500, ptr noundef %1501)
  store i32 20, ptr @errorLvl, align 4, !tbaa !19
  %1503 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1504 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1505 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1503, ptr noundef %1504)
  %1506 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1507 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1508 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1506, ptr noundef %1507)
  %1509 = load i32, ptr @errorLvl, align 4
  %1510 = icmp eq i32 %1509, 0
  %1511 = select i1 %1510, i32 127, i32 %1509
  call void @exitPGP(i32 noundef %1511)
  unreachable

1512:                                             ; preds = %1440
  br i1 %1399, label %1523, label %1513

1513:                                             ; preds = %1512
  %1514 = select i1 %1441, i1 true, i1 %936
  %1515 = load i8, ptr @emit_radix_64, align 1
  %1516 = or i8 %1515, %328
  %1517 = icmp ne i8 %1516, 0
  %1518 = select i1 %1514, i1 true, i1 %1517
  %1519 = select i1 %1518, i32 5, i32 1
  %1520 = call ptr @tempfile(i32 noundef %1519) #22
  %1521 = load i8, ptr @literal_mode, align 1, !tbaa !11
  %1522 = call i32 @make_literal(ptr noundef %1188, ptr noundef %1520, i8 noundef signext %1521, ptr noundef nonnull %13) #22
  call void @rmtemp(ptr noundef %1188) #22
  br label %1523

1523:                                             ; preds = %1512, %1513, %1483
  %1524 = phi ptr [ %1492, %1483 ], [ %1188, %1512 ], [ %1520, %1513 ]
  %1525 = phi ptr [ %1485, %1483 ], [ null, %1512 ], [ null, %1513 ]
  br i1 %936, label %1526, label %1601

1526:                                             ; preds = %1523
  %1527 = load i8, ptr @emit_radix_64, align 1, !tbaa !11
  %1528 = or i8 %1527, %328
  %1529 = icmp eq i8 %1528, 0
  %1530 = select i1 %1529, i32 1, i32 5
  %1531 = call ptr @tempfile(i32 noundef %1530) #22
  br i1 %938, label %1581, label %1532

1532:                                             ; preds = %1526
  %1533 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %1534 = icmp ne i8 %1533, 0
  %1535 = load i8, ptr @quietmode, align 1
  %1536 = icmp ne i8 %1535, 0
  %1537 = select i1 %1534, i1 true, i1 %1536
  br i1 %1537, label %1542, label %1538

1538:                                             ; preds = %1532
  %1539 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1540 = call ptr @LANG(ptr noundef nonnull @.str.36) #22
  %1541 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1539, ptr noundef %1540)
  br label %1542

1542:                                             ; preds = %1538, %1532
  %1543 = icmp eq ptr %1100, null
  br i1 %1543, label %1550, label %1544

1544:                                             ; preds = %1542
  %1545 = load ptr, ptr %1100, align 8, !tbaa !5
  %1546 = icmp eq ptr %1545, null
  br i1 %1546, label %1550, label %1547

1547:                                             ; preds = %1544
  %1548 = load i8, ptr %1545, align 1, !tbaa !11
  %1549 = icmp eq i8 %1548, 0
  br i1 %1549, label %1550, label %1566

1550:                                             ; preds = %1547, %1544, %1542
  %1551 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1552 = call ptr @LANG(ptr noundef nonnull @.str.37) #22
  %1553 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1551, ptr noundef %1552)
  %1554 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1555 = call ptr @LANG(ptr noundef nonnull @.str.38) #22
  %1556 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1554, ptr noundef %1555)
  %1557 = call i32 @getstring(ptr noundef nonnull @mcguffin, i32 noundef 255, i32 noundef 1) #22
  %1558 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  %1559 = icmp eq ptr %1558, null
  br i1 %1559, label %1560, label %1564

1560:                                             ; preds = %1550
  %1561 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1562 = call ptr @LANG(ptr noundef nonnull @.str.11) #22
  %1563 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1561, ptr noundef %1562) #23
  call void @exitPGP(i32 noundef 7)
  unreachable

1564:                                             ; preds = %1550
  store ptr @mcguffin, ptr %1558, align 8, !tbaa !5
  %1565 = getelementptr inbounds ptr, ptr %1558, i64 1
  store ptr @.str.39, ptr %1565, align 8, !tbaa !5
  br label %1566

1566:                                             ; preds = %1547, %1564
  %1567 = phi ptr [ %1558, %1564 ], [ %1100, %1547 ]
  %1568 = load ptr, ptr %1567, align 8, !tbaa !5
  %1569 = icmp eq ptr %1568, null
  br i1 %1569, label %1579, label %1574

1570:                                             ; preds = %1574
  %1571 = getelementptr inbounds ptr, ptr %1576, i64 1
  %1572 = load ptr, ptr %1571, align 8, !tbaa !5
  %1573 = icmp eq ptr %1572, null
  br i1 %1573, label %1579, label %1574, !llvm.loop !26

1574:                                             ; preds = %1566, %1570
  %1575 = phi ptr [ %1572, %1570 ], [ %1568, %1566 ]
  %1576 = phi ptr [ %1571, %1570 ], [ %1567, %1566 ]
  %1577 = load i8, ptr %1575, align 1, !tbaa !11
  %1578 = icmp eq i8 %1577, 0
  br i1 %1578, label %1579, label %1570

1579:                                             ; preds = %1574, %1570, %1566
  %1580 = call i32 @encryptfile(ptr noundef nonnull %1567, ptr noundef %1524, ptr noundef %1531, i8 noundef zeroext %1442) #22
  br label %1583

1581:                                             ; preds = %1526
  %1582 = call i32 @idea_encryptfile(ptr noundef %1524, ptr noundef %1531, i8 noundef zeroext %1442) #22
  br label %1583

1583:                                             ; preds = %1581, %1579
  %1584 = phi i32 [ %1582, %1581 ], [ %1580, %1579 ]
  call void @rmtemp(ptr noundef %1524) #22
  %1585 = icmp slt i32 %1584, 0
  br i1 %1585, label %1586, label %1613

1586:                                             ; preds = %1583
  %1587 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1588 = call ptr @LANG(ptr noundef nonnull @.str.40) #22
  %1589 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1587, ptr noundef %1588)
  %1590 = icmp eq i8 %286, 0
  %1591 = select i1 %1590, i32 21, i32 22
  store i32 %1591, ptr @errorLvl, align 4, !tbaa !19
  %1592 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1593 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1594 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1592, ptr noundef %1593)
  %1595 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1596 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1597 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1595, ptr noundef %1596)
  %1598 = load i32, ptr @errorLvl, align 4
  %1599 = icmp eq i32 %1598, 0
  %1600 = select i1 %1599, i32 127, i32 %1598
  call void @exitPGP(i32 noundef %1600)
  unreachable

1601:                                             ; preds = %1523
  %1602 = xor i1 %1441, true
  %1603 = select i1 %1602, i1 true, i1 %1397
  %1604 = icmp ne ptr %1525, null
  %1605 = or i1 %1603, %1604
  br i1 %1605, label %1613, label %1606

1606:                                             ; preds = %1601
  %1607 = load i8, ptr @emit_radix_64, align 1, !tbaa !11
  %1608 = or i8 %1607, %328
  %1609 = icmp eq i8 %1608, 0
  %1610 = select i1 %1609, i32 1, i32 5
  %1611 = call ptr @tempfile(i32 noundef %1610) #22
  %1612 = call i32 @squish_file(ptr noundef %1524, ptr noundef %1611) #22
  call void @rmtemp(ptr noundef %1524) #22
  br label %1613

1613:                                             ; preds = %1601, %1606, %1583
  %1614 = phi ptr [ %1531, %1583 ], [ %1524, %1601 ], [ %1611, %1606 ]
  br i1 %329, label %1648, label %1615

1615:                                             ; preds = %1613
  %1616 = load i8, ptr @emit_radix_64, align 1, !tbaa !11
  %1617 = icmp eq i8 %1616, 0
  br i1 %1617, label %1634, label %1618

1618:                                             ; preds = %1615
  %1619 = call i32 @armor_file(ptr noundef %1614, ptr noundef null, ptr noundef %1155, ptr noundef %1525, i8 noundef zeroext 0) #22
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1631, label %1621

1621:                                             ; preds = %1618
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  %1622 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1623 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1624 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1622, ptr noundef %1623)
  %1625 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1626 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1627 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1625, ptr noundef %1626)
  %1628 = load i32, ptr @errorLvl, align 4
  %1629 = icmp eq i32 %1628, 0
  %1630 = select i1 %1629, i32 127, i32 %1628
  call void @exitPGP(i32 noundef %1630)
  unreachable

1631:                                             ; preds = %1618
  %1632 = icmp eq ptr %1525, null
  br i1 %1632, label %1647, label %1633

1633:                                             ; preds = %1631
  call void @rmtemp(ptr noundef nonnull %1525) #22
  br label %1647

1634:                                             ; preds = %1615
  %1635 = call i32 @writePhantomOutput(ptr noundef %1614) #22
  %1636 = icmp slt i32 %1635, 0
  br i1 %1636, label %1637, label %1647

1637:                                             ; preds = %1634
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  %1638 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1639 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1640 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1638, ptr noundef %1639)
  %1641 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1642 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1643 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1641, ptr noundef %1642)
  %1644 = load i32, ptr @errorLvl, align 4
  %1645 = icmp eq i32 %1644, 0
  %1646 = select i1 %1645, i32 127, i32 %1644
  call void @exitPGP(i32 noundef %1646)
  unreachable

1647:                                             ; preds = %1634, %1631, %1633
  call void @rmtemp(ptr noundef %1614) #22
  br label %1742

1648:                                             ; preds = %1613
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %17) #22
  %1649 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %1650 = icmp eq ptr %1649, null
  br i1 %1650, label %1653, label %1651

1651:                                             ; preds = %1648
  %1652 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1649) #22
  br label %1655

1653:                                             ; preds = %1648
  %1654 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1155) #22
  call void @drop_extension(ptr noundef nonnull %17) #22
  br label %1655

1655:                                             ; preds = %1653, %1651
  %1656 = icmp eq ptr %1525, null
  %1657 = zext i1 %1656 to i8
  br label %1658

1658:                                             ; preds = %1691, %1655
  %1659 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1661, label %1671

1661:                                             ; preds = %1658
  %1662 = call zeroext i8 @no_extension(ptr noundef nonnull %17) #22
  %1663 = icmp eq i8 %1662, 0
  br i1 %1663, label %1671, label %1664

1664:                                             ; preds = %1661
  %1665 = load i8, ptr @emit_radix_64, align 1, !tbaa !11
  %1666 = icmp eq i8 %1665, 0
  %1667 = load i1, ptr @sign_flag, align 1
  %1668 = select i1 %1667, i1 %1397, i1 false
  %1669 = select i1 %1668, ptr @SIG_EXTENSION, ptr @PGP_EXTENSION
  %1670 = select i1 %1666, ptr %1669, ptr @ASC_EXTENSION
  call void @force_extension(ptr noundef nonnull %17, ptr noundef nonnull %1670) #22
  br label %1671

1671:                                             ; preds = %1664, %1661, %1658
  %1672 = call zeroext i8 @file_exists(ptr noundef nonnull %17) #22
  %1673 = icmp eq i8 %1672, 0
  br i1 %1673, label %1693, label %1674

1674:                                             ; preds = %1671
  %1675 = call ptr @ck_dup_output(ptr noundef nonnull %17, i8 noundef zeroext 1, i8 noundef zeroext %1657) #22
  %1676 = icmp eq ptr %1675, null
  br i1 %1676, label %1677, label %1687

1677:                                             ; preds = %1674
  %1678 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1679 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1680 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1678, ptr noundef %1679)
  %1681 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1682 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1683 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1681, ptr noundef %1682)
  %1684 = load i32, ptr @errorLvl, align 4
  %1685 = icmp eq i32 %1684, 0
  %1686 = select i1 %1685, i32 127, i32 %1684
  call void @exitPGP(i32 noundef %1686)
  unreachable

1687:                                             ; preds = %1674
  br i1 %1656, label %1691, label %1688

1688:                                             ; preds = %1687
  %1689 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1675, ptr noundef nonnull dereferenceable(1) %17) #21
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1693, label %1691

1691:                                             ; preds = %1688, %1687
  %1692 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1675) #22
  br label %1658, !llvm.loop !27

1693:                                             ; preds = %1688, %1671
  %1694 = load i8, ptr @emit_radix_64, align 1, !tbaa !11
  %1695 = icmp eq i8 %1694, 0
  br i1 %1695, label %1712, label %1696

1696:                                             ; preds = %1693
  %1697 = call i32 @armor_file(ptr noundef %1614, ptr noundef nonnull %17, ptr noundef %1155, ptr noundef %1525, i8 noundef zeroext 0) #22
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1709, label %1699

1699:                                             ; preds = %1696
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  %1700 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1701 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1702 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1700, ptr noundef %1701)
  %1703 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1704 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1705 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1703, ptr noundef %1704)
  %1706 = load i32, ptr @errorLvl, align 4
  %1707 = icmp eq i32 %1706, 0
  %1708 = select i1 %1707, i32 127, i32 %1706
  call void @exitPGP(i32 noundef %1708)
  unreachable

1709:                                             ; preds = %1696
  %1710 = icmp eq ptr %1525, null
  br i1 %1710, label %1741, label %1711

1711:                                             ; preds = %1709
  call void @rmtemp(ptr noundef nonnull %1525) #22
  br label %1741

1712:                                             ; preds = %1693
  %1713 = call ptr @savetemp(ptr noundef %1614, ptr noundef nonnull %17) #22
  store ptr %1713, ptr @outputfile, align 8, !tbaa !5
  %1714 = icmp eq ptr %1713, null
  br i1 %1714, label %1715, label %1725

1715:                                             ; preds = %1712
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  %1716 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1717 = call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %1718 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1716, ptr noundef %1717)
  %1719 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1720 = call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %1721 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1719, ptr noundef %1720)
  %1722 = load i32, ptr @errorLvl, align 4
  %1723 = icmp eq i32 %1722, 0
  %1724 = select i1 %1723, i32 127, i32 %1722
  call void @exitPGP(i32 noundef %1724)
  unreachable

1725:                                             ; preds = %1712
  %1726 = load i8, ptr @quietmode, align 1, !tbaa !11
  %1727 = icmp eq i8 %1726, 0
  br i1 %1727, label %1728, label %1741

1728:                                             ; preds = %1725
  br i1 %936, label %1729, label %1734

1729:                                             ; preds = %1728
  %1730 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1731 = call ptr @LANG(ptr noundef nonnull @.str.41) #22
  %1732 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %1733 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1730, ptr noundef %1731, ptr noundef %1732)
  br label %1741

1734:                                             ; preds = %1728
  %1735 = load i1, ptr @sign_flag, align 1
  br i1 %1735, label %1736, label %1741

1736:                                             ; preds = %1734
  %1737 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1738 = call ptr @LANG(ptr noundef nonnull @.str.42) #22
  %1739 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %1740 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1737, ptr noundef %1738, ptr noundef %1739)
  br label %1741

1741:                                             ; preds = %1725, %1734, %1736, %1729, %1709, %1711
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %17) #22
  br label %1742

1742:                                             ; preds = %1741, %1647
  %1743 = icmp eq i8 %281, 0
  br i1 %1743, label %1754, label %1744

1744:                                             ; preds = %1742
  %1745 = call i32 @wipefile(ptr noundef %1155) #22
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1747, label %1754

1747:                                             ; preds = %1744
  %1748 = call i32 @remove(ptr noundef %1155) #22
  %1749 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1750 = call ptr @LANG(ptr noundef nonnull @.str.17) #22
  %1751 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1749, ptr noundef %1750, ptr noundef %1155)
  %1752 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %1753 = call i32 @fputc(i32 10, ptr %1752)
  br label %1754

1754:                                             ; preds = %1744, %1747, %1742
  call void @exitPGP(i32 noundef 0)
  unreachable
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

declare ptr @xmalloc(i32 noundef) local_unnamed_addr #6

declare void @hashpass(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare ptr @buildsysfilename(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

declare i32 @processConfigFile(ptr noundef) local_unnamed_addr #6

declare ptr @buildfilename(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare void @init_charset() local_unnamed_addr #6

declare void @settmpdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare i32 @pgp_getopt(...) local_unnamed_addr #6

declare i32 @to_lower(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

declare i32 @processConfigLine(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @signon_msg() unnamed_addr #13 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %2 = load i8, ptr @quietmode, align 1, !tbaa !11
  %3 = icmp ne i8 %2, 0
  %4 = load i1, ptr @signon_msg.printed, align 1
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %24, label %6

6:                                                ; preds = %0
  store i1 true, ptr @signon_msg.printed, align 1
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = tail call ptr @LANG(ptr noundef nonnull @.str.58) #22
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %8, ptr noundef nonnull @rel_version) #23
  %10 = tail call ptr @LANG(ptr noundef nonnull @.str.59) #22
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %12 = tail call i32 @fputs(ptr noundef %10, ptr noundef %11) #23
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = tail call ptr @LANG(ptr noundef nonnull @rel_date) #22
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.60, ptr noundef %14) #23
  %16 = tail call ptr @LANG(ptr noundef nonnull @.str.61) #22
  %17 = load ptr, ptr @stderr, align 8, !tbaa !5
  %18 = tail call i32 @fputs(ptr noundef %16, ptr noundef %17) #23
  %19 = call i64 @get_timestamp(ptr noundef nonnull %1) #22
  %20 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %21 = call ptr @LANG(ptr noundef nonnull @.str.62) #22
  %22 = call ptr @ctdate(ptr noundef nonnull %1) #22
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  br label %24

24:                                               ; preds = %0, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #4

declare i64 @noise() local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define dso_local void @user_error() local_unnamed_addr #3 {
  %1 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %2 = tail call ptr @LANG(ptr noundef nonnull @.str.23) #22
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %2)
  %4 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %5 = tail call ptr @LANG(ptr noundef nonnull @.str.43) #22
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef %5)
  %7 = load i32, ptr @errorLvl, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 127, i32 %7
  tail call void @exitPGP(i32 noundef %9)
  unreachable
}

declare i32 @wipefile(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #5

declare zeroext i8 @file_exists(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @ParseRecipients(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = alloca [256 x i8], align 16
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %149, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(3) @.str.12, i64 noundef 2) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %5, %13
  %9 = phi ptr [ %10, %13 ], [ %0, %5 ]
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %149, label %13, !llvm.loop !28

13:                                               ; preds = %8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(3) @.str.12, i64 noundef 2) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !28

16:                                               ; preds = %13, %5
  %17 = phi i1 [ %4, %5 ], [ %12, %13 ]
  br i1 %17, label %149, label %18

18:                                               ; preds = %16
  %19 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %133, label %25

24:                                               ; preds = %18
  tail call void @exitPGP(i32 noundef 7)
  unreachable

25:                                               ; preds = %21, %125
  %26 = phi ptr [ %131, %125 ], [ %22, %21 ]
  %27 = phi i32 [ %129, %125 ], [ 128, %21 ]
  %28 = phi i32 [ %128, %125 ], [ 0, %21 ]
  %29 = phi ptr [ %127, %125 ], [ %19, %21 ]
  %30 = phi ptr [ %130, %125 ], [ %0, %21 ]
  %31 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(3) @.str.12, i64 noundef 2) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %25
  %34 = add nsw i32 %28, 1
  %35 = sext i32 %28 to i64
  %36 = getelementptr inbounds ptr, ptr %29, i64 %35
  store ptr %26, ptr %36, align 8, !tbaa !5
  %37 = icmp eq i32 %34, %27
  br i1 %37, label %38, label %125

38:                                               ; preds = %33
  %39 = add nsw i32 %27, 128
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 3
  %42 = call ptr @realloc(ptr noundef %29, i64 noundef %41) #26
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %125

44:                                               ; preds = %38
  call void @exitPGP(i32 noundef 7)
  unreachable

45:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #22
  %46 = load ptr, ptr %30, align 8, !tbaa !5
  %47 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46) #21
  %48 = icmp eq i64 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds ptr, ptr %30, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr inbounds i8, ptr %46, i64 2
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %50, %49 ], [ %30, %52 ]
  %56 = phi ptr [ %51, %49 ], [ %53, %52 ]
  %57 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %58 = call ptr @LANG(ptr noundef nonnull @.str.45) #22
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef %58, ptr noundef %56)
  %60 = call noalias ptr @fopen(ptr noundef %56, ptr noundef nonnull @.str.46)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 255, ptr noundef nonnull %60)
  %64 = icmp eq ptr %63, null
  br i1 %64, label %116, label %66

65:                                               ; preds = %54
  call void @perror(ptr noundef nonnull @.str.47) #23
  call void @exitPGP(i32 noundef 3)
  unreachable

66:                                               ; preds = %62, %110
  %67 = phi i32 [ %113, %110 ], [ %27, %62 ]
  %68 = phi i32 [ %112, %110 ], [ %28, %62 ]
  %69 = phi ptr [ %111, %110 ], [ %29, %62 ]
  %70 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %71 = and i64 %70, 4294967295
  %72 = icmp eq i64 %71, 0
  %73 = load i8, ptr %2, align 16
  %74 = icmp eq i8 %73, 35
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %110, label %76, !llvm.loop !29

76:                                               ; preds = %66
  %77 = tail call ptr @__ctype_b_loc() #27
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = shl i64 %70, 32
  %80 = ashr exact i64 %79, 32
  br label %81

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %80, %76 ], [ %83, %81 ]
  %83 = add i64 %82, -1
  %84 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = sext i8 %85 to i64
  %87 = getelementptr inbounds i16, ptr %78, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !30
  %89 = and i16 %88, 8192
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %81, !llvm.loop !32

91:                                               ; preds = %81
  %92 = shl i64 %82, 32
  %93 = ashr exact i64 %92, 32
  %94 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %93
  store i8 0, ptr %94, align 1, !tbaa !11
  %95 = call ptr @store_str(ptr noundef nonnull %2) #22
  %96 = add nsw i32 %68, 1
  %97 = sext i32 %68 to i64
  %98 = getelementptr inbounds ptr, ptr %69, i64 %97
  store ptr %95, ptr %98, align 8, !tbaa !5
  %99 = icmp eq ptr %95, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  call void @exitPGP(i32 noundef 7)
  unreachable

101:                                              ; preds = %91
  %102 = icmp eq i32 %96, %67
  br i1 %102, label %103, label %110

103:                                              ; preds = %101
  %104 = add nsw i32 %67, 128
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 3
  %107 = call ptr @realloc(ptr noundef %69, i64 noundef %106) #26
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  call void @exitPGP(i32 noundef 7)
  unreachable

110:                                              ; preds = %101, %103, %66
  %111 = phi ptr [ %69, %66 ], [ %107, %103 ], [ %69, %101 ]
  %112 = phi i32 [ %68, %66 ], [ %96, %103 ], [ %96, %101 ]
  %113 = phi i32 [ %67, %66 ], [ %104, %103 ], [ %67, %101 ]
  %114 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 255, ptr noundef nonnull %60)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %66

116:                                              ; preds = %110, %62
  %117 = phi ptr [ %29, %62 ], [ %111, %110 ]
  %118 = phi i32 [ %28, %62 ], [ %112, %110 ]
  %119 = phi i32 [ %27, %62 ], [ %113, %110 ]
  %120 = call i32 @ferror(ptr noundef nonnull %60) #22
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  call void @perror(ptr noundef nonnull @.str.47) #23
  call void @exitPGP(i32 noundef 3)
  unreachable

123:                                              ; preds = %116
  %124 = call i32 @fclose(ptr noundef nonnull %60)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #22
  br label %125

125:                                              ; preds = %33, %38, %123
  %126 = phi ptr [ %30, %38 ], [ %30, %33 ], [ %55, %123 ]
  %127 = phi ptr [ %42, %38 ], [ %29, %33 ], [ %117, %123 ]
  %128 = phi i32 [ %34, %38 ], [ %34, %33 ], [ %118, %123 ]
  %129 = phi i32 [ %39, %38 ], [ %27, %33 ], [ %119, %123 ]
  %130 = getelementptr inbounds ptr, ptr %126, i64 1
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %25, !llvm.loop !33

133:                                              ; preds = %125, %21
  %134 = phi ptr [ %19, %21 ], [ %127, %125 ]
  %135 = phi i32 [ 0, %21 ], [ %128, %125 ]
  %136 = phi i32 [ 128, %21 ], [ %129, %125 ]
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = add nsw i32 %136, 1
  %140 = sext i32 %139 to i64
  %141 = shl nsw i64 %140, 3
  %142 = call ptr @realloc(ptr noundef %134, i64 noundef %141) #26
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  call void @exitPGP(i32 noundef 7)
  unreachable

145:                                              ; preds = %138, %133
  %146 = phi ptr [ %142, %138 ], [ %134, %133 ]
  %147 = sext i32 %135 to i64
  %148 = getelementptr inbounds ptr, ptr %146, i64 %147
  store ptr null, ptr %148, align 8, !tbaa !5
  br label %149

149:                                              ; preds = %8, %1, %16, %145
  %150 = phi ptr [ %146, %145 ], [ %0, %16 ], [ %0, %1 ], [ %0, %8 ]
  ret ptr %150
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

declare i32 @cryptRandWriteFile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @no_extension(ptr noundef) local_unnamed_addr #6

declare void @force_extension(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @setoutdir(ptr noundef) local_unnamed_addr #6

declare ptr @tempfile(i32 noundef) local_unnamed_addr #6

declare i32 @readPhantomInput(ptr noundef) local_unnamed_addr #6

declare i32 @get_header_info_from_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare zeroext i8 @is_armor_file(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @do_decrypt(ptr noundef %0) unnamed_addr #13 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8, align 1
  %4 = alloca [8 x i8], align 1
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.151)
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, ptr noundef nonnull @globalPubringName)
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.69, ptr noundef nonnull @globalSecringName)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #22
  store i8 0, ptr %5, align 16, !tbaa !11
  br label %10

10:                                               ; preds = %138, %1
  %11 = phi ptr [ %0, %1 ], [ %17, %138 ]
  %12 = phi ptr [ null, %1 ], [ %31, %138 ]
  %13 = phi i1 [ true, %1 ], [ false, %138 ]
  %14 = phi i8 [ 0, %1 ], [ 1, %138 ]
  br i1 %13, label %16, label %15

15:                                               ; preds = %10
  call void @rmtemp(ptr noundef %11) #22
  br label %16

16:                                               ; preds = %15, %10
  %17 = phi ptr [ %12, %15 ], [ %11, %10 ]
  %18 = call i32 @get_header_info_from_file(ptr noundef %17, ptr noundef nonnull %3, i32 noundef 1) #22
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %22 = call ptr @LANG(ptr noundef nonnull @.str.70) #22
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef %22, ptr noundef %17)
  store i32 2, ptr @errorLvl, align 4, !tbaa !19
  br label %345

24:                                               ; preds = %16
  %25 = load i8, ptr %3, align 1, !tbaa !11
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %139, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr @moreflag, align 1, !tbaa !11
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 1, i32 5
  %31 = call ptr @tempfile(i32 noundef %30) #22
  %32 = load i8, ptr %3, align 1
  %33 = and i8 %32, 124
  %34 = add nsw i8 %33, -4
  %35 = lshr exact i8 %34, 2
  switch i8 %35, label %97 [
    i8 0, label %36
    i8 1, label %47
    i8 8, label %78
    i8 7, label %89
    i8 9, label %93
    i8 10, label %93
  ]

36:                                               ; preds = %27
  %37 = load i8, ptr @quietmode, align 1, !tbaa !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %41 = call ptr @LANG(ptr noundef nonnull @.str.71) #22
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = call i32 @decryptfile(ptr noundef %17, ptr noundef %31) #22
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %135

46:                                               ; preds = %43
  store i32 31, ptr @errorLvl, align 4, !tbaa !19
  br label %345

47:                                               ; preds = %27
  %48 = load i1, ptr @decrypt_only_flag, align 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  call void @rmtemp(ptr noundef %31) #22
  %50 = load i8, ptr @quietmode, align 1, !tbaa !11
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %139

52:                                               ; preds = %49
  %53 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %54 = call ptr @LANG(ptr noundef nonnull @.str.72) #22
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef %54)
  br label %139

56:                                               ; preds = %47
  %57 = load i8, ptr @quietmode, align 1, !tbaa !11
  %58 = icmp eq i8 %57, 0
  %59 = load i32, ptr @checksig_pass, align 4
  %60 = icmp slt i32 %59, 2
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %64 = call ptr @LANG(ptr noundef nonnull @.str.73) #22
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i1, ptr @strip_sig_flag, align 1
  %68 = zext i1 %67 to i8
  %69 = call i32 @check_signaturefile(ptr noundef %17, ptr noundef %31, i8 noundef zeroext %68, ptr noundef nonnull %5) #22
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 30, ptr @errorLvl, align 4, !tbaa !19
  br label %345

72:                                               ; preds = %66
  %73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %5, ptr noundef nonnull dereferenceable(10) @.str.74, i64 10)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %72
  call void @rmtemp(ptr noundef %31) #22
  %76 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %77 = call i32 @fputc(i32 10, ptr %76)
  br label %345

78:                                               ; preds = %27
  %79 = load i8, ptr @quietmode, align 1, !tbaa !11
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %83 = call ptr @LANG(ptr noundef nonnull @.str.75) #22
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = call i32 @idea_decryptfile(ptr noundef %17, ptr noundef %31) #22
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %135

88:                                               ; preds = %85
  store i32 32, ptr @errorLvl, align 4, !tbaa !19
  br label %345

89:                                               ; preds = %27
  %90 = call i32 @decompress_file(ptr noundef %17, ptr noundef %31) #22
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %89
  store i32 33, ptr @errorLvl, align 4, !tbaa !19
  br label %345

93:                                               ; preds = %27, %27
  %94 = call i32 @strip_literal(ptr noundef %17, ptr noundef %31, ptr noundef nonnull %5, ptr noundef nonnull @literal_mode) #22
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %139

96:                                               ; preds = %93
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %345

97:                                               ; preds = %27
  switch i8 %32, label %139 [
    i8 -103, label %98
    i8 -107, label %98
  ]

98:                                               ; preds = %97, %97
  call void @rmtemp(ptr noundef %31) #22
  %99 = load i1, ptr @decrypt_only_flag, align 1
  br i1 %99, label %139, label %100

100:                                              ; preds = %98
  %101 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %102 = call ptr @LANG(ptr noundef nonnull @.str.76) #22
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef %102)
  %104 = call i32 @view_keyring(ptr noundef null, ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 15, ptr @errorLvl, align 4, !tbaa !19
  br label %345

107:                                              ; preds = %100
  %108 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %109 = icmp eq i8 %108, 0
  %110 = load i1, ptr @preserve_filename, align 1
  %111 = select i1 %109, i1 true, i1 %110
  %112 = load i8, ptr @batchmode, align 1
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %345

115:                                              ; preds = %107
  %116 = load i8, ptr %3, align 1, !tbaa !11
  %117 = icmp eq i8 %116, -107
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 @puts(ptr nonnull dereferenceable(1) @str.152)
  br label %120

120:                                              ; preds = %115, %118
  %121 = phi ptr [ @globalSecringName, %118 ], [ @globalPubringName, %115 ]
  %122 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %121) #22
  %123 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %124 = call ptr @LANG(ptr noundef nonnull @.str.78) #22
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef %124, ptr noundef nonnull %2)
  %126 = call zeroext i8 @getyesno(i8 noundef signext 110) #22
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %345, label %128

128:                                              ; preds = %120
  %129 = call i32 @addto_keyring(ptr noundef %17, ptr noundef nonnull %2) #22
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %345

131:                                              ; preds = %128
  %132 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %133 = call ptr @LANG(ptr noundef nonnull @.str.79) #22
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef %133)
  store i32 12, ptr @errorLvl, align 4, !tbaa !19
  br label %345

135:                                              ; preds = %85, %43, %72
  %136 = phi i32 [ %69, %72 ], [ %44, %43 ], [ %86, %85 ]
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135, %89
  br label %10, !llvm.loop !34

139:                                              ; preds = %24, %135, %93, %98, %97, %49, %52
  %140 = phi ptr [ %17, %97 ], [ null, %52 ], [ null, %49 ], [ null, %98 ], [ %17, %93 ], [ %17, %135 ], [ %17, %24 ]
  %141 = phi ptr [ %31, %97 ], [ %17, %52 ], [ %17, %49 ], [ %17, %98 ], [ %31, %93 ], [ %12, %24 ], [ %31, %135 ]
  %142 = phi i8 [ %14, %97 ], [ 0, %52 ], [ 0, %49 ], [ 0, %98 ], [ 0, %93 ], [ %14, %24 ], [ 0, %135 ]
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %146 = load i8, ptr %3, align 1, !tbaa !11
  %147 = zext i8 %146 to i32
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.80, i32 noundef %147)
  %149 = icmp eq ptr %141, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  call void @rmtemp(ptr noundef nonnull %141) #22
  br label %151

151:                                              ; preds = %150, %144
  %152 = icmp eq ptr %140, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %151
  call void @rmtemp(ptr noundef nonnull %140) #22
  br label %154

154:                                              ; preds = %153, %151
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %345

155:                                              ; preds = %139
  %156 = icmp eq ptr %141, null
  br i1 %156, label %157, label %167

157:                                              ; preds = %155
  %158 = load i8, ptr @filter_mode, align 1, !tbaa !11
  %159 = icmp ne i8 %158, 0
  %160 = load i8, ptr @moreflag, align 1
  %161 = icmp ne i8 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %170, label %163

163:                                              ; preds = %157
  %164 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %165 = call ptr @LANG(ptr noundef nonnull @.str.81) #22
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef %165, ptr noundef %140)
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %345

167:                                              ; preds = %155
  %168 = icmp eq ptr %140, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %167
  call void @rmtemp(ptr noundef nonnull %140) #22
  br label %170

170:                                              ; preds = %157, %167, %169
  %171 = phi ptr [ %141, %169 ], [ %141, %167 ], [ %140, %157 ]
  %172 = load i8, ptr @moreflag, align 1, !tbaa !11
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @CONSOLE_FILENAME) #21
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %260

177:                                              ; preds = %174, %170
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @CONSOLE_FILENAME) #21
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %177
  %181 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %182 = call ptr @LANG(ptr noundef nonnull @.str.82) #22
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef %182)
  %184 = load i8, ptr @batchmode, align 1, !tbaa !11
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load ptr, ptr @stdout, align 8, !tbaa !5
  %188 = call i32 @fileno(ptr noundef %187) #22
  %189 = call i32 @isatty(i32 noundef %188) #22
  %190 = icmp eq i32 %189, 0
  %191 = load i8, ptr @filter_mode, align 1
  %192 = icmp ne i8 %191, 0
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %197, label %194

194:                                              ; preds = %186
  %195 = call zeroext i8 @getyesno(i8 noundef signext 121) #22
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194, %186, %180
  %198 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %199 = call i32 @fputc(i32 10, ptr %198)
  call void @rmtemp(ptr noundef %171) #22
  br label %345

200:                                              ; preds = %194, %177
  %201 = load i8, ptr @quietmode, align 1, !tbaa !11
  %202 = icmp eq i8 %201, 0
  %203 = load ptr, ptr @pgpout, align 8, !tbaa !5
  br i1 %202, label %204, label %207

204:                                              ; preds = %200
  %205 = call ptr @LANG(ptr noundef nonnull @.str.83) #22
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef %205)
  br label %209

207:                                              ; preds = %200
  %208 = call i32 @putc(i32 noundef 10, ptr noundef %203)
  br label %209

209:                                              ; preds = %207, %204
  %210 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %211 = call i64 @fwrite(ptr nonnull @.str.84, i64 31, i64 1, ptr %210)
  %212 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @CONSOLE_FILENAME) #21
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i8
  %215 = call i32 @more_file(ptr noundef %171, i8 noundef zeroext %214) #22
  %216 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @CONSOLE_FILENAME) #21
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %220 = call i64 @fwrite(ptr nonnull @.str.92, i64 23, i64 1, ptr %219)
  %221 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %222 = call i32 @fflush(ptr noundef %221)
  br label %259

223:                                              ; preds = %209
  %224 = load i8, ptr @quietmode, align 1, !tbaa !11
  %225 = icmp ne i8 %224, 0
  %226 = load i8, ptr @batchmode, align 1
  %227 = icmp ne i8 %226, 0
  %228 = select i1 %225, i1 true, i1 %227
  br i1 %228, label %259, label %229

229:                                              ; preds = %223
  %230 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %231 = call ptr @LANG(ptr noundef nonnull @.str.85) #22
  %232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef %231)
  %233 = call zeroext i8 @getyesno(i8 noundef signext 110) #22
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %259, label %235

235:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #22
  %236 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %237 = call ptr @LANG(ptr noundef nonnull @.str.86) #22
  %238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef %237)
  %239 = load i8, ptr %5, align 16, !tbaa !11
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %235
  %242 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %243 = call ptr @file_tail(ptr noundef nonnull %5) #22
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.87, ptr noundef %243)
  br label %245

245:                                              ; preds = %241, %235
  %246 = call i32 @getstring(ptr noundef nonnull %6, i32 noundef 255, i32 noundef 1) #22
  %247 = load i8, ptr %6, align 16, !tbaa !11
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %245
  %250 = load i8, ptr %5, align 16, !tbaa !11
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = call ptr @file_tail(ptr noundef nonnull %5) #22
  %254 = call ptr @savetemp(ptr noundef %171, ptr noundef %253) #22
  br label %258

255:                                              ; preds = %249
  call void @rmtemp(ptr noundef %171) #22
  br label %258

256:                                              ; preds = %245
  %257 = call ptr @savetemp(ptr noundef %171, ptr noundef nonnull %6) #22
  br label %258

258:                                              ; preds = %252, %255, %256
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #22
  br label %345

259:                                              ; preds = %223, %229, %218
  call void @rmtemp(ptr noundef %171) #22
  br label %345

260:                                              ; preds = %174
  %261 = load ptr, ptr @outputfile, align 8, !tbaa !5
  %262 = icmp eq ptr %261, null
  br i1 %262, label %272, label %263

263:                                              ; preds = %260
  %264 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %261, ptr noundef nonnull dereferenceable(10) @.str.74) #21
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  call void @rmtemp(ptr noundef %171) #22
  br label %345

267:                                              ; preds = %263
  %268 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %261, ptr noundef nonnull dereferenceable(2) @.str.16) #21
  %269 = icmp eq i32 %268, 0
  %270 = zext i1 %269 to i8
  store i8 %270, ptr @filter_mode, align 1, !tbaa !11
  %271 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @plainfile, ptr noundef nonnull dereferenceable(1) %261) #22
  br label %273

272:                                              ; preds = %260
  call void @drop_extension(ptr noundef nonnull @plainfile) #22
  br label %273

273:                                              ; preds = %272, %267
  %274 = load i1, ptr @preserve_filename, align 1
  %275 = load i8, ptr @filter_mode, align 1
  %276 = icmp eq i8 %275, 0
  %277 = select i1 %274, i1 true, i1 %276
  br i1 %277, label %283, label %278

278:                                              ; preds = %273
  %279 = call i32 @writePhantomOutput(ptr noundef %171) #22
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %345

282:                                              ; preds = %278
  call void @rmtemp(ptr noundef %171) #22
  br label %345

283:                                              ; preds = %273
  %284 = load i8, ptr %5, align 16
  %285 = icmp ne i8 %284, 0
  %286 = select i1 %274, i1 %285, i1 false
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = call ptr @file_tail(ptr noundef nonnull %5) #22
  %289 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @plainfile, ptr noundef nonnull dereferenceable(1) %288) #22
  br label %290

290:                                              ; preds = %287, %283
  %291 = load i8, ptr @quietmode, align 1, !tbaa !11
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = call ptr @savetemp(ptr noundef %171, ptr noundef nonnull @plainfile) #22
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %345

296:                                              ; preds = %293
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %345

297:                                              ; preds = %290
  %298 = load i8, ptr @verbose, align 1, !tbaa !11
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %302 = call ptr @LANG(ptr noundef nonnull @.str.88) #22
  %303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef %302, ptr noundef nonnull @plainfile)
  br label %304

304:                                              ; preds = %300, %297
  %305 = call i32 @get_header_info_from_file(ptr noundef %171, ptr noundef nonnull %4, i32 noundef 8) #22
  %306 = load i8, ptr %4, align 1, !tbaa !11
  %307 = icmp eq i8 %306, -103
  br i1 %307, label %308, label %313

308:                                              ; preds = %304
  %309 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %310 = call ptr @LANG(ptr noundef nonnull @.str.89) #22
  %311 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %309, ptr noundef %310, ptr noundef nonnull @plainfile)
  %312 = call ptr @maybe_force_extension(ptr noundef nonnull @plainfile, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %335

313:                                              ; preds = %304
  %314 = call i32 @compressSignature(ptr noundef nonnull %4)
  %315 = icmp sgt i32 %314, -1
  br i1 %315, label %316, label %326

316:                                              ; preds = %313
  %317 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %318 = call ptr @LANG(ptr noundef nonnull @.str.90) #22
  %319 = zext nneg i32 %314 to i64
  %320 = shl i64 %319, 2
  %321 = call ptr @llvm.load.relative.i64(ptr @reltable.do_decrypt, i64 %320)
  %322 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef %318, ptr noundef nonnull @plainfile, ptr noundef %321)
  %323 = shl i64 %319, 2
  %324 = call ptr @llvm.load.relative.i64(ptr @reltable.do_decrypt.153, i64 %323)
  %325 = call ptr @maybe_force_extension(ptr noundef nonnull @plainfile, ptr noundef %324) #22
  br label %335

326:                                              ; preds = %313
  %327 = icmp sgt i8 %306, -1
  br i1 %327, label %335, label %328

328:                                              ; preds = %326
  %329 = and i8 %306, 124
  switch i8 %329, label %335 [
    i8 4, label %330
    i8 8, label %330
    i8 36, label %330
  ]

330:                                              ; preds = %328, %328, %328
  %331 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %332 = call ptr @LANG(ptr noundef nonnull @.str.91) #22
  %333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %331, ptr noundef %332, ptr noundef nonnull @plainfile)
  %334 = call ptr @maybe_force_extension(ptr noundef nonnull @plainfile, ptr noundef nonnull @PGP_EXTENSION) #22
  br label %335

335:                                              ; preds = %328, %316, %330, %326, %308
  %336 = phi ptr [ %312, %308 ], [ %325, %316 ], [ %334, %330 ], [ null, %326 ], [ null, %328 ]
  %337 = icmp eq ptr %336, null
  %338 = select i1 %337, ptr @plainfile, ptr %336
  %339 = call ptr @savetemp(ptr noundef %171, ptr noundef nonnull %338) #22
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %342

341:                                              ; preds = %335
  store i32 3, ptr @errorLvl, align 4, !tbaa !19
  br label %345

342:                                              ; preds = %335
  %343 = load ptr, ptr @pgpout, align 8, !tbaa !5
  %344 = call i32 @fputc(i32 10, ptr %343)
  br label %345

345:                                              ; preds = %293, %128, %120, %107, %342, %341, %296, %282, %281, %266, %259, %258, %197, %163, %154, %131, %106, %96, %92, %88, %75, %71, %46, %20
  %346 = phi i32 [ -1, %20 ], [ -1, %46 ], [ -1, %154 ], [ 0, %197 ], [ 0, %259 ], [ 0, %258 ], [ -1, %281 ], [ 0, %282 ], [ -1, %296 ], [ -1, %341 ], [ 0, %342 ], [ 0, %266 ], [ -1, %163 ], [ -1, %71 ], [ 0, %75 ], [ -1, %88 ], [ -1, %92 ], [ -1, %96 ], [ -1, %106 ], [ -1, %131 ], [ 0, %107 ], [ 0, %120 ], [ 0, %128 ], [ 0, %293 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #22
  ret i32 %346
}

declare zeroext i8 @legal_ctb(i8 noundef zeroext) local_unnamed_addr #6

declare zeroext i8 @getyesno(i8 noundef signext) local_unnamed_addr #6

declare ptr @file_tail(ptr noundef) local_unnamed_addr #6

declare i32 @is_text_file(ptr noundef) local_unnamed_addr #6

declare i32 @make_canonical(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @rmtemp(ptr noundef) local_unnamed_addr #6

declare i32 @signfile(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #6

declare i32 @make_literal(ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #6

declare i32 @getstring(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @encryptfile(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @idea_encryptfile(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @squish_file(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @armor_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @writePhantomOutput(ptr noundef) local_unnamed_addr #6

declare void @drop_extension(ptr noundef) local_unnamed_addr #6

declare ptr @ck_dup_output(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @savetemp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cleanup_tmpf() local_unnamed_addr #6

declare i32 @cryptRandOpen(ptr noundef) local_unnamed_addr #6

declare void @cryptRandSave(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

declare ptr @store_str(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

declare i64 @get_timestamp(ptr noundef) local_unnamed_addr #6

declare ptr @ctdate(ptr noundef) local_unnamed_addr #6

declare i32 @de_armor_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @decryptfile(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @check_signaturefile(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

declare i32 @idea_decryptfile(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @decompress_file(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @strip_literal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @view_keyring(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @addto_keyring(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @more_file(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @maybe_force_extension(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @dokeygen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @has_extension(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dokeycheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @maint_check(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @default_extension(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @signkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @maint_update(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @disable_key(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dokeyedit(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @extract_from_keyring(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare i32 @remove_sigs(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @remove_from_keyring(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @build_helpfile(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @language, ptr noundef nonnull dereferenceable(3) @.str.145) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @buildfilename(ptr noundef %0, ptr noundef nonnull @language) #22
  %7 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  tail call void @force_extension(ptr noundef %0, ptr noundef nonnull @HLP_EXTENSION) #22
  %8 = tail call zeroext i8 @file_exists(ptr noundef %0) #22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.146, i64 20, i1 false) #22
  %11 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @language) #22
  %12 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  tail call void @force_extension(ptr noundef %0, ptr noundef nonnull @HLP_EXTENSION) #22
  %13 = tail call zeroext i8 @file_exists(ptr noundef %0) #22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10, %2
  %16 = tail call ptr @buildfilename(ptr noundef %0, ptr noundef nonnull @.str.147) #22
  %17 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  tail call void @force_extension(ptr noundef %0, ptr noundef nonnull @HLP_EXTENSION) #22
  %18 = tail call zeroext i8 @file_exists(ptr noundef %0) #22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) @.str.146, i64 20, i1 false) #22
  %21 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  store i32 7366512, ptr %22, align 1
  %23 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #22
  tail call void @force_extension(ptr noundef %0, ptr noundef nonnull @HLP_EXTENSION) #22
  br label %24

24:                                               ; preds = %15, %10, %5, %20
  ret void
}

declare i32 @copyfiles_by_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

attributes #0 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!15, !6, i64 0}
!15 = !{!"hashedpw", !6, i64 0, !7, i64 8}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !7, i64 0}
!21 = distinct !{!21, !10}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !7, i64 0}
!24 = !{i32 -1, i32 1}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !7, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
