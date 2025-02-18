; ModuleID = 'cpan/Digest-SHA/SHA.c'
source_filename = "cpan/Digest-SHA/SHA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.6, %union._xivu }
%union.anon.6 = type { i64 }
%union._xivu = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu }
%union.anon.7 = type { i64 }
%struct.SHA = type { i32, ptr, [8 x i32], [8 x i64], [128 x i8], i32, i32, i32, i32, i32, i32, [64 x i8], i32, [129 x i8], [87 x i8] }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.HMAC = type { %struct.SHA, %struct.SHA, i32, [128 x i8] }
%struct.io = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }

@.str = private unnamed_addr constant [22 x i8] c"cpan/Digest-SHA/SHA.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Digest::SHA::shainit\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Digest::SHA::sharewind\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Digest::SHA::shawrite\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$$$\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Digest::SHA::newSHA\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Digest::SHA::clone\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Digest::SHA::DESTROY\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Digest::SHA::sha1\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c";@\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Digest::SHA::sha1_base64\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Digest::SHA::sha1_hex\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Digest::SHA::sha224\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Digest::SHA::sha224_base64\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Digest::SHA::sha224_hex\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Digest::SHA::sha256\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Digest::SHA::sha256_base64\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Digest::SHA::sha256_hex\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Digest::SHA::sha384\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"Digest::SHA::sha384_base64\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Digest::SHA::sha384_hex\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Digest::SHA::sha512\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Digest::SHA::sha512224\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Digest::SHA::sha512224_base64\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Digest::SHA::sha512224_hex\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Digest::SHA::sha512256\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Digest::SHA::sha512256_base64\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Digest::SHA::sha512256_hex\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Digest::SHA::sha512_base64\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"Digest::SHA::sha512_hex\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Digest::SHA::hmac_sha1\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Digest::SHA::hmac_sha1_base64\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"Digest::SHA::hmac_sha1_hex\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"Digest::SHA::hmac_sha224\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Digest::SHA::hmac_sha224_base64\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"Digest::SHA::hmac_sha224_hex\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Digest::SHA::hmac_sha256\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Digest::SHA::hmac_sha256_base64\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"Digest::SHA::hmac_sha256_hex\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"Digest::SHA::hmac_sha384\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"Digest::SHA::hmac_sha384_base64\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Digest::SHA::hmac_sha384_hex\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Digest::SHA::hmac_sha512\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Digest::SHA::hmac_sha512224\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Digest::SHA::hmac_sha512224_base64\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"Digest::SHA::hmac_sha512224_hex\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Digest::SHA::hmac_sha512256\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"Digest::SHA::hmac_sha512256_base64\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"Digest::SHA::hmac_sha512256_hex\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"Digest::SHA::hmac_sha512_base64\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"Digest::SHA::hmac_sha512_hex\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Digest::SHA::algorithm\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Digest::SHA::hashsize\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Digest::SHA::add\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"$;@\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"Digest::SHA::b64digest\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"Digest::SHA::digest\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Digest::SHA::hexdigest\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"Digest::SHA::_getstate\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"Digest::SHA::_putstate\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"Digest::SHA::_addfilebin\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Digest::SHA::_addfileuniv\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.65 = private unnamed_addr constant [7 x i8] c"s, alg\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.66 = private unnamed_addr constant [12 x i8] c"Digest::SHA\00", align 1
@H01 = internal unnamed_addr constant [8 x i32] [i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878, i32 -1009589776, i32 0, i32 0, i32 0], align 16
@H0224 = internal unnamed_addr constant [8 x i32] [i32 -1056596264, i32 914150663, i32 812702999, i32 -150054599, i32 -4191439, i32 1750603025, i32 1694076839, i32 -1090891868], align 16
@H0256 = internal unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 16
@H0384 = internal unnamed_addr constant [8 x i64] [i64 -3766243637369397544, i64 7105036623409894663, i64 -7973340178411365097, i64 1526699215303891257, i64 7436329637833083697, i64 -8163818279084223215, i64 -2662702644619276377, i64 5167115440072839076], align 16
@H0512 = internal unnamed_addr constant [8 x i64] [i64 7640891576956012808, i64 -4942790177534073029, i64 4354685564936845355, i64 -6534734903238641935, i64 5840696475078001361, i64 -7276294671716946913, i64 2270897969802886507, i64 6620516959819538809], align 16
@H0512224 = internal unnamed_addr constant [8 x i64] [i64 -8341449602262348382, i64 8350123849800275158, i64 2160240930085379202, i64 7466358040605728719, i64 1111592415079452072, i64 8638871050018654530, i64 4583966954114332360, i64 1230299281376055969], align 16
@H0512256 = internal unnamed_addr constant [8 x i64] [i64 2463787394917988140, i64 -6965556091613846334, i64 2563595384472711505, i64 -7622211418569250115, i64 -7626776825740460061, i64 -4729309413028513390, i64 3098927326965381290, i64 1060366662362279074], align 16
@K512 = internal unnamed_addr constant [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], align 16
@.str.67 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"bitstr, bitcnt, s\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"classname, alg\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.70 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@ix2alg = internal unnamed_addr constant [21 x i32] [i32 1, i32 1, i32 1, i32 224, i32 224, i32 224, i32 256, i32 256, i32 256, i32 384, i32 384, i32 384, i32 512, i32 512, i32 512, i32 512224, i32 512224, i32 512224, i32 512256, i32 512256, i32 512256], align 16
@xmap = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@bmap = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.71 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"self, ...\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"self, packed_state\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"self, f\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Digest__SHA(ptr noundef %0) local_unnamed_addr #0 !prof !47 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Digest__SHA_shainit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Digest__SHA_sharewind, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Digest__SHA_shawrite, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #14
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Digest__SHA_newSHA, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Digest__SHA_clone, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %8 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Digest__SHA_DESTROY, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %9 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !54
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  store i32 2, ptr %14, align 8, !tbaa !54
  %15 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 1, ptr %17, align 8, !tbaa !54
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 3, ptr %20, align 8, !tbaa !54
  %21 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.xpvcv, ptr %22, i64 0, i32 5
  store i32 5, ptr %23, align 8, !tbaa !54
  %24 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 5
  store i32 4, ptr %26, align 8, !tbaa !54
  %27 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.18, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.xpvcv, ptr %28, i64 0, i32 5
  store i32 6, ptr %29, align 8, !tbaa !54
  %30 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.19, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.xpvcv, ptr %31, i64 0, i32 5
  store i32 8, ptr %32, align 8, !tbaa !54
  %33 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.20, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = getelementptr inbounds %struct.xpvcv, ptr %34, i64 0, i32 5
  store i32 7, ptr %35, align 8, !tbaa !54
  %36 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.21, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.xpvcv, ptr %37, i64 0, i32 5
  store i32 9, ptr %38, align 8, !tbaa !54
  %39 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.22, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 5
  store i32 11, ptr %41, align 8, !tbaa !54
  %42 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.23, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = getelementptr inbounds %struct.xpvcv, ptr %43, i64 0, i32 5
  store i32 10, ptr %44, align 8, !tbaa !54
  %45 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.24, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = getelementptr inbounds %struct.xpvcv, ptr %46, i64 0, i32 5
  store i32 12, ptr %47, align 8, !tbaa !54
  %48 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.25, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.xpvcv, ptr %49, i64 0, i32 5
  store i32 15, ptr %50, align 8, !tbaa !54
  %51 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.26, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 5
  store i32 17, ptr %53, align 8, !tbaa !54
  %54 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.27, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.xpvcv, ptr %55, i64 0, i32 5
  store i32 16, ptr %56, align 8, !tbaa !54
  %57 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.28, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.xpvcv, ptr %58, i64 0, i32 5
  store i32 18, ptr %59, align 8, !tbaa !54
  %60 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.29, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %61 = load ptr, ptr %60, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.xpvcv, ptr %61, i64 0, i32 5
  store i32 20, ptr %62, align 8, !tbaa !54
  %63 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.30, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %64 = load ptr, ptr %63, align 8, !tbaa !48
  %65 = getelementptr inbounds %struct.xpvcv, ptr %64, i64 0, i32 5
  store i32 19, ptr %65, align 8, !tbaa !54
  %66 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.31, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct.xpvcv, ptr %67, i64 0, i32 5
  store i32 14, ptr %68, align 8, !tbaa !54
  %69 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.32, ptr noundef nonnull @XS_Digest__SHA_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = getelementptr inbounds %struct.xpvcv, ptr %70, i64 0, i32 5
  store i32 13, ptr %71, align 8, !tbaa !54
  %72 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.33, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = getelementptr inbounds %struct.xpvcv, ptr %73, i64 0, i32 5
  store i32 0, ptr %74, align 8, !tbaa !54
  %75 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.34, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %76 = load ptr, ptr %75, align 8, !tbaa !48
  %77 = getelementptr inbounds %struct.xpvcv, ptr %76, i64 0, i32 5
  store i32 2, ptr %77, align 8, !tbaa !54
  %78 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.35, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %79 = load ptr, ptr %78, align 8, !tbaa !48
  %80 = getelementptr inbounds %struct.xpvcv, ptr %79, i64 0, i32 5
  store i32 1, ptr %80, align 8, !tbaa !54
  %81 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.36, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.xpvcv, ptr %82, i64 0, i32 5
  store i32 3, ptr %83, align 8, !tbaa !54
  %84 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.37, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %85 = load ptr, ptr %84, align 8, !tbaa !48
  %86 = getelementptr inbounds %struct.xpvcv, ptr %85, i64 0, i32 5
  store i32 5, ptr %86, align 8, !tbaa !54
  %87 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.38, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %88 = load ptr, ptr %87, align 8, !tbaa !48
  %89 = getelementptr inbounds %struct.xpvcv, ptr %88, i64 0, i32 5
  store i32 4, ptr %89, align 8, !tbaa !54
  %90 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.39, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.xpvcv, ptr %91, i64 0, i32 5
  store i32 6, ptr %92, align 8, !tbaa !54
  %93 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.40, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %94 = load ptr, ptr %93, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.xpvcv, ptr %94, i64 0, i32 5
  store i32 8, ptr %95, align 8, !tbaa !54
  %96 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.41, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.xpvcv, ptr %97, i64 0, i32 5
  store i32 7, ptr %98, align 8, !tbaa !54
  %99 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.42, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %100 = load ptr, ptr %99, align 8, !tbaa !48
  %101 = getelementptr inbounds %struct.xpvcv, ptr %100, i64 0, i32 5
  store i32 9, ptr %101, align 8, !tbaa !54
  %102 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.43, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %103 = load ptr, ptr %102, align 8, !tbaa !48
  %104 = getelementptr inbounds %struct.xpvcv, ptr %103, i64 0, i32 5
  store i32 11, ptr %104, align 8, !tbaa !54
  %105 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.44, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = getelementptr inbounds %struct.xpvcv, ptr %106, i64 0, i32 5
  store i32 10, ptr %107, align 8, !tbaa !54
  %108 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.45, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %109 = load ptr, ptr %108, align 8, !tbaa !48
  %110 = getelementptr inbounds %struct.xpvcv, ptr %109, i64 0, i32 5
  store i32 12, ptr %110, align 8, !tbaa !54
  %111 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.46, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 5
  store i32 15, ptr %113, align 8, !tbaa !54
  %114 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.47, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %115 = load ptr, ptr %114, align 8, !tbaa !48
  %116 = getelementptr inbounds %struct.xpvcv, ptr %115, i64 0, i32 5
  store i32 17, ptr %116, align 8, !tbaa !54
  %117 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.48, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %118 = load ptr, ptr %117, align 8, !tbaa !48
  %119 = getelementptr inbounds %struct.xpvcv, ptr %118, i64 0, i32 5
  store i32 16, ptr %119, align 8, !tbaa !54
  %120 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.49, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %121 = load ptr, ptr %120, align 8, !tbaa !48
  %122 = getelementptr inbounds %struct.xpvcv, ptr %121, i64 0, i32 5
  store i32 18, ptr %122, align 8, !tbaa !54
  %123 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.50, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %124 = load ptr, ptr %123, align 8, !tbaa !48
  %125 = getelementptr inbounds %struct.xpvcv, ptr %124, i64 0, i32 5
  store i32 20, ptr %125, align 8, !tbaa !54
  %126 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.51, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  %128 = getelementptr inbounds %struct.xpvcv, ptr %127, i64 0, i32 5
  store i32 19, ptr %128, align 8, !tbaa !54
  %129 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.52, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %130 = load ptr, ptr %129, align 8, !tbaa !48
  %131 = getelementptr inbounds %struct.xpvcv, ptr %130, i64 0, i32 5
  store i32 14, ptr %131, align 8, !tbaa !54
  %132 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.53, ptr noundef nonnull @XS_Digest__SHA_hmac_sha1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef 0) #14
  %133 = load ptr, ptr %132, align 8, !tbaa !48
  %134 = getelementptr inbounds %struct.xpvcv, ptr %133, i64 0, i32 5
  store i32 13, ptr %134, align 8, !tbaa !54
  %135 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.54, ptr noundef nonnull @XS_Digest__SHA_hashsize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %136 = load ptr, ptr %135, align 8, !tbaa !48
  %137 = getelementptr inbounds %struct.xpvcv, ptr %136, i64 0, i32 5
  store i32 1, ptr %137, align 8, !tbaa !54
  %138 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.55, ptr noundef nonnull @XS_Digest__SHA_hashsize, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %139 = load ptr, ptr %138, align 8, !tbaa !48
  %140 = getelementptr inbounds %struct.xpvcv, ptr %139, i64 0, i32 5
  store i32 0, ptr %140, align 8, !tbaa !54
  %141 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.56, ptr noundef nonnull @XS_Digest__SHA_add, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57, i32 noundef 0) #14
  %142 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.58, ptr noundef nonnull @XS_Digest__SHA_digest, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %143 = load ptr, ptr %142, align 8, !tbaa !48
  %144 = getelementptr inbounds %struct.xpvcv, ptr %143, i64 0, i32 5
  store i32 2, ptr %144, align 8, !tbaa !54
  %145 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.59, ptr noundef nonnull @XS_Digest__SHA_digest, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %146 = load ptr, ptr %145, align 8, !tbaa !48
  %147 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 5
  store i32 0, ptr %147, align 8, !tbaa !54
  %148 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.60, ptr noundef nonnull @XS_Digest__SHA_digest, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %149 = load ptr, ptr %148, align 8, !tbaa !48
  %150 = getelementptr inbounds %struct.xpvcv, ptr %149, i64 0, i32 5
  store i32 1, ptr %150, align 8, !tbaa !54
  %151 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.61, ptr noundef nonnull @XS_Digest__SHA__getstate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %152 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.62, ptr noundef nonnull @XS_Digest__SHA__putstate, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %153 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.63, ptr noundef nonnull @XS_Digest__SHA__addfilebin, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %154 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.64, ptr noundef nonnull @XS_Digest__SHA__addfileuniv, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_shainit(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.65) #14
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = tail call fastcc ptr @getSHA(ptr noundef %20)
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %23 = getelementptr ptr, ptr %22, i64 %8
  %24 = getelementptr ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !58
  %28 = and i32 %27, 2097408
  %29 = icmp eq i32 %28, 256
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load ptr, ptr %25, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.xpviv, ptr %31, i64 0, i32 4
  %33 = load i64, ptr %32, align 8, !tbaa !54
  br label %36

34:                                               ; preds = %16
  %35 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %25, i32 noundef 2) #14
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ %33, %30 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.op, ptr %39, i64 0, i32 6
  %41 = load i8, ptr %40, align 1, !tbaa !61
  %42 = and i8 %41, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load ptr, ptr @PL_curpad, align 8, !tbaa !56
  %46 = getelementptr inbounds %struct.op, ptr %39, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  br label %52

50:                                               ; preds = %36
  %51 = tail call ptr @Perl_sv_newmortal() #14
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %49, %44 ], [ %51, %50 ]
  %54 = tail call fastcc i32 @shainit(ptr noundef %21, i32 noundef %38), !range !65
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %56 = zext nneg i32 %54 to i64
  tail call void @Perl_sv_setiv(ptr noundef %53, i64 noundef %56) #14
  %57 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !58
  %59 = and i32 %58, 4194304
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = tail call i32 @Perl_mg_set(ptr noundef %53) #14
  br label %63

63:                                               ; preds = %52, %61
  %64 = getelementptr inbounds ptr, ptr %55, i64 %18
  store ptr %53, ptr %64, align 8, !tbaa !56
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %66 = getelementptr inbounds ptr, ptr %65, i64 %18
  store ptr %66, ptr @PL_stack_sp, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_sharewind(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.67) #14
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = tail call fastcc ptr @getSHA(ptr noundef %20)
  tail call fastcc void @sharewind(ptr noundef %21)
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 %18
  %24 = getelementptr inbounds ptr, ptr %23, i64 -1
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_shawrite(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.68) #14
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %20, ptr noundef null, i32 noundef 2) #14
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %33 = getelementptr ptr, ptr %32, i64 %8
  %34 = getelementptr ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !58
  %38 = and i32 %37, -2145386240
  %39 = icmp eq i32 %38, -2147483392
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load ptr, ptr %35, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.xpvuv, ptr %41, i64 0, i32 4
  %43 = load i64, ptr %42, align 8, !tbaa !54
  br label %46

44:                                               ; preds = %30
  %45 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %35, i32 noundef 2) #14
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i64 [ %43, %40 ], [ %45, %44 ]
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %49 = getelementptr ptr, ptr %48, i64 %8
  %50 = getelementptr ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  %52 = tail call fastcc ptr @getSHA(ptr noundef %51)
  %53 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %54 = getelementptr inbounds %struct.op, ptr %53, i64 0, i32 6
  %55 = load i8, ptr %54, align 1, !tbaa !61
  %56 = and i8 %55, 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %46
  %59 = load ptr, ptr @PL_curpad, align 8, !tbaa !56
  %60 = getelementptr inbounds %struct.op, ptr %53, i64 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  br label %66

64:                                               ; preds = %46
  %65 = tail call ptr @Perl_sv_newmortal() #14
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi ptr [ %63, %58 ], [ %65, %64 ]
  %68 = tail call fastcc i64 @shawrite(ptr noundef %31, i64 noundef %47, ptr noundef %52)
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  tail call void @Perl_sv_setuv(ptr noundef %67, i64 noundef %68) #14
  %70 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !58
  %72 = and i32 %71, 4194304
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %66
  %75 = tail call i32 @Perl_mg_set(ptr noundef %67) #14
  br label %76

76:                                               ; preds = %66, %74
  %77 = getelementptr inbounds ptr, ptr %69, i64 %18
  store ptr %67, ptr %77, align 8, !tbaa !56
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %79 = getelementptr inbounds ptr, ptr %78, i64 %18
  store ptr %79, ptr @PL_stack_sp, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_newSHA(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.69) #14
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %20, ptr noundef null, i32 noundef 2) #14
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %33 = getelementptr ptr, ptr %32, i64 %8
  %34 = getelementptr ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !58
  %38 = and i32 %37, 2097408
  %39 = icmp eq i32 %38, 256
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load ptr, ptr %35, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.xpviv, ptr %41, i64 0, i32 4
  %43 = load i64, ptr %42, align 8, !tbaa !54
  br label %46

44:                                               ; preds = %30
  %45 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %35, i32 noundef 2) #14
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i64 [ %43, %40 ], [ %45, %44 ]
  %48 = trunc i64 %47 to i32
  %49 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 552) #14
  %50 = tail call fastcc i32 @shainit(ptr noundef %49, i32 noundef %48), !range !65
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  tail call void @Perl_safesysfree(ptr noundef %49) #14
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %54 = getelementptr inbounds ptr, ptr %53, i64 %18
  store ptr @PL_sv_undef, ptr %54, align 8, !tbaa !56
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %56 = getelementptr inbounds ptr, ptr %55, i64 %18
  br label %68

57:                                               ; preds = %46
  %58 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %59 = tail call ptr @Perl_sv_setref_pv(ptr noundef %58, ptr noundef %31, ptr noundef %49) #14
  %60 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !58
  %64 = or i32 %63, 134217728
  store i32 %64, ptr %62, align 4, !tbaa !58
  %65 = tail call ptr @Perl_sv_2mortal(ptr noundef %58) #14
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %67 = getelementptr inbounds ptr, ptr %66, i64 %18
  br label %68

68:                                               ; preds = %57, %52
  %69 = phi ptr [ %67, %57 ], [ @PL_stack_sp, %52 ]
  %70 = phi ptr [ %65, %57 ], [ %56, %52 ]
  store ptr %70, ptr %69, align 8, !tbaa !56
  br i1 %51, label %74, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %73 = getelementptr inbounds ptr, ptr %72, i64 %18
  store ptr %73, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %74

74:                                               ; preds = %68, %71
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_clone(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.70) #14
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = tail call fastcc ptr @getSHA(ptr noundef %20)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %25 = getelementptr inbounds ptr, ptr %24, i64 %18
  store ptr @PL_sv_undef, ptr %25, align 8, !tbaa !56
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %27 = getelementptr inbounds ptr, ptr %26, i64 %18
  br label %43

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_safesysmalloc(i64 noundef 552) #14
  %30 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %31 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = tail call ptr @Perl_sv_reftype(ptr noundef %32, i32 noundef 1) #14
  %34 = tail call ptr @Perl_sv_setref_pv(ptr noundef %30, ptr noundef %33, ptr noundef %29) #14
  %35 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !58
  %39 = or i32 %38, 134217728
  store i32 %39, ptr %37, align 4, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %29, ptr noundef nonnull align 1 dereferenceable(552) %21, i64 552, i1 false)
  %40 = tail call ptr @Perl_sv_2mortal(ptr noundef %30) #14
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %42 = getelementptr inbounds ptr, ptr %41, i64 %18
  br label %43

43:                                               ; preds = %28, %23
  %44 = phi ptr [ %42, %28 ], [ @PL_stack_sp, %23 ]
  %45 = phi ptr [ %40, %28 ], [ %27, %23 ]
  store ptr %45, ptr %44, align 8, !tbaa !56
  br i1 %22, label %49, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %48 = getelementptr inbounds ptr, ptr %47, i64 %18
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %49

49:                                               ; preds = %43, %46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_DESTROY(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.67) #14
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = tail call fastcc ptr @getSHA(ptr noundef %20)
  tail call void @Perl_safesysfree(ptr noundef %21) #14
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %23 = getelementptr inbounds ptr, ptr %22, i64 %18
  %24 = getelementptr inbounds ptr, ptr %23, i64 -1
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @XS_Digest__SHA_sha1(ptr nocapture noundef readonly %0) #3 !prof !66 !PGOFuncName !67 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.SHA, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %7 = load i32, ptr %5, align 4, !tbaa !57
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr %0, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %3) #14
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [21 x i32], ptr @ix2alg, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !57
  switch i32 %22, label %50 [
    i32 512256, label %23
    i32 512224, label %23
    i32 512, label %23
    i32 384, label %23
    i32 256, label %23
    i32 224, label %23
    i32 1, label %23
  ], !prof !68

23:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  store i32 %22, ptr %3, align 8, !tbaa !69
  switch i32 %22, label %50 [
    i32 1, label %24
    i32 224, label %27
    i32 256, label %30
    i32 384, label %33
    i32 512, label %36
    i32 512224, label %39
    i32 512256, label %42
  ], !prof !71

24:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha1, ptr %25, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 16 dereferenceable(32) @H01, i64 32, i1 false)
  br label %45

27:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 224, ptr %3, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha256, ptr %28, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 16 dereferenceable(32) @H0224, i64 32, i1 false)
  br label %45

30:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 256, ptr %3, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha256, ptr %31, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 16 dereferenceable(32) @H0256, i64 32, i1 false)
  br label %45

33:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 384, ptr %3, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha512, ptr %34, align 8, !tbaa !72
  %35 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %35, ptr noundef nonnull align 16 dereferenceable(64) @H0384, i64 64, i1 false)
  br label %45

36:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 512, ptr %3, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha512, ptr %37, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %38, ptr noundef nonnull align 16 dereferenceable(64) @H0512, i64 64, i1 false)
  br label %45

39:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 512224, ptr %3, align 8, !tbaa !69
  %40 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha512, ptr %40, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %41, ptr noundef nonnull align 16 dereferenceable(64) @H0512224, i64 64, i1 false)
  br label %45

42:                                               ; preds = %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(552) %3, i8 0, i64 552, i1 false)
  store i32 512256, ptr %3, align 8, !tbaa !69
  %43 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 1
  store ptr @sha512, ptr %43, align 8, !tbaa !72
  %44 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %44, ptr noundef nonnull align 16 dereferenceable(64) @H0512256, i64 64, i1 false)
  br label %45

45:                                               ; preds = %24, %27, %30, %33, %36, %39, %42
  %46 = phi i32 [ 1024, %42 ], [ 1024, %39 ], [ 1024, %36 ], [ 1024, %33 ], [ 512, %30 ], [ 512, %27 ], [ 512, %24 ]
  %47 = phi i32 [ 32, %42 ], [ 28, %39 ], [ 64, %36 ], [ 48, %33 ], [ 32, %30 ], [ 28, %27 ], [ 20, %24 ]
  %48 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 6
  store i32 %46, ptr %48, align 4, !tbaa !73
  %49 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 12
  store i32 %47, ptr %49, align 8, !tbaa !74
  br label %50

50:                                               ; preds = %45, %23, %1
  %51 = phi i1 [ true, %1 ], [ false, %23 ], [ false, %45 ]
  br i1 %51, label %57, label %52, !prof !75

52:                                               ; preds = %50
  %53 = icmp sgt i32 %16, 0
  br i1 %53, label %54, label %98, !prof !76

54:                                               ; preds = %52
  %55 = sext i32 %9 to i64
  %56 = and i64 %15, 4294967295
  br label %62

57:                                               ; preds = %50
  %58 = sext i32 %9 to i64
  %59 = getelementptr inbounds ptr, ptr %8, i64 %58
  store ptr @PL_sv_undef, ptr %59, align 8, !tbaa !56
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %117

62:                                               ; preds = %54, %91
  %63 = phi i64 [ 0, %54 ], [ %96, %91 ]
  %64 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %65 = getelementptr ptr, ptr %64, i64 %63
  %66 = getelementptr ptr, ptr %65, i64 %55
  %67 = load ptr, ptr %66, align 8, !tbaa !56
  %68 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !58
  %70 = and i32 %69, 538969088
  %71 = icmp eq i32 %70, 1024
  br i1 %71, label %72, label %78, !prof !77

72:                                               ; preds = %62
  %73 = load ptr, ptr %67, align 8, !tbaa !60
  %74 = getelementptr inbounds %struct.xpv, ptr %73, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !78
  store i64 %75, ptr %2, align 8, !tbaa !80
  %76 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !54
  br label %80

78:                                               ; preds = %62
  %79 = call ptr @Perl_sv_2pvbyte(ptr noundef %67, ptr noundef nonnull %2) #14
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %77, %72 ], [ %79, %78 ]
  %82 = load i64, ptr %2, align 8, !tbaa !80
  %83 = icmp ugt i64 %82, 16384
  br i1 %83, label %84, label %91, !prof !81

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %87, %84 ], [ %81, %80 ]
  %86 = call fastcc i64 @shawrite(ptr noundef %85, i64 noundef 131072, ptr noundef nonnull %3)
  %87 = getelementptr inbounds i8, ptr %85, i64 16384
  %88 = load i64, ptr %2, align 8, !tbaa !80
  %89 = add i64 %88, -16384
  store i64 %89, ptr %2, align 8, !tbaa !80
  %90 = icmp ugt i64 %89, 16384
  br i1 %90, label %84, label %91, !prof !82, !llvm.loop !83

91:                                               ; preds = %84, %80
  %92 = phi ptr [ %81, %80 ], [ %87, %84 ]
  %93 = phi i64 [ %82, %80 ], [ %89, %84 ]
  %94 = shl nuw nsw i64 %93, 3
  %95 = call fastcc i64 @shawrite(ptr noundef %92, i64 noundef %94, ptr noundef nonnull %3)
  %96 = add nuw nsw i64 %63, 1
  %97 = icmp eq i64 %96, %56
  br i1 %97, label %98, label %62, !prof !86, !llvm.loop !87

98:                                               ; preds = %91, %52
  call fastcc void @shafinish(ptr noundef nonnull %3)
  store i64 0, ptr %2, align 8, !tbaa !80
  %99 = srem i32 %19, 3
  switch i32 %99, label %107 [
    i32 0, label %100
    i32 1, label %105
  ], !prof !88

100:                                              ; preds = %98
  %101 = call fastcc ptr @digcpy(ptr noundef nonnull %3)
  %102 = getelementptr inbounds %struct.SHA, ptr %3, i64 0, i32 12
  %103 = load i32, ptr %102, align 8, !tbaa !74
  %104 = zext i32 %103 to i64
  store i64 %104, ptr %2, align 8, !tbaa !80
  br label %109

105:                                              ; preds = %98
  %106 = call fastcc ptr @shahex(ptr noundef nonnull %3)
  br label %109

107:                                              ; preds = %98
  %108 = call fastcc ptr @shabase64(ptr noundef nonnull %3)
  br label %109

109:                                              ; preds = %105, %107, %100
  %110 = phi ptr [ %101, %100 ], [ %106, %105 ], [ %108, %107 ]
  %111 = load i64, ptr %2, align 8, !tbaa !80
  %112 = call ptr @Perl_newSVpv(ptr noundef nonnull %110, i64 noundef %111) #14
  %113 = call ptr @Perl_sv_2mortal(ptr noundef %112) #14
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %115 = sext i32 %9 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  store ptr %113, ptr %116, align 8, !tbaa !56
  br label %117

117:                                              ; preds = %109, %57
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br i1 %51, label %122, label %118, !prof !75

118:                                              ; preds = %117
  %119 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %120 = sext i32 %9 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %122

122:                                              ; preds = %117, %118
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_hmac_sha1(ptr nocapture noundef readonly %0) #0 !prof !55 {
  %2 = alloca %struct.SHA, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.HMAC, align 8
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %8 = load i32, ptr %6, align 4, !tbaa !57
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 3
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr %0, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 1240, ptr nonnull %4) #14
  %21 = icmp sgt i32 %17, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %1
  %23 = add i32 %8, %17
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %9, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !58
  %29 = and i32 %28, 538969088
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load ptr, ptr %26, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !78
  store i64 %34, ptr %3, align 8, !tbaa !80
  %35 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  br label %39

37:                                               ; preds = %22
  %38 = call ptr @Perl_sv_2pvbyte(ptr noundef %26, ptr noundef nonnull %3) #14
  br label %39

39:                                               ; preds = %31, %37, %1
  %40 = phi ptr [ @.str.71, %1 ], [ %36, %31 ], [ %38, %37 ]
  %41 = sext i32 %20 to i64
  %42 = getelementptr inbounds [21 x i32], ptr @ix2alg, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !57
  %44 = load i64, ptr %3, align 8, !tbaa !80
  %45 = trunc i64 %44 to i32
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1240) %4, i8 0, i64 1240, i1 false)
  %46 = call fastcc i32 @shainit(ptr noundef nonnull %4, i32 noundef %43), !range !65
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %108, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 1
  %50 = call fastcc i32 @shainit(ptr noundef nonnull %49, i32 noundef %43), !range !65
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %108, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 1, i32 6
  %54 = load i32, ptr %53, align 4, !tbaa !89
  %55 = lshr i32 %54, 3
  %56 = icmp ult i32 %55, %45
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 3
  %59 = and i64 %44, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %58, ptr align 1 %40, i64 %59, i1 false)
  br label %72

60:                                               ; preds = %52
  %61 = call fastcc i32 @shainit(ptr noundef nonnull %2, i32 noundef %43), !range !65
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %108, label %63

63:                                               ; preds = %60
  %64 = shl i64 %44, 3
  %65 = and i64 %64, 4294967288
  %66 = call fastcc i64 @shawrite(ptr noundef %40, i64 noundef %65, ptr noundef nonnull %2)
  call fastcc void @shafinish(ptr noundef nonnull %2)
  %67 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 3
  %68 = call fastcc ptr @digcpy(ptr noundef nonnull %2)
  %69 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 12
  %70 = load i32, ptr %69, align 8, !tbaa !74
  %71 = zext i32 %70 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %67, ptr nonnull align 1 %68, i64 %71, i1 false)
  br label %72

72:                                               ; preds = %63, %57
  %73 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 1, i32 12
  %74 = load i32, ptr %73, align 8, !tbaa !91
  %75 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 2
  store i32 %74, ptr %75, align 8, !tbaa !92
  %76 = load i32, ptr %53, align 4, !tbaa !89
  %77 = icmp ult i32 %76, 8
  br i1 %77, label %88, label %78

78:                                               ; preds = %72
  %79 = lshr i32 %76, 3
  %80 = zext nneg i32 %79 to i64
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ 0, %78 ], [ %86, %81 ]
  %83 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 3, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !54
  %85 = xor i8 %84, 92
  store i8 %85, ptr %83, align 1, !tbaa !54
  %86 = add nuw nsw i64 %82, 1
  %87 = icmp eq i64 %86, %80
  br i1 %87, label %88, label %81, !llvm.loop !93

88:                                               ; preds = %81, %72
  %89 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 3
  %90 = zext i32 %76 to i64
  %91 = call fastcc i64 @shawrite(ptr noundef nonnull %89, i64 noundef %90, ptr noundef nonnull %49)
  %92 = getelementptr inbounds %struct.SHA, ptr %4, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !94
  %94 = icmp ult i32 %93, 8
  br i1 %94, label %105, label %95

95:                                               ; preds = %88
  %96 = lshr i32 %93, 3
  %97 = zext nneg i32 %96 to i64
  br label %98

98:                                               ; preds = %95, %98
  %99 = phi i64 [ 0, %95 ], [ %103, %98 ]
  %100 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 3, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !54
  %102 = xor i8 %101, 106
  store i8 %102, ptr %100, align 1, !tbaa !54
  %103 = add nuw nsw i64 %99, 1
  %104 = icmp eq i64 %103, %97
  br i1 %104, label %105, label %98, !llvm.loop !95

105:                                              ; preds = %98, %88
  %106 = zext i32 %93 to i64
  %107 = call fastcc i64 @shawrite(ptr noundef nonnull %89, i64 noundef %106, ptr noundef nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %89, i8 0, i64 128, i1 false)
  br label %108

108:                                              ; preds = %39, %48, %60, %105
  %109 = phi i1 [ false, %105 ], [ true, %39 ], [ true, %48 ], [ true, %60 ]
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %2) #14
  br i1 %109, label %116, label %110

110:                                              ; preds = %108
  %111 = icmp sgt i32 %17, 1
  br i1 %111, label %112, label %158

112:                                              ; preds = %110
  %113 = add nuw nsw i64 %16, 4294967295
  %114 = sext i32 %10 to i64
  %115 = and i64 %113, 4294967295
  br label %122

116:                                              ; preds = %108
  %117 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %118 = sext i32 %10 to i64
  %119 = getelementptr inbounds ptr, ptr %117, i64 %118
  store ptr @PL_sv_undef, ptr %119, align 8, !tbaa !56
  %120 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %121 = getelementptr inbounds ptr, ptr %120, i64 %118
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %184

122:                                              ; preds = %112, %151
  %123 = phi i64 [ 0, %112 ], [ %156, %151 ]
  %124 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %125 = getelementptr ptr, ptr %124, i64 %123
  %126 = getelementptr ptr, ptr %125, i64 %114
  %127 = load ptr, ptr %126, align 8, !tbaa !56
  %128 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !58
  %130 = and i32 %129, 538969088
  %131 = icmp eq i32 %130, 1024
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load ptr, ptr %127, align 8, !tbaa !60
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !78
  store i64 %135, ptr %3, align 8, !tbaa !80
  %136 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !54
  br label %140

138:                                              ; preds = %122
  %139 = call ptr @Perl_sv_2pvbyte(ptr noundef %127, ptr noundef nonnull %3) #14
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi ptr [ %137, %132 ], [ %139, %138 ]
  %142 = load i64, ptr %3, align 8, !tbaa !80
  %143 = icmp ugt i64 %142, 16384
  br i1 %143, label %144, label %151

144:                                              ; preds = %140, %144
  %145 = phi ptr [ %147, %144 ], [ %141, %140 ]
  %146 = call fastcc i64 @shawrite(ptr noundef %145, i64 noundef 131072, ptr noundef nonnull %4)
  %147 = getelementptr inbounds i8, ptr %145, i64 16384
  %148 = load i64, ptr %3, align 8, !tbaa !80
  %149 = add i64 %148, -16384
  store i64 %149, ptr %3, align 8, !tbaa !80
  %150 = icmp ugt i64 %149, 16384
  br i1 %150, label %144, label %151, !llvm.loop !96

151:                                              ; preds = %144, %140
  %152 = phi ptr [ %141, %140 ], [ %147, %144 ]
  %153 = phi i64 [ %142, %140 ], [ %149, %144 ]
  %154 = shl nuw nsw i64 %153, 3
  %155 = call fastcc i64 @shawrite(ptr noundef %152, i64 noundef %154, ptr noundef nonnull %4)
  %156 = add nuw nsw i64 %123, 1
  %157 = icmp eq i64 %156, %115
  br i1 %157, label %158, label %122, !llvm.loop !97

158:                                              ; preds = %151, %110
  call fastcc void @shafinish(ptr noundef nonnull %4)
  %159 = call fastcc ptr @digcpy(ptr noundef nonnull %4)
  %160 = getelementptr inbounds %struct.SHA, ptr %4, i64 0, i32 12
  %161 = load i32, ptr %160, align 8, !tbaa !98
  %162 = shl i32 %161, 3
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 1
  %165 = call fastcc i64 @shawrite(ptr noundef nonnull %159, i64 noundef %163, ptr noundef nonnull %164)
  call fastcc void @shafinish(ptr noundef nonnull %164)
  store i64 0, ptr %3, align 8, !tbaa !80
  %166 = srem i32 %20, 3
  switch i32 %166, label %174 [
    i32 0, label %167
    i32 1, label %172
  ]

167:                                              ; preds = %158
  %168 = call fastcc ptr @digcpy(ptr noundef nonnull %164)
  %169 = getelementptr inbounds %struct.HMAC, ptr %4, i64 0, i32 2
  %170 = load i32, ptr %169, align 8, !tbaa !92
  %171 = zext i32 %170 to i64
  store i64 %171, ptr %3, align 8, !tbaa !80
  br label %176

172:                                              ; preds = %158
  %173 = call fastcc ptr @shahex(ptr noundef nonnull %164)
  br label %176

174:                                              ; preds = %158
  %175 = call fastcc ptr @shabase64(ptr noundef nonnull %164)
  br label %176

176:                                              ; preds = %172, %174, %167
  %177 = phi ptr [ %168, %167 ], [ %173, %172 ], [ %175, %174 ]
  %178 = load i64, ptr %3, align 8, !tbaa !80
  %179 = call ptr @Perl_newSVpv(ptr noundef nonnull %177, i64 noundef %178) #14
  %180 = call ptr @Perl_sv_2mortal(ptr noundef %179) #14
  %181 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %182 = sext i32 %10 to i64
  %183 = getelementptr inbounds ptr, ptr %181, i64 %182
  store ptr %180, ptr %183, align 8, !tbaa !56
  br label %184

184:                                              ; preds = %176, %116
  call void @llvm.lifetime.end.p0(i64 1240, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br i1 %109, label %189, label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %187 = sext i32 %10 to i64
  %188 = getelementptr inbounds ptr, ptr %186, i64 %187
  store ptr %188, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %189

189:                                              ; preds = %184, %185
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_hashsize(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = and i64 %12, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #14
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = load ptr, ptr @PL_op, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !61
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr @PL_curpad, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  br label %37

35:                                               ; preds = %19
  %36 = tail call ptr @Perl_sv_newmortal() #14
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = tail call fastcc ptr @getSHA(ptr noundef %23)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %43 = getelementptr inbounds ptr, ptr %42, i64 %21
  store ptr @PL_sv_undef, ptr %43, align 8, !tbaa !56
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %45 = getelementptr inbounds ptr, ptr %44, i64 %21
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %66

46:                                               ; preds = %37
  %47 = icmp eq i32 %15, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %39, align 8, !tbaa !69
  br label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.SHA, ptr %39, i64 0, i32 12
  %52 = load i32, ptr %51, align 8, !tbaa !74
  %53 = shl i32 %52, 3
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi i32 [ %49, %48 ], [ %53, %50 ]
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %57 = getelementptr inbounds ptr, ptr %56, i64 %21
  %58 = sext i32 %55 to i64
  tail call void @Perl_sv_setiv(ptr noundef %38, i64 noundef %58) #14
  %59 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !58
  %61 = and i32 %60, 4194304
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = tail call i32 @Perl_mg_set(ptr noundef %38) #14
  br label %65

65:                                               ; preds = %54, %63
  store ptr %38, ptr %57, align 8, !tbaa !56
  br label %66

66:                                               ; preds = %65, %41
  br i1 %40, label %70, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %69 = getelementptr inbounds ptr, ptr %68, i64 %21
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %70

70:                                               ; preds = %66, %67
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_add(ptr noundef %0) #0 !prof !55 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = load i32, ptr %4, align 4, !tbaa !57
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.72) #14
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %23 = tail call fastcc ptr @getSHA(ptr noundef %22)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = icmp sgt i32 %15, 1
  br i1 %26, label %27, label %69

27:                                               ; preds = %25
  %28 = sext i32 %8 to i64
  %29 = and i64 %14, 4294967295
  br label %33

30:                                               ; preds = %18
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %32 = getelementptr inbounds ptr, ptr %31, i64 %20
  store ptr @PL_sv_undef, ptr %32, align 8, !tbaa !56
  br label %69

33:                                               ; preds = %27, %62
  %34 = phi i64 [ 1, %27 ], [ %67, %62 ]
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %36 = getelementptr ptr, ptr %35, i64 %34
  %37 = getelementptr ptr, ptr %36, i64 %28
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !58
  %41 = and i32 %40, 538969088
  %42 = icmp eq i32 %41, 1024
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load ptr, ptr %38, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.xpv, ptr %44, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !78
  store i64 %46, ptr %2, align 8, !tbaa !80
  %47 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  br label %51

49:                                               ; preds = %33
  %50 = call ptr @Perl_sv_2pvbyte(ptr noundef %38, ptr noundef nonnull %2) #14
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %48, %43 ], [ %50, %49 ]
  %53 = load i64, ptr %2, align 8, !tbaa !80
  %54 = icmp ugt i64 %53, 16384
  br i1 %54, label %55, label %62

55:                                               ; preds = %51, %55
  %56 = phi ptr [ %58, %55 ], [ %52, %51 ]
  %57 = call fastcc i64 @shawrite(ptr noundef %56, i64 noundef 131072, ptr noundef nonnull %23)
  %58 = getelementptr inbounds i8, ptr %56, i64 16384
  %59 = load i64, ptr %2, align 8, !tbaa !80
  %60 = add i64 %59, -16384
  store i64 %60, ptr %2, align 8, !tbaa !80
  %61 = icmp ugt i64 %60, 16384
  br i1 %61, label %55, label %62, !llvm.loop !99

62:                                               ; preds = %55, %51
  %63 = phi ptr [ %52, %51 ], [ %58, %55 ]
  %64 = phi i64 [ %53, %51 ], [ %60, %55 ]
  %65 = shl nuw nsw i64 %64, 3
  %66 = call fastcc i64 @shawrite(ptr noundef %63, i64 noundef %65, ptr noundef nonnull %23)
  %67 = add nuw nsw i64 %34, 1
  %68 = icmp eq i64 %67, %29
  br i1 %68, label %69, label %33, !llvm.loop !100

69:                                               ; preds = %62, %25, %30
  %70 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %71 = getelementptr inbounds ptr, ptr %70, i64 %20
  store ptr %71, ptr @PL_stack_sp, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA_digest(ptr noundef %0) #0 !prof !55 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = load i32, ptr %3, align 4, !tbaa !57
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = and i64 %12, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #14
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = tail call fastcc ptr @getSHA(ptr noundef %23)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %28 = getelementptr inbounds ptr, ptr %27, i64 %21
  store ptr @PL_sv_undef, ptr %28, align 8, !tbaa !56
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %30 = getelementptr inbounds ptr, ptr %29, i64 %21
  br label %48

31:                                               ; preds = %19
  tail call fastcc void @shafinish(ptr noundef nonnull %24)
  switch i32 %15, label %39 [
    i32 0, label %32
    i32 1, label %37
  ]

32:                                               ; preds = %31
  %33 = tail call fastcc ptr @digcpy(ptr noundef nonnull %24)
  %34 = getelementptr inbounds %struct.SHA, ptr %24, i64 0, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !74
  %36 = zext i32 %35 to i64
  br label %41

37:                                               ; preds = %31
  %38 = tail call fastcc ptr @shahex(ptr noundef nonnull %24)
  br label %41

39:                                               ; preds = %31
  %40 = tail call fastcc ptr @shabase64(ptr noundef nonnull %24)
  br label %41

41:                                               ; preds = %37, %39, %32
  %42 = phi ptr [ %33, %32 ], [ %38, %37 ], [ %40, %39 ]
  %43 = phi i64 [ %36, %32 ], [ 0, %37 ], [ 0, %39 ]
  %44 = tail call ptr @Perl_newSVpv(ptr noundef nonnull %42, i64 noundef %43) #14
  tail call fastcc void @sharewind(ptr noundef nonnull %24)
  %45 = tail call ptr @Perl_sv_2mortal(ptr noundef %44) #14
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %47 = getelementptr inbounds ptr, ptr %46, i64 %21
  br label %48

48:                                               ; preds = %41, %26
  %49 = phi ptr [ %47, %41 ], [ @PL_stack_sp, %26 ]
  %50 = phi ptr [ %45, %41 ], [ %30, %26 ]
  store ptr %50, ptr %49, align 8, !tbaa !56
  br i1 %25, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %53 = getelementptr inbounds ptr, ptr %52, i64 %21
  store ptr %53, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %54

54:                                               ; preds = %48, %51
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA__getstate(ptr noundef %0) #0 !prof !55 {
  %2 = alloca [256 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = load i32, ptr %4, align 4, !tbaa !57
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.70) #14
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #14
  %22 = tail call fastcc ptr @getSHA(ptr noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %26 = getelementptr inbounds ptr, ptr %25, i64 %19
  store ptr @PL_sv_undef, ptr %26, align 8, !tbaa !56
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %28 = getelementptr inbounds ptr, ptr %27, i64 %19
  br label %116

29:                                               ; preds = %17
  %30 = tail call fastcc ptr @digcpy(ptr noundef nonnull %22)
  %31 = load i32, ptr %22, align 8, !tbaa !69
  %32 = icmp slt i32 %31, 257
  %33 = select i1 %32, i64 32, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(32) %30, i64 %33, i1 false)
  %34 = load i32, ptr %22, align 8, !tbaa !69
  %35 = icmp slt i32 %34, 257
  %36 = select i1 %35, i64 32, i64 64
  %37 = getelementptr inbounds i8, ptr %2, i64 %36
  %38 = getelementptr inbounds %struct.SHA, ptr %22, i64 0, i32 4
  %39 = select i1 %35, i64 64, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %37, ptr noundef nonnull align 8 dereferenceable(64) %38, i64 %39, i1 false)
  %40 = load i32, ptr %22, align 8, !tbaa !69
  %41 = icmp slt i32 %40, 257
  %42 = select i1 %41, i64 64, i64 128
  %43 = getelementptr inbounds i8, ptr %37, i64 %42
  %44 = getelementptr inbounds %struct.SHA, ptr %22, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !101
  br label %46

46:                                               ; preds = %29, %46
  %47 = phi i32 [ 0, %29 ], [ %54, %46 ]
  %48 = phi ptr [ %43, %29 ], [ %53, %46 ]
  %49 = shl nuw nsw i32 %47, 3
  %50 = sub nuw nsw i32 24, %49
  %51 = lshr i32 %45, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %52, ptr %48, align 1, !tbaa !54
  %54 = add nuw nsw i32 %47, 1
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %46, !llvm.loop !102

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.SHA, ptr %22, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !103
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i32 [ 0, %56 ], [ %67, %59 ]
  %61 = phi ptr [ %53, %56 ], [ %66, %59 ]
  %62 = shl nuw nsw i32 %60, 3
  %63 = sub nuw nsw i32 24, %62
  %64 = lshr i32 %58, %63
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %65, ptr %61, align 1, !tbaa !54
  %67 = add nuw nsw i32 %60, 1
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %59, !llvm.loop !102

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.SHA, ptr %22, i64 0, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !104
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i32 [ 0, %69 ], [ %80, %72 ]
  %74 = phi ptr [ %66, %69 ], [ %79, %72 ]
  %75 = shl nuw nsw i32 %73, 3
  %76 = sub nuw nsw i32 24, %75
  %77 = lshr i32 %71, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 %78, ptr %74, align 1, !tbaa !54
  %80 = add nuw nsw i32 %73, 1
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %72, !llvm.loop !102

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.SHA, ptr %22, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !105
  br label %85

85:                                               ; preds = %82, %85
  %86 = phi i32 [ 0, %82 ], [ %93, %85 ]
  %87 = phi ptr [ %79, %82 ], [ %92, %85 ]
  %88 = shl nuw nsw i32 %86, 3
  %89 = sub nuw nsw i32 24, %88
  %90 = lshr i32 %84, %89
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 %91, ptr %87, align 1, !tbaa !54
  %93 = add nuw nsw i32 %86, 1
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %85, !llvm.loop !102

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.SHA, ptr %22, i64 0, i32 10
  %97 = load i32, ptr %96, align 4, !tbaa !106
  br label %98

98:                                               ; preds = %95, %98
  %99 = phi i32 [ 0, %95 ], [ %106, %98 ]
  %100 = phi ptr [ %92, %95 ], [ %105, %98 ]
  %101 = shl nuw nsw i32 %99, 3
  %102 = sub nuw nsw i32 24, %101
  %103 = lshr i32 %97, %102
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %104, ptr %100, align 1, !tbaa !54
  %106 = add nuw nsw i32 %99, 1
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %98, !llvm.loop !102

108:                                              ; preds = %98
  %109 = ptrtoint ptr %105 to i64
  %110 = ptrtoint ptr %2 to i64
  %111 = sub i64 %109, %110
  %112 = call ptr @Perl_newSVpv(ptr noundef nonnull %2, i64 noundef %111) #14
  %113 = call ptr @Perl_sv_2mortal(ptr noundef %112) #14
  %114 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %115 = getelementptr inbounds ptr, ptr %114, i64 %19
  br label %116

116:                                              ; preds = %108, %24
  %117 = phi ptr [ %115, %108 ], [ @PL_stack_sp, %24 ]
  %118 = phi ptr [ %113, %108 ], [ %28, %24 ]
  store ptr %118, ptr %117, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #14
  br i1 %23, label %122, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %121 = getelementptr inbounds ptr, ptr %120, i64 %19
  store ptr %121, ptr @PL_stack_sp, align 8, !tbaa !56
  br label %122

122:                                              ; preds = %116, %119
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA__putstate(ptr noundef %0) #0 !prof !55 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = load i32, ptr %4, align 4, !tbaa !57
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.73) #14
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr ptr, ptr %18, i64 %9
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %25 = tail call fastcc ptr @getSHA(ptr noundef %21)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 %19
  store ptr @PL_sv_undef, ptr %29, align 8, !tbaa !56
  br label %203

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !58
  %33 = and i32 %32, 2098176
  %34 = icmp eq i32 %33, 1024
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load ptr, ptr %24, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.xpv, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !78
  store i64 %38, ptr %2, align 8, !tbaa !80
  %39 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  br label %43

41:                                               ; preds = %30
  %42 = call ptr @Perl_sv_2pv_flags(ptr noundef %24, ptr noundef nonnull %2, i32 noundef 2) #14
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = load i64, ptr %2, align 8, !tbaa !80
  %46 = load i32, ptr %25, align 8, !tbaa !69
  %47 = icmp slt i32 %46, 257
  %48 = select i1 %47, i64 116, i64 212
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %52 = getelementptr inbounds ptr, ptr %51, i64 %19
  store ptr @PL_sv_undef, ptr %52, align 8, !tbaa !56
  br label %203

53:                                               ; preds = %43
  br i1 %47, label %54, label %76

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 2
  br label %56

56:                                               ; preds = %54, %71
  %57 = phi ptr [ %55, %54 ], [ %72, %71 ]
  %58 = phi i32 [ 0, %54 ], [ %73, %71 ]
  %59 = phi ptr [ %44, %54 ], [ %74, %71 ]
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i32 [ 0, %56 ], [ %68, %60 ]
  %62 = phi i32 [ 0, %56 ], [ %69, %60 ]
  %63 = phi ptr [ %59, %56 ], [ %65, %60 ]
  %64 = shl i32 %61, 8
  %65 = getelementptr inbounds i8, ptr %63, i64 1
  %66 = load i8, ptr %63, align 1, !tbaa !54
  %67 = zext i8 %66 to i32
  %68 = or disjoint i32 %64, %67
  %69 = add nuw nsw i32 %62, 1
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %60, !llvm.loop !107

71:                                               ; preds = %60
  %72 = getelementptr inbounds i32, ptr %57, i64 1
  store i32 %68, ptr %57, align 4, !tbaa !57
  %73 = add nuw nsw i32 %58, 1
  %74 = getelementptr inbounds i8, ptr %59, i64 4
  %75 = icmp eq i32 %73, 8
  br i1 %75, label %115, label %56, !llvm.loop !108

76:                                               ; preds = %53
  %77 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 3
  br label %78

78:                                               ; preds = %76, %107
  %79 = phi ptr [ %77, %76 ], [ %111, %107 ]
  %80 = phi i32 [ 0, %76 ], [ %112, %107 ]
  %81 = phi ptr [ %44, %76 ], [ %113, %107 ]
  br label %82

82:                                               ; preds = %78, %82
  %83 = phi i32 [ 0, %78 ], [ %90, %82 ]
  %84 = phi i32 [ 0, %78 ], [ %91, %82 ]
  %85 = phi ptr [ %81, %78 ], [ %87, %82 ]
  %86 = shl i32 %83, 8
  %87 = getelementptr inbounds i8, ptr %85, i64 1
  %88 = load i8, ptr %85, align 1, !tbaa !54
  %89 = zext i8 %88 to i32
  %90 = or disjoint i32 %86, %89
  %91 = add nuw nsw i32 %84, 1
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %82, !llvm.loop !107

93:                                               ; preds = %82
  %94 = zext i32 %90 to i64
  %95 = getelementptr inbounds i8, ptr %81, i64 4
  br label %96

96:                                               ; preds = %93, %96
  %97 = phi i32 [ 0, %93 ], [ %104, %96 ]
  %98 = phi i32 [ 0, %93 ], [ %105, %96 ]
  %99 = phi ptr [ %95, %93 ], [ %101, %96 ]
  %100 = shl i32 %97, 8
  %101 = getelementptr inbounds i8, ptr %99, i64 1
  %102 = load i8, ptr %99, align 1, !tbaa !54
  %103 = zext i8 %102 to i32
  %104 = or disjoint i32 %100, %103
  %105 = add nuw nsw i32 %98, 1
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %96, !llvm.loop !107

107:                                              ; preds = %96
  %108 = shl nuw i64 %94, 32
  %109 = zext i32 %104 to i64
  %110 = or disjoint i64 %108, %109
  %111 = getelementptr inbounds i64, ptr %79, i64 1
  store i64 %110, ptr %79, align 8, !tbaa !80
  %112 = add nuw nsw i32 %80, 1
  %113 = getelementptr inbounds i8, ptr %81, i64 8
  %114 = icmp eq i32 %112, 8
  br i1 %114, label %115, label %78, !llvm.loop !109

115:                                              ; preds = %107, %71
  %116 = phi ptr [ %74, %71 ], [ %113, %107 ]
  %117 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 4
  %118 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 6
  %119 = load i32, ptr %118, align 4, !tbaa !73
  %120 = lshr i32 %119, 3
  %121 = zext nneg i32 %120 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %117, ptr nonnull align 1 %116, i64 %121, i1 false)
  %122 = load i32, ptr %118, align 4, !tbaa !73
  %123 = lshr i32 %122, 3
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %116, i64 %124
  br label %126

126:                                              ; preds = %115, %126
  %127 = phi i32 [ 0, %115 ], [ %134, %126 ]
  %128 = phi i32 [ 0, %115 ], [ %135, %126 ]
  %129 = phi ptr [ %125, %115 ], [ %131, %126 ]
  %130 = shl i32 %127, 8
  %131 = getelementptr inbounds i8, ptr %129, i64 1
  %132 = load i8, ptr %129, align 1, !tbaa !54
  %133 = zext i8 %132 to i32
  %134 = or disjoint i32 %130, %133
  %135 = add nuw nsw i32 %128, 1
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %126, !llvm.loop !107

137:                                              ; preds = %126
  %138 = load i32, ptr %25, align 8, !tbaa !69
  %139 = icmp slt i32 %138, 257
  %140 = select i1 %139, i32 512, i32 1024
  %141 = icmp ult i32 %134, %140
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %144 = getelementptr inbounds ptr, ptr %143, i64 %19
  store ptr @PL_sv_undef, ptr %144, align 8, !tbaa !56
  br label %203

145:                                              ; preds = %137
  %146 = getelementptr inbounds i8, ptr %125, i64 4
  %147 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 5
  store i32 %134, ptr %147, align 8, !tbaa !101
  br label %148

148:                                              ; preds = %145, %148
  %149 = phi i32 [ 0, %145 ], [ %156, %148 ]
  %150 = phi i32 [ 0, %145 ], [ %157, %148 ]
  %151 = phi ptr [ %146, %145 ], [ %153, %148 ]
  %152 = shl i32 %149, 8
  %153 = getelementptr inbounds i8, ptr %151, i64 1
  %154 = load i8, ptr %151, align 1, !tbaa !54
  %155 = zext i8 %154 to i32
  %156 = or disjoint i32 %152, %155
  %157 = add nuw nsw i32 %150, 1
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %148, !llvm.loop !107

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 7
  store i32 %156, ptr %160, align 8, !tbaa !103
  %161 = getelementptr inbounds i8, ptr %125, i64 8
  br label %162

162:                                              ; preds = %159, %162
  %163 = phi i32 [ 0, %159 ], [ %170, %162 ]
  %164 = phi i32 [ 0, %159 ], [ %171, %162 ]
  %165 = phi ptr [ %161, %159 ], [ %167, %162 ]
  %166 = shl i32 %163, 8
  %167 = getelementptr inbounds i8, ptr %165, i64 1
  %168 = load i8, ptr %165, align 1, !tbaa !54
  %169 = zext i8 %168 to i32
  %170 = or disjoint i32 %166, %169
  %171 = add nuw nsw i32 %164, 1
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %162, !llvm.loop !107

173:                                              ; preds = %162
  %174 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 8
  store i32 %170, ptr %174, align 4, !tbaa !104
  %175 = getelementptr inbounds i8, ptr %125, i64 12
  br label %176

176:                                              ; preds = %173, %176
  %177 = phi i32 [ 0, %173 ], [ %184, %176 ]
  %178 = phi i32 [ 0, %173 ], [ %185, %176 ]
  %179 = phi ptr [ %175, %173 ], [ %181, %176 ]
  %180 = shl i32 %177, 8
  %181 = getelementptr inbounds i8, ptr %179, i64 1
  %182 = load i8, ptr %179, align 1, !tbaa !54
  %183 = zext i8 %182 to i32
  %184 = or disjoint i32 %180, %183
  %185 = add nuw nsw i32 %178, 1
  %186 = icmp eq i32 %185, 4
  br i1 %186, label %187, label %176, !llvm.loop !107

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 9
  store i32 %184, ptr %188, align 8, !tbaa !105
  %189 = getelementptr inbounds i8, ptr %125, i64 16
  br label %190

190:                                              ; preds = %187, %190
  %191 = phi i32 [ 0, %187 ], [ %198, %190 ]
  %192 = phi i32 [ 0, %187 ], [ %199, %190 ]
  %193 = phi ptr [ %189, %187 ], [ %195, %190 ]
  %194 = shl i32 %191, 8
  %195 = getelementptr inbounds i8, ptr %193, i64 1
  %196 = load i8, ptr %193, align 1, !tbaa !54
  %197 = zext i8 %196 to i32
  %198 = or disjoint i32 %194, %197
  %199 = add nuw nsw i32 %192, 1
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %190, !llvm.loop !107

201:                                              ; preds = %190
  %202 = getelementptr inbounds %struct.SHA, ptr %25, i64 0, i32 10
  store i32 %198, ptr %202, align 4, !tbaa !106
  br label %203

203:                                              ; preds = %201, %142, %50, %27
  %204 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %205 = getelementptr inbounds ptr, ptr %204, i64 %19
  store ptr %205, ptr @PL_stack_sp, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA__addfilebin(ptr noundef %0) #0 !prof !55 {
  %2 = alloca [4096 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = load i32, ptr %4, align 4, !tbaa !57
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.74) #14
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr ptr, ptr %18, i64 %9
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = tail call ptr @Perl_sv_2io(ptr noundef %24) #14
  %26 = getelementptr inbounds %struct.io, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %17
  %30 = tail call fastcc ptr @getSHA(ptr noundef %21)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef 4096) #14
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %39, label %47

36:                                               ; preds = %17, %29
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %38 = getelementptr inbounds ptr, ptr %37, i64 %19
  store ptr @PL_sv_undef, ptr %38, align 8, !tbaa !56
  br label %47

39:                                               ; preds = %32, %39
  %40 = phi i64 [ %44, %39 ], [ %33, %32 ]
  %41 = shl i64 %40, 3
  %42 = and i64 %41, 34359738360
  %43 = call fastcc i64 @shawrite(ptr noundef nonnull %2, i64 noundef %42, ptr noundef nonnull %30)
  %44 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef 4096) #14
  %45 = trunc i64 %44 to i32
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %39, label %47, !llvm.loop !110

47:                                               ; preds = %39, %32, %36
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %49 = getelementptr inbounds ptr, ptr %48, i64 %19
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__SHA__addfileuniv(ptr noundef %0) #0 !prof !55 {
  %2 = alloca [4097 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !56
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !56
  %6 = load i32, ptr %4, align 4, !tbaa !57
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.74) #14
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  %22 = getelementptr ptr, ptr %18, i64 %9
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = tail call ptr @Perl_sv_2io(ptr noundef %24) #14
  %26 = getelementptr inbounds %struct.io, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %2) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %17
  %30 = tail call fastcc ptr @getSHA(ptr noundef %21)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %2, i64 1
  %34 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %33, i64 noundef 4096) #14
  %35 = trunc i64 %34 to i32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %32
  %38 = ptrtoint ptr %2 to i64
  br label %42

39:                                               ; preds = %17, %29
  %40 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %41 = getelementptr inbounds ptr, ptr %40, i64 %19
  store ptr @PL_sv_undef, ptr %41, align 8, !tbaa !56
  br label %80

42:                                               ; preds = %64, %37
  %43 = phi i32 [ %35, %37 ], [ %65, %64 ]
  %44 = phi ptr [ %2, %37 ], [ %66, %64 ]
  %45 = phi ptr [ %33, %37 ], [ %67, %64 ]
  %46 = phi i32 [ 0, %37 ], [ %60, %64 ]
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  %48 = load i8, ptr %45, align 1, !tbaa !54
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = icmp eq i8 %48, 13
  br i1 %51, label %59, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 %48, ptr %44, align 1, !tbaa !54
  br label %59

54:                                               ; preds = %42
  %55 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 10, ptr %44, align 1, !tbaa !54
  switch i8 %48, label %57 [
    i8 13, label %59
    i8 10, label %56
  ]

56:                                               ; preds = %54
  br label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %44, i64 2
  store i8 %48, ptr %55, align 1, !tbaa !54
  br label %59

59:                                               ; preds = %54, %50, %52, %56, %57
  %60 = phi i32 [ 0, %56 ], [ 0, %57 ], [ 0, %52 ], [ 1, %50 ], [ %46, %54 ]
  %61 = phi ptr [ %55, %56 ], [ %58, %57 ], [ %53, %52 ], [ %44, %50 ], [ %55, %54 ]
  %62 = add nsw i32 %43, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59, %68
  %65 = phi i32 [ %62, %59 ], [ %74, %68 ]
  %66 = phi ptr [ %61, %59 ], [ %2, %68 ]
  %67 = phi ptr [ %47, %59 ], [ %33, %68 ]
  br label %42, !llvm.loop !111

68:                                               ; preds = %59
  %69 = ptrtoint ptr %61 to i64
  %70 = sub i64 %69, %38
  %71 = shl i64 %70, 3
  %72 = call fastcc i64 @shawrite(ptr noundef nonnull %2, i64 noundef %71, ptr noundef nonnull %30)
  %73 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %33, i64 noundef 4096) #14
  %74 = trunc i64 %73 to i32
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %64, label %76

76:                                               ; preds = %68
  %77 = icmp eq i32 %60, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  store i8 10, ptr %2, align 16, !tbaa !54
  %79 = call fastcc i64 @shawrite(ptr noundef nonnull %2, i64 noundef 8, ptr noundef nonnull %30)
  br label %80

80:                                               ; preds = %32, %78, %76, %39
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !56
  %82 = getelementptr inbounds ptr, ptr %81, i64 %19
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %2) #14
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @getSHA(ptr noundef %0) unnamed_addr #0 !prof !55 {
  %2 = tail call i32 @Perl_sv_isobject(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef %0, ptr noundef nonnull @.str.66) #14
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !58
  %11 = and i32 %10, 2097408
  %12 = icmp eq i32 %11, 256
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = load ptr, ptr %8, align 8, !tbaa !60
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !54
  br label %19

17:                                               ; preds = %6
  %18 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %8, i32 noundef 2) #14
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i64 [ %16, %13 ], [ %18, %17 ]
  %21 = inttoptr i64 %20 to ptr
  br label %22

22:                                               ; preds = %1, %4, %19
  %23 = phi ptr [ %21, %19 ], [ null, %4 ], [ null, %1 ]
  ret ptr %23
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @shainit(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !55 !PGOFuncName !112 {
  switch i32 %1, label %4 [
    i32 512256, label %3
    i32 512224, label %3
    i32 512, label %3
    i32 384, label %3
    i32 256, label %3
    i32 224, label %3
    i32 1, label %3
  ], !prof !68

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 %1, ptr %0, align 8, !tbaa !69
  tail call fastcc void @sharewind(ptr noundef nonnull %0)
  br label %4

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 1, %3 ], [ 0, %2 ]
  ret i32 %5
}

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sharewind(ptr nocapture noundef %0) unnamed_addr #4 !prof !55 !PGOFuncName !113 {
  %2 = load i32, ptr %0, align 8, !tbaa !69
  switch i32 %2, label %29 [
    i32 1, label %3
    i32 224, label %6
    i32 256, label %9
    i32 384, label %12
    i32 512, label %15
    i32 512224, label %18
    i32 512256, label %21
  ], !prof !71

3:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha1, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) @H01, i64 32, i1 false)
  br label %24

6:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 224, ptr %0, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha256, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) @H0224, i64 32, i1 false)
  br label %24

9:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 256, ptr %0, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha256, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 16 dereferenceable(32) @H0256, i64 32, i1 false)
  br label %24

12:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 384, ptr %0, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha512, ptr %13, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 16 dereferenceable(64) @H0384, i64 64, i1 false)
  br label %24

15:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 512, ptr %0, align 8, !tbaa !69
  %16 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha512, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 16 dereferenceable(64) @H0512, i64 64, i1 false)
  br label %24

18:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 512224, ptr %0, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha512, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %20, ptr noundef nonnull align 16 dereferenceable(64) @H0512224, i64 64, i1 false)
  br label %24

21:                                               ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(552) %0, i8 0, i64 552, i1 false)
  store i32 512256, ptr %0, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  store ptr @sha512, ptr %22, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 16 dereferenceable(64) @H0512256, i64 64, i1 false)
  br label %24

24:                                               ; preds = %3, %9, %15, %21, %18, %12, %6
  %25 = phi i32 [ 512, %6 ], [ 1024, %12 ], [ 1024, %18 ], [ 1024, %21 ], [ 1024, %15 ], [ 512, %9 ], [ 512, %3 ]
  %26 = phi i32 [ 28, %6 ], [ 48, %12 ], [ 28, %18 ], [ 32, %21 ], [ 64, %15 ], [ 32, %9 ], [ 20, %3 ]
  %27 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 6
  store i32 %25, ptr %27, align 4, !tbaa !73
  %28 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 12
  store i32 %26, ptr %28, align 8, !tbaa !74
  br label %29

29:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sha1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 !prof !55 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %3, %2 ], [ %25, %4 ]
  %6 = phi i32 [ 0, %2 ], [ %26, %4 ]
  %7 = phi ptr [ %1, %2 ], [ %27, %4 ]
  %8 = load i8, ptr %7, align 1, !tbaa !54
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !54
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %10
  %16 = getelementptr inbounds i8, ptr %7, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !54
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr inbounds i8, ptr %7, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !54
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %20, %23
  %25 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %24, ptr %5, align 4, !tbaa !57
  %26 = add nuw nsw i32 %6, 1
  %27 = getelementptr inbounds i8, ptr %7, i64 4
  %28 = icmp eq i32 %26, 16
  br i1 %28, label %29, label %4, !llvm.loop !114

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !57
  %32 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 2
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 3
  %37 = load i32, ptr %36, align 4, !tbaa !57
  %38 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !57
  %40 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 5)
  %41 = xor i32 %37, %35
  %42 = and i32 %41, %33
  %43 = xor i32 %42, %37
  %44 = getelementptr inbounds i32, ptr %3, i64 1
  %45 = load i32, ptr %3, align 16, !tbaa !57
  %46 = add i32 %40, 1518500249
  %47 = add i32 %46, %39
  %48 = add i32 %47, %45
  %49 = add i32 %48, %43
  %50 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 30)
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 5)
  %52 = xor i32 %50, %35
  %53 = and i32 %52, %31
  %54 = xor i32 %53, %35
  %55 = getelementptr inbounds i32, ptr %3, i64 2
  %56 = load i32, ptr %44, align 4, !tbaa !57
  %57 = add i32 %37, 1518500249
  %58 = add i32 %57, %54
  %59 = add i32 %58, %56
  %60 = add i32 %59, %51
  %61 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 30)
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 5)
  %63 = xor i32 %50, %61
  %64 = and i32 %49, %63
  %65 = xor i32 %64, %50
  %66 = getelementptr inbounds i32, ptr %3, i64 3
  %67 = load i32, ptr %55, align 8, !tbaa !57
  %68 = add i32 %35, 1518500249
  %69 = add i32 %68, %67
  %70 = add i32 %69, %65
  %71 = add i32 %70, %62
  %72 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 30)
  %73 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 5)
  %74 = xor i32 %72, %61
  %75 = and i32 %60, %74
  %76 = xor i32 %75, %61
  %77 = getelementptr inbounds i32, ptr %3, i64 4
  %78 = load i32, ptr %66, align 4, !tbaa !57
  %79 = add i32 %50, 1518500249
  %80 = add i32 %79, %78
  %81 = add i32 %80, %76
  %82 = add i32 %81, %73
  %83 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 30)
  %84 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 5)
  %85 = xor i32 %83, %72
  %86 = and i32 %71, %85
  %87 = xor i32 %86, %72
  %88 = getelementptr inbounds i32, ptr %3, i64 5
  %89 = load i32, ptr %77, align 16, !tbaa !57
  %90 = add i32 %61, 1518500249
  %91 = add i32 %90, %89
  %92 = add i32 %91, %87
  %93 = add i32 %92, %84
  %94 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 30)
  %95 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 5)
  %96 = xor i32 %94, %83
  %97 = and i32 %82, %96
  %98 = xor i32 %97, %83
  %99 = getelementptr inbounds i32, ptr %3, i64 6
  %100 = load i32, ptr %88, align 4, !tbaa !57
  %101 = add i32 %100, 1518500249
  %102 = add i32 %101, %72
  %103 = add i32 %102, %98
  %104 = add i32 %103, %95
  %105 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 30)
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 5)
  %107 = xor i32 %105, %94
  %108 = and i32 %93, %107
  %109 = xor i32 %108, %94
  %110 = getelementptr inbounds i32, ptr %3, i64 7
  %111 = load i32, ptr %99, align 8, !tbaa !57
  %112 = add i32 %111, 1518500249
  %113 = add i32 %112, %83
  %114 = add i32 %113, %109
  %115 = add i32 %114, %106
  %116 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 30)
  %117 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 5)
  %118 = xor i32 %116, %105
  %119 = and i32 %104, %118
  %120 = xor i32 %119, %105
  %121 = getelementptr inbounds i32, ptr %3, i64 8
  %122 = load i32, ptr %110, align 4, !tbaa !57
  %123 = add i32 %122, 1518500249
  %124 = add i32 %123, %94
  %125 = add i32 %124, %120
  %126 = add i32 %125, %117
  %127 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 30)
  %128 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 5)
  %129 = xor i32 %127, %116
  %130 = and i32 %115, %129
  %131 = xor i32 %130, %116
  %132 = getelementptr inbounds i32, ptr %3, i64 9
  %133 = load i32, ptr %121, align 16, !tbaa !57
  %134 = add i32 %133, 1518500249
  %135 = add i32 %134, %105
  %136 = add i32 %135, %131
  %137 = add i32 %136, %128
  %138 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 30)
  %139 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 5)
  %140 = xor i32 %138, %127
  %141 = and i32 %126, %140
  %142 = xor i32 %141, %127
  %143 = getelementptr inbounds i32, ptr %3, i64 10
  %144 = load i32, ptr %132, align 4, !tbaa !57
  %145 = add i32 %144, 1518500249
  %146 = add i32 %145, %116
  %147 = add i32 %146, %142
  %148 = add i32 %147, %139
  %149 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 30)
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 5)
  %151 = xor i32 %149, %138
  %152 = and i32 %137, %151
  %153 = xor i32 %152, %138
  %154 = getelementptr inbounds i32, ptr %3, i64 11
  %155 = load i32, ptr %143, align 8, !tbaa !57
  %156 = add i32 %155, 1518500249
  %157 = add i32 %156, %127
  %158 = add i32 %157, %153
  %159 = add i32 %158, %150
  %160 = tail call i32 @llvm.fshl.i32(i32 %137, i32 %137, i32 30)
  %161 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 5)
  %162 = xor i32 %160, %149
  %163 = and i32 %148, %162
  %164 = xor i32 %163, %149
  %165 = getelementptr inbounds i32, ptr %3, i64 12
  %166 = load i32, ptr %154, align 4, !tbaa !57
  %167 = add i32 %166, 1518500249
  %168 = add i32 %167, %138
  %169 = add i32 %168, %164
  %170 = add i32 %169, %161
  %171 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 30)
  %172 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 5)
  %173 = xor i32 %171, %160
  %174 = and i32 %159, %173
  %175 = xor i32 %174, %160
  %176 = getelementptr inbounds i32, ptr %3, i64 13
  %177 = load i32, ptr %165, align 16, !tbaa !57
  %178 = add i32 %177, 1518500249
  %179 = add i32 %178, %149
  %180 = add i32 %179, %175
  %181 = add i32 %180, %172
  %182 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 30)
  %183 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 5)
  %184 = xor i32 %182, %171
  %185 = and i32 %170, %184
  %186 = xor i32 %185, %171
  %187 = getelementptr inbounds i32, ptr %3, i64 14
  %188 = load i32, ptr %176, align 4, !tbaa !57
  %189 = add i32 %188, 1518500249
  %190 = add i32 %189, %160
  %191 = add i32 %190, %186
  %192 = add i32 %191, %183
  %193 = tail call i32 @llvm.fshl.i32(i32 %170, i32 %170, i32 30)
  %194 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 5)
  %195 = xor i32 %193, %182
  %196 = and i32 %181, %195
  %197 = xor i32 %196, %182
  %198 = getelementptr inbounds i32, ptr %3, i64 15
  %199 = load i32, ptr %187, align 8, !tbaa !57
  %200 = add i32 %199, 1518500249
  %201 = add i32 %200, %171
  %202 = add i32 %201, %197
  %203 = add i32 %202, %194
  %204 = tail call i32 @llvm.fshl.i32(i32 %181, i32 %181, i32 30)
  %205 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 5)
  %206 = xor i32 %204, %193
  %207 = and i32 %192, %206
  %208 = xor i32 %207, %193
  %209 = load i32, ptr %198, align 4, !tbaa !57
  %210 = add i32 %209, 1518500249
  %211 = add i32 %210, %182
  %212 = add i32 %211, %208
  %213 = add i32 %212, %205
  %214 = tail call i32 @llvm.fshl.i32(i32 %192, i32 %192, i32 30)
  %215 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 5)
  %216 = xor i32 %214, %204
  %217 = and i32 %203, %216
  %218 = xor i32 %217, %204
  %219 = xor i32 %67, %45
  %220 = xor i32 %219, %133
  %221 = xor i32 %220, %188
  %222 = tail call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 1)
  store i32 %222, ptr %3, align 16, !tbaa !57
  %223 = add i32 %222, 1518500249
  %224 = add i32 %223, %193
  %225 = add i32 %224, %218
  %226 = add i32 %225, %215
  %227 = tail call i32 @llvm.fshl.i32(i32 %203, i32 %203, i32 30)
  %228 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 5)
  %229 = xor i32 %227, %214
  %230 = and i32 %213, %229
  %231 = xor i32 %230, %214
  %232 = xor i32 %78, %56
  %233 = xor i32 %232, %144
  %234 = xor i32 %233, %199
  %235 = tail call i32 @llvm.fshl.i32(i32 %234, i32 %234, i32 1)
  store i32 %235, ptr %44, align 4, !tbaa !57
  %236 = add i32 %235, 1518500249
  %237 = add i32 %236, %204
  %238 = add i32 %237, %231
  %239 = add i32 %238, %228
  %240 = tail call i32 @llvm.fshl.i32(i32 %213, i32 %213, i32 30)
  %241 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 5)
  %242 = xor i32 %240, %227
  %243 = and i32 %226, %242
  %244 = xor i32 %243, %227
  %245 = xor i32 %89, %67
  %246 = xor i32 %245, %155
  %247 = xor i32 %246, %209
  %248 = tail call i32 @llvm.fshl.i32(i32 %247, i32 %247, i32 1)
  store i32 %248, ptr %55, align 8, !tbaa !57
  %249 = add i32 %248, 1518500249
  %250 = add i32 %249, %214
  %251 = add i32 %250, %244
  %252 = add i32 %251, %241
  %253 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 30)
  %254 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 5)
  %255 = xor i32 %253, %240
  %256 = and i32 %239, %255
  %257 = xor i32 %256, %240
  %258 = xor i32 %100, %78
  %259 = xor i32 %258, %166
  %260 = xor i32 %259, %222
  %261 = tail call i32 @llvm.fshl.i32(i32 %260, i32 %260, i32 1)
  store i32 %261, ptr %66, align 4, !tbaa !57
  %262 = add i32 %261, 1518500249
  %263 = add i32 %262, %227
  %264 = add i32 %263, %257
  %265 = add i32 %264, %254
  %266 = tail call i32 @llvm.fshl.i32(i32 %239, i32 %239, i32 30)
  %267 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 5)
  %268 = xor i32 %266, %253
  %269 = xor i32 %268, %252
  %270 = xor i32 %111, %89
  %271 = xor i32 %270, %177
  %272 = xor i32 %271, %235
  %273 = tail call i32 @llvm.fshl.i32(i32 %272, i32 %272, i32 1)
  store i32 %273, ptr %77, align 16, !tbaa !57
  %274 = add i32 %273, 1859775393
  %275 = add i32 %274, %240
  %276 = add i32 %275, %269
  %277 = add i32 %276, %267
  %278 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 30)
  %279 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 5)
  %280 = xor i32 %278, %266
  %281 = xor i32 %280, %265
  %282 = xor i32 %122, %100
  %283 = xor i32 %282, %188
  %284 = xor i32 %283, %248
  %285 = tail call i32 @llvm.fshl.i32(i32 %284, i32 %284, i32 1)
  store i32 %285, ptr %88, align 4, !tbaa !57
  %286 = add i32 %285, 1859775393
  %287 = add i32 %286, %253
  %288 = add i32 %287, %281
  %289 = add i32 %288, %279
  %290 = tail call i32 @llvm.fshl.i32(i32 %265, i32 %265, i32 30)
  %291 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 5)
  %292 = xor i32 %290, %278
  %293 = xor i32 %292, %277
  %294 = xor i32 %133, %111
  %295 = xor i32 %294, %199
  %296 = xor i32 %295, %261
  %297 = tail call i32 @llvm.fshl.i32(i32 %296, i32 %296, i32 1)
  store i32 %297, ptr %99, align 8, !tbaa !57
  %298 = add i32 %297, 1859775393
  %299 = add i32 %298, %266
  %300 = add i32 %299, %293
  %301 = add i32 %300, %291
  %302 = tail call i32 @llvm.fshl.i32(i32 %277, i32 %277, i32 30)
  %303 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 5)
  %304 = xor i32 %302, %290
  %305 = xor i32 %304, %289
  %306 = xor i32 %144, %122
  %307 = xor i32 %306, %209
  %308 = xor i32 %307, %273
  %309 = tail call i32 @llvm.fshl.i32(i32 %308, i32 %308, i32 1)
  store i32 %309, ptr %110, align 4, !tbaa !57
  %310 = add i32 %309, 1859775393
  %311 = add i32 %310, %278
  %312 = add i32 %311, %305
  %313 = add i32 %312, %303
  %314 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 30)
  %315 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 5)
  %316 = xor i32 %314, %302
  %317 = xor i32 %316, %301
  %318 = xor i32 %155, %133
  %319 = xor i32 %318, %222
  %320 = xor i32 %319, %285
  %321 = tail call i32 @llvm.fshl.i32(i32 %320, i32 %320, i32 1)
  store i32 %321, ptr %121, align 16, !tbaa !57
  %322 = add i32 %321, 1859775393
  %323 = add i32 %322, %290
  %324 = add i32 %323, %317
  %325 = add i32 %324, %315
  %326 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 30)
  %327 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 5)
  %328 = xor i32 %326, %314
  %329 = xor i32 %328, %313
  %330 = xor i32 %166, %144
  %331 = xor i32 %330, %235
  %332 = xor i32 %331, %297
  %333 = tail call i32 @llvm.fshl.i32(i32 %332, i32 %332, i32 1)
  store i32 %333, ptr %132, align 4, !tbaa !57
  %334 = add i32 %333, 1859775393
  %335 = add i32 %334, %302
  %336 = add i32 %335, %329
  %337 = add i32 %336, %327
  %338 = tail call i32 @llvm.fshl.i32(i32 %313, i32 %313, i32 30)
  %339 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 5)
  %340 = xor i32 %338, %326
  %341 = xor i32 %340, %325
  %342 = xor i32 %177, %155
  %343 = xor i32 %342, %248
  %344 = xor i32 %343, %309
  %345 = tail call i32 @llvm.fshl.i32(i32 %344, i32 %344, i32 1)
  store i32 %345, ptr %143, align 8, !tbaa !57
  %346 = add i32 %345, 1859775393
  %347 = add i32 %346, %314
  %348 = add i32 %347, %341
  %349 = add i32 %348, %339
  %350 = tail call i32 @llvm.fshl.i32(i32 %325, i32 %325, i32 30)
  %351 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 5)
  %352 = xor i32 %350, %338
  %353 = xor i32 %352, %337
  %354 = xor i32 %188, %166
  %355 = xor i32 %354, %261
  %356 = xor i32 %355, %321
  %357 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 1)
  store i32 %357, ptr %154, align 4, !tbaa !57
  %358 = add i32 %357, 1859775393
  %359 = add i32 %358, %326
  %360 = add i32 %359, %353
  %361 = add i32 %360, %351
  %362 = tail call i32 @llvm.fshl.i32(i32 %337, i32 %337, i32 30)
  %363 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 5)
  %364 = xor i32 %362, %350
  %365 = xor i32 %364, %349
  %366 = xor i32 %199, %177
  %367 = xor i32 %366, %273
  %368 = xor i32 %367, %333
  %369 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 1)
  store i32 %369, ptr %165, align 16, !tbaa !57
  %370 = add i32 %369, 1859775393
  %371 = add i32 %370, %338
  %372 = add i32 %371, %365
  %373 = add i32 %372, %363
  %374 = tail call i32 @llvm.fshl.i32(i32 %349, i32 %349, i32 30)
  %375 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 5)
  %376 = xor i32 %374, %362
  %377 = xor i32 %376, %361
  %378 = xor i32 %209, %188
  %379 = xor i32 %378, %285
  %380 = xor i32 %379, %345
  %381 = tail call i32 @llvm.fshl.i32(i32 %380, i32 %380, i32 1)
  store i32 %381, ptr %176, align 4, !tbaa !57
  %382 = add i32 %381, 1859775393
  %383 = add i32 %382, %350
  %384 = add i32 %383, %377
  %385 = add i32 %384, %375
  %386 = tail call i32 @llvm.fshl.i32(i32 %361, i32 %361, i32 30)
  %387 = tail call i32 @llvm.fshl.i32(i32 %385, i32 %385, i32 5)
  %388 = xor i32 %386, %374
  %389 = xor i32 %388, %373
  %390 = xor i32 %222, %199
  %391 = xor i32 %390, %297
  %392 = xor i32 %391, %357
  %393 = tail call i32 @llvm.fshl.i32(i32 %392, i32 %392, i32 1)
  store i32 %393, ptr %187, align 8, !tbaa !57
  %394 = add i32 %393, 1859775393
  %395 = add i32 %394, %362
  %396 = add i32 %395, %389
  %397 = add i32 %396, %387
  %398 = tail call i32 @llvm.fshl.i32(i32 %373, i32 %373, i32 30)
  %399 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 5)
  %400 = xor i32 %398, %386
  %401 = xor i32 %400, %385
  %402 = xor i32 %235, %209
  %403 = xor i32 %402, %309
  %404 = xor i32 %403, %369
  %405 = tail call i32 @llvm.fshl.i32(i32 %404, i32 %404, i32 1)
  store i32 %405, ptr %198, align 4, !tbaa !57
  %406 = add i32 %405, 1859775393
  %407 = add i32 %406, %374
  %408 = add i32 %407, %401
  %409 = add i32 %408, %399
  %410 = tail call i32 @llvm.fshl.i32(i32 %385, i32 %385, i32 30)
  %411 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 5)
  %412 = xor i32 %410, %398
  %413 = xor i32 %412, %397
  %414 = xor i32 %248, %222
  %415 = xor i32 %414, %321
  %416 = xor i32 %415, %381
  %417 = tail call i32 @llvm.fshl.i32(i32 %416, i32 %416, i32 1)
  store i32 %417, ptr %3, align 16, !tbaa !57
  %418 = add i32 %417, 1859775393
  %419 = add i32 %418, %386
  %420 = add i32 %419, %413
  %421 = add i32 %420, %411
  %422 = tail call i32 @llvm.fshl.i32(i32 %397, i32 %397, i32 30)
  %423 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 5)
  %424 = xor i32 %422, %410
  %425 = xor i32 %424, %409
  %426 = xor i32 %261, %235
  %427 = xor i32 %426, %333
  %428 = xor i32 %427, %393
  %429 = tail call i32 @llvm.fshl.i32(i32 %428, i32 %428, i32 1)
  store i32 %429, ptr %44, align 4, !tbaa !57
  %430 = add i32 %429, 1859775393
  %431 = add i32 %430, %398
  %432 = add i32 %431, %425
  %433 = add i32 %432, %423
  %434 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 30)
  %435 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 5)
  %436 = xor i32 %434, %422
  %437 = xor i32 %436, %421
  %438 = xor i32 %273, %248
  %439 = xor i32 %438, %345
  %440 = xor i32 %439, %405
  %441 = tail call i32 @llvm.fshl.i32(i32 %440, i32 %440, i32 1)
  store i32 %441, ptr %55, align 8, !tbaa !57
  %442 = add i32 %441, 1859775393
  %443 = add i32 %442, %410
  %444 = add i32 %443, %437
  %445 = add i32 %444, %435
  %446 = tail call i32 @llvm.fshl.i32(i32 %421, i32 %421, i32 30)
  %447 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 5)
  %448 = xor i32 %446, %434
  %449 = xor i32 %448, %433
  %450 = xor i32 %285, %261
  %451 = xor i32 %450, %357
  %452 = xor i32 %451, %417
  %453 = tail call i32 @llvm.fshl.i32(i32 %452, i32 %452, i32 1)
  store i32 %453, ptr %66, align 4, !tbaa !57
  %454 = add i32 %453, 1859775393
  %455 = add i32 %454, %422
  %456 = add i32 %455, %449
  %457 = add i32 %456, %447
  %458 = tail call i32 @llvm.fshl.i32(i32 %433, i32 %433, i32 30)
  %459 = tail call i32 @llvm.fshl.i32(i32 %457, i32 %457, i32 5)
  %460 = xor i32 %458, %446
  %461 = xor i32 %460, %445
  %462 = xor i32 %297, %273
  %463 = xor i32 %462, %369
  %464 = xor i32 %463, %429
  %465 = tail call i32 @llvm.fshl.i32(i32 %464, i32 %464, i32 1)
  store i32 %465, ptr %77, align 16, !tbaa !57
  %466 = add i32 %465, 1859775393
  %467 = add i32 %466, %434
  %468 = add i32 %467, %461
  %469 = add i32 %468, %459
  %470 = tail call i32 @llvm.fshl.i32(i32 %445, i32 %445, i32 30)
  %471 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 5)
  %472 = xor i32 %470, %458
  %473 = xor i32 %472, %457
  %474 = xor i32 %309, %285
  %475 = xor i32 %474, %381
  %476 = xor i32 %475, %441
  %477 = tail call i32 @llvm.fshl.i32(i32 %476, i32 %476, i32 1)
  store i32 %477, ptr %88, align 4, !tbaa !57
  %478 = add i32 %477, 1859775393
  %479 = add i32 %478, %446
  %480 = add i32 %479, %473
  %481 = add i32 %480, %471
  %482 = tail call i32 @llvm.fshl.i32(i32 %457, i32 %457, i32 30)
  %483 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 5)
  %484 = xor i32 %482, %470
  %485 = xor i32 %484, %469
  %486 = xor i32 %321, %297
  %487 = xor i32 %486, %393
  %488 = xor i32 %487, %453
  %489 = tail call i32 @llvm.fshl.i32(i32 %488, i32 %488, i32 1)
  store i32 %489, ptr %99, align 8, !tbaa !57
  %490 = add i32 %489, 1859775393
  %491 = add i32 %490, %458
  %492 = add i32 %491, %485
  %493 = add i32 %492, %483
  %494 = tail call i32 @llvm.fshl.i32(i32 %469, i32 %469, i32 30)
  %495 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 5)
  %496 = xor i32 %494, %482
  %497 = xor i32 %496, %481
  %498 = xor i32 %333, %309
  %499 = xor i32 %498, %405
  %500 = xor i32 %499, %465
  %501 = tail call i32 @llvm.fshl.i32(i32 %500, i32 %500, i32 1)
  store i32 %501, ptr %110, align 4, !tbaa !57
  %502 = add i32 %501, 1859775393
  %503 = add i32 %502, %470
  %504 = add i32 %503, %497
  %505 = add i32 %504, %495
  %506 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 30)
  %507 = tail call i32 @llvm.fshl.i32(i32 %505, i32 %505, i32 5)
  %508 = and i32 %493, %506
  %509 = or i32 %493, %506
  %510 = and i32 %509, %494
  %511 = or i32 %510, %508
  %512 = xor i32 %345, %321
  %513 = xor i32 %512, %417
  %514 = xor i32 %513, %477
  %515 = tail call i32 @llvm.fshl.i32(i32 %514, i32 %514, i32 1)
  store i32 %515, ptr %121, align 16, !tbaa !57
  %516 = add i32 %515, -1894007588
  %517 = add i32 %516, %482
  %518 = add i32 %517, %511
  %519 = add i32 %518, %507
  %520 = tail call i32 @llvm.fshl.i32(i32 %493, i32 %493, i32 30)
  %521 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 5)
  %522 = and i32 %505, %520
  %523 = or i32 %505, %520
  %524 = and i32 %523, %506
  %525 = or i32 %524, %522
  %526 = xor i32 %357, %333
  %527 = xor i32 %526, %429
  %528 = xor i32 %527, %489
  %529 = tail call i32 @llvm.fshl.i32(i32 %528, i32 %528, i32 1)
  store i32 %529, ptr %132, align 4, !tbaa !57
  %530 = add i32 %529, -1894007588
  %531 = add i32 %530, %494
  %532 = add i32 %531, %525
  %533 = add i32 %532, %521
  %534 = tail call i32 @llvm.fshl.i32(i32 %505, i32 %505, i32 30)
  %535 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 5)
  %536 = and i32 %519, %534
  %537 = or i32 %519, %534
  %538 = and i32 %537, %520
  %539 = or i32 %538, %536
  %540 = xor i32 %369, %345
  %541 = xor i32 %540, %441
  %542 = xor i32 %541, %501
  %543 = tail call i32 @llvm.fshl.i32(i32 %542, i32 %542, i32 1)
  store i32 %543, ptr %143, align 8, !tbaa !57
  %544 = add i32 %543, -1894007588
  %545 = add i32 %544, %506
  %546 = add i32 %545, %539
  %547 = add i32 %546, %535
  %548 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 30)
  %549 = tail call i32 @llvm.fshl.i32(i32 %547, i32 %547, i32 5)
  %550 = and i32 %533, %548
  %551 = or i32 %533, %548
  %552 = and i32 %551, %534
  %553 = or i32 %552, %550
  %554 = xor i32 %381, %357
  %555 = xor i32 %554, %453
  %556 = xor i32 %555, %515
  %557 = tail call i32 @llvm.fshl.i32(i32 %556, i32 %556, i32 1)
  store i32 %557, ptr %154, align 4, !tbaa !57
  %558 = add i32 %557, -1894007588
  %559 = add i32 %558, %520
  %560 = add i32 %559, %553
  %561 = add i32 %560, %549
  %562 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 30)
  %563 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 5)
  %564 = and i32 %547, %562
  %565 = or i32 %547, %562
  %566 = and i32 %565, %548
  %567 = or i32 %566, %564
  %568 = xor i32 %393, %369
  %569 = xor i32 %568, %465
  %570 = xor i32 %569, %529
  %571 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 1)
  store i32 %571, ptr %165, align 16, !tbaa !57
  %572 = add i32 %571, -1894007588
  %573 = add i32 %572, %534
  %574 = add i32 %573, %567
  %575 = add i32 %574, %563
  %576 = tail call i32 @llvm.fshl.i32(i32 %547, i32 %547, i32 30)
  %577 = tail call i32 @llvm.fshl.i32(i32 %575, i32 %575, i32 5)
  %578 = and i32 %561, %576
  %579 = or i32 %561, %576
  %580 = and i32 %579, %562
  %581 = or i32 %580, %578
  %582 = xor i32 %405, %381
  %583 = xor i32 %582, %477
  %584 = xor i32 %583, %543
  %585 = tail call i32 @llvm.fshl.i32(i32 %584, i32 %584, i32 1)
  store i32 %585, ptr %176, align 4, !tbaa !57
  %586 = add i32 %585, -1894007588
  %587 = add i32 %586, %548
  %588 = add i32 %587, %581
  %589 = add i32 %588, %577
  %590 = tail call i32 @llvm.fshl.i32(i32 %561, i32 %561, i32 30)
  %591 = tail call i32 @llvm.fshl.i32(i32 %589, i32 %589, i32 5)
  %592 = and i32 %575, %590
  %593 = or i32 %575, %590
  %594 = and i32 %593, %576
  %595 = or i32 %594, %592
  %596 = xor i32 %417, %393
  %597 = xor i32 %596, %489
  %598 = xor i32 %597, %557
  %599 = tail call i32 @llvm.fshl.i32(i32 %598, i32 %598, i32 1)
  store i32 %599, ptr %187, align 8, !tbaa !57
  %600 = add i32 %599, -1894007588
  %601 = add i32 %600, %562
  %602 = add i32 %601, %595
  %603 = add i32 %602, %591
  %604 = tail call i32 @llvm.fshl.i32(i32 %575, i32 %575, i32 30)
  %605 = tail call i32 @llvm.fshl.i32(i32 %603, i32 %603, i32 5)
  %606 = and i32 %589, %604
  %607 = or i32 %589, %604
  %608 = and i32 %607, %590
  %609 = or i32 %608, %606
  %610 = xor i32 %429, %405
  %611 = xor i32 %610, %501
  %612 = xor i32 %611, %571
  %613 = tail call i32 @llvm.fshl.i32(i32 %612, i32 %612, i32 1)
  store i32 %613, ptr %198, align 4, !tbaa !57
  %614 = add i32 %613, -1894007588
  %615 = add i32 %614, %576
  %616 = add i32 %615, %609
  %617 = add i32 %616, %605
  %618 = tail call i32 @llvm.fshl.i32(i32 %589, i32 %589, i32 30)
  %619 = tail call i32 @llvm.fshl.i32(i32 %617, i32 %617, i32 5)
  %620 = and i32 %603, %618
  %621 = or i32 %603, %618
  %622 = and i32 %621, %604
  %623 = or i32 %622, %620
  %624 = xor i32 %441, %417
  %625 = xor i32 %624, %515
  %626 = xor i32 %625, %585
  %627 = tail call i32 @llvm.fshl.i32(i32 %626, i32 %626, i32 1)
  store i32 %627, ptr %3, align 16, !tbaa !57
  %628 = add i32 %627, -1894007588
  %629 = add i32 %628, %590
  %630 = add i32 %629, %623
  %631 = add i32 %630, %619
  %632 = tail call i32 @llvm.fshl.i32(i32 %603, i32 %603, i32 30)
  %633 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 5)
  %634 = and i32 %617, %632
  %635 = or i32 %617, %632
  %636 = and i32 %635, %618
  %637 = or i32 %636, %634
  %638 = xor i32 %453, %429
  %639 = xor i32 %638, %529
  %640 = xor i32 %639, %599
  %641 = tail call i32 @llvm.fshl.i32(i32 %640, i32 %640, i32 1)
  store i32 %641, ptr %44, align 4, !tbaa !57
  %642 = add i32 %641, -1894007588
  %643 = add i32 %642, %604
  %644 = add i32 %643, %637
  %645 = add i32 %644, %633
  %646 = tail call i32 @llvm.fshl.i32(i32 %617, i32 %617, i32 30)
  %647 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 5)
  %648 = and i32 %631, %646
  %649 = or i32 %631, %646
  %650 = and i32 %649, %632
  %651 = or i32 %650, %648
  %652 = xor i32 %465, %441
  %653 = xor i32 %652, %543
  %654 = xor i32 %653, %613
  %655 = tail call i32 @llvm.fshl.i32(i32 %654, i32 %654, i32 1)
  store i32 %655, ptr %55, align 8, !tbaa !57
  %656 = add i32 %655, -1894007588
  %657 = add i32 %656, %618
  %658 = add i32 %657, %651
  %659 = add i32 %658, %647
  %660 = tail call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 30)
  %661 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 5)
  %662 = and i32 %645, %660
  %663 = or i32 %645, %660
  %664 = and i32 %663, %646
  %665 = or i32 %664, %662
  %666 = xor i32 %477, %453
  %667 = xor i32 %666, %557
  %668 = xor i32 %667, %627
  %669 = tail call i32 @llvm.fshl.i32(i32 %668, i32 %668, i32 1)
  store i32 %669, ptr %66, align 4, !tbaa !57
  %670 = add i32 %669, -1894007588
  %671 = add i32 %670, %632
  %672 = add i32 %671, %665
  %673 = add i32 %672, %661
  %674 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 30)
  %675 = tail call i32 @llvm.fshl.i32(i32 %673, i32 %673, i32 5)
  %676 = and i32 %659, %674
  %677 = or i32 %659, %674
  %678 = and i32 %677, %660
  %679 = or i32 %678, %676
  %680 = xor i32 %489, %465
  %681 = xor i32 %680, %571
  %682 = xor i32 %681, %641
  %683 = tail call i32 @llvm.fshl.i32(i32 %682, i32 %682, i32 1)
  store i32 %683, ptr %77, align 16, !tbaa !57
  %684 = add i32 %683, -1894007588
  %685 = add i32 %684, %646
  %686 = add i32 %685, %679
  %687 = add i32 %686, %675
  %688 = tail call i32 @llvm.fshl.i32(i32 %659, i32 %659, i32 30)
  %689 = tail call i32 @llvm.fshl.i32(i32 %687, i32 %687, i32 5)
  %690 = and i32 %673, %688
  %691 = or i32 %673, %688
  %692 = and i32 %691, %674
  %693 = or i32 %692, %690
  %694 = xor i32 %501, %477
  %695 = xor i32 %694, %585
  %696 = xor i32 %695, %655
  %697 = tail call i32 @llvm.fshl.i32(i32 %696, i32 %696, i32 1)
  store i32 %697, ptr %88, align 4, !tbaa !57
  %698 = add i32 %697, -1894007588
  %699 = add i32 %698, %660
  %700 = add i32 %699, %693
  %701 = add i32 %700, %689
  %702 = tail call i32 @llvm.fshl.i32(i32 %673, i32 %673, i32 30)
  %703 = tail call i32 @llvm.fshl.i32(i32 %701, i32 %701, i32 5)
  %704 = and i32 %687, %702
  %705 = or i32 %687, %702
  %706 = and i32 %705, %688
  %707 = or i32 %706, %704
  %708 = xor i32 %515, %489
  %709 = xor i32 %708, %599
  %710 = xor i32 %709, %669
  %711 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 1)
  store i32 %711, ptr %99, align 8, !tbaa !57
  %712 = add i32 %711, -1894007588
  %713 = add i32 %712, %674
  %714 = add i32 %713, %707
  %715 = add i32 %714, %703
  %716 = tail call i32 @llvm.fshl.i32(i32 %687, i32 %687, i32 30)
  %717 = tail call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 5)
  %718 = and i32 %701, %716
  %719 = or i32 %701, %716
  %720 = and i32 %719, %702
  %721 = or i32 %720, %718
  %722 = xor i32 %529, %501
  %723 = xor i32 %722, %613
  %724 = xor i32 %723, %683
  %725 = tail call i32 @llvm.fshl.i32(i32 %724, i32 %724, i32 1)
  store i32 %725, ptr %110, align 4, !tbaa !57
  %726 = add i32 %725, -1894007588
  %727 = add i32 %726, %688
  %728 = add i32 %727, %721
  %729 = add i32 %728, %717
  %730 = tail call i32 @llvm.fshl.i32(i32 %701, i32 %701, i32 30)
  %731 = tail call i32 @llvm.fshl.i32(i32 %729, i32 %729, i32 5)
  %732 = and i32 %715, %730
  %733 = or i32 %715, %730
  %734 = and i32 %733, %716
  %735 = or i32 %734, %732
  %736 = xor i32 %543, %515
  %737 = xor i32 %736, %627
  %738 = xor i32 %737, %697
  %739 = tail call i32 @llvm.fshl.i32(i32 %738, i32 %738, i32 1)
  store i32 %739, ptr %121, align 16, !tbaa !57
  %740 = add i32 %739, -1894007588
  %741 = add i32 %740, %702
  %742 = add i32 %741, %735
  %743 = add i32 %742, %731
  %744 = tail call i32 @llvm.fshl.i32(i32 %715, i32 %715, i32 30)
  %745 = tail call i32 @llvm.fshl.i32(i32 %743, i32 %743, i32 5)
  %746 = and i32 %729, %744
  %747 = or i32 %729, %744
  %748 = and i32 %747, %730
  %749 = or i32 %748, %746
  %750 = xor i32 %557, %529
  %751 = xor i32 %750, %641
  %752 = xor i32 %751, %711
  %753 = tail call i32 @llvm.fshl.i32(i32 %752, i32 %752, i32 1)
  store i32 %753, ptr %132, align 4, !tbaa !57
  %754 = add i32 %753, -1894007588
  %755 = add i32 %754, %716
  %756 = add i32 %755, %749
  %757 = add i32 %756, %745
  %758 = tail call i32 @llvm.fshl.i32(i32 %729, i32 %729, i32 30)
  %759 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 5)
  %760 = and i32 %743, %758
  %761 = or i32 %743, %758
  %762 = and i32 %761, %744
  %763 = or i32 %762, %760
  %764 = xor i32 %571, %543
  %765 = xor i32 %764, %655
  %766 = xor i32 %765, %725
  %767 = tail call i32 @llvm.fshl.i32(i32 %766, i32 %766, i32 1)
  store i32 %767, ptr %143, align 8, !tbaa !57
  %768 = add i32 %767, -1894007588
  %769 = add i32 %768, %730
  %770 = add i32 %769, %763
  %771 = add i32 %770, %759
  %772 = tail call i32 @llvm.fshl.i32(i32 %743, i32 %743, i32 30)
  %773 = tail call i32 @llvm.fshl.i32(i32 %771, i32 %771, i32 5)
  %774 = and i32 %757, %772
  %775 = or i32 %757, %772
  %776 = and i32 %775, %758
  %777 = or i32 %776, %774
  %778 = xor i32 %585, %557
  %779 = xor i32 %778, %669
  %780 = xor i32 %779, %739
  %781 = tail call i32 @llvm.fshl.i32(i32 %780, i32 %780, i32 1)
  store i32 %781, ptr %154, align 4, !tbaa !57
  %782 = add i32 %781, -1894007588
  %783 = add i32 %782, %744
  %784 = add i32 %783, %777
  %785 = add i32 %784, %773
  %786 = tail call i32 @llvm.fshl.i32(i32 %757, i32 %757, i32 30)
  %787 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 5)
  %788 = xor i32 %786, %772
  %789 = xor i32 %788, %771
  %790 = xor i32 %599, %571
  %791 = xor i32 %790, %683
  %792 = xor i32 %791, %753
  %793 = tail call i32 @llvm.fshl.i32(i32 %792, i32 %792, i32 1)
  store i32 %793, ptr %165, align 16, !tbaa !57
  %794 = add i32 %793, -899497514
  %795 = add i32 %794, %758
  %796 = add i32 %795, %789
  %797 = add i32 %796, %787
  %798 = tail call i32 @llvm.fshl.i32(i32 %771, i32 %771, i32 30)
  %799 = tail call i32 @llvm.fshl.i32(i32 %797, i32 %797, i32 5)
  %800 = xor i32 %798, %786
  %801 = xor i32 %800, %785
  %802 = xor i32 %613, %585
  %803 = xor i32 %802, %697
  %804 = xor i32 %803, %767
  %805 = tail call i32 @llvm.fshl.i32(i32 %804, i32 %804, i32 1)
  store i32 %805, ptr %176, align 4, !tbaa !57
  %806 = add i32 %805, -899497514
  %807 = add i32 %806, %772
  %808 = add i32 %807, %801
  %809 = add i32 %808, %799
  %810 = tail call i32 @llvm.fshl.i32(i32 %785, i32 %785, i32 30)
  %811 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 5)
  %812 = xor i32 %810, %798
  %813 = xor i32 %812, %797
  %814 = xor i32 %627, %599
  %815 = xor i32 %814, %711
  %816 = xor i32 %815, %781
  %817 = tail call i32 @llvm.fshl.i32(i32 %816, i32 %816, i32 1)
  store i32 %817, ptr %187, align 8, !tbaa !57
  %818 = add i32 %817, -899497514
  %819 = add i32 %818, %786
  %820 = add i32 %819, %813
  %821 = add i32 %820, %811
  %822 = tail call i32 @llvm.fshl.i32(i32 %797, i32 %797, i32 30)
  %823 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 5)
  %824 = xor i32 %822, %810
  %825 = xor i32 %824, %809
  %826 = xor i32 %641, %613
  %827 = xor i32 %826, %725
  %828 = xor i32 %827, %793
  %829 = tail call i32 @llvm.fshl.i32(i32 %828, i32 %828, i32 1)
  store i32 %829, ptr %198, align 4, !tbaa !57
  %830 = add i32 %829, -899497514
  %831 = add i32 %830, %798
  %832 = add i32 %831, %825
  %833 = add i32 %832, %823
  %834 = tail call i32 @llvm.fshl.i32(i32 %809, i32 %809, i32 30)
  %835 = tail call i32 @llvm.fshl.i32(i32 %833, i32 %833, i32 5)
  %836 = xor i32 %834, %822
  %837 = xor i32 %836, %821
  %838 = xor i32 %655, %627
  %839 = xor i32 %838, %739
  %840 = xor i32 %839, %805
  %841 = tail call i32 @llvm.fshl.i32(i32 %840, i32 %840, i32 1)
  store i32 %841, ptr %3, align 16, !tbaa !57
  %842 = add i32 %841, -899497514
  %843 = add i32 %842, %810
  %844 = add i32 %843, %837
  %845 = add i32 %844, %835
  %846 = tail call i32 @llvm.fshl.i32(i32 %821, i32 %821, i32 30)
  %847 = tail call i32 @llvm.fshl.i32(i32 %845, i32 %845, i32 5)
  %848 = xor i32 %846, %834
  %849 = xor i32 %848, %833
  %850 = xor i32 %669, %641
  %851 = xor i32 %850, %753
  %852 = xor i32 %851, %817
  %853 = tail call i32 @llvm.fshl.i32(i32 %852, i32 %852, i32 1)
  store i32 %853, ptr %44, align 4, !tbaa !57
  %854 = add i32 %853, -899497514
  %855 = add i32 %854, %822
  %856 = add i32 %855, %849
  %857 = add i32 %856, %847
  %858 = tail call i32 @llvm.fshl.i32(i32 %833, i32 %833, i32 30)
  %859 = tail call i32 @llvm.fshl.i32(i32 %857, i32 %857, i32 5)
  %860 = xor i32 %858, %846
  %861 = xor i32 %860, %845
  %862 = xor i32 %683, %655
  %863 = xor i32 %862, %767
  %864 = xor i32 %863, %829
  %865 = tail call i32 @llvm.fshl.i32(i32 %864, i32 %864, i32 1)
  store i32 %865, ptr %55, align 8, !tbaa !57
  %866 = add i32 %865, -899497514
  %867 = add i32 %866, %834
  %868 = add i32 %867, %861
  %869 = add i32 %868, %859
  %870 = tail call i32 @llvm.fshl.i32(i32 %845, i32 %845, i32 30)
  %871 = tail call i32 @llvm.fshl.i32(i32 %869, i32 %869, i32 5)
  %872 = xor i32 %870, %858
  %873 = xor i32 %872, %857
  %874 = xor i32 %697, %669
  %875 = xor i32 %874, %781
  %876 = xor i32 %875, %841
  %877 = tail call i32 @llvm.fshl.i32(i32 %876, i32 %876, i32 1)
  store i32 %877, ptr %66, align 4, !tbaa !57
  %878 = add i32 %877, -899497514
  %879 = add i32 %878, %846
  %880 = add i32 %879, %873
  %881 = add i32 %880, %871
  %882 = tail call i32 @llvm.fshl.i32(i32 %857, i32 %857, i32 30)
  %883 = tail call i32 @llvm.fshl.i32(i32 %881, i32 %881, i32 5)
  %884 = xor i32 %882, %870
  %885 = xor i32 %884, %869
  %886 = xor i32 %711, %683
  %887 = xor i32 %886, %793
  %888 = xor i32 %887, %853
  %889 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 1)
  store i32 %889, ptr %77, align 16, !tbaa !57
  %890 = add i32 %889, -899497514
  %891 = add i32 %890, %858
  %892 = add i32 %891, %885
  %893 = add i32 %892, %883
  %894 = tail call i32 @llvm.fshl.i32(i32 %869, i32 %869, i32 30)
  %895 = tail call i32 @llvm.fshl.i32(i32 %893, i32 %893, i32 5)
  %896 = xor i32 %894, %882
  %897 = xor i32 %896, %881
  %898 = xor i32 %725, %697
  %899 = xor i32 %898, %805
  %900 = xor i32 %899, %865
  %901 = tail call i32 @llvm.fshl.i32(i32 %900, i32 %900, i32 1)
  store i32 %901, ptr %88, align 4, !tbaa !57
  %902 = add i32 %901, -899497514
  %903 = add i32 %902, %870
  %904 = add i32 %903, %897
  %905 = add i32 %904, %895
  %906 = tail call i32 @llvm.fshl.i32(i32 %881, i32 %881, i32 30)
  %907 = tail call i32 @llvm.fshl.i32(i32 %905, i32 %905, i32 5)
  %908 = xor i32 %906, %894
  %909 = xor i32 %908, %893
  %910 = xor i32 %739, %711
  %911 = xor i32 %910, %817
  %912 = xor i32 %911, %877
  %913 = tail call i32 @llvm.fshl.i32(i32 %912, i32 %912, i32 1)
  store i32 %913, ptr %99, align 8, !tbaa !57
  %914 = add i32 %913, -899497514
  %915 = add i32 %914, %882
  %916 = add i32 %915, %909
  %917 = add i32 %916, %907
  %918 = tail call i32 @llvm.fshl.i32(i32 %893, i32 %893, i32 30)
  %919 = tail call i32 @llvm.fshl.i32(i32 %917, i32 %917, i32 5)
  %920 = xor i32 %918, %906
  %921 = xor i32 %920, %905
  %922 = xor i32 %753, %725
  %923 = xor i32 %922, %829
  %924 = xor i32 %923, %889
  %925 = tail call i32 @llvm.fshl.i32(i32 %924, i32 %924, i32 1)
  store i32 %925, ptr %110, align 4, !tbaa !57
  %926 = add i32 %925, -899497514
  %927 = add i32 %926, %894
  %928 = add i32 %927, %921
  %929 = add i32 %928, %919
  %930 = tail call i32 @llvm.fshl.i32(i32 %905, i32 %905, i32 30)
  %931 = tail call i32 @llvm.fshl.i32(i32 %929, i32 %929, i32 5)
  %932 = xor i32 %930, %918
  %933 = xor i32 %932, %917
  %934 = xor i32 %767, %739
  %935 = xor i32 %934, %841
  %936 = xor i32 %935, %901
  %937 = tail call i32 @llvm.fshl.i32(i32 %936, i32 %936, i32 1)
  store i32 %937, ptr %121, align 16, !tbaa !57
  %938 = add i32 %937, -899497514
  %939 = add i32 %938, %906
  %940 = add i32 %939, %933
  %941 = add i32 %940, %931
  %942 = tail call i32 @llvm.fshl.i32(i32 %917, i32 %917, i32 30)
  %943 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 5)
  %944 = xor i32 %942, %930
  %945 = xor i32 %944, %929
  %946 = xor i32 %781, %753
  %947 = xor i32 %946, %853
  %948 = xor i32 %947, %913
  %949 = tail call i32 @llvm.fshl.i32(i32 %948, i32 %948, i32 1)
  store i32 %949, ptr %132, align 4, !tbaa !57
  %950 = add i32 %949, -899497514
  %951 = add i32 %950, %918
  %952 = add i32 %951, %945
  %953 = add i32 %952, %943
  %954 = tail call i32 @llvm.fshl.i32(i32 %929, i32 %929, i32 30)
  %955 = tail call i32 @llvm.fshl.i32(i32 %953, i32 %953, i32 5)
  %956 = xor i32 %954, %942
  %957 = xor i32 %956, %941
  %958 = xor i32 %793, %767
  %959 = xor i32 %958, %865
  %960 = xor i32 %959, %925
  %961 = tail call i32 @llvm.fshl.i32(i32 %960, i32 %960, i32 1)
  store i32 %961, ptr %143, align 8, !tbaa !57
  %962 = add i32 %961, -899497514
  %963 = add i32 %962, %930
  %964 = add i32 %963, %957
  %965 = add i32 %964, %955
  %966 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 30)
  %967 = tail call i32 @llvm.fshl.i32(i32 %965, i32 %965, i32 5)
  %968 = xor i32 %966, %954
  %969 = xor i32 %968, %953
  %970 = xor i32 %805, %781
  %971 = xor i32 %970, %877
  %972 = xor i32 %971, %937
  %973 = tail call i32 @llvm.fshl.i32(i32 %972, i32 %972, i32 1)
  store i32 %973, ptr %154, align 4, !tbaa !57
  %974 = add i32 %973, -899497514
  %975 = add i32 %974, %942
  %976 = add i32 %975, %969
  %977 = add i32 %976, %967
  %978 = tail call i32 @llvm.fshl.i32(i32 %953, i32 %953, i32 30)
  %979 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 5)
  %980 = xor i32 %978, %966
  %981 = xor i32 %980, %965
  %982 = xor i32 %817, %793
  %983 = xor i32 %982, %889
  %984 = xor i32 %983, %949
  %985 = tail call i32 @llvm.fshl.i32(i32 %984, i32 %984, i32 1)
  store i32 %985, ptr %165, align 16, !tbaa !57
  %986 = add i32 %985, -899497514
  %987 = add i32 %986, %954
  %988 = add i32 %987, %981
  %989 = add i32 %988, %979
  %990 = tail call i32 @llvm.fshl.i32(i32 %965, i32 %965, i32 30)
  %991 = tail call i32 @llvm.fshl.i32(i32 %989, i32 %989, i32 5)
  %992 = xor i32 %990, %978
  %993 = xor i32 %992, %977
  %994 = xor i32 %829, %805
  %995 = xor i32 %994, %901
  %996 = xor i32 %995, %961
  %997 = tail call i32 @llvm.fshl.i32(i32 %996, i32 %996, i32 1)
  store i32 %997, ptr %176, align 4, !tbaa !57
  %998 = add i32 %997, -899497514
  %999 = add i32 %998, %966
  %1000 = add i32 %999, %993
  %1001 = add i32 %1000, %991
  %1002 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 30)
  %1003 = tail call i32 @llvm.fshl.i32(i32 %1001, i32 %1001, i32 5)
  %1004 = xor i32 %1002, %990
  %1005 = xor i32 %1004, %989
  %1006 = xor i32 %841, %817
  %1007 = xor i32 %1006, %913
  %1008 = xor i32 %1007, %973
  %1009 = tail call i32 @llvm.fshl.i32(i32 %1008, i32 %1008, i32 1)
  store i32 %1009, ptr %187, align 8, !tbaa !57
  %1010 = add i32 %1009, -899497514
  %1011 = add i32 %1010, %978
  %1012 = add i32 %1011, %1005
  %1013 = add i32 %1012, %1003
  %1014 = tail call i32 @llvm.fshl.i32(i32 %989, i32 %989, i32 30)
  %1015 = tail call i32 @llvm.fshl.i32(i32 %1013, i32 %1013, i32 5)
  %1016 = xor i32 %1014, %1002
  %1017 = xor i32 %1016, %1001
  %1018 = xor i32 %853, %829
  %1019 = xor i32 %1018, %925
  %1020 = xor i32 %1019, %985
  %1021 = tail call i32 @llvm.fshl.i32(i32 %1020, i32 %1020, i32 1)
  store i32 %1021, ptr %198, align 4, !tbaa !57
  %1022 = tail call i32 @llvm.fshl.i32(i32 %1001, i32 %1001, i32 30)
  %1023 = add i32 %31, -899497514
  %1024 = add i32 %1023, %1021
  %1025 = add i32 %1024, %990
  %1026 = add i32 %1025, %1017
  %1027 = add i32 %1026, %1015
  store i32 %1027, ptr %30, align 4, !tbaa !57
  %1028 = add i32 %1013, %33
  store i32 %1028, ptr %32, align 4, !tbaa !57
  %1029 = add i32 %1022, %35
  store i32 %1029, ptr %34, align 4, !tbaa !57
  %1030 = add i32 %1014, %37
  store i32 %1030, ptr %36, align 4, !tbaa !57
  %1031 = add i32 %1002, %39
  store i32 %1031, ptr %38, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sha256(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 !prof !55 {
  %3 = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %3, %2 ], [ %25, %4 ]
  %6 = phi i32 [ 0, %2 ], [ %26, %4 ]
  %7 = phi ptr [ %1, %2 ], [ %27, %4 ]
  %8 = load i8, ptr %7, align 1, !tbaa !54
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !54
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %10
  %16 = getelementptr inbounds i8, ptr %7, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !54
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr inbounds i8, ptr %7, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !54
  %23 = zext i8 %22 to i32
  %24 = or disjoint i32 %20, %23
  %25 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %24, ptr %5, align 4, !tbaa !57
  %26 = add nuw nsw i32 %6, 1
  %27 = getelementptr inbounds i8, ptr %7, i64 4
  %28 = icmp eq i32 %26, 16
  br i1 %28, label %29, label %4, !llvm.loop !115

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !57
  %32 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 2
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 3
  %37 = load i32, ptr %36, align 4, !tbaa !57
  %38 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !57
  %40 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 5
  %41 = load i32, ptr %40, align 4, !tbaa !57
  %42 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 6
  %43 = load i32, ptr %42, align 4, !tbaa !57
  %44 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2, i64 7
  %45 = load i32, ptr %44, align 4, !tbaa !57
  %46 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 26)
  %47 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 21)
  %48 = xor i32 %46, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 7)
  %50 = xor i32 %48, %49
  %51 = xor i32 %43, %41
  %52 = and i32 %51, %39
  %53 = xor i32 %52, %43
  %54 = getelementptr inbounds i32, ptr %3, i64 1
  %55 = load i32, ptr %3, align 16, !tbaa !57
  %56 = add i32 %50, 1116352408
  %57 = add i32 %56, %45
  %58 = add i32 %57, %55
  %59 = add i32 %58, %53
  %60 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 30)
  %61 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 19)
  %62 = xor i32 %60, %61
  %63 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 10)
  %64 = xor i32 %62, %63
  %65 = and i32 %33, %31
  %66 = or i32 %33, %31
  %67 = and i32 %35, %66
  %68 = or i32 %67, %65
  %69 = add i32 %68, %64
  %70 = add i32 %69, %59
  %71 = add i32 %59, %37
  %72 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 26)
  %73 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 21)
  %74 = xor i32 %72, %73
  %75 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 7)
  %76 = xor i32 %74, %75
  %77 = xor i32 %41, %39
  %78 = and i32 %71, %77
  %79 = xor i32 %78, %41
  %80 = getelementptr inbounds i32, ptr %3, i64 2
  %81 = load i32, ptr %54, align 4, !tbaa !57
  %82 = add i32 %43, 1899447441
  %83 = add i32 %82, %81
  %84 = add i32 %83, %79
  %85 = add i32 %84, %76
  %86 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 30)
  %87 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 19)
  %88 = xor i32 %86, %87
  %89 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 10)
  %90 = xor i32 %88, %89
  %91 = and i32 %70, %31
  %92 = or i32 %70, %31
  %93 = and i32 %92, %33
  %94 = or i32 %93, %91
  %95 = add i32 %94, %90
  %96 = add i32 %95, %85
  %97 = add i32 %85, %35
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 26)
  %99 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 21)
  %100 = xor i32 %98, %99
  %101 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 7)
  %102 = xor i32 %100, %101
  %103 = xor i32 %71, %39
  %104 = and i32 %97, %103
  %105 = xor i32 %104, %39
  %106 = getelementptr inbounds i32, ptr %3, i64 3
  %107 = load i32, ptr %80, align 8, !tbaa !57
  %108 = add i32 %41, -1245643825
  %109 = add i32 %108, %107
  %110 = add i32 %109, %105
  %111 = add i32 %110, %102
  %112 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 30)
  %113 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 19)
  %114 = xor i32 %112, %113
  %115 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 10)
  %116 = xor i32 %114, %115
  %117 = and i32 %96, %70
  %118 = or i32 %96, %70
  %119 = and i32 %118, %31
  %120 = or i32 %119, %117
  %121 = add i32 %120, %116
  %122 = add i32 %121, %111
  %123 = add i32 %111, %33
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 26)
  %125 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 21)
  %126 = xor i32 %124, %125
  %127 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 7)
  %128 = xor i32 %126, %127
  %129 = xor i32 %97, %71
  %130 = and i32 %123, %129
  %131 = xor i32 %130, %71
  %132 = getelementptr inbounds i32, ptr %3, i64 4
  %133 = load i32, ptr %106, align 4, !tbaa !57
  %134 = add i32 %39, -373957723
  %135 = add i32 %134, %133
  %136 = add i32 %135, %131
  %137 = add i32 %136, %128
  %138 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 30)
  %139 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 19)
  %140 = xor i32 %138, %139
  %141 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 10)
  %142 = xor i32 %140, %141
  %143 = and i32 %122, %96
  %144 = or i32 %122, %96
  %145 = and i32 %144, %70
  %146 = or i32 %145, %143
  %147 = add i32 %146, %142
  %148 = add i32 %147, %137
  %149 = add i32 %137, %31
  %150 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 26)
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 21)
  %152 = xor i32 %150, %151
  %153 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 7)
  %154 = xor i32 %152, %153
  %155 = xor i32 %123, %97
  %156 = and i32 %149, %155
  %157 = xor i32 %156, %97
  %158 = getelementptr inbounds i32, ptr %3, i64 5
  %159 = load i32, ptr %132, align 16, !tbaa !57
  %160 = add i32 %159, 961987163
  %161 = add i32 %160, %71
  %162 = add i32 %161, %157
  %163 = add i32 %162, %154
  %164 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 30)
  %165 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 19)
  %166 = xor i32 %164, %165
  %167 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 10)
  %168 = xor i32 %166, %167
  %169 = and i32 %148, %122
  %170 = or i32 %148, %122
  %171 = and i32 %170, %96
  %172 = or i32 %171, %169
  %173 = add i32 %172, %168
  %174 = add i32 %173, %163
  %175 = add i32 %163, %70
  %176 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 26)
  %177 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 21)
  %178 = xor i32 %176, %177
  %179 = tail call i32 @llvm.fshl.i32(i32 %175, i32 %175, i32 7)
  %180 = xor i32 %178, %179
  %181 = xor i32 %149, %123
  %182 = and i32 %175, %181
  %183 = xor i32 %182, %123
  %184 = getelementptr inbounds i32, ptr %3, i64 6
  %185 = load i32, ptr %158, align 4, !tbaa !57
  %186 = add i32 %185, 1508970993
  %187 = add i32 %186, %97
  %188 = add i32 %187, %183
  %189 = add i32 %188, %180
  %190 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 30)
  %191 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 19)
  %192 = xor i32 %190, %191
  %193 = tail call i32 @llvm.fshl.i32(i32 %174, i32 %174, i32 10)
  %194 = xor i32 %192, %193
  %195 = and i32 %174, %148
  %196 = or i32 %174, %148
  %197 = and i32 %196, %122
  %198 = or i32 %197, %195
  %199 = add i32 %198, %194
  %200 = add i32 %199, %189
  %201 = add i32 %189, %96
  %202 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 26)
  %203 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 21)
  %204 = xor i32 %202, %203
  %205 = tail call i32 @llvm.fshl.i32(i32 %201, i32 %201, i32 7)
  %206 = xor i32 %204, %205
  %207 = xor i32 %175, %149
  %208 = and i32 %201, %207
  %209 = xor i32 %208, %149
  %210 = getelementptr inbounds i32, ptr %3, i64 7
  %211 = load i32, ptr %184, align 8, !tbaa !57
  %212 = add i32 %211, -1841331548
  %213 = add i32 %212, %123
  %214 = add i32 %213, %209
  %215 = add i32 %214, %206
  %216 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 30)
  %217 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 19)
  %218 = xor i32 %216, %217
  %219 = tail call i32 @llvm.fshl.i32(i32 %200, i32 %200, i32 10)
  %220 = xor i32 %218, %219
  %221 = and i32 %200, %174
  %222 = or i32 %200, %174
  %223 = and i32 %222, %148
  %224 = or i32 %223, %221
  %225 = add i32 %224, %220
  %226 = add i32 %225, %215
  %227 = add i32 %215, %122
  %228 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 26)
  %229 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 21)
  %230 = xor i32 %228, %229
  %231 = tail call i32 @llvm.fshl.i32(i32 %227, i32 %227, i32 7)
  %232 = xor i32 %230, %231
  %233 = xor i32 %201, %175
  %234 = and i32 %227, %233
  %235 = xor i32 %234, %175
  %236 = getelementptr inbounds i32, ptr %3, i64 8
  %237 = load i32, ptr %210, align 4, !tbaa !57
  %238 = add i32 %237, -1424204075
  %239 = add i32 %238, %149
  %240 = add i32 %239, %235
  %241 = add i32 %240, %232
  %242 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 30)
  %243 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 19)
  %244 = xor i32 %242, %243
  %245 = tail call i32 @llvm.fshl.i32(i32 %226, i32 %226, i32 10)
  %246 = xor i32 %244, %245
  %247 = and i32 %226, %200
  %248 = or i32 %226, %200
  %249 = and i32 %248, %174
  %250 = or i32 %249, %247
  %251 = add i32 %250, %246
  %252 = add i32 %251, %241
  %253 = add i32 %241, %148
  %254 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 26)
  %255 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 21)
  %256 = xor i32 %254, %255
  %257 = tail call i32 @llvm.fshl.i32(i32 %253, i32 %253, i32 7)
  %258 = xor i32 %256, %257
  %259 = xor i32 %227, %201
  %260 = and i32 %253, %259
  %261 = xor i32 %260, %201
  %262 = getelementptr inbounds i32, ptr %3, i64 9
  %263 = load i32, ptr %236, align 16, !tbaa !57
  %264 = add i32 %263, -670586216
  %265 = add i32 %264, %175
  %266 = add i32 %265, %261
  %267 = add i32 %266, %258
  %268 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 30)
  %269 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 19)
  %270 = xor i32 %268, %269
  %271 = tail call i32 @llvm.fshl.i32(i32 %252, i32 %252, i32 10)
  %272 = xor i32 %270, %271
  %273 = and i32 %252, %226
  %274 = or i32 %252, %226
  %275 = and i32 %274, %200
  %276 = or i32 %275, %273
  %277 = add i32 %276, %272
  %278 = add i32 %277, %267
  %279 = add i32 %267, %174
  %280 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 26)
  %281 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 21)
  %282 = xor i32 %280, %281
  %283 = tail call i32 @llvm.fshl.i32(i32 %279, i32 %279, i32 7)
  %284 = xor i32 %282, %283
  %285 = xor i32 %253, %227
  %286 = and i32 %279, %285
  %287 = xor i32 %286, %227
  %288 = getelementptr inbounds i32, ptr %3, i64 10
  %289 = load i32, ptr %262, align 4, !tbaa !57
  %290 = add i32 %289, 310598401
  %291 = add i32 %290, %201
  %292 = add i32 %291, %287
  %293 = add i32 %292, %284
  %294 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 30)
  %295 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 19)
  %296 = xor i32 %294, %295
  %297 = tail call i32 @llvm.fshl.i32(i32 %278, i32 %278, i32 10)
  %298 = xor i32 %296, %297
  %299 = and i32 %278, %252
  %300 = or i32 %278, %252
  %301 = and i32 %300, %226
  %302 = or i32 %301, %299
  %303 = add i32 %302, %298
  %304 = add i32 %303, %293
  %305 = add i32 %293, %200
  %306 = tail call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 26)
  %307 = tail call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 21)
  %308 = xor i32 %306, %307
  %309 = tail call i32 @llvm.fshl.i32(i32 %305, i32 %305, i32 7)
  %310 = xor i32 %308, %309
  %311 = xor i32 %279, %253
  %312 = and i32 %305, %311
  %313 = xor i32 %312, %253
  %314 = getelementptr inbounds i32, ptr %3, i64 11
  %315 = load i32, ptr %288, align 8, !tbaa !57
  %316 = add i32 %315, 607225278
  %317 = add i32 %316, %227
  %318 = add i32 %317, %313
  %319 = add i32 %318, %310
  %320 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 30)
  %321 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 19)
  %322 = xor i32 %320, %321
  %323 = tail call i32 @llvm.fshl.i32(i32 %304, i32 %304, i32 10)
  %324 = xor i32 %322, %323
  %325 = and i32 %304, %278
  %326 = or i32 %304, %278
  %327 = and i32 %326, %252
  %328 = or i32 %327, %325
  %329 = add i32 %328, %324
  %330 = add i32 %329, %319
  %331 = add i32 %319, %226
  %332 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 26)
  %333 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 21)
  %334 = xor i32 %332, %333
  %335 = tail call i32 @llvm.fshl.i32(i32 %331, i32 %331, i32 7)
  %336 = xor i32 %334, %335
  %337 = xor i32 %305, %279
  %338 = and i32 %331, %337
  %339 = xor i32 %338, %279
  %340 = getelementptr inbounds i32, ptr %3, i64 12
  %341 = load i32, ptr %314, align 4, !tbaa !57
  %342 = add i32 %341, 1426881987
  %343 = add i32 %342, %253
  %344 = add i32 %343, %339
  %345 = add i32 %344, %336
  %346 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 30)
  %347 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 19)
  %348 = xor i32 %346, %347
  %349 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 10)
  %350 = xor i32 %348, %349
  %351 = and i32 %330, %304
  %352 = or i32 %330, %304
  %353 = and i32 %352, %278
  %354 = or i32 %353, %351
  %355 = add i32 %354, %350
  %356 = add i32 %355, %345
  %357 = add i32 %345, %252
  %358 = tail call i32 @llvm.fshl.i32(i32 %357, i32 %357, i32 26)
  %359 = tail call i32 @llvm.fshl.i32(i32 %357, i32 %357, i32 21)
  %360 = xor i32 %358, %359
  %361 = tail call i32 @llvm.fshl.i32(i32 %357, i32 %357, i32 7)
  %362 = xor i32 %360, %361
  %363 = xor i32 %331, %305
  %364 = and i32 %357, %363
  %365 = xor i32 %364, %305
  %366 = getelementptr inbounds i32, ptr %3, i64 13
  %367 = load i32, ptr %340, align 16, !tbaa !57
  %368 = add i32 %367, 1925078388
  %369 = add i32 %368, %279
  %370 = add i32 %369, %365
  %371 = add i32 %370, %362
  %372 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 30)
  %373 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 19)
  %374 = xor i32 %372, %373
  %375 = tail call i32 @llvm.fshl.i32(i32 %356, i32 %356, i32 10)
  %376 = xor i32 %374, %375
  %377 = and i32 %356, %330
  %378 = or i32 %356, %330
  %379 = and i32 %378, %304
  %380 = or i32 %379, %377
  %381 = add i32 %380, %376
  %382 = add i32 %381, %371
  %383 = add i32 %371, %278
  %384 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 26)
  %385 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 21)
  %386 = xor i32 %384, %385
  %387 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 7)
  %388 = xor i32 %386, %387
  %389 = xor i32 %357, %331
  %390 = and i32 %383, %389
  %391 = xor i32 %390, %331
  %392 = getelementptr inbounds i32, ptr %3, i64 14
  %393 = load i32, ptr %366, align 4, !tbaa !57
  %394 = add i32 %393, -2132889090
  %395 = add i32 %394, %305
  %396 = add i32 %395, %391
  %397 = add i32 %396, %388
  %398 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 30)
  %399 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 19)
  %400 = xor i32 %398, %399
  %401 = tail call i32 @llvm.fshl.i32(i32 %382, i32 %382, i32 10)
  %402 = xor i32 %400, %401
  %403 = and i32 %382, %356
  %404 = or i32 %382, %356
  %405 = and i32 %404, %330
  %406 = or i32 %405, %403
  %407 = add i32 %406, %402
  %408 = add i32 %407, %397
  %409 = add i32 %397, %304
  %410 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 26)
  %411 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 21)
  %412 = xor i32 %410, %411
  %413 = tail call i32 @llvm.fshl.i32(i32 %409, i32 %409, i32 7)
  %414 = xor i32 %412, %413
  %415 = xor i32 %383, %357
  %416 = and i32 %409, %415
  %417 = xor i32 %416, %357
  %418 = getelementptr inbounds i32, ptr %3, i64 15
  %419 = load i32, ptr %392, align 8, !tbaa !57
  %420 = add i32 %419, -1680079193
  %421 = add i32 %420, %331
  %422 = add i32 %421, %417
  %423 = add i32 %422, %414
  %424 = tail call i32 @llvm.fshl.i32(i32 %408, i32 %408, i32 30)
  %425 = tail call i32 @llvm.fshl.i32(i32 %408, i32 %408, i32 19)
  %426 = xor i32 %424, %425
  %427 = tail call i32 @llvm.fshl.i32(i32 %408, i32 %408, i32 10)
  %428 = xor i32 %426, %427
  %429 = and i32 %408, %382
  %430 = or i32 %408, %382
  %431 = and i32 %430, %356
  %432 = or i32 %431, %429
  %433 = add i32 %432, %428
  %434 = add i32 %433, %423
  %435 = add i32 %423, %330
  %436 = tail call i32 @llvm.fshl.i32(i32 %435, i32 %435, i32 26)
  %437 = tail call i32 @llvm.fshl.i32(i32 %435, i32 %435, i32 21)
  %438 = xor i32 %436, %437
  %439 = tail call i32 @llvm.fshl.i32(i32 %435, i32 %435, i32 7)
  %440 = xor i32 %438, %439
  %441 = xor i32 %409, %383
  %442 = and i32 %435, %441
  %443 = xor i32 %442, %383
  %444 = load i32, ptr %418, align 4, !tbaa !57
  %445 = add i32 %444, -1046744716
  %446 = add i32 %445, %357
  %447 = add i32 %446, %443
  %448 = add i32 %447, %440
  %449 = tail call i32 @llvm.fshl.i32(i32 %434, i32 %434, i32 30)
  %450 = tail call i32 @llvm.fshl.i32(i32 %434, i32 %434, i32 19)
  %451 = xor i32 %449, %450
  %452 = tail call i32 @llvm.fshl.i32(i32 %434, i32 %434, i32 10)
  %453 = xor i32 %451, %452
  %454 = and i32 %434, %408
  %455 = or i32 %434, %408
  %456 = and i32 %455, %382
  %457 = or i32 %456, %454
  %458 = add i32 %457, %453
  %459 = add i32 %458, %448
  %460 = add i32 %448, %356
  %461 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 26)
  %462 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 21)
  %463 = xor i32 %461, %462
  %464 = tail call i32 @llvm.fshl.i32(i32 %460, i32 %460, i32 7)
  %465 = xor i32 %463, %464
  %466 = xor i32 %435, %409
  %467 = and i32 %460, %466
  %468 = xor i32 %467, %409
  %469 = tail call i32 @llvm.fshl.i32(i32 %419, i32 %419, i32 15)
  %470 = tail call i32 @llvm.fshl.i32(i32 %419, i32 %419, i32 13)
  %471 = xor i32 %469, %470
  %472 = lshr i32 %419, 10
  %473 = xor i32 %471, %472
  %474 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 25)
  %475 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 14)
  %476 = xor i32 %474, %475
  %477 = lshr i32 %81, 3
  %478 = xor i32 %476, %477
  %479 = add i32 %478, %55
  %480 = add i32 %479, %289
  %481 = add i32 %480, %473
  store i32 %481, ptr %3, align 16, !tbaa !57
  %482 = add i32 %481, -459576895
  %483 = add i32 %482, %383
  %484 = add i32 %483, %468
  %485 = add i32 %484, %465
  %486 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 30)
  %487 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 19)
  %488 = xor i32 %486, %487
  %489 = tail call i32 @llvm.fshl.i32(i32 %459, i32 %459, i32 10)
  %490 = xor i32 %488, %489
  %491 = and i32 %459, %434
  %492 = or i32 %459, %434
  %493 = and i32 %492, %408
  %494 = or i32 %493, %491
  %495 = add i32 %494, %490
  %496 = add i32 %495, %485
  %497 = add i32 %485, %382
  %498 = tail call i32 @llvm.fshl.i32(i32 %497, i32 %497, i32 26)
  %499 = tail call i32 @llvm.fshl.i32(i32 %497, i32 %497, i32 21)
  %500 = xor i32 %498, %499
  %501 = tail call i32 @llvm.fshl.i32(i32 %497, i32 %497, i32 7)
  %502 = xor i32 %500, %501
  %503 = xor i32 %460, %435
  %504 = and i32 %497, %503
  %505 = xor i32 %504, %435
  %506 = tail call i32 @llvm.fshl.i32(i32 %444, i32 %444, i32 15)
  %507 = tail call i32 @llvm.fshl.i32(i32 %444, i32 %444, i32 13)
  %508 = xor i32 %506, %507
  %509 = lshr i32 %444, 10
  %510 = xor i32 %508, %509
  %511 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 25)
  %512 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 14)
  %513 = xor i32 %511, %512
  %514 = lshr i32 %107, 3
  %515 = xor i32 %513, %514
  %516 = add i32 %515, %81
  %517 = add i32 %516, %315
  %518 = add i32 %517, %510
  store i32 %518, ptr %54, align 4, !tbaa !57
  %519 = add i32 %518, -272742522
  %520 = add i32 %519, %409
  %521 = add i32 %520, %505
  %522 = add i32 %521, %502
  %523 = tail call i32 @llvm.fshl.i32(i32 %496, i32 %496, i32 30)
  %524 = tail call i32 @llvm.fshl.i32(i32 %496, i32 %496, i32 19)
  %525 = xor i32 %523, %524
  %526 = tail call i32 @llvm.fshl.i32(i32 %496, i32 %496, i32 10)
  %527 = xor i32 %525, %526
  %528 = and i32 %496, %459
  %529 = or i32 %496, %459
  %530 = and i32 %529, %434
  %531 = or i32 %530, %528
  %532 = add i32 %531, %527
  %533 = add i32 %532, %522
  %534 = add i32 %522, %408
  %535 = tail call i32 @llvm.fshl.i32(i32 %534, i32 %534, i32 26)
  %536 = tail call i32 @llvm.fshl.i32(i32 %534, i32 %534, i32 21)
  %537 = xor i32 %535, %536
  %538 = tail call i32 @llvm.fshl.i32(i32 %534, i32 %534, i32 7)
  %539 = xor i32 %537, %538
  %540 = xor i32 %497, %460
  %541 = and i32 %534, %540
  %542 = xor i32 %541, %460
  %543 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 15)
  %544 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 13)
  %545 = xor i32 %543, %544
  %546 = lshr i32 %481, 10
  %547 = xor i32 %545, %546
  %548 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 25)
  %549 = tail call i32 @llvm.fshl.i32(i32 %133, i32 %133, i32 14)
  %550 = xor i32 %548, %549
  %551 = lshr i32 %133, 3
  %552 = xor i32 %550, %551
  %553 = add i32 %552, %107
  %554 = add i32 %553, %341
  %555 = add i32 %554, %547
  store i32 %555, ptr %80, align 8, !tbaa !57
  %556 = add i32 %555, 264347078
  %557 = add i32 %556, %435
  %558 = add i32 %557, %542
  %559 = add i32 %558, %539
  %560 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 30)
  %561 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 19)
  %562 = xor i32 %560, %561
  %563 = tail call i32 @llvm.fshl.i32(i32 %533, i32 %533, i32 10)
  %564 = xor i32 %562, %563
  %565 = and i32 %533, %496
  %566 = or i32 %533, %496
  %567 = and i32 %566, %459
  %568 = or i32 %567, %565
  %569 = add i32 %568, %564
  %570 = add i32 %569, %559
  %571 = add i32 %559, %434
  %572 = tail call i32 @llvm.fshl.i32(i32 %571, i32 %571, i32 26)
  %573 = tail call i32 @llvm.fshl.i32(i32 %571, i32 %571, i32 21)
  %574 = xor i32 %572, %573
  %575 = tail call i32 @llvm.fshl.i32(i32 %571, i32 %571, i32 7)
  %576 = xor i32 %574, %575
  %577 = xor i32 %534, %497
  %578 = and i32 %571, %577
  %579 = xor i32 %578, %497
  %580 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 15)
  %581 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 13)
  %582 = xor i32 %580, %581
  %583 = lshr i32 %518, 10
  %584 = xor i32 %582, %583
  %585 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 25)
  %586 = tail call i32 @llvm.fshl.i32(i32 %159, i32 %159, i32 14)
  %587 = xor i32 %585, %586
  %588 = lshr i32 %159, 3
  %589 = xor i32 %587, %588
  %590 = add i32 %589, %133
  %591 = add i32 %590, %367
  %592 = add i32 %591, %584
  store i32 %592, ptr %106, align 4, !tbaa !57
  %593 = add i32 %592, 604807628
  %594 = add i32 %593, %460
  %595 = add i32 %594, %579
  %596 = add i32 %595, %576
  %597 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 30)
  %598 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 19)
  %599 = xor i32 %597, %598
  %600 = tail call i32 @llvm.fshl.i32(i32 %570, i32 %570, i32 10)
  %601 = xor i32 %599, %600
  %602 = and i32 %570, %533
  %603 = or i32 %570, %533
  %604 = and i32 %603, %496
  %605 = or i32 %604, %602
  %606 = add i32 %605, %601
  %607 = add i32 %606, %596
  %608 = add i32 %596, %459
  %609 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 26)
  %610 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 21)
  %611 = xor i32 %609, %610
  %612 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 7)
  %613 = xor i32 %611, %612
  %614 = xor i32 %571, %534
  %615 = and i32 %608, %614
  %616 = xor i32 %615, %534
  %617 = tail call i32 @llvm.fshl.i32(i32 %555, i32 %555, i32 15)
  %618 = tail call i32 @llvm.fshl.i32(i32 %555, i32 %555, i32 13)
  %619 = xor i32 %617, %618
  %620 = lshr i32 %555, 10
  %621 = xor i32 %619, %620
  %622 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 25)
  %623 = tail call i32 @llvm.fshl.i32(i32 %185, i32 %185, i32 14)
  %624 = xor i32 %622, %623
  %625 = lshr i32 %185, 3
  %626 = xor i32 %624, %625
  %627 = add i32 %626, %159
  %628 = add i32 %627, %393
  %629 = add i32 %628, %621
  store i32 %629, ptr %132, align 16, !tbaa !57
  %630 = add i32 %629, 770255983
  %631 = add i32 %630, %497
  %632 = add i32 %631, %616
  %633 = add i32 %632, %613
  %634 = tail call i32 @llvm.fshl.i32(i32 %607, i32 %607, i32 30)
  %635 = tail call i32 @llvm.fshl.i32(i32 %607, i32 %607, i32 19)
  %636 = xor i32 %634, %635
  %637 = tail call i32 @llvm.fshl.i32(i32 %607, i32 %607, i32 10)
  %638 = xor i32 %636, %637
  %639 = and i32 %607, %570
  %640 = or i32 %607, %570
  %641 = and i32 %640, %533
  %642 = or i32 %641, %639
  %643 = add i32 %642, %638
  %644 = add i32 %643, %633
  %645 = add i32 %633, %496
  %646 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 26)
  %647 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 21)
  %648 = xor i32 %646, %647
  %649 = tail call i32 @llvm.fshl.i32(i32 %645, i32 %645, i32 7)
  %650 = xor i32 %648, %649
  %651 = xor i32 %608, %571
  %652 = and i32 %645, %651
  %653 = xor i32 %652, %571
  %654 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 15)
  %655 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 13)
  %656 = xor i32 %654, %655
  %657 = lshr i32 %592, 10
  %658 = xor i32 %656, %657
  %659 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 25)
  %660 = tail call i32 @llvm.fshl.i32(i32 %211, i32 %211, i32 14)
  %661 = xor i32 %659, %660
  %662 = lshr i32 %211, 3
  %663 = xor i32 %661, %662
  %664 = add i32 %663, %185
  %665 = add i32 %664, %419
  %666 = add i32 %665, %658
  store i32 %666, ptr %158, align 4, !tbaa !57
  %667 = add i32 %666, 1249150122
  %668 = add i32 %667, %534
  %669 = add i32 %668, %653
  %670 = add i32 %669, %650
  %671 = tail call i32 @llvm.fshl.i32(i32 %644, i32 %644, i32 30)
  %672 = tail call i32 @llvm.fshl.i32(i32 %644, i32 %644, i32 19)
  %673 = xor i32 %671, %672
  %674 = tail call i32 @llvm.fshl.i32(i32 %644, i32 %644, i32 10)
  %675 = xor i32 %673, %674
  %676 = and i32 %644, %607
  %677 = or i32 %644, %607
  %678 = and i32 %677, %570
  %679 = or i32 %678, %676
  %680 = add i32 %679, %675
  %681 = add i32 %680, %670
  %682 = add i32 %670, %533
  %683 = tail call i32 @llvm.fshl.i32(i32 %682, i32 %682, i32 26)
  %684 = tail call i32 @llvm.fshl.i32(i32 %682, i32 %682, i32 21)
  %685 = xor i32 %683, %684
  %686 = tail call i32 @llvm.fshl.i32(i32 %682, i32 %682, i32 7)
  %687 = xor i32 %685, %686
  %688 = xor i32 %645, %608
  %689 = and i32 %682, %688
  %690 = xor i32 %689, %608
  %691 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 15)
  %692 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 13)
  %693 = xor i32 %691, %692
  %694 = lshr i32 %629, 10
  %695 = xor i32 %693, %694
  %696 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 25)
  %697 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %237, i32 14)
  %698 = xor i32 %696, %697
  %699 = lshr i32 %237, 3
  %700 = xor i32 %698, %699
  %701 = add i32 %700, %211
  %702 = add i32 %701, %444
  %703 = add i32 %702, %695
  store i32 %703, ptr %184, align 8, !tbaa !57
  %704 = add i32 %703, 1555081692
  %705 = add i32 %704, %571
  %706 = add i32 %705, %690
  %707 = add i32 %706, %687
  %708 = tail call i32 @llvm.fshl.i32(i32 %681, i32 %681, i32 30)
  %709 = tail call i32 @llvm.fshl.i32(i32 %681, i32 %681, i32 19)
  %710 = xor i32 %708, %709
  %711 = tail call i32 @llvm.fshl.i32(i32 %681, i32 %681, i32 10)
  %712 = xor i32 %710, %711
  %713 = and i32 %681, %644
  %714 = or i32 %681, %644
  %715 = and i32 %714, %607
  %716 = or i32 %715, %713
  %717 = add i32 %716, %712
  %718 = add i32 %717, %707
  %719 = add i32 %707, %570
  %720 = tail call i32 @llvm.fshl.i32(i32 %719, i32 %719, i32 26)
  %721 = tail call i32 @llvm.fshl.i32(i32 %719, i32 %719, i32 21)
  %722 = xor i32 %720, %721
  %723 = tail call i32 @llvm.fshl.i32(i32 %719, i32 %719, i32 7)
  %724 = xor i32 %722, %723
  %725 = xor i32 %682, %645
  %726 = and i32 %719, %725
  %727 = xor i32 %726, %645
  %728 = tail call i32 @llvm.fshl.i32(i32 %666, i32 %666, i32 15)
  %729 = tail call i32 @llvm.fshl.i32(i32 %666, i32 %666, i32 13)
  %730 = xor i32 %728, %729
  %731 = lshr i32 %666, 10
  %732 = xor i32 %730, %731
  %733 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 25)
  %734 = tail call i32 @llvm.fshl.i32(i32 %263, i32 %263, i32 14)
  %735 = xor i32 %733, %734
  %736 = lshr i32 %263, 3
  %737 = xor i32 %735, %736
  %738 = add i32 %737, %237
  %739 = add i32 %738, %481
  %740 = add i32 %739, %732
  store i32 %740, ptr %210, align 4, !tbaa !57
  %741 = add i32 %740, 1996064986
  %742 = add i32 %741, %608
  %743 = add i32 %742, %727
  %744 = add i32 %743, %724
  %745 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 30)
  %746 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 19)
  %747 = xor i32 %745, %746
  %748 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 10)
  %749 = xor i32 %747, %748
  %750 = and i32 %718, %681
  %751 = or i32 %718, %681
  %752 = and i32 %751, %644
  %753 = or i32 %752, %750
  %754 = add i32 %753, %749
  %755 = add i32 %754, %744
  %756 = add i32 %744, %607
  %757 = tail call i32 @llvm.fshl.i32(i32 %756, i32 %756, i32 26)
  %758 = tail call i32 @llvm.fshl.i32(i32 %756, i32 %756, i32 21)
  %759 = xor i32 %757, %758
  %760 = tail call i32 @llvm.fshl.i32(i32 %756, i32 %756, i32 7)
  %761 = xor i32 %759, %760
  %762 = xor i32 %719, %682
  %763 = and i32 %756, %762
  %764 = xor i32 %763, %682
  %765 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 15)
  %766 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 13)
  %767 = xor i32 %765, %766
  %768 = lshr i32 %703, 10
  %769 = xor i32 %767, %768
  %770 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 25)
  %771 = tail call i32 @llvm.fshl.i32(i32 %289, i32 %289, i32 14)
  %772 = xor i32 %770, %771
  %773 = lshr i32 %289, 3
  %774 = xor i32 %772, %773
  %775 = add i32 %774, %263
  %776 = add i32 %775, %518
  %777 = add i32 %776, %769
  store i32 %777, ptr %236, align 16, !tbaa !57
  %778 = add i32 %777, -1740746414
  %779 = add i32 %778, %645
  %780 = add i32 %779, %764
  %781 = add i32 %780, %761
  %782 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 30)
  %783 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 19)
  %784 = xor i32 %782, %783
  %785 = tail call i32 @llvm.fshl.i32(i32 %755, i32 %755, i32 10)
  %786 = xor i32 %784, %785
  %787 = and i32 %755, %718
  %788 = or i32 %755, %718
  %789 = and i32 %788, %681
  %790 = or i32 %789, %787
  %791 = add i32 %790, %786
  %792 = add i32 %791, %781
  %793 = add i32 %781, %644
  %794 = tail call i32 @llvm.fshl.i32(i32 %793, i32 %793, i32 26)
  %795 = tail call i32 @llvm.fshl.i32(i32 %793, i32 %793, i32 21)
  %796 = xor i32 %794, %795
  %797 = tail call i32 @llvm.fshl.i32(i32 %793, i32 %793, i32 7)
  %798 = xor i32 %796, %797
  %799 = xor i32 %756, %719
  %800 = and i32 %793, %799
  %801 = xor i32 %800, %719
  %802 = tail call i32 @llvm.fshl.i32(i32 %740, i32 %740, i32 15)
  %803 = tail call i32 @llvm.fshl.i32(i32 %740, i32 %740, i32 13)
  %804 = xor i32 %802, %803
  %805 = lshr i32 %740, 10
  %806 = xor i32 %804, %805
  %807 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 25)
  %808 = tail call i32 @llvm.fshl.i32(i32 %315, i32 %315, i32 14)
  %809 = xor i32 %807, %808
  %810 = lshr i32 %315, 3
  %811 = xor i32 %809, %810
  %812 = add i32 %811, %289
  %813 = add i32 %812, %555
  %814 = add i32 %813, %806
  store i32 %814, ptr %262, align 4, !tbaa !57
  %815 = add i32 %814, -1473132947
  %816 = add i32 %815, %682
  %817 = add i32 %816, %801
  %818 = add i32 %817, %798
  %819 = tail call i32 @llvm.fshl.i32(i32 %792, i32 %792, i32 30)
  %820 = tail call i32 @llvm.fshl.i32(i32 %792, i32 %792, i32 19)
  %821 = xor i32 %819, %820
  %822 = tail call i32 @llvm.fshl.i32(i32 %792, i32 %792, i32 10)
  %823 = xor i32 %821, %822
  %824 = and i32 %792, %755
  %825 = or i32 %792, %755
  %826 = and i32 %825, %718
  %827 = or i32 %826, %824
  %828 = add i32 %827, %823
  %829 = add i32 %828, %818
  %830 = add i32 %818, %681
  %831 = tail call i32 @llvm.fshl.i32(i32 %830, i32 %830, i32 26)
  %832 = tail call i32 @llvm.fshl.i32(i32 %830, i32 %830, i32 21)
  %833 = xor i32 %831, %832
  %834 = tail call i32 @llvm.fshl.i32(i32 %830, i32 %830, i32 7)
  %835 = xor i32 %833, %834
  %836 = xor i32 %793, %756
  %837 = and i32 %830, %836
  %838 = xor i32 %837, %756
  %839 = tail call i32 @llvm.fshl.i32(i32 %777, i32 %777, i32 15)
  %840 = tail call i32 @llvm.fshl.i32(i32 %777, i32 %777, i32 13)
  %841 = xor i32 %839, %840
  %842 = lshr i32 %777, 10
  %843 = xor i32 %841, %842
  %844 = tail call i32 @llvm.fshl.i32(i32 %341, i32 %341, i32 25)
  %845 = tail call i32 @llvm.fshl.i32(i32 %341, i32 %341, i32 14)
  %846 = xor i32 %844, %845
  %847 = lshr i32 %341, 3
  %848 = xor i32 %846, %847
  %849 = add i32 %848, %315
  %850 = add i32 %849, %592
  %851 = add i32 %850, %843
  store i32 %851, ptr %288, align 8, !tbaa !57
  %852 = add i32 %851, -1341970488
  %853 = add i32 %852, %719
  %854 = add i32 %853, %838
  %855 = add i32 %854, %835
  %856 = tail call i32 @llvm.fshl.i32(i32 %829, i32 %829, i32 30)
  %857 = tail call i32 @llvm.fshl.i32(i32 %829, i32 %829, i32 19)
  %858 = xor i32 %856, %857
  %859 = tail call i32 @llvm.fshl.i32(i32 %829, i32 %829, i32 10)
  %860 = xor i32 %858, %859
  %861 = and i32 %829, %792
  %862 = or i32 %829, %792
  %863 = and i32 %862, %755
  %864 = or i32 %863, %861
  %865 = add i32 %864, %860
  %866 = add i32 %865, %855
  %867 = add i32 %855, %718
  %868 = tail call i32 @llvm.fshl.i32(i32 %867, i32 %867, i32 26)
  %869 = tail call i32 @llvm.fshl.i32(i32 %867, i32 %867, i32 21)
  %870 = xor i32 %868, %869
  %871 = tail call i32 @llvm.fshl.i32(i32 %867, i32 %867, i32 7)
  %872 = xor i32 %870, %871
  %873 = xor i32 %830, %793
  %874 = and i32 %867, %873
  %875 = xor i32 %874, %793
  %876 = tail call i32 @llvm.fshl.i32(i32 %814, i32 %814, i32 15)
  %877 = tail call i32 @llvm.fshl.i32(i32 %814, i32 %814, i32 13)
  %878 = xor i32 %876, %877
  %879 = lshr i32 %814, 10
  %880 = xor i32 %878, %879
  %881 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 25)
  %882 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 14)
  %883 = xor i32 %881, %882
  %884 = lshr i32 %367, 3
  %885 = xor i32 %883, %884
  %886 = add i32 %885, %341
  %887 = add i32 %886, %629
  %888 = add i32 %887, %880
  store i32 %888, ptr %314, align 4, !tbaa !57
  %889 = add i32 %888, -1084653625
  %890 = add i32 %889, %756
  %891 = add i32 %890, %875
  %892 = add i32 %891, %872
  %893 = tail call i32 @llvm.fshl.i32(i32 %866, i32 %866, i32 30)
  %894 = tail call i32 @llvm.fshl.i32(i32 %866, i32 %866, i32 19)
  %895 = xor i32 %893, %894
  %896 = tail call i32 @llvm.fshl.i32(i32 %866, i32 %866, i32 10)
  %897 = xor i32 %895, %896
  %898 = and i32 %866, %829
  %899 = or i32 %866, %829
  %900 = and i32 %899, %792
  %901 = or i32 %900, %898
  %902 = add i32 %901, %897
  %903 = add i32 %902, %892
  %904 = add i32 %892, %755
  %905 = tail call i32 @llvm.fshl.i32(i32 %904, i32 %904, i32 26)
  %906 = tail call i32 @llvm.fshl.i32(i32 %904, i32 %904, i32 21)
  %907 = xor i32 %905, %906
  %908 = tail call i32 @llvm.fshl.i32(i32 %904, i32 %904, i32 7)
  %909 = xor i32 %907, %908
  %910 = xor i32 %867, %830
  %911 = and i32 %904, %910
  %912 = xor i32 %911, %830
  %913 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 15)
  %914 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 13)
  %915 = xor i32 %913, %914
  %916 = lshr i32 %851, 10
  %917 = xor i32 %915, %916
  %918 = tail call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 25)
  %919 = tail call i32 @llvm.fshl.i32(i32 %393, i32 %393, i32 14)
  %920 = xor i32 %918, %919
  %921 = lshr i32 %393, 3
  %922 = xor i32 %920, %921
  %923 = add i32 %922, %367
  %924 = add i32 %923, %666
  %925 = add i32 %924, %917
  store i32 %925, ptr %340, align 16, !tbaa !57
  %926 = add i32 %925, -958395405
  %927 = add i32 %926, %793
  %928 = add i32 %927, %912
  %929 = add i32 %928, %909
  %930 = tail call i32 @llvm.fshl.i32(i32 %903, i32 %903, i32 30)
  %931 = tail call i32 @llvm.fshl.i32(i32 %903, i32 %903, i32 19)
  %932 = xor i32 %930, %931
  %933 = tail call i32 @llvm.fshl.i32(i32 %903, i32 %903, i32 10)
  %934 = xor i32 %932, %933
  %935 = and i32 %903, %866
  %936 = or i32 %903, %866
  %937 = and i32 %936, %829
  %938 = or i32 %937, %935
  %939 = add i32 %938, %934
  %940 = add i32 %939, %929
  %941 = add i32 %929, %792
  %942 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 26)
  %943 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 21)
  %944 = xor i32 %942, %943
  %945 = tail call i32 @llvm.fshl.i32(i32 %941, i32 %941, i32 7)
  %946 = xor i32 %944, %945
  %947 = xor i32 %904, %867
  %948 = and i32 %941, %947
  %949 = xor i32 %948, %867
  %950 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 15)
  %951 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 13)
  %952 = xor i32 %950, %951
  %953 = lshr i32 %888, 10
  %954 = xor i32 %952, %953
  %955 = tail call i32 @llvm.fshl.i32(i32 %419, i32 %419, i32 25)
  %956 = tail call i32 @llvm.fshl.i32(i32 %419, i32 %419, i32 14)
  %957 = xor i32 %955, %956
  %958 = lshr i32 %419, 3
  %959 = xor i32 %957, %958
  %960 = add i32 %959, %393
  %961 = add i32 %960, %703
  %962 = add i32 %961, %954
  store i32 %962, ptr %366, align 4, !tbaa !57
  %963 = add i32 %962, -710438585
  %964 = add i32 %963, %830
  %965 = add i32 %964, %949
  %966 = add i32 %965, %946
  %967 = tail call i32 @llvm.fshl.i32(i32 %940, i32 %940, i32 30)
  %968 = tail call i32 @llvm.fshl.i32(i32 %940, i32 %940, i32 19)
  %969 = xor i32 %967, %968
  %970 = tail call i32 @llvm.fshl.i32(i32 %940, i32 %940, i32 10)
  %971 = xor i32 %969, %970
  %972 = and i32 %940, %903
  %973 = or i32 %940, %903
  %974 = and i32 %973, %866
  %975 = or i32 %974, %972
  %976 = add i32 %975, %971
  %977 = add i32 %976, %966
  %978 = add i32 %966, %829
  %979 = tail call i32 @llvm.fshl.i32(i32 %978, i32 %978, i32 26)
  %980 = tail call i32 @llvm.fshl.i32(i32 %978, i32 %978, i32 21)
  %981 = xor i32 %979, %980
  %982 = tail call i32 @llvm.fshl.i32(i32 %978, i32 %978, i32 7)
  %983 = xor i32 %981, %982
  %984 = xor i32 %941, %904
  %985 = and i32 %978, %984
  %986 = xor i32 %985, %904
  %987 = tail call i32 @llvm.fshl.i32(i32 %925, i32 %925, i32 15)
  %988 = tail call i32 @llvm.fshl.i32(i32 %925, i32 %925, i32 13)
  %989 = xor i32 %987, %988
  %990 = lshr i32 %925, 10
  %991 = xor i32 %989, %990
  %992 = tail call i32 @llvm.fshl.i32(i32 %444, i32 %444, i32 25)
  %993 = tail call i32 @llvm.fshl.i32(i32 %444, i32 %444, i32 14)
  %994 = xor i32 %992, %993
  %995 = lshr i32 %444, 3
  %996 = xor i32 %994, %995
  %997 = add i32 %996, %419
  %998 = add i32 %997, %740
  %999 = add i32 %998, %991
  store i32 %999, ptr %392, align 8, !tbaa !57
  %1000 = add i32 %999, 113926993
  %1001 = add i32 %1000, %867
  %1002 = add i32 %1001, %986
  %1003 = add i32 %1002, %983
  %1004 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 30)
  %1005 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 19)
  %1006 = xor i32 %1004, %1005
  %1007 = tail call i32 @llvm.fshl.i32(i32 %977, i32 %977, i32 10)
  %1008 = xor i32 %1006, %1007
  %1009 = and i32 %977, %940
  %1010 = or i32 %977, %940
  %1011 = and i32 %1010, %903
  %1012 = or i32 %1011, %1009
  %1013 = add i32 %1012, %1008
  %1014 = add i32 %1013, %1003
  %1015 = add i32 %1003, %866
  %1016 = tail call i32 @llvm.fshl.i32(i32 %1015, i32 %1015, i32 26)
  %1017 = tail call i32 @llvm.fshl.i32(i32 %1015, i32 %1015, i32 21)
  %1018 = xor i32 %1016, %1017
  %1019 = tail call i32 @llvm.fshl.i32(i32 %1015, i32 %1015, i32 7)
  %1020 = xor i32 %1018, %1019
  %1021 = xor i32 %978, %941
  %1022 = and i32 %1015, %1021
  %1023 = xor i32 %1022, %941
  %1024 = tail call i32 @llvm.fshl.i32(i32 %962, i32 %962, i32 15)
  %1025 = tail call i32 @llvm.fshl.i32(i32 %962, i32 %962, i32 13)
  %1026 = xor i32 %1024, %1025
  %1027 = lshr i32 %962, 10
  %1028 = xor i32 %1026, %1027
  %1029 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 25)
  %1030 = tail call i32 @llvm.fshl.i32(i32 %481, i32 %481, i32 14)
  %1031 = xor i32 %1029, %1030
  %1032 = lshr i32 %481, 3
  %1033 = xor i32 %1031, %1032
  %1034 = add i32 %1033, %444
  %1035 = add i32 %1034, %777
  %1036 = add i32 %1035, %1028
  store i32 %1036, ptr %418, align 4, !tbaa !57
  %1037 = add i32 %1036, 338241895
  %1038 = add i32 %1037, %904
  %1039 = add i32 %1038, %1023
  %1040 = add i32 %1039, %1020
  %1041 = tail call i32 @llvm.fshl.i32(i32 %1014, i32 %1014, i32 30)
  %1042 = tail call i32 @llvm.fshl.i32(i32 %1014, i32 %1014, i32 19)
  %1043 = xor i32 %1041, %1042
  %1044 = tail call i32 @llvm.fshl.i32(i32 %1014, i32 %1014, i32 10)
  %1045 = xor i32 %1043, %1044
  %1046 = and i32 %1014, %977
  %1047 = or i32 %1014, %977
  %1048 = and i32 %1047, %940
  %1049 = or i32 %1048, %1046
  %1050 = add i32 %1049, %1045
  %1051 = add i32 %1050, %1040
  %1052 = add i32 %1040, %903
  %1053 = tail call i32 @llvm.fshl.i32(i32 %1052, i32 %1052, i32 26)
  %1054 = tail call i32 @llvm.fshl.i32(i32 %1052, i32 %1052, i32 21)
  %1055 = xor i32 %1053, %1054
  %1056 = tail call i32 @llvm.fshl.i32(i32 %1052, i32 %1052, i32 7)
  %1057 = xor i32 %1055, %1056
  %1058 = xor i32 %1015, %978
  %1059 = and i32 %1052, %1058
  %1060 = xor i32 %1059, %978
  %1061 = tail call i32 @llvm.fshl.i32(i32 %999, i32 %999, i32 15)
  %1062 = tail call i32 @llvm.fshl.i32(i32 %999, i32 %999, i32 13)
  %1063 = xor i32 %1061, %1062
  %1064 = lshr i32 %999, 10
  %1065 = xor i32 %1063, %1064
  %1066 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 25)
  %1067 = tail call i32 @llvm.fshl.i32(i32 %518, i32 %518, i32 14)
  %1068 = xor i32 %1066, %1067
  %1069 = lshr i32 %518, 3
  %1070 = xor i32 %1068, %1069
  %1071 = add i32 %1070, %481
  %1072 = add i32 %1071, %814
  %1073 = add i32 %1072, %1065
  store i32 %1073, ptr %3, align 16, !tbaa !57
  %1074 = add i32 %1073, 666307205
  %1075 = add i32 %1074, %941
  %1076 = add i32 %1075, %1060
  %1077 = add i32 %1076, %1057
  %1078 = tail call i32 @llvm.fshl.i32(i32 %1051, i32 %1051, i32 30)
  %1079 = tail call i32 @llvm.fshl.i32(i32 %1051, i32 %1051, i32 19)
  %1080 = xor i32 %1078, %1079
  %1081 = tail call i32 @llvm.fshl.i32(i32 %1051, i32 %1051, i32 10)
  %1082 = xor i32 %1080, %1081
  %1083 = and i32 %1051, %1014
  %1084 = or i32 %1051, %1014
  %1085 = and i32 %1084, %977
  %1086 = or i32 %1085, %1083
  %1087 = add i32 %1086, %1082
  %1088 = add i32 %1087, %1077
  %1089 = add i32 %1077, %940
  %1090 = tail call i32 @llvm.fshl.i32(i32 %1089, i32 %1089, i32 26)
  %1091 = tail call i32 @llvm.fshl.i32(i32 %1089, i32 %1089, i32 21)
  %1092 = xor i32 %1090, %1091
  %1093 = tail call i32 @llvm.fshl.i32(i32 %1089, i32 %1089, i32 7)
  %1094 = xor i32 %1092, %1093
  %1095 = xor i32 %1052, %1015
  %1096 = and i32 %1089, %1095
  %1097 = xor i32 %1096, %1015
  %1098 = tail call i32 @llvm.fshl.i32(i32 %1036, i32 %1036, i32 15)
  %1099 = tail call i32 @llvm.fshl.i32(i32 %1036, i32 %1036, i32 13)
  %1100 = xor i32 %1098, %1099
  %1101 = lshr i32 %1036, 10
  %1102 = xor i32 %1100, %1101
  %1103 = tail call i32 @llvm.fshl.i32(i32 %555, i32 %555, i32 25)
  %1104 = tail call i32 @llvm.fshl.i32(i32 %555, i32 %555, i32 14)
  %1105 = xor i32 %1103, %1104
  %1106 = lshr i32 %555, 3
  %1107 = xor i32 %1105, %1106
  %1108 = add i32 %1107, %518
  %1109 = add i32 %1108, %851
  %1110 = add i32 %1109, %1102
  store i32 %1110, ptr %54, align 4, !tbaa !57
  %1111 = add i32 %1110, 773529912
  %1112 = add i32 %1111, %978
  %1113 = add i32 %1112, %1097
  %1114 = add i32 %1113, %1094
  %1115 = tail call i32 @llvm.fshl.i32(i32 %1088, i32 %1088, i32 30)
  %1116 = tail call i32 @llvm.fshl.i32(i32 %1088, i32 %1088, i32 19)
  %1117 = xor i32 %1115, %1116
  %1118 = tail call i32 @llvm.fshl.i32(i32 %1088, i32 %1088, i32 10)
  %1119 = xor i32 %1117, %1118
  %1120 = and i32 %1088, %1051
  %1121 = or i32 %1088, %1051
  %1122 = and i32 %1121, %1014
  %1123 = or i32 %1122, %1120
  %1124 = add i32 %1123, %1119
  %1125 = add i32 %1124, %1114
  %1126 = add i32 %1114, %977
  %1127 = tail call i32 @llvm.fshl.i32(i32 %1126, i32 %1126, i32 26)
  %1128 = tail call i32 @llvm.fshl.i32(i32 %1126, i32 %1126, i32 21)
  %1129 = xor i32 %1127, %1128
  %1130 = tail call i32 @llvm.fshl.i32(i32 %1126, i32 %1126, i32 7)
  %1131 = xor i32 %1129, %1130
  %1132 = xor i32 %1089, %1052
  %1133 = and i32 %1126, %1132
  %1134 = xor i32 %1133, %1052
  %1135 = tail call i32 @llvm.fshl.i32(i32 %1073, i32 %1073, i32 15)
  %1136 = tail call i32 @llvm.fshl.i32(i32 %1073, i32 %1073, i32 13)
  %1137 = xor i32 %1135, %1136
  %1138 = lshr i32 %1073, 10
  %1139 = xor i32 %1137, %1138
  %1140 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 25)
  %1141 = tail call i32 @llvm.fshl.i32(i32 %592, i32 %592, i32 14)
  %1142 = xor i32 %1140, %1141
  %1143 = lshr i32 %592, 3
  %1144 = xor i32 %1142, %1143
  %1145 = add i32 %1144, %555
  %1146 = add i32 %1145, %888
  %1147 = add i32 %1146, %1139
  store i32 %1147, ptr %80, align 8, !tbaa !57
  %1148 = add i32 %1147, 1294757372
  %1149 = add i32 %1148, %1015
  %1150 = add i32 %1149, %1134
  %1151 = add i32 %1150, %1131
  %1152 = tail call i32 @llvm.fshl.i32(i32 %1125, i32 %1125, i32 30)
  %1153 = tail call i32 @llvm.fshl.i32(i32 %1125, i32 %1125, i32 19)
  %1154 = xor i32 %1152, %1153
  %1155 = tail call i32 @llvm.fshl.i32(i32 %1125, i32 %1125, i32 10)
  %1156 = xor i32 %1154, %1155
  %1157 = and i32 %1125, %1088
  %1158 = or i32 %1125, %1088
  %1159 = and i32 %1158, %1051
  %1160 = or i32 %1159, %1157
  %1161 = add i32 %1160, %1156
  %1162 = add i32 %1161, %1151
  %1163 = add i32 %1151, %1014
  %1164 = tail call i32 @llvm.fshl.i32(i32 %1163, i32 %1163, i32 26)
  %1165 = tail call i32 @llvm.fshl.i32(i32 %1163, i32 %1163, i32 21)
  %1166 = xor i32 %1164, %1165
  %1167 = tail call i32 @llvm.fshl.i32(i32 %1163, i32 %1163, i32 7)
  %1168 = xor i32 %1166, %1167
  %1169 = xor i32 %1126, %1089
  %1170 = and i32 %1163, %1169
  %1171 = xor i32 %1170, %1089
  %1172 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 15)
  %1173 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 13)
  %1174 = xor i32 %1172, %1173
  %1175 = lshr i32 %1110, 10
  %1176 = xor i32 %1174, %1175
  %1177 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 25)
  %1178 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 14)
  %1179 = xor i32 %1177, %1178
  %1180 = lshr i32 %629, 3
  %1181 = xor i32 %1179, %1180
  %1182 = add i32 %1181, %592
  %1183 = add i32 %1182, %925
  %1184 = add i32 %1183, %1176
  store i32 %1184, ptr %106, align 4, !tbaa !57
  %1185 = add i32 %1184, 1396182291
  %1186 = add i32 %1185, %1052
  %1187 = add i32 %1186, %1171
  %1188 = add i32 %1187, %1168
  %1189 = tail call i32 @llvm.fshl.i32(i32 %1162, i32 %1162, i32 30)
  %1190 = tail call i32 @llvm.fshl.i32(i32 %1162, i32 %1162, i32 19)
  %1191 = xor i32 %1189, %1190
  %1192 = tail call i32 @llvm.fshl.i32(i32 %1162, i32 %1162, i32 10)
  %1193 = xor i32 %1191, %1192
  %1194 = and i32 %1162, %1125
  %1195 = or i32 %1162, %1125
  %1196 = and i32 %1195, %1088
  %1197 = or i32 %1196, %1194
  %1198 = add i32 %1197, %1193
  %1199 = add i32 %1198, %1188
  %1200 = add i32 %1188, %1051
  %1201 = tail call i32 @llvm.fshl.i32(i32 %1200, i32 %1200, i32 26)
  %1202 = tail call i32 @llvm.fshl.i32(i32 %1200, i32 %1200, i32 21)
  %1203 = xor i32 %1201, %1202
  %1204 = tail call i32 @llvm.fshl.i32(i32 %1200, i32 %1200, i32 7)
  %1205 = xor i32 %1203, %1204
  %1206 = xor i32 %1163, %1126
  %1207 = and i32 %1200, %1206
  %1208 = xor i32 %1207, %1126
  %1209 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 15)
  %1210 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 13)
  %1211 = xor i32 %1209, %1210
  %1212 = lshr i32 %1147, 10
  %1213 = xor i32 %1211, %1212
  %1214 = tail call i32 @llvm.fshl.i32(i32 %666, i32 %666, i32 25)
  %1215 = tail call i32 @llvm.fshl.i32(i32 %666, i32 %666, i32 14)
  %1216 = xor i32 %1214, %1215
  %1217 = lshr i32 %666, 3
  %1218 = xor i32 %1216, %1217
  %1219 = add i32 %1218, %629
  %1220 = add i32 %1219, %962
  %1221 = add i32 %1220, %1213
  store i32 %1221, ptr %132, align 16, !tbaa !57
  %1222 = add i32 %1221, 1695183700
  %1223 = add i32 %1222, %1089
  %1224 = add i32 %1223, %1208
  %1225 = add i32 %1224, %1205
  %1226 = tail call i32 @llvm.fshl.i32(i32 %1199, i32 %1199, i32 30)
  %1227 = tail call i32 @llvm.fshl.i32(i32 %1199, i32 %1199, i32 19)
  %1228 = xor i32 %1226, %1227
  %1229 = tail call i32 @llvm.fshl.i32(i32 %1199, i32 %1199, i32 10)
  %1230 = xor i32 %1228, %1229
  %1231 = and i32 %1199, %1162
  %1232 = or i32 %1199, %1162
  %1233 = and i32 %1232, %1125
  %1234 = or i32 %1233, %1231
  %1235 = add i32 %1234, %1230
  %1236 = add i32 %1235, %1225
  %1237 = add i32 %1225, %1088
  %1238 = tail call i32 @llvm.fshl.i32(i32 %1237, i32 %1237, i32 26)
  %1239 = tail call i32 @llvm.fshl.i32(i32 %1237, i32 %1237, i32 21)
  %1240 = xor i32 %1238, %1239
  %1241 = tail call i32 @llvm.fshl.i32(i32 %1237, i32 %1237, i32 7)
  %1242 = xor i32 %1240, %1241
  %1243 = xor i32 %1200, %1163
  %1244 = and i32 %1237, %1243
  %1245 = xor i32 %1244, %1163
  %1246 = tail call i32 @llvm.fshl.i32(i32 %1184, i32 %1184, i32 15)
  %1247 = tail call i32 @llvm.fshl.i32(i32 %1184, i32 %1184, i32 13)
  %1248 = xor i32 %1246, %1247
  %1249 = lshr i32 %1184, 10
  %1250 = xor i32 %1248, %1249
  %1251 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 25)
  %1252 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 14)
  %1253 = xor i32 %1251, %1252
  %1254 = lshr i32 %703, 3
  %1255 = xor i32 %1253, %1254
  %1256 = add i32 %1255, %666
  %1257 = add i32 %1256, %999
  %1258 = add i32 %1257, %1250
  store i32 %1258, ptr %158, align 4, !tbaa !57
  %1259 = add i32 %1258, 1986661051
  %1260 = add i32 %1259, %1126
  %1261 = add i32 %1260, %1245
  %1262 = add i32 %1261, %1242
  %1263 = tail call i32 @llvm.fshl.i32(i32 %1236, i32 %1236, i32 30)
  %1264 = tail call i32 @llvm.fshl.i32(i32 %1236, i32 %1236, i32 19)
  %1265 = xor i32 %1263, %1264
  %1266 = tail call i32 @llvm.fshl.i32(i32 %1236, i32 %1236, i32 10)
  %1267 = xor i32 %1265, %1266
  %1268 = and i32 %1236, %1199
  %1269 = or i32 %1236, %1199
  %1270 = and i32 %1269, %1162
  %1271 = or i32 %1270, %1268
  %1272 = add i32 %1271, %1267
  %1273 = add i32 %1272, %1262
  %1274 = add i32 %1262, %1125
  %1275 = tail call i32 @llvm.fshl.i32(i32 %1274, i32 %1274, i32 26)
  %1276 = tail call i32 @llvm.fshl.i32(i32 %1274, i32 %1274, i32 21)
  %1277 = xor i32 %1275, %1276
  %1278 = tail call i32 @llvm.fshl.i32(i32 %1274, i32 %1274, i32 7)
  %1279 = xor i32 %1277, %1278
  %1280 = xor i32 %1237, %1200
  %1281 = and i32 %1274, %1280
  %1282 = xor i32 %1281, %1200
  %1283 = tail call i32 @llvm.fshl.i32(i32 %1221, i32 %1221, i32 15)
  %1284 = tail call i32 @llvm.fshl.i32(i32 %1221, i32 %1221, i32 13)
  %1285 = xor i32 %1283, %1284
  %1286 = lshr i32 %1221, 10
  %1287 = xor i32 %1285, %1286
  %1288 = tail call i32 @llvm.fshl.i32(i32 %740, i32 %740, i32 25)
  %1289 = tail call i32 @llvm.fshl.i32(i32 %740, i32 %740, i32 14)
  %1290 = xor i32 %1288, %1289
  %1291 = lshr i32 %740, 3
  %1292 = xor i32 %1290, %1291
  %1293 = add i32 %1292, %703
  %1294 = add i32 %1293, %1036
  %1295 = add i32 %1294, %1287
  store i32 %1295, ptr %184, align 8, !tbaa !57
  %1296 = add i32 %1295, -2117940946
  %1297 = add i32 %1296, %1163
  %1298 = add i32 %1297, %1282
  %1299 = add i32 %1298, %1279
  %1300 = tail call i32 @llvm.fshl.i32(i32 %1273, i32 %1273, i32 30)
  %1301 = tail call i32 @llvm.fshl.i32(i32 %1273, i32 %1273, i32 19)
  %1302 = xor i32 %1300, %1301
  %1303 = tail call i32 @llvm.fshl.i32(i32 %1273, i32 %1273, i32 10)
  %1304 = xor i32 %1302, %1303
  %1305 = and i32 %1273, %1236
  %1306 = or i32 %1273, %1236
  %1307 = and i32 %1306, %1199
  %1308 = or i32 %1307, %1305
  %1309 = add i32 %1308, %1304
  %1310 = add i32 %1309, %1299
  %1311 = add i32 %1299, %1162
  %1312 = tail call i32 @llvm.fshl.i32(i32 %1311, i32 %1311, i32 26)
  %1313 = tail call i32 @llvm.fshl.i32(i32 %1311, i32 %1311, i32 21)
  %1314 = xor i32 %1312, %1313
  %1315 = tail call i32 @llvm.fshl.i32(i32 %1311, i32 %1311, i32 7)
  %1316 = xor i32 %1314, %1315
  %1317 = xor i32 %1274, %1237
  %1318 = and i32 %1311, %1317
  %1319 = xor i32 %1318, %1237
  %1320 = tail call i32 @llvm.fshl.i32(i32 %1258, i32 %1258, i32 15)
  %1321 = tail call i32 @llvm.fshl.i32(i32 %1258, i32 %1258, i32 13)
  %1322 = xor i32 %1320, %1321
  %1323 = lshr i32 %1258, 10
  %1324 = xor i32 %1322, %1323
  %1325 = tail call i32 @llvm.fshl.i32(i32 %777, i32 %777, i32 25)
  %1326 = tail call i32 @llvm.fshl.i32(i32 %777, i32 %777, i32 14)
  %1327 = xor i32 %1325, %1326
  %1328 = lshr i32 %777, 3
  %1329 = xor i32 %1327, %1328
  %1330 = add i32 %1329, %740
  %1331 = add i32 %1330, %1073
  %1332 = add i32 %1331, %1324
  store i32 %1332, ptr %210, align 4, !tbaa !57
  %1333 = add i32 %1332, -1838011259
  %1334 = add i32 %1333, %1200
  %1335 = add i32 %1334, %1319
  %1336 = add i32 %1335, %1316
  %1337 = tail call i32 @llvm.fshl.i32(i32 %1310, i32 %1310, i32 30)
  %1338 = tail call i32 @llvm.fshl.i32(i32 %1310, i32 %1310, i32 19)
  %1339 = xor i32 %1337, %1338
  %1340 = tail call i32 @llvm.fshl.i32(i32 %1310, i32 %1310, i32 10)
  %1341 = xor i32 %1339, %1340
  %1342 = and i32 %1310, %1273
  %1343 = or i32 %1310, %1273
  %1344 = and i32 %1343, %1236
  %1345 = or i32 %1344, %1342
  %1346 = add i32 %1345, %1341
  %1347 = add i32 %1346, %1336
  %1348 = add i32 %1336, %1199
  %1349 = tail call i32 @llvm.fshl.i32(i32 %1348, i32 %1348, i32 26)
  %1350 = tail call i32 @llvm.fshl.i32(i32 %1348, i32 %1348, i32 21)
  %1351 = xor i32 %1349, %1350
  %1352 = tail call i32 @llvm.fshl.i32(i32 %1348, i32 %1348, i32 7)
  %1353 = xor i32 %1351, %1352
  %1354 = xor i32 %1311, %1274
  %1355 = and i32 %1348, %1354
  %1356 = xor i32 %1355, %1274
  %1357 = tail call i32 @llvm.fshl.i32(i32 %1295, i32 %1295, i32 15)
  %1358 = tail call i32 @llvm.fshl.i32(i32 %1295, i32 %1295, i32 13)
  %1359 = xor i32 %1357, %1358
  %1360 = lshr i32 %1295, 10
  %1361 = xor i32 %1359, %1360
  %1362 = tail call i32 @llvm.fshl.i32(i32 %814, i32 %814, i32 25)
  %1363 = tail call i32 @llvm.fshl.i32(i32 %814, i32 %814, i32 14)
  %1364 = xor i32 %1362, %1363
  %1365 = lshr i32 %814, 3
  %1366 = xor i32 %1364, %1365
  %1367 = add i32 %1366, %777
  %1368 = add i32 %1367, %1110
  %1369 = add i32 %1368, %1361
  store i32 %1369, ptr %236, align 16, !tbaa !57
  %1370 = add i32 %1369, -1564481375
  %1371 = add i32 %1370, %1237
  %1372 = add i32 %1371, %1356
  %1373 = add i32 %1372, %1353
  %1374 = tail call i32 @llvm.fshl.i32(i32 %1347, i32 %1347, i32 30)
  %1375 = tail call i32 @llvm.fshl.i32(i32 %1347, i32 %1347, i32 19)
  %1376 = xor i32 %1374, %1375
  %1377 = tail call i32 @llvm.fshl.i32(i32 %1347, i32 %1347, i32 10)
  %1378 = xor i32 %1376, %1377
  %1379 = and i32 %1347, %1310
  %1380 = or i32 %1347, %1310
  %1381 = and i32 %1380, %1273
  %1382 = or i32 %1381, %1379
  %1383 = add i32 %1382, %1378
  %1384 = add i32 %1383, %1373
  %1385 = add i32 %1373, %1236
  %1386 = tail call i32 @llvm.fshl.i32(i32 %1385, i32 %1385, i32 26)
  %1387 = tail call i32 @llvm.fshl.i32(i32 %1385, i32 %1385, i32 21)
  %1388 = xor i32 %1386, %1387
  %1389 = tail call i32 @llvm.fshl.i32(i32 %1385, i32 %1385, i32 7)
  %1390 = xor i32 %1388, %1389
  %1391 = xor i32 %1348, %1311
  %1392 = and i32 %1385, %1391
  %1393 = xor i32 %1392, %1311
  %1394 = tail call i32 @llvm.fshl.i32(i32 %1332, i32 %1332, i32 15)
  %1395 = tail call i32 @llvm.fshl.i32(i32 %1332, i32 %1332, i32 13)
  %1396 = xor i32 %1394, %1395
  %1397 = lshr i32 %1332, 10
  %1398 = xor i32 %1396, %1397
  %1399 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 25)
  %1400 = tail call i32 @llvm.fshl.i32(i32 %851, i32 %851, i32 14)
  %1401 = xor i32 %1399, %1400
  %1402 = lshr i32 %851, 3
  %1403 = xor i32 %1401, %1402
  %1404 = add i32 %1403, %814
  %1405 = add i32 %1404, %1147
  %1406 = add i32 %1405, %1398
  store i32 %1406, ptr %262, align 4, !tbaa !57
  %1407 = add i32 %1406, -1474664885
  %1408 = add i32 %1407, %1274
  %1409 = add i32 %1408, %1393
  %1410 = add i32 %1409, %1390
  %1411 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 30)
  %1412 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 19)
  %1413 = xor i32 %1411, %1412
  %1414 = tail call i32 @llvm.fshl.i32(i32 %1384, i32 %1384, i32 10)
  %1415 = xor i32 %1413, %1414
  %1416 = and i32 %1384, %1347
  %1417 = or i32 %1384, %1347
  %1418 = and i32 %1417, %1310
  %1419 = or i32 %1418, %1416
  %1420 = add i32 %1419, %1415
  %1421 = add i32 %1420, %1410
  %1422 = add i32 %1410, %1273
  %1423 = tail call i32 @llvm.fshl.i32(i32 %1422, i32 %1422, i32 26)
  %1424 = tail call i32 @llvm.fshl.i32(i32 %1422, i32 %1422, i32 21)
  %1425 = xor i32 %1423, %1424
  %1426 = tail call i32 @llvm.fshl.i32(i32 %1422, i32 %1422, i32 7)
  %1427 = xor i32 %1425, %1426
  %1428 = xor i32 %1385, %1348
  %1429 = and i32 %1422, %1428
  %1430 = xor i32 %1429, %1348
  %1431 = tail call i32 @llvm.fshl.i32(i32 %1369, i32 %1369, i32 15)
  %1432 = tail call i32 @llvm.fshl.i32(i32 %1369, i32 %1369, i32 13)
  %1433 = xor i32 %1431, %1432
  %1434 = lshr i32 %1369, 10
  %1435 = xor i32 %1433, %1434
  %1436 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 25)
  %1437 = tail call i32 @llvm.fshl.i32(i32 %888, i32 %888, i32 14)
  %1438 = xor i32 %1436, %1437
  %1439 = lshr i32 %888, 3
  %1440 = xor i32 %1438, %1439
  %1441 = add i32 %1440, %851
  %1442 = add i32 %1441, %1184
  %1443 = add i32 %1442, %1435
  store i32 %1443, ptr %288, align 8, !tbaa !57
  %1444 = add i32 %1443, -1035236496
  %1445 = add i32 %1444, %1311
  %1446 = add i32 %1445, %1430
  %1447 = add i32 %1446, %1427
  %1448 = tail call i32 @llvm.fshl.i32(i32 %1421, i32 %1421, i32 30)
  %1449 = tail call i32 @llvm.fshl.i32(i32 %1421, i32 %1421, i32 19)
  %1450 = xor i32 %1448, %1449
  %1451 = tail call i32 @llvm.fshl.i32(i32 %1421, i32 %1421, i32 10)
  %1452 = xor i32 %1450, %1451
  %1453 = and i32 %1421, %1384
  %1454 = or i32 %1421, %1384
  %1455 = and i32 %1454, %1347
  %1456 = or i32 %1455, %1453
  %1457 = add i32 %1456, %1452
  %1458 = add i32 %1457, %1447
  %1459 = add i32 %1447, %1310
  %1460 = tail call i32 @llvm.fshl.i32(i32 %1459, i32 %1459, i32 26)
  %1461 = tail call i32 @llvm.fshl.i32(i32 %1459, i32 %1459, i32 21)
  %1462 = xor i32 %1460, %1461
  %1463 = tail call i32 @llvm.fshl.i32(i32 %1459, i32 %1459, i32 7)
  %1464 = xor i32 %1462, %1463
  %1465 = xor i32 %1422, %1385
  %1466 = and i32 %1459, %1465
  %1467 = xor i32 %1466, %1385
  %1468 = tail call i32 @llvm.fshl.i32(i32 %1406, i32 %1406, i32 15)
  %1469 = tail call i32 @llvm.fshl.i32(i32 %1406, i32 %1406, i32 13)
  %1470 = xor i32 %1468, %1469
  %1471 = lshr i32 %1406, 10
  %1472 = xor i32 %1470, %1471
  %1473 = tail call i32 @llvm.fshl.i32(i32 %925, i32 %925, i32 25)
  %1474 = tail call i32 @llvm.fshl.i32(i32 %925, i32 %925, i32 14)
  %1475 = xor i32 %1473, %1474
  %1476 = lshr i32 %925, 3
  %1477 = xor i32 %1475, %1476
  %1478 = add i32 %1477, %888
  %1479 = add i32 %1478, %1221
  %1480 = add i32 %1479, %1472
  store i32 %1480, ptr %314, align 4, !tbaa !57
  %1481 = add i32 %1480, -949202525
  %1482 = add i32 %1481, %1348
  %1483 = add i32 %1482, %1467
  %1484 = add i32 %1483, %1464
  %1485 = tail call i32 @llvm.fshl.i32(i32 %1458, i32 %1458, i32 30)
  %1486 = tail call i32 @llvm.fshl.i32(i32 %1458, i32 %1458, i32 19)
  %1487 = xor i32 %1485, %1486
  %1488 = tail call i32 @llvm.fshl.i32(i32 %1458, i32 %1458, i32 10)
  %1489 = xor i32 %1487, %1488
  %1490 = and i32 %1458, %1421
  %1491 = or i32 %1458, %1421
  %1492 = and i32 %1491, %1384
  %1493 = or i32 %1492, %1490
  %1494 = add i32 %1493, %1489
  %1495 = add i32 %1494, %1484
  %1496 = add i32 %1484, %1347
  %1497 = tail call i32 @llvm.fshl.i32(i32 %1496, i32 %1496, i32 26)
  %1498 = tail call i32 @llvm.fshl.i32(i32 %1496, i32 %1496, i32 21)
  %1499 = xor i32 %1497, %1498
  %1500 = tail call i32 @llvm.fshl.i32(i32 %1496, i32 %1496, i32 7)
  %1501 = xor i32 %1499, %1500
  %1502 = xor i32 %1459, %1422
  %1503 = and i32 %1496, %1502
  %1504 = xor i32 %1503, %1422
  %1505 = tail call i32 @llvm.fshl.i32(i32 %1443, i32 %1443, i32 15)
  %1506 = tail call i32 @llvm.fshl.i32(i32 %1443, i32 %1443, i32 13)
  %1507 = xor i32 %1505, %1506
  %1508 = lshr i32 %1443, 10
  %1509 = xor i32 %1507, %1508
  %1510 = tail call i32 @llvm.fshl.i32(i32 %962, i32 %962, i32 25)
  %1511 = tail call i32 @llvm.fshl.i32(i32 %962, i32 %962, i32 14)
  %1512 = xor i32 %1510, %1511
  %1513 = lshr i32 %962, 3
  %1514 = xor i32 %1512, %1513
  %1515 = add i32 %1514, %925
  %1516 = add i32 %1515, %1258
  %1517 = add i32 %1516, %1509
  store i32 %1517, ptr %340, align 16, !tbaa !57
  %1518 = add i32 %1517, -778901479
  %1519 = add i32 %1518, %1385
  %1520 = add i32 %1519, %1504
  %1521 = add i32 %1520, %1501
  %1522 = tail call i32 @llvm.fshl.i32(i32 %1495, i32 %1495, i32 30)
  %1523 = tail call i32 @llvm.fshl.i32(i32 %1495, i32 %1495, i32 19)
  %1524 = xor i32 %1522, %1523
  %1525 = tail call i32 @llvm.fshl.i32(i32 %1495, i32 %1495, i32 10)
  %1526 = xor i32 %1524, %1525
  %1527 = and i32 %1495, %1458
  %1528 = or i32 %1495, %1458
  %1529 = and i32 %1528, %1421
  %1530 = or i32 %1529, %1527
  %1531 = add i32 %1530, %1526
  %1532 = add i32 %1531, %1521
  %1533 = add i32 %1521, %1384
  %1534 = tail call i32 @llvm.fshl.i32(i32 %1533, i32 %1533, i32 26)
  %1535 = tail call i32 @llvm.fshl.i32(i32 %1533, i32 %1533, i32 21)
  %1536 = xor i32 %1534, %1535
  %1537 = tail call i32 @llvm.fshl.i32(i32 %1533, i32 %1533, i32 7)
  %1538 = xor i32 %1536, %1537
  %1539 = xor i32 %1496, %1459
  %1540 = and i32 %1533, %1539
  %1541 = xor i32 %1540, %1459
  %1542 = tail call i32 @llvm.fshl.i32(i32 %1480, i32 %1480, i32 15)
  %1543 = tail call i32 @llvm.fshl.i32(i32 %1480, i32 %1480, i32 13)
  %1544 = xor i32 %1542, %1543
  %1545 = lshr i32 %1480, 10
  %1546 = xor i32 %1544, %1545
  %1547 = tail call i32 @llvm.fshl.i32(i32 %999, i32 %999, i32 25)
  %1548 = tail call i32 @llvm.fshl.i32(i32 %999, i32 %999, i32 14)
  %1549 = xor i32 %1547, %1548
  %1550 = lshr i32 %999, 3
  %1551 = xor i32 %1549, %1550
  %1552 = add i32 %1551, %962
  %1553 = add i32 %1552, %1295
  %1554 = add i32 %1553, %1546
  store i32 %1554, ptr %366, align 4, !tbaa !57
  %1555 = add i32 %1554, -694614492
  %1556 = add i32 %1555, %1422
  %1557 = add i32 %1556, %1541
  %1558 = add i32 %1557, %1538
  %1559 = tail call i32 @llvm.fshl.i32(i32 %1532, i32 %1532, i32 30)
  %1560 = tail call i32 @llvm.fshl.i32(i32 %1532, i32 %1532, i32 19)
  %1561 = xor i32 %1559, %1560
  %1562 = tail call i32 @llvm.fshl.i32(i32 %1532, i32 %1532, i32 10)
  %1563 = xor i32 %1561, %1562
  %1564 = and i32 %1532, %1495
  %1565 = or i32 %1532, %1495
  %1566 = and i32 %1565, %1458
  %1567 = or i32 %1566, %1564
  %1568 = add i32 %1567, %1563
  %1569 = add i32 %1568, %1558
  %1570 = add i32 %1558, %1421
  %1571 = tail call i32 @llvm.fshl.i32(i32 %1570, i32 %1570, i32 26)
  %1572 = tail call i32 @llvm.fshl.i32(i32 %1570, i32 %1570, i32 21)
  %1573 = xor i32 %1571, %1572
  %1574 = tail call i32 @llvm.fshl.i32(i32 %1570, i32 %1570, i32 7)
  %1575 = xor i32 %1573, %1574
  %1576 = xor i32 %1533, %1496
  %1577 = and i32 %1570, %1576
  %1578 = xor i32 %1577, %1496
  %1579 = tail call i32 @llvm.fshl.i32(i32 %1517, i32 %1517, i32 15)
  %1580 = tail call i32 @llvm.fshl.i32(i32 %1517, i32 %1517, i32 13)
  %1581 = xor i32 %1579, %1580
  %1582 = lshr i32 %1517, 10
  %1583 = xor i32 %1581, %1582
  %1584 = tail call i32 @llvm.fshl.i32(i32 %1036, i32 %1036, i32 25)
  %1585 = tail call i32 @llvm.fshl.i32(i32 %1036, i32 %1036, i32 14)
  %1586 = xor i32 %1584, %1585
  %1587 = lshr i32 %1036, 3
  %1588 = xor i32 %1586, %1587
  %1589 = add i32 %1588, %999
  %1590 = add i32 %1589, %1332
  %1591 = add i32 %1590, %1583
  store i32 %1591, ptr %392, align 8, !tbaa !57
  %1592 = add i32 %1591, -200395387
  %1593 = add i32 %1592, %1459
  %1594 = add i32 %1593, %1578
  %1595 = add i32 %1594, %1575
  %1596 = tail call i32 @llvm.fshl.i32(i32 %1569, i32 %1569, i32 30)
  %1597 = tail call i32 @llvm.fshl.i32(i32 %1569, i32 %1569, i32 19)
  %1598 = xor i32 %1596, %1597
  %1599 = tail call i32 @llvm.fshl.i32(i32 %1569, i32 %1569, i32 10)
  %1600 = xor i32 %1598, %1599
  %1601 = and i32 %1569, %1532
  %1602 = or i32 %1569, %1532
  %1603 = and i32 %1602, %1495
  %1604 = or i32 %1603, %1601
  %1605 = add i32 %1604, %1600
  %1606 = add i32 %1605, %1595
  %1607 = add i32 %1595, %1458
  %1608 = tail call i32 @llvm.fshl.i32(i32 %1607, i32 %1607, i32 26)
  %1609 = tail call i32 @llvm.fshl.i32(i32 %1607, i32 %1607, i32 21)
  %1610 = xor i32 %1608, %1609
  %1611 = tail call i32 @llvm.fshl.i32(i32 %1607, i32 %1607, i32 7)
  %1612 = xor i32 %1610, %1611
  %1613 = xor i32 %1570, %1533
  %1614 = and i32 %1607, %1613
  %1615 = xor i32 %1614, %1533
  %1616 = tail call i32 @llvm.fshl.i32(i32 %1554, i32 %1554, i32 15)
  %1617 = tail call i32 @llvm.fshl.i32(i32 %1554, i32 %1554, i32 13)
  %1618 = xor i32 %1616, %1617
  %1619 = lshr i32 %1554, 10
  %1620 = xor i32 %1618, %1619
  %1621 = tail call i32 @llvm.fshl.i32(i32 %1073, i32 %1073, i32 25)
  %1622 = tail call i32 @llvm.fshl.i32(i32 %1073, i32 %1073, i32 14)
  %1623 = xor i32 %1621, %1622
  %1624 = lshr i32 %1073, 3
  %1625 = xor i32 %1623, %1624
  %1626 = add i32 %1625, %1036
  %1627 = add i32 %1626, %1369
  %1628 = add i32 %1627, %1620
  store i32 %1628, ptr %418, align 4, !tbaa !57
  %1629 = add i32 %1628, 275423344
  %1630 = add i32 %1629, %1496
  %1631 = add i32 %1630, %1615
  %1632 = add i32 %1631, %1612
  %1633 = tail call i32 @llvm.fshl.i32(i32 %1606, i32 %1606, i32 30)
  %1634 = tail call i32 @llvm.fshl.i32(i32 %1606, i32 %1606, i32 19)
  %1635 = xor i32 %1633, %1634
  %1636 = tail call i32 @llvm.fshl.i32(i32 %1606, i32 %1606, i32 10)
  %1637 = xor i32 %1635, %1636
  %1638 = and i32 %1606, %1569
  %1639 = or i32 %1606, %1569
  %1640 = and i32 %1639, %1532
  %1641 = or i32 %1640, %1638
  %1642 = add i32 %1641, %1637
  %1643 = add i32 %1642, %1632
  %1644 = add i32 %1632, %1495
  %1645 = tail call i32 @llvm.fshl.i32(i32 %1644, i32 %1644, i32 26)
  %1646 = tail call i32 @llvm.fshl.i32(i32 %1644, i32 %1644, i32 21)
  %1647 = xor i32 %1645, %1646
  %1648 = tail call i32 @llvm.fshl.i32(i32 %1644, i32 %1644, i32 7)
  %1649 = xor i32 %1647, %1648
  %1650 = xor i32 %1607, %1570
  %1651 = and i32 %1644, %1650
  %1652 = xor i32 %1651, %1570
  %1653 = tail call i32 @llvm.fshl.i32(i32 %1591, i32 %1591, i32 15)
  %1654 = tail call i32 @llvm.fshl.i32(i32 %1591, i32 %1591, i32 13)
  %1655 = xor i32 %1653, %1654
  %1656 = lshr i32 %1591, 10
  %1657 = xor i32 %1655, %1656
  %1658 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 25)
  %1659 = tail call i32 @llvm.fshl.i32(i32 %1110, i32 %1110, i32 14)
  %1660 = xor i32 %1658, %1659
  %1661 = lshr i32 %1110, 3
  %1662 = xor i32 %1660, %1661
  %1663 = add i32 %1662, %1073
  %1664 = add i32 %1663, %1406
  %1665 = add i32 %1664, %1657
  store i32 %1665, ptr %3, align 16, !tbaa !57
  %1666 = add i32 %1665, 430227734
  %1667 = add i32 %1666, %1533
  %1668 = add i32 %1667, %1652
  %1669 = add i32 %1668, %1649
  %1670 = tail call i32 @llvm.fshl.i32(i32 %1643, i32 %1643, i32 30)
  %1671 = tail call i32 @llvm.fshl.i32(i32 %1643, i32 %1643, i32 19)
  %1672 = xor i32 %1670, %1671
  %1673 = tail call i32 @llvm.fshl.i32(i32 %1643, i32 %1643, i32 10)
  %1674 = xor i32 %1672, %1673
  %1675 = and i32 %1643, %1606
  %1676 = or i32 %1643, %1606
  %1677 = and i32 %1676, %1569
  %1678 = or i32 %1677, %1675
  %1679 = add i32 %1678, %1674
  %1680 = add i32 %1679, %1669
  %1681 = add i32 %1669, %1532
  %1682 = tail call i32 @llvm.fshl.i32(i32 %1681, i32 %1681, i32 26)
  %1683 = tail call i32 @llvm.fshl.i32(i32 %1681, i32 %1681, i32 21)
  %1684 = xor i32 %1682, %1683
  %1685 = tail call i32 @llvm.fshl.i32(i32 %1681, i32 %1681, i32 7)
  %1686 = xor i32 %1684, %1685
  %1687 = xor i32 %1644, %1607
  %1688 = and i32 %1681, %1687
  %1689 = xor i32 %1688, %1607
  %1690 = tail call i32 @llvm.fshl.i32(i32 %1628, i32 %1628, i32 15)
  %1691 = tail call i32 @llvm.fshl.i32(i32 %1628, i32 %1628, i32 13)
  %1692 = xor i32 %1690, %1691
  %1693 = lshr i32 %1628, 10
  %1694 = xor i32 %1692, %1693
  %1695 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 25)
  %1696 = tail call i32 @llvm.fshl.i32(i32 %1147, i32 %1147, i32 14)
  %1697 = xor i32 %1695, %1696
  %1698 = lshr i32 %1147, 3
  %1699 = xor i32 %1697, %1698
  %1700 = add i32 %1699, %1110
  %1701 = add i32 %1700, %1443
  %1702 = add i32 %1701, %1694
  store i32 %1702, ptr %54, align 4, !tbaa !57
  %1703 = add i32 %1702, 506948616
  %1704 = add i32 %1703, %1570
  %1705 = add i32 %1704, %1689
  %1706 = add i32 %1705, %1686
  %1707 = tail call i32 @llvm.fshl.i32(i32 %1680, i32 %1680, i32 30)
  %1708 = tail call i32 @llvm.fshl.i32(i32 %1680, i32 %1680, i32 19)
  %1709 = xor i32 %1707, %1708
  %1710 = tail call i32 @llvm.fshl.i32(i32 %1680, i32 %1680, i32 10)
  %1711 = xor i32 %1709, %1710
  %1712 = and i32 %1680, %1643
  %1713 = or i32 %1680, %1643
  %1714 = and i32 %1713, %1606
  %1715 = or i32 %1714, %1712
  %1716 = add i32 %1715, %1711
  %1717 = add i32 %1716, %1706
  %1718 = add i32 %1706, %1569
  %1719 = tail call i32 @llvm.fshl.i32(i32 %1718, i32 %1718, i32 26)
  %1720 = tail call i32 @llvm.fshl.i32(i32 %1718, i32 %1718, i32 21)
  %1721 = xor i32 %1719, %1720
  %1722 = tail call i32 @llvm.fshl.i32(i32 %1718, i32 %1718, i32 7)
  %1723 = xor i32 %1721, %1722
  %1724 = xor i32 %1681, %1644
  %1725 = and i32 %1718, %1724
  %1726 = xor i32 %1725, %1644
  %1727 = tail call i32 @llvm.fshl.i32(i32 %1665, i32 %1665, i32 15)
  %1728 = tail call i32 @llvm.fshl.i32(i32 %1665, i32 %1665, i32 13)
  %1729 = xor i32 %1727, %1728
  %1730 = lshr i32 %1665, 10
  %1731 = xor i32 %1729, %1730
  %1732 = tail call i32 @llvm.fshl.i32(i32 %1184, i32 %1184, i32 25)
  %1733 = tail call i32 @llvm.fshl.i32(i32 %1184, i32 %1184, i32 14)
  %1734 = xor i32 %1732, %1733
  %1735 = lshr i32 %1184, 3
  %1736 = xor i32 %1734, %1735
  %1737 = add i32 %1736, %1147
  %1738 = add i32 %1737, %1480
  %1739 = add i32 %1738, %1731
  store i32 %1739, ptr %80, align 8, !tbaa !57
  %1740 = add i32 %1739, 659060556
  %1741 = add i32 %1740, %1607
  %1742 = add i32 %1741, %1726
  %1743 = add i32 %1742, %1723
  %1744 = tail call i32 @llvm.fshl.i32(i32 %1717, i32 %1717, i32 30)
  %1745 = tail call i32 @llvm.fshl.i32(i32 %1717, i32 %1717, i32 19)
  %1746 = xor i32 %1744, %1745
  %1747 = tail call i32 @llvm.fshl.i32(i32 %1717, i32 %1717, i32 10)
  %1748 = xor i32 %1746, %1747
  %1749 = and i32 %1717, %1680
  %1750 = or i32 %1717, %1680
  %1751 = and i32 %1750, %1643
  %1752 = or i32 %1751, %1749
  %1753 = add i32 %1752, %1748
  %1754 = add i32 %1753, %1743
  %1755 = add i32 %1743, %1606
  %1756 = tail call i32 @llvm.fshl.i32(i32 %1755, i32 %1755, i32 26)
  %1757 = tail call i32 @llvm.fshl.i32(i32 %1755, i32 %1755, i32 21)
  %1758 = xor i32 %1756, %1757
  %1759 = tail call i32 @llvm.fshl.i32(i32 %1755, i32 %1755, i32 7)
  %1760 = xor i32 %1758, %1759
  %1761 = xor i32 %1718, %1681
  %1762 = and i32 %1755, %1761
  %1763 = xor i32 %1762, %1681
  %1764 = tail call i32 @llvm.fshl.i32(i32 %1702, i32 %1702, i32 15)
  %1765 = tail call i32 @llvm.fshl.i32(i32 %1702, i32 %1702, i32 13)
  %1766 = xor i32 %1764, %1765
  %1767 = lshr i32 %1702, 10
  %1768 = xor i32 %1766, %1767
  %1769 = tail call i32 @llvm.fshl.i32(i32 %1221, i32 %1221, i32 25)
  %1770 = tail call i32 @llvm.fshl.i32(i32 %1221, i32 %1221, i32 14)
  %1771 = xor i32 %1769, %1770
  %1772 = lshr i32 %1221, 3
  %1773 = xor i32 %1771, %1772
  %1774 = add i32 %1773, %1184
  %1775 = add i32 %1774, %1517
  %1776 = add i32 %1775, %1768
  store i32 %1776, ptr %106, align 4, !tbaa !57
  %1777 = add i32 %1776, 883997877
  %1778 = add i32 %1777, %1644
  %1779 = add i32 %1778, %1763
  %1780 = add i32 %1779, %1760
  %1781 = tail call i32 @llvm.fshl.i32(i32 %1754, i32 %1754, i32 30)
  %1782 = tail call i32 @llvm.fshl.i32(i32 %1754, i32 %1754, i32 19)
  %1783 = xor i32 %1781, %1782
  %1784 = tail call i32 @llvm.fshl.i32(i32 %1754, i32 %1754, i32 10)
  %1785 = xor i32 %1783, %1784
  %1786 = and i32 %1754, %1717
  %1787 = or i32 %1754, %1717
  %1788 = and i32 %1787, %1680
  %1789 = or i32 %1788, %1786
  %1790 = add i32 %1789, %1785
  %1791 = add i32 %1790, %1780
  %1792 = add i32 %1780, %1643
  %1793 = tail call i32 @llvm.fshl.i32(i32 %1792, i32 %1792, i32 26)
  %1794 = tail call i32 @llvm.fshl.i32(i32 %1792, i32 %1792, i32 21)
  %1795 = xor i32 %1793, %1794
  %1796 = tail call i32 @llvm.fshl.i32(i32 %1792, i32 %1792, i32 7)
  %1797 = xor i32 %1795, %1796
  %1798 = xor i32 %1755, %1718
  %1799 = and i32 %1792, %1798
  %1800 = xor i32 %1799, %1718
  %1801 = tail call i32 @llvm.fshl.i32(i32 %1739, i32 %1739, i32 15)
  %1802 = tail call i32 @llvm.fshl.i32(i32 %1739, i32 %1739, i32 13)
  %1803 = xor i32 %1801, %1802
  %1804 = lshr i32 %1739, 10
  %1805 = xor i32 %1803, %1804
  %1806 = tail call i32 @llvm.fshl.i32(i32 %1258, i32 %1258, i32 25)
  %1807 = tail call i32 @llvm.fshl.i32(i32 %1258, i32 %1258, i32 14)
  %1808 = xor i32 %1806, %1807
  %1809 = lshr i32 %1258, 3
  %1810 = xor i32 %1808, %1809
  %1811 = add i32 %1810, %1221
  %1812 = add i32 %1811, %1554
  %1813 = add i32 %1812, %1805
  store i32 %1813, ptr %132, align 16, !tbaa !57
  %1814 = add i32 %1813, 958139571
  %1815 = add i32 %1814, %1681
  %1816 = add i32 %1815, %1800
  %1817 = add i32 %1816, %1797
  %1818 = tail call i32 @llvm.fshl.i32(i32 %1791, i32 %1791, i32 30)
  %1819 = tail call i32 @llvm.fshl.i32(i32 %1791, i32 %1791, i32 19)
  %1820 = xor i32 %1818, %1819
  %1821 = tail call i32 @llvm.fshl.i32(i32 %1791, i32 %1791, i32 10)
  %1822 = xor i32 %1820, %1821
  %1823 = and i32 %1791, %1754
  %1824 = or i32 %1791, %1754
  %1825 = and i32 %1824, %1717
  %1826 = or i32 %1825, %1823
  %1827 = add i32 %1826, %1822
  %1828 = add i32 %1827, %1817
  %1829 = add i32 %1817, %1680
  %1830 = tail call i32 @llvm.fshl.i32(i32 %1829, i32 %1829, i32 26)
  %1831 = tail call i32 @llvm.fshl.i32(i32 %1829, i32 %1829, i32 21)
  %1832 = xor i32 %1830, %1831
  %1833 = tail call i32 @llvm.fshl.i32(i32 %1829, i32 %1829, i32 7)
  %1834 = xor i32 %1832, %1833
  %1835 = xor i32 %1792, %1755
  %1836 = and i32 %1829, %1835
  %1837 = xor i32 %1836, %1755
  %1838 = tail call i32 @llvm.fshl.i32(i32 %1776, i32 %1776, i32 15)
  %1839 = tail call i32 @llvm.fshl.i32(i32 %1776, i32 %1776, i32 13)
  %1840 = xor i32 %1838, %1839
  %1841 = lshr i32 %1776, 10
  %1842 = xor i32 %1840, %1841
  %1843 = tail call i32 @llvm.fshl.i32(i32 %1295, i32 %1295, i32 25)
  %1844 = tail call i32 @llvm.fshl.i32(i32 %1295, i32 %1295, i32 14)
  %1845 = xor i32 %1843, %1844
  %1846 = lshr i32 %1295, 3
  %1847 = xor i32 %1845, %1846
  %1848 = add i32 %1847, %1258
  %1849 = add i32 %1848, %1591
  %1850 = add i32 %1849, %1842
  store i32 %1850, ptr %158, align 4, !tbaa !57
  %1851 = add i32 %1850, 1322822218
  %1852 = add i32 %1851, %1718
  %1853 = add i32 %1852, %1837
  %1854 = add i32 %1853, %1834
  %1855 = tail call i32 @llvm.fshl.i32(i32 %1828, i32 %1828, i32 30)
  %1856 = tail call i32 @llvm.fshl.i32(i32 %1828, i32 %1828, i32 19)
  %1857 = xor i32 %1855, %1856
  %1858 = tail call i32 @llvm.fshl.i32(i32 %1828, i32 %1828, i32 10)
  %1859 = xor i32 %1857, %1858
  %1860 = and i32 %1828, %1791
  %1861 = or i32 %1828, %1791
  %1862 = and i32 %1861, %1754
  %1863 = or i32 %1862, %1860
  %1864 = add i32 %1863, %1859
  %1865 = add i32 %1864, %1854
  %1866 = add i32 %1854, %1717
  %1867 = tail call i32 @llvm.fshl.i32(i32 %1866, i32 %1866, i32 26)
  %1868 = tail call i32 @llvm.fshl.i32(i32 %1866, i32 %1866, i32 21)
  %1869 = xor i32 %1867, %1868
  %1870 = tail call i32 @llvm.fshl.i32(i32 %1866, i32 %1866, i32 7)
  %1871 = xor i32 %1869, %1870
  %1872 = xor i32 %1829, %1792
  %1873 = and i32 %1866, %1872
  %1874 = xor i32 %1873, %1792
  %1875 = tail call i32 @llvm.fshl.i32(i32 %1813, i32 %1813, i32 15)
  %1876 = tail call i32 @llvm.fshl.i32(i32 %1813, i32 %1813, i32 13)
  %1877 = xor i32 %1875, %1876
  %1878 = lshr i32 %1813, 10
  %1879 = xor i32 %1877, %1878
  %1880 = tail call i32 @llvm.fshl.i32(i32 %1332, i32 %1332, i32 25)
  %1881 = tail call i32 @llvm.fshl.i32(i32 %1332, i32 %1332, i32 14)
  %1882 = xor i32 %1880, %1881
  %1883 = lshr i32 %1332, 3
  %1884 = xor i32 %1882, %1883
  %1885 = add i32 %1884, %1295
  %1886 = add i32 %1885, %1628
  %1887 = add i32 %1886, %1879
  store i32 %1887, ptr %184, align 8, !tbaa !57
  %1888 = add i32 %1887, 1537002063
  %1889 = add i32 %1888, %1755
  %1890 = add i32 %1889, %1874
  %1891 = add i32 %1890, %1871
  %1892 = tail call i32 @llvm.fshl.i32(i32 %1865, i32 %1865, i32 30)
  %1893 = tail call i32 @llvm.fshl.i32(i32 %1865, i32 %1865, i32 19)
  %1894 = xor i32 %1892, %1893
  %1895 = tail call i32 @llvm.fshl.i32(i32 %1865, i32 %1865, i32 10)
  %1896 = xor i32 %1894, %1895
  %1897 = and i32 %1865, %1828
  %1898 = or i32 %1865, %1828
  %1899 = and i32 %1898, %1791
  %1900 = or i32 %1899, %1897
  %1901 = add i32 %1900, %1896
  %1902 = add i32 %1901, %1891
  %1903 = add i32 %1891, %1754
  %1904 = tail call i32 @llvm.fshl.i32(i32 %1903, i32 %1903, i32 26)
  %1905 = tail call i32 @llvm.fshl.i32(i32 %1903, i32 %1903, i32 21)
  %1906 = xor i32 %1904, %1905
  %1907 = tail call i32 @llvm.fshl.i32(i32 %1903, i32 %1903, i32 7)
  %1908 = xor i32 %1906, %1907
  %1909 = xor i32 %1866, %1829
  %1910 = and i32 %1903, %1909
  %1911 = xor i32 %1910, %1829
  %1912 = tail call i32 @llvm.fshl.i32(i32 %1850, i32 %1850, i32 15)
  %1913 = tail call i32 @llvm.fshl.i32(i32 %1850, i32 %1850, i32 13)
  %1914 = xor i32 %1912, %1913
  %1915 = lshr i32 %1850, 10
  %1916 = xor i32 %1914, %1915
  %1917 = tail call i32 @llvm.fshl.i32(i32 %1369, i32 %1369, i32 25)
  %1918 = tail call i32 @llvm.fshl.i32(i32 %1369, i32 %1369, i32 14)
  %1919 = xor i32 %1917, %1918
  %1920 = lshr i32 %1369, 3
  %1921 = xor i32 %1919, %1920
  %1922 = add i32 %1921, %1332
  %1923 = add i32 %1922, %1665
  %1924 = add i32 %1923, %1916
  store i32 %1924, ptr %210, align 4, !tbaa !57
  %1925 = add i32 %1924, 1747873779
  %1926 = add i32 %1925, %1792
  %1927 = add i32 %1926, %1911
  %1928 = add i32 %1927, %1908
  %1929 = tail call i32 @llvm.fshl.i32(i32 %1902, i32 %1902, i32 30)
  %1930 = tail call i32 @llvm.fshl.i32(i32 %1902, i32 %1902, i32 19)
  %1931 = xor i32 %1929, %1930
  %1932 = tail call i32 @llvm.fshl.i32(i32 %1902, i32 %1902, i32 10)
  %1933 = xor i32 %1931, %1932
  %1934 = and i32 %1902, %1865
  %1935 = or i32 %1902, %1865
  %1936 = and i32 %1935, %1828
  %1937 = or i32 %1936, %1934
  %1938 = add i32 %1937, %1933
  %1939 = add i32 %1938, %1928
  %1940 = add i32 %1928, %1791
  %1941 = tail call i32 @llvm.fshl.i32(i32 %1940, i32 %1940, i32 26)
  %1942 = tail call i32 @llvm.fshl.i32(i32 %1940, i32 %1940, i32 21)
  %1943 = xor i32 %1941, %1942
  %1944 = tail call i32 @llvm.fshl.i32(i32 %1940, i32 %1940, i32 7)
  %1945 = xor i32 %1943, %1944
  %1946 = xor i32 %1903, %1866
  %1947 = and i32 %1940, %1946
  %1948 = xor i32 %1947, %1866
  %1949 = tail call i32 @llvm.fshl.i32(i32 %1887, i32 %1887, i32 15)
  %1950 = tail call i32 @llvm.fshl.i32(i32 %1887, i32 %1887, i32 13)
  %1951 = xor i32 %1949, %1950
  %1952 = lshr i32 %1887, 10
  %1953 = xor i32 %1951, %1952
  %1954 = tail call i32 @llvm.fshl.i32(i32 %1406, i32 %1406, i32 25)
  %1955 = tail call i32 @llvm.fshl.i32(i32 %1406, i32 %1406, i32 14)
  %1956 = xor i32 %1954, %1955
  %1957 = lshr i32 %1406, 3
  %1958 = xor i32 %1956, %1957
  %1959 = add i32 %1958, %1369
  %1960 = add i32 %1959, %1702
  %1961 = add i32 %1960, %1953
  store i32 %1961, ptr %236, align 16, !tbaa !57
  %1962 = add i32 %1961, 1955562222
  %1963 = add i32 %1962, %1829
  %1964 = add i32 %1963, %1948
  %1965 = add i32 %1964, %1945
  %1966 = tail call i32 @llvm.fshl.i32(i32 %1939, i32 %1939, i32 30)
  %1967 = tail call i32 @llvm.fshl.i32(i32 %1939, i32 %1939, i32 19)
  %1968 = xor i32 %1966, %1967
  %1969 = tail call i32 @llvm.fshl.i32(i32 %1939, i32 %1939, i32 10)
  %1970 = xor i32 %1968, %1969
  %1971 = and i32 %1939, %1902
  %1972 = or i32 %1939, %1902
  %1973 = and i32 %1972, %1865
  %1974 = or i32 %1973, %1971
  %1975 = add i32 %1974, %1970
  %1976 = add i32 %1975, %1965
  %1977 = add i32 %1965, %1828
  %1978 = tail call i32 @llvm.fshl.i32(i32 %1977, i32 %1977, i32 26)
  %1979 = tail call i32 @llvm.fshl.i32(i32 %1977, i32 %1977, i32 21)
  %1980 = xor i32 %1978, %1979
  %1981 = tail call i32 @llvm.fshl.i32(i32 %1977, i32 %1977, i32 7)
  %1982 = xor i32 %1980, %1981
  %1983 = xor i32 %1940, %1903
  %1984 = and i32 %1977, %1983
  %1985 = xor i32 %1984, %1903
  %1986 = tail call i32 @llvm.fshl.i32(i32 %1924, i32 %1924, i32 15)
  %1987 = tail call i32 @llvm.fshl.i32(i32 %1924, i32 %1924, i32 13)
  %1988 = xor i32 %1986, %1987
  %1989 = lshr i32 %1924, 10
  %1990 = xor i32 %1988, %1989
  %1991 = tail call i32 @llvm.fshl.i32(i32 %1443, i32 %1443, i32 25)
  %1992 = tail call i32 @llvm.fshl.i32(i32 %1443, i32 %1443, i32 14)
  %1993 = xor i32 %1991, %1992
  %1994 = lshr i32 %1443, 3
  %1995 = xor i32 %1993, %1994
  %1996 = add i32 %1995, %1406
  %1997 = add i32 %1996, %1739
  %1998 = add i32 %1997, %1990
  store i32 %1998, ptr %262, align 4, !tbaa !57
  %1999 = add i32 %1998, 2024104815
  %2000 = add i32 %1999, %1866
  %2001 = add i32 %2000, %1985
  %2002 = add i32 %2001, %1982
  %2003 = tail call i32 @llvm.fshl.i32(i32 %1976, i32 %1976, i32 30)
  %2004 = tail call i32 @llvm.fshl.i32(i32 %1976, i32 %1976, i32 19)
  %2005 = xor i32 %2003, %2004
  %2006 = tail call i32 @llvm.fshl.i32(i32 %1976, i32 %1976, i32 10)
  %2007 = xor i32 %2005, %2006
  %2008 = and i32 %1976, %1939
  %2009 = or i32 %1976, %1939
  %2010 = and i32 %2009, %1902
  %2011 = or i32 %2010, %2008
  %2012 = add i32 %2011, %2007
  %2013 = add i32 %2012, %2002
  %2014 = add i32 %2002, %1865
  %2015 = tail call i32 @llvm.fshl.i32(i32 %2014, i32 %2014, i32 26)
  %2016 = tail call i32 @llvm.fshl.i32(i32 %2014, i32 %2014, i32 21)
  %2017 = xor i32 %2015, %2016
  %2018 = tail call i32 @llvm.fshl.i32(i32 %2014, i32 %2014, i32 7)
  %2019 = xor i32 %2017, %2018
  %2020 = xor i32 %1977, %1940
  %2021 = and i32 %2014, %2020
  %2022 = xor i32 %2021, %1940
  %2023 = tail call i32 @llvm.fshl.i32(i32 %1961, i32 %1961, i32 15)
  %2024 = tail call i32 @llvm.fshl.i32(i32 %1961, i32 %1961, i32 13)
  %2025 = xor i32 %2023, %2024
  %2026 = lshr i32 %1961, 10
  %2027 = xor i32 %2025, %2026
  %2028 = tail call i32 @llvm.fshl.i32(i32 %1480, i32 %1480, i32 25)
  %2029 = tail call i32 @llvm.fshl.i32(i32 %1480, i32 %1480, i32 14)
  %2030 = xor i32 %2028, %2029
  %2031 = lshr i32 %1480, 3
  %2032 = xor i32 %2030, %2031
  %2033 = add i32 %2032, %1443
  %2034 = add i32 %2033, %1776
  %2035 = add i32 %2034, %2027
  store i32 %2035, ptr %288, align 8, !tbaa !57
  %2036 = add i32 %2035, -2067236844
  %2037 = add i32 %2036, %1903
  %2038 = add i32 %2037, %2022
  %2039 = add i32 %2038, %2019
  %2040 = tail call i32 @llvm.fshl.i32(i32 %2013, i32 %2013, i32 30)
  %2041 = tail call i32 @llvm.fshl.i32(i32 %2013, i32 %2013, i32 19)
  %2042 = xor i32 %2040, %2041
  %2043 = tail call i32 @llvm.fshl.i32(i32 %2013, i32 %2013, i32 10)
  %2044 = xor i32 %2042, %2043
  %2045 = and i32 %2013, %1976
  %2046 = or i32 %2013, %1976
  %2047 = and i32 %2046, %1939
  %2048 = or i32 %2047, %2045
  %2049 = add i32 %2048, %2044
  %2050 = add i32 %2049, %2039
  %2051 = add i32 %2039, %1902
  %2052 = tail call i32 @llvm.fshl.i32(i32 %2051, i32 %2051, i32 26)
  %2053 = tail call i32 @llvm.fshl.i32(i32 %2051, i32 %2051, i32 21)
  %2054 = xor i32 %2052, %2053
  %2055 = tail call i32 @llvm.fshl.i32(i32 %2051, i32 %2051, i32 7)
  %2056 = xor i32 %2054, %2055
  %2057 = xor i32 %2014, %1977
  %2058 = and i32 %2051, %2057
  %2059 = xor i32 %2058, %1977
  %2060 = tail call i32 @llvm.fshl.i32(i32 %1998, i32 %1998, i32 15)
  %2061 = tail call i32 @llvm.fshl.i32(i32 %1998, i32 %1998, i32 13)
  %2062 = xor i32 %2060, %2061
  %2063 = lshr i32 %1998, 10
  %2064 = xor i32 %2062, %2063
  %2065 = tail call i32 @llvm.fshl.i32(i32 %1517, i32 %1517, i32 25)
  %2066 = tail call i32 @llvm.fshl.i32(i32 %1517, i32 %1517, i32 14)
  %2067 = xor i32 %2065, %2066
  %2068 = lshr i32 %1517, 3
  %2069 = xor i32 %2067, %2068
  %2070 = add i32 %2069, %1480
  %2071 = add i32 %2070, %1813
  %2072 = add i32 %2071, %2064
  store i32 %2072, ptr %314, align 4, !tbaa !57
  %2073 = add i32 %2072, -1933114872
  %2074 = add i32 %2073, %1940
  %2075 = add i32 %2074, %2059
  %2076 = add i32 %2075, %2056
  %2077 = tail call i32 @llvm.fshl.i32(i32 %2050, i32 %2050, i32 30)
  %2078 = tail call i32 @llvm.fshl.i32(i32 %2050, i32 %2050, i32 19)
  %2079 = xor i32 %2077, %2078
  %2080 = tail call i32 @llvm.fshl.i32(i32 %2050, i32 %2050, i32 10)
  %2081 = xor i32 %2079, %2080
  %2082 = and i32 %2050, %2013
  %2083 = or i32 %2050, %2013
  %2084 = and i32 %2083, %1976
  %2085 = or i32 %2084, %2082
  %2086 = add i32 %2085, %2081
  %2087 = add i32 %2086, %2076
  %2088 = add i32 %2076, %1939
  %2089 = tail call i32 @llvm.fshl.i32(i32 %2088, i32 %2088, i32 26)
  %2090 = tail call i32 @llvm.fshl.i32(i32 %2088, i32 %2088, i32 21)
  %2091 = xor i32 %2089, %2090
  %2092 = tail call i32 @llvm.fshl.i32(i32 %2088, i32 %2088, i32 7)
  %2093 = xor i32 %2091, %2092
  %2094 = xor i32 %2051, %2014
  %2095 = and i32 %2088, %2094
  %2096 = xor i32 %2095, %2014
  %2097 = tail call i32 @llvm.fshl.i32(i32 %2035, i32 %2035, i32 15)
  %2098 = tail call i32 @llvm.fshl.i32(i32 %2035, i32 %2035, i32 13)
  %2099 = xor i32 %2097, %2098
  %2100 = lshr i32 %2035, 10
  %2101 = xor i32 %2099, %2100
  %2102 = tail call i32 @llvm.fshl.i32(i32 %1554, i32 %1554, i32 25)
  %2103 = tail call i32 @llvm.fshl.i32(i32 %1554, i32 %1554, i32 14)
  %2104 = xor i32 %2102, %2103
  %2105 = lshr i32 %1554, 3
  %2106 = xor i32 %2104, %2105
  %2107 = add i32 %2106, %1517
  %2108 = add i32 %2107, %1850
  %2109 = add i32 %2108, %2101
  store i32 %2109, ptr %340, align 16, !tbaa !57
  %2110 = add i32 %2109, -1866530822
  %2111 = add i32 %2110, %1977
  %2112 = add i32 %2111, %2096
  %2113 = add i32 %2112, %2093
  %2114 = tail call i32 @llvm.fshl.i32(i32 %2087, i32 %2087, i32 30)
  %2115 = tail call i32 @llvm.fshl.i32(i32 %2087, i32 %2087, i32 19)
  %2116 = xor i32 %2114, %2115
  %2117 = tail call i32 @llvm.fshl.i32(i32 %2087, i32 %2087, i32 10)
  %2118 = xor i32 %2116, %2117
  %2119 = and i32 %2087, %2050
  %2120 = or i32 %2087, %2050
  %2121 = and i32 %2120, %2013
  %2122 = or i32 %2121, %2119
  %2123 = add i32 %2122, %2118
  %2124 = add i32 %2123, %2113
  %2125 = add i32 %2113, %1976
  %2126 = tail call i32 @llvm.fshl.i32(i32 %2125, i32 %2125, i32 26)
  %2127 = tail call i32 @llvm.fshl.i32(i32 %2125, i32 %2125, i32 21)
  %2128 = xor i32 %2126, %2127
  %2129 = tail call i32 @llvm.fshl.i32(i32 %2125, i32 %2125, i32 7)
  %2130 = xor i32 %2128, %2129
  %2131 = xor i32 %2088, %2051
  %2132 = and i32 %2125, %2131
  %2133 = xor i32 %2132, %2051
  %2134 = tail call i32 @llvm.fshl.i32(i32 %2072, i32 %2072, i32 15)
  %2135 = tail call i32 @llvm.fshl.i32(i32 %2072, i32 %2072, i32 13)
  %2136 = xor i32 %2134, %2135
  %2137 = lshr i32 %2072, 10
  %2138 = xor i32 %2136, %2137
  %2139 = tail call i32 @llvm.fshl.i32(i32 %1591, i32 %1591, i32 25)
  %2140 = tail call i32 @llvm.fshl.i32(i32 %1591, i32 %1591, i32 14)
  %2141 = xor i32 %2139, %2140
  %2142 = lshr i32 %1591, 3
  %2143 = xor i32 %2141, %2142
  %2144 = add i32 %2143, %1554
  %2145 = add i32 %2144, %1887
  %2146 = add i32 %2145, %2138
  store i32 %2146, ptr %366, align 4, !tbaa !57
  %2147 = add i32 %2146, -1538233109
  %2148 = add i32 %2147, %2014
  %2149 = add i32 %2148, %2133
  %2150 = add i32 %2149, %2130
  %2151 = tail call i32 @llvm.fshl.i32(i32 %2124, i32 %2124, i32 30)
  %2152 = tail call i32 @llvm.fshl.i32(i32 %2124, i32 %2124, i32 19)
  %2153 = xor i32 %2151, %2152
  %2154 = tail call i32 @llvm.fshl.i32(i32 %2124, i32 %2124, i32 10)
  %2155 = xor i32 %2153, %2154
  %2156 = and i32 %2124, %2087
  %2157 = or i32 %2124, %2087
  %2158 = and i32 %2157, %2050
  %2159 = or i32 %2158, %2156
  %2160 = add i32 %2159, %2155
  %2161 = add i32 %2160, %2150
  %2162 = add i32 %2150, %2013
  %2163 = tail call i32 @llvm.fshl.i32(i32 %2162, i32 %2162, i32 26)
  %2164 = tail call i32 @llvm.fshl.i32(i32 %2162, i32 %2162, i32 21)
  %2165 = xor i32 %2163, %2164
  %2166 = tail call i32 @llvm.fshl.i32(i32 %2162, i32 %2162, i32 7)
  %2167 = xor i32 %2165, %2166
  %2168 = xor i32 %2125, %2088
  %2169 = and i32 %2162, %2168
  %2170 = xor i32 %2169, %2088
  %2171 = tail call i32 @llvm.fshl.i32(i32 %2109, i32 %2109, i32 15)
  %2172 = tail call i32 @llvm.fshl.i32(i32 %2109, i32 %2109, i32 13)
  %2173 = xor i32 %2171, %2172
  %2174 = lshr i32 %2109, 10
  %2175 = xor i32 %2173, %2174
  %2176 = tail call i32 @llvm.fshl.i32(i32 %1628, i32 %1628, i32 25)
  %2177 = tail call i32 @llvm.fshl.i32(i32 %1628, i32 %1628, i32 14)
  %2178 = xor i32 %2176, %2177
  %2179 = lshr i32 %1628, 3
  %2180 = xor i32 %2178, %2179
  %2181 = add i32 %2180, %1591
  %2182 = add i32 %2181, %1924
  %2183 = add i32 %2182, %2175
  store i32 %2183, ptr %392, align 8, !tbaa !57
  %2184 = add i32 %2183, -1090935817
  %2185 = add i32 %2184, %2051
  %2186 = add i32 %2185, %2170
  %2187 = add i32 %2186, %2167
  %2188 = tail call i32 @llvm.fshl.i32(i32 %2161, i32 %2161, i32 30)
  %2189 = tail call i32 @llvm.fshl.i32(i32 %2161, i32 %2161, i32 19)
  %2190 = xor i32 %2188, %2189
  %2191 = tail call i32 @llvm.fshl.i32(i32 %2161, i32 %2161, i32 10)
  %2192 = xor i32 %2190, %2191
  %2193 = and i32 %2161, %2124
  %2194 = or i32 %2161, %2124
  %2195 = and i32 %2194, %2087
  %2196 = or i32 %2195, %2193
  %2197 = add i32 %2196, %2192
  %2198 = add i32 %2197, %2187
  %2199 = add i32 %2187, %2050
  %2200 = tail call i32 @llvm.fshl.i32(i32 %2199, i32 %2199, i32 26)
  %2201 = tail call i32 @llvm.fshl.i32(i32 %2199, i32 %2199, i32 21)
  %2202 = xor i32 %2200, %2201
  %2203 = tail call i32 @llvm.fshl.i32(i32 %2199, i32 %2199, i32 7)
  %2204 = xor i32 %2202, %2203
  %2205 = xor i32 %2162, %2125
  %2206 = and i32 %2199, %2205
  %2207 = xor i32 %2206, %2125
  %2208 = tail call i32 @llvm.fshl.i32(i32 %2146, i32 %2146, i32 15)
  %2209 = tail call i32 @llvm.fshl.i32(i32 %2146, i32 %2146, i32 13)
  %2210 = xor i32 %2208, %2209
  %2211 = lshr i32 %2146, 10
  %2212 = xor i32 %2210, %2211
  %2213 = tail call i32 @llvm.fshl.i32(i32 %1665, i32 %1665, i32 25)
  %2214 = tail call i32 @llvm.fshl.i32(i32 %1665, i32 %1665, i32 14)
  %2215 = xor i32 %2213, %2214
  %2216 = lshr i32 %1665, 3
  %2217 = xor i32 %2215, %2216
  %2218 = add i32 %2217, %1628
  %2219 = add i32 %2218, %1961
  %2220 = add i32 %2219, %2212
  store i32 %2220, ptr %418, align 4, !tbaa !57
  %2221 = add i32 %2220, -965641998
  %2222 = add i32 %2221, %2088
  %2223 = add i32 %2222, %2207
  %2224 = add i32 %2223, %2204
  %2225 = tail call i32 @llvm.fshl.i32(i32 %2198, i32 %2198, i32 30)
  %2226 = tail call i32 @llvm.fshl.i32(i32 %2198, i32 %2198, i32 19)
  %2227 = xor i32 %2225, %2226
  %2228 = tail call i32 @llvm.fshl.i32(i32 %2198, i32 %2198, i32 10)
  %2229 = xor i32 %2227, %2228
  %2230 = and i32 %2198, %2161
  %2231 = or i32 %2198, %2161
  %2232 = and i32 %2231, %2124
  %2233 = or i32 %2232, %2230
  %2234 = add i32 %2229, %31
  %2235 = add i32 %2234, %2233
  %2236 = add i32 %2235, %2224
  store i32 %2236, ptr %30, align 4, !tbaa !57
  %2237 = add i32 %2198, %33
  store i32 %2237, ptr %32, align 4, !tbaa !57
  %2238 = add i32 %2161, %35
  store i32 %2238, ptr %34, align 4, !tbaa !57
  %2239 = add i32 %2124, %37
  store i32 %2239, ptr %36, align 4, !tbaa !57
  %2240 = add i32 %2087, %39
  %2241 = add i32 %2240, %2224
  store i32 %2241, ptr %38, align 4, !tbaa !57
  %2242 = add i32 %2199, %41
  store i32 %2242, ptr %40, align 4, !tbaa !57
  %2243 = add i32 %2162, %43
  store i32 %2243, ptr %42, align 4, !tbaa !57
  %2244 = add i32 %2125, %45
  store i32 %2244, ptr %44, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sha512(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #8 !prof !116 !PGOFuncName !117 {
  %3 = alloca [80 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %3) #14
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %3, %2 ], [ %45, %4 ]
  %6 = phi i32 [ 0, %2 ], [ %46, %4 ]
  %7 = phi ptr [ %1, %2 ], [ %47, %4 ]
  %8 = load i8, ptr %7, align 1, !tbaa !54
  %9 = zext i8 %8 to i64
  %10 = shl nuw i64 %9, 56
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !54
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 48
  %15 = or disjoint i64 %14, %10
  %16 = getelementptr inbounds i8, ptr %7, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !54
  %18 = zext i8 %17 to i64
  %19 = shl nuw nsw i64 %18, 40
  %20 = or disjoint i64 %15, %19
  %21 = getelementptr inbounds i8, ptr %7, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !54
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 32
  %25 = or disjoint i64 %20, %24
  %26 = getelementptr inbounds i8, ptr %7, i64 4
  %27 = load i8, ptr %26, align 1, !tbaa !54
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 24
  %30 = or disjoint i64 %25, %29
  %31 = getelementptr inbounds i8, ptr %7, i64 5
  %32 = load i8, ptr %31, align 1, !tbaa !54
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or disjoint i64 %30, %34
  %36 = getelementptr inbounds i8, ptr %7, i64 6
  %37 = load i8, ptr %36, align 1, !tbaa !54
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or i64 %35, %39
  %41 = getelementptr inbounds i8, ptr %7, i64 7
  %42 = load i8, ptr %41, align 1, !tbaa !54
  %43 = zext i8 %42 to i64
  %44 = or i64 %40, %43
  %45 = getelementptr inbounds i64, ptr %5, i64 1
  store i64 %44, ptr %5, align 8, !tbaa !80
  %46 = add nuw nsw i32 %6, 1
  %47 = getelementptr inbounds i8, ptr %7, i64 8
  %48 = icmp eq i32 %46, 16
  br i1 %48, label %49, label %4, !prof !118, !llvm.loop !119

49:                                               ; preds = %4, %49
  %50 = phi i64 [ %77, %49 ], [ 16, %4 ]
  %51 = add nsw i64 %50, -2
  %52 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !80
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 45)
  %55 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 3)
  %56 = xor i64 %54, %55
  %57 = lshr i64 %53, 6
  %58 = xor i64 %56, %57
  %59 = add nsw i64 %50, -7
  %60 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %59
  %61 = load i64, ptr %60, align 8, !tbaa !80
  %62 = add i64 %58, %61
  %63 = add nsw i64 %50, -15
  %64 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !80
  %66 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 63)
  %67 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 56)
  %68 = xor i64 %66, %67
  %69 = lshr i64 %65, 7
  %70 = xor i64 %68, %69
  %71 = add nsw i64 %50, -16
  %72 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !80
  %74 = add i64 %62, %73
  %75 = add i64 %74, %70
  %76 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %50
  store i64 %75, ptr %76, align 8, !tbaa !80
  %77 = add nuw nsw i64 %50, 1
  %78 = icmp eq i64 %77, 80
  br i1 %78, label %79, label %49, !prof !120, !llvm.loop !121

79:                                               ; preds = %49
  %80 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !80
  %82 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 1
  %83 = load i64, ptr %82, align 8, !tbaa !80
  %84 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 2
  %85 = load i64, ptr %84, align 8, !tbaa !80
  %86 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 3
  %87 = load i64, ptr %86, align 8, !tbaa !80
  %88 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 4
  %89 = load i64, ptr %88, align 8, !tbaa !80
  %90 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 5
  %91 = load i64, ptr %90, align 8, !tbaa !80
  %92 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 6
  %93 = load i64, ptr %92, align 8, !tbaa !80
  %94 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3, i64 7
  %95 = load i64, ptr %94, align 8, !tbaa !80
  br label %96

96:                                               ; preds = %79, %96
  %97 = phi i64 [ 0, %79 ], [ %134, %96 ]
  %98 = phi i64 [ %81, %79 ], [ %133, %96 ]
  %99 = phi i64 [ %83, %79 ], [ %98, %96 ]
  %100 = phi i64 [ %95, %79 ], [ %101, %96 ]
  %101 = phi i64 [ %93, %79 ], [ %102, %96 ]
  %102 = phi i64 [ %91, %79 ], [ %103, %96 ]
  %103 = phi i64 [ %89, %79 ], [ %132, %96 ]
  %104 = phi i64 [ %87, %79 ], [ %105, %96 ]
  %105 = phi i64 [ %85, %79 ], [ %99, %96 ]
  %106 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 50)
  %107 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 46)
  %108 = xor i64 %106, %107
  %109 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 23)
  %110 = xor i64 %108, %109
  %111 = add i64 %100, %110
  %112 = xor i64 %101, %102
  %113 = and i64 %112, %103
  %114 = xor i64 %113, %101
  %115 = add i64 %111, %114
  %116 = getelementptr inbounds [80 x i64], ptr @K512, i64 0, i64 %97
  %117 = load i64, ptr %116, align 8, !tbaa !80
  %118 = add i64 %115, %117
  %119 = getelementptr inbounds [80 x i64], ptr %3, i64 0, i64 %97
  %120 = load i64, ptr %119, align 8, !tbaa !80
  %121 = add i64 %118, %120
  %122 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 36)
  %123 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 30)
  %124 = xor i64 %122, %123
  %125 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 25)
  %126 = xor i64 %124, %125
  %127 = and i64 %98, %99
  %128 = or i64 %98, %99
  %129 = and i64 %128, %105
  %130 = or i64 %129, %127
  %131 = add i64 %126, %130
  %132 = add i64 %121, %104
  %133 = add i64 %131, %121
  %134 = add nuw nsw i64 %97, 1
  %135 = icmp eq i64 %134, 80
  br i1 %135, label %136, label %96, !prof !122, !llvm.loop !123

136:                                              ; preds = %96
  %137 = add i64 %133, %81
  store i64 %137, ptr %80, align 8, !tbaa !80
  %138 = add i64 %98, %83
  store i64 %138, ptr %82, align 8, !tbaa !80
  %139 = add i64 %99, %85
  store i64 %139, ptr %84, align 8, !tbaa !80
  %140 = add i64 %105, %87
  store i64 %140, ptr %86, align 8, !tbaa !80
  %141 = add i64 %132, %89
  store i64 %141, ptr %88, align 8, !tbaa !80
  %142 = add i64 %103, %91
  store i64 %142, ptr %90, align 8, !tbaa !80
  %143 = add i64 %102, %93
  store i64 %143, ptr %92, align 8, !tbaa !80
  %144 = add i64 %101, %95
  store i64 %144, ptr %94, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %3) #14
  ret void
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @shawrite(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #3 !prof !124 !PGOFuncName !125 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %151, label %5, !prof !126

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 10
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = trunc i64 %1 to i32
  %9 = add i32 %7, %8
  store i32 %9, ptr %6, align 4, !tbaa !106
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, %1
  br i1 %11, label %12, label %26, !prof !127

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !105
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !105
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !104
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !104
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !103
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !103
  br label %26

26:                                               ; preds = %12, %22, %17, %5
  %27 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !101
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %57, !prof !128

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !73
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %33, %1
  br i1 %34, label %48, label %35, !prof !129

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %43, %35 ], [ %0, %30 ]
  %37 = phi i64 [ %45, %35 ], [ %1, %30 ]
  %38 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  tail call void %39(ptr noundef %2, ptr noundef %36) #14
  %40 = load i32, ptr %31, align 4, !tbaa !73
  %41 = lshr i32 %40, 3
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %36, i64 %42
  %44 = zext i32 %40 to i64
  %45 = sub i64 %37, %44
  %46 = zext i32 %40 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %35, !prof !129, !llvm.loop !130

48:                                               ; preds = %35, %30
  %49 = phi i64 [ %1, %30 ], [ %45, %35 ]
  %50 = phi ptr [ %0, %30 ], [ %43, %35 ]
  %51 = icmp eq i64 %49, 0
  br i1 %51, label %151, label %52, !prof !75

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 4
  %54 = add nuw nsw i64 %49, 7
  %55 = lshr i64 %54, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %53, ptr align 1 %50, i64 %55, i1 false), !prof !131
  %56 = trunc i64 %49 to i32
  br label %149

57:                                               ; preds = %26
  %58 = and i32 %28, 7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60, !prof !132

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 6
  %62 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 1
  %63 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 4
  %64 = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  br label %116

65:                                               ; preds = %57
  %66 = lshr exact i32 %28, 3
  %67 = zext i32 %28 to i64
  %68 = add i64 %67, %1
  %69 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !73
  %71 = zext i32 %70 to i64
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %108, label %73, !prof !133

73:                                               ; preds = %65
  %74 = sub i32 %70, %28
  %75 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 4
  %76 = zext nneg i32 %66 to i64
  %77 = getelementptr inbounds i8, ptr %75, i64 %76
  %78 = lshr i32 %74, 3
  %79 = zext nneg i32 %78 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %77, ptr align 1 %0, i64 %79, i1 false), !prof !134
  %80 = zext i32 %74 to i64
  %81 = sub i64 %1, %80
  %82 = getelementptr inbounds i8, ptr %0, i64 %79
  %83 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !72
  tail call void %84(ptr noundef %2, ptr noundef nonnull %75) #14, !prof !135
  store i32 0, ptr %27, align 8, !tbaa !101
  %85 = load i32, ptr %69, align 4, !tbaa !73
  %86 = zext i32 %85 to i64
  %87 = icmp ult i64 %81, %86
  br i1 %87, label %100, label %88, !prof !136

88:                                               ; preds = %73, %88
  %89 = phi ptr [ %95, %88 ], [ %82, %73 ]
  %90 = phi i64 [ %97, %88 ], [ %81, %73 ]
  %91 = load ptr, ptr %83, align 8, !tbaa !72
  tail call void %91(ptr noundef %2, ptr noundef %89) #14, !prof !137
  %92 = load i32, ptr %69, align 4, !tbaa !73
  %93 = lshr i32 %92, 3
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %89, i64 %94
  %96 = zext i32 %92 to i64
  %97 = sub i64 %90, %96
  %98 = zext i32 %92 to i64
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %88, !prof !138, !llvm.loop !130

100:                                              ; preds = %88, %73
  %101 = phi i64 [ %81, %73 ], [ %97, %88 ]
  %102 = phi ptr [ %82, %73 ], [ %95, %88 ]
  %103 = icmp eq i64 %101, 0
  br i1 %103, label %151, label %104, !prof !139

104:                                              ; preds = %100
  %105 = add nuw nsw i64 %101, 7
  %106 = lshr i64 %105, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %75, ptr align 1 %102, i64 %106, i1 false), !prof !140
  %107 = trunc i64 %101 to i32
  br label %149

108:                                              ; preds = %65
  %109 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 4
  %110 = zext nneg i32 %66 to i64
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  %112 = add i64 %1, 7
  %113 = lshr i64 %112, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %111, ptr align 1 %0, i64 %113, i1 false)
  %114 = load i32, ptr %27, align 8, !tbaa !101
  %115 = add i32 %114, %8
  br label %149

116:                                              ; preds = %60, %146
  %117 = phi i64 [ 0, %60 ], [ %147, %146 ]
  %118 = lshr i64 %117, 3
  %119 = getelementptr inbounds i8, ptr %0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !54
  %121 = trunc i64 %117 to i8
  %122 = and i8 %121, 7
  %123 = xor i8 %122, 7
  %124 = shl nuw i8 1, %123
  %125 = and i8 %120, %124
  %126 = icmp eq i8 %125, 0
  %127 = load i32, ptr %27, align 8, !tbaa !101
  %128 = and i32 %127, 7
  %129 = xor i32 %128, 7
  %130 = shl nuw nsw i32 1, %129
  %131 = lshr i32 %127, 3
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds %struct.SHA, ptr %2, i64 0, i32 4, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !54
  %135 = trunc i32 %130 to i8
  %136 = xor i8 %135, -1
  %137 = and i8 %134, %136
  %138 = or i8 %134, %135
  %139 = select i1 %126, i8 %137, i8 %138
  store i8 %139, ptr %133, align 1, !tbaa !54
  %140 = load i32, ptr %27, align 8, !tbaa !101
  %141 = add i32 %140, 1
  store i32 %141, ptr %27, align 8, !tbaa !101
  %142 = load i32, ptr %61, align 4, !tbaa !73
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %116
  %145 = load ptr, ptr %62, align 8, !tbaa !72
  tail call void %145(ptr noundef %2, ptr noundef nonnull %63) #14
  store i32 0, ptr %27, align 8, !tbaa !101
  br label %146

146:                                              ; preds = %144, %116
  %147 = add nuw i64 %117, 1
  %148 = icmp eq i64 %147, %64
  br i1 %148, label %151, label %116, !llvm.loop !141

149:                                              ; preds = %52, %104, %108
  %150 = phi i32 [ %115, %108 ], [ %107, %104 ], [ %56, %52 ]
  store i32 %150, ptr %27, align 8, !tbaa !101
  br label %151

151:                                              ; preds = %146, %149, %100, %48, %3
  %152 = phi i64 [ 0, %3 ], [ %1, %48 ], [ %1, %100 ], [ %1, %149 ], [ %1, %146 ]
  ret i64 %152
}

declare void @Perl_sv_setuv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_setref_pv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @shafinish(ptr noundef %0) unnamed_addr #3 !prof !66 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !73
  %4 = icmp eq i32 %3, 512
  %5 = select i1 %4, i32 448, i32 896, !prof !75
  %6 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !101
  %8 = and i32 %7, 7
  %9 = xor i32 %8, 7
  %10 = shl nuw nsw i32 1, %9
  %11 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 4
  %12 = lshr i32 %7, 3
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 4, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !54
  %16 = trunc i32 %10 to i8
  %17 = or i8 %15, %16
  store i8 %17, ptr %14, align 1, !tbaa !54
  %18 = load i32, ptr %6, align 8, !tbaa !101
  %19 = add i32 %18, 1
  store i32 %19, ptr %6, align 8, !tbaa !101
  %20 = icmp ugt i32 %19, %5
  br i1 %20, label %24, label %21, !prof !76

21:                                               ; preds = %44, %1
  %22 = load i32, ptr %6, align 8, !tbaa !101
  %23 = icmp ult i32 %22, %5
  br i1 %23, label %47, label %62, !prof !76

24:                                               ; preds = %1, %44
  %25 = phi i32 [ %45, %44 ], [ %19, %1 ]
  %26 = load i32, ptr %2, align 4, !tbaa !73
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %41, !prof !143

28:                                               ; preds = %24
  %29 = and i32 %25, 7
  %30 = xor i32 %29, 7
  %31 = shl nuw nsw i32 1, %30
  %32 = lshr i32 %25, 3
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !54
  %36 = trunc i32 %31 to i8
  %37 = xor i8 %36, -1
  %38 = and i8 %35, %37
  store i8 %38, ptr %34, align 1, !tbaa !54
  %39 = load i32, ptr %6, align 8, !tbaa !101
  %40 = add i32 %39, 1
  br label %44

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !72
  tail call void %43(ptr noundef %0, ptr noundef nonnull %11) #14, !prof !144
  br label %44

44:                                               ; preds = %41, %28
  %45 = phi i32 [ 0, %41 ], [ %40, %28 ]
  store i32 %45, ptr %6, align 8, !tbaa !101
  %46 = icmp ugt i32 %45, %5
  br i1 %46, label %24, label %21, !prof !145, !llvm.loop !146

47:                                               ; preds = %21, %47
  %48 = phi i32 [ %60, %47 ], [ %22, %21 ]
  %49 = and i32 %48, 7
  %50 = xor i32 %49, 7
  %51 = shl nuw nsw i32 1, %50
  %52 = lshr i32 %48, 3
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 4, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !54
  %56 = trunc i32 %51 to i8
  %57 = xor i8 %56, -1
  %58 = and i8 %55, %57
  store i8 %58, ptr %54, align 1, !tbaa !54
  %59 = load i32, ptr %6, align 8, !tbaa !101
  %60 = add i32 %59, 1
  store i32 %60, ptr %6, align 8, !tbaa !101
  %61 = icmp ult i32 %60, %5
  br i1 %61, label %47, label %62, !prof !147, !llvm.loop !148

62:                                               ; preds = %47, %21
  %63 = load i32, ptr %2, align 4, !tbaa !73
  %64 = icmp ugt i32 %63, 512
  br i1 %64, label %65, label %93, !prof !149

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 4, i64 112
  %67 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !103
  br label %69

69:                                               ; preds = %65, %69
  %70 = phi i32 [ 0, %65 ], [ %77, %69 ]
  %71 = phi ptr [ %66, %65 ], [ %76, %69 ]
  %72 = shl nuw nsw i32 %70, 3
  %73 = sub nuw nsw i32 24, %72
  %74 = lshr i32 %68, %73
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %75, ptr %71, align 1, !tbaa !54
  %77 = add nuw nsw i32 %70, 1
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %69, !prof !150, !llvm.loop !102

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 4, i64 116
  %81 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 8
  %82 = load i32, ptr %81, align 4, !tbaa !104
  br label %83

83:                                               ; preds = %79, %83
  %84 = phi i32 [ 0, %79 ], [ %91, %83 ]
  %85 = phi ptr [ %80, %79 ], [ %90, %83 ]
  %86 = shl nuw nsw i32 %84, 3
  %87 = sub nuw nsw i32 24, %86
  %88 = lshr i32 %82, %87
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 %89, ptr %85, align 1, !tbaa !54
  %91 = add nuw nsw i32 %84, 1
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %83, !prof !150, !llvm.loop !102

93:                                               ; preds = %83, %62
  %94 = select i1 %4, i64 56, i64 120, !prof !75
  %95 = getelementptr inbounds i8, ptr %11, i64 %94
  %96 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 9
  %97 = load i32, ptr %96, align 8, !tbaa !105
  br label %98

98:                                               ; preds = %93, %98
  %99 = phi i32 [ 0, %93 ], [ %106, %98 ]
  %100 = phi ptr [ %95, %93 ], [ %105, %98 ]
  %101 = shl nuw nsw i32 %99, 3
  %102 = sub nuw nsw i32 24, %101
  %103 = lshr i32 %97, %102
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %100, i64 1
  store i8 %104, ptr %100, align 1, !tbaa !54
  %106 = add nuw nsw i32 %99, 1
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %98, !prof !150, !llvm.loop !102

108:                                              ; preds = %98
  %109 = select i1 %4, i64 60, i64 124, !prof !75
  %110 = getelementptr inbounds i8, ptr %11, i64 %109
  %111 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 10
  %112 = load i32, ptr %111, align 4, !tbaa !106
  br label %113

113:                                              ; preds = %108, %113
  %114 = phi i32 [ 0, %108 ], [ %121, %113 ]
  %115 = phi ptr [ %110, %108 ], [ %120, %113 ]
  %116 = shl nuw nsw i32 %114, 3
  %117 = sub nuw nsw i32 24, %116
  %118 = lshr i32 %112, %117
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds i8, ptr %115, i64 1
  store i8 %119, ptr %115, align 1, !tbaa !54
  %121 = add nuw nsw i32 %114, 1
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %113, !prof !150, !llvm.loop !102

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !72
  tail call void %125(ptr noundef %0, ptr noundef nonnull %11) #14, !prof !151
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @digcpy(ptr noundef %0) unnamed_addr #9 !prof !55 !PGOFuncName !152 {
  %2 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %0, align 8, !tbaa !69
  %4 = icmp slt i32 %3, 257
  br i1 %4, label %5, label %27, !prof !75

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi ptr [ %6, %5 ], [ %23, %22 ]
  %9 = phi ptr [ %2, %5 ], [ %25, %22 ]
  %10 = phi i32 [ 0, %5 ], [ %24, %22 ]
  %11 = load i32, ptr %8, align 4, !tbaa !57
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i32 [ 0, %7 ], [ %20, %12 ]
  %14 = phi ptr [ %9, %7 ], [ %19, %12 ]
  %15 = shl nuw nsw i32 %13, 3
  %16 = sub nuw nsw i32 24, %15
  %17 = lshr i32 %11, %16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %18, ptr %14, align 1, !tbaa !54
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %12, !llvm.loop !102

22:                                               ; preds = %12
  %23 = getelementptr inbounds i32, ptr %8, i64 1
  %24 = add nuw nsw i32 %10, 1
  %25 = getelementptr inbounds i8, ptr %9, i64 4
  %26 = icmp eq i32 %24, 8
  br i1 %26, label %65, label %7, !llvm.loop !153

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  br label %29

29:                                               ; preds = %27, %60
  %30 = phi ptr [ %28, %27 ], [ %61, %60 ]
  %31 = phi ptr [ %2, %27 ], [ %63, %60 ]
  %32 = phi i32 [ 0, %27 ], [ %62, %60 ]
  %33 = load i64, ptr %30, align 8, !tbaa !80
  %34 = lshr i64 %33, 32
  %35 = trunc i64 %34 to i32
  br label %36

36:                                               ; preds = %29, %36
  %37 = phi i32 [ 0, %29 ], [ %44, %36 ]
  %38 = phi ptr [ %31, %29 ], [ %43, %36 ]
  %39 = shl nuw nsw i32 %37, 3
  %40 = sub nuw nsw i32 24, %39
  %41 = lshr i32 %35, %40
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %42, ptr %38, align 1, !tbaa !54
  %44 = add nuw nsw i32 %37, 1
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %36, !prof !154, !llvm.loop !102

46:                                               ; preds = %36
  %47 = getelementptr inbounds i8, ptr %31, i64 4
  %48 = load i64, ptr %30, align 8, !tbaa !80
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i32 [ 0, %46 ], [ %58, %50 ]
  %52 = phi ptr [ %47, %46 ], [ %57, %50 ]
  %53 = shl nuw nsw i32 %51, 3
  %54 = sub nuw nsw i32 24, %53
  %55 = lshr i32 %49, %54
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %56, ptr %52, align 1, !tbaa !54
  %58 = add nuw nsw i32 %51, 1
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %50, !prof !154, !llvm.loop !102

60:                                               ; preds = %50
  %61 = getelementptr inbounds i64, ptr %30, i64 1
  %62 = add nuw nsw i32 %32, 1
  %63 = getelementptr inbounds i8, ptr %31, i64 8
  %64 = icmp eq i32 %62, 8
  br i1 %64, label %65, label %29, !prof !155, !llvm.loop !156

65:                                               ; preds = %60, %22
  ret ptr %2
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef nonnull ptr @shahex(ptr noundef %0) unnamed_addr #10 !prof !55 {
  %2 = tail call fastcc ptr @digcpy(ptr noundef %0)
  %3 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 13
  store i8 0, ptr %3, align 4, !tbaa !54
  %4 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = icmp ugt i32 %5, 64
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %4, align 8, !tbaa !74
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %20, %10 ], [ %2, %7 ]
  %12 = phi ptr [ %26, %10 ], [ %3, %7 ]
  %13 = phi i32 [ %27, %10 ], [ 0, %7 ]
  %14 = load i8, ptr %11, align 1, !tbaa !54
  %15 = lshr i8 %14, 4
  %16 = zext nneg i8 %15 to i64
  %17 = getelementptr inbounds [17 x i8], ptr @xmap, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !54
  %19 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %18, ptr %12, align 1, !tbaa !54
  %20 = getelementptr inbounds i8, ptr %11, i64 1
  %21 = load i8, ptr %11, align 1, !tbaa !54
  %22 = and i8 %21, 15
  %23 = zext nneg i8 %22 to i64
  %24 = getelementptr inbounds [17 x i8], ptr @xmap, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !54
  %26 = getelementptr inbounds i8, ptr %12, i64 2
  store i8 %25, ptr %19, align 1, !tbaa !54
  %27 = add nuw i32 %13, 1
  %28 = load i32, ptr %4, align 8, !tbaa !74
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %10, label %30, !llvm.loop !157

30:                                               ; preds = %10, %7
  %31 = phi ptr [ %3, %7 ], [ %26, %10 ]
  store i8 0, ptr %31, align 1, !tbaa !54
  br label %32

32:                                               ; preds = %1, %30
  ret ptr %3
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef nonnull ptr @shabase64(ptr noundef %0) unnamed_addr #11 !prof !66 !PGOFuncName !158 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %0, align 8, !tbaa !69
  %6 = icmp slt i32 %5, 257
  br i1 %6, label %7, label %29, !prof !75

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi ptr [ %8, %7 ], [ %25, %24 ]
  %11 = phi ptr [ %4, %7 ], [ %27, %24 ]
  %12 = phi i32 [ 0, %7 ], [ %26, %24 ]
  %13 = load i32, ptr %10, align 4, !tbaa !57
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi i32 [ 0, %9 ], [ %22, %14 ]
  %16 = phi ptr [ %11, %9 ], [ %21, %14 ]
  %17 = shl nuw nsw i32 %15, 3
  %18 = sub nuw nsw i32 24, %17
  %19 = lshr i32 %13, %18
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !54
  %22 = add nuw nsw i32 %15, 1
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %14, !llvm.loop !102

24:                                               ; preds = %14
  %25 = getelementptr inbounds i32, ptr %10, i64 1
  %26 = add nuw nsw i32 %12, 1
  %27 = getelementptr inbounds i8, ptr %11, i64 4
  %28 = icmp eq i32 %26, 8
  br i1 %28, label %67, label %9, !llvm.loop !153

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 3
  br label %31

31:                                               ; preds = %62, %29
  %32 = phi ptr [ %30, %29 ], [ %63, %62 ]
  %33 = phi ptr [ %4, %29 ], [ %65, %62 ]
  %34 = phi i32 [ 0, %29 ], [ %64, %62 ]
  %35 = load i64, ptr %32, align 8, !tbaa !80
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %38, %31
  %39 = phi i32 [ 0, %31 ], [ %46, %38 ]
  %40 = phi ptr [ %33, %31 ], [ %45, %38 ]
  %41 = shl nuw nsw i32 %39, 3
  %42 = sub nuw nsw i32 24, %41
  %43 = lshr i32 %37, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %40, i64 1
  store i8 %44, ptr %40, align 1, !tbaa !54
  %46 = add nuw nsw i32 %39, 1
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %38, !prof !154, !llvm.loop !102

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, ptr %33, i64 4
  %50 = load i64, ptr %32, align 8, !tbaa !80
  %51 = trunc i64 %50 to i32
  br label %52

52:                                               ; preds = %52, %48
  %53 = phi i32 [ 0, %48 ], [ %60, %52 ]
  %54 = phi ptr [ %49, %48 ], [ %59, %52 ]
  %55 = shl nuw nsw i32 %53, 3
  %56 = sub nuw nsw i32 24, %55
  %57 = lshr i32 %51, %56
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 %58, ptr %54, align 1, !tbaa !54
  %60 = add nuw nsw i32 %53, 1
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %52, !prof !154, !llvm.loop !102

62:                                               ; preds = %52
  %63 = getelementptr inbounds i64, ptr %32, i64 1
  %64 = add nuw nsw i32 %34, 1
  %65 = getelementptr inbounds i8, ptr %33, i64 8
  %66 = icmp eq i32 %64, 8
  br i1 %66, label %67, label %31, !prof !155, !llvm.loop !156

67:                                               ; preds = %62, %24
  %68 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 14
  store i8 0, ptr %68, align 1, !tbaa !54
  %69 = getelementptr inbounds %struct.SHA, ptr %0, i64 0, i32 12
  %70 = load i32, ptr %69, align 8, !tbaa !74
  %71 = zext i32 %70 to i64
  %72 = urem i64 %71, 3
  %73 = icmp eq i64 %72, 0
  %74 = udiv i64 %71, 3
  %75 = shl nuw nsw i64 %74, 2
  %76 = add nuw nsw i64 %72, 1
  %77 = select i1 %73, i64 0, i64 %76, !prof !75
  %78 = add nuw nsw i64 %75, %77
  %79 = icmp ugt i64 %78, 86
  br i1 %79, label %161, label %80, !prof !75

80:                                               ; preds = %67
  %81 = icmp ugt i32 %70, 3
  br i1 %81, label %82, label %121, !prof !76

82:                                               ; preds = %80
  %83 = getelementptr inbounds i8, ptr %3, i64 1
  %84 = getelementptr inbounds i8, ptr %3, i64 2
  %85 = getelementptr inbounds i8, ptr %3, i64 3
  %86 = getelementptr inbounds i8, ptr %3, i64 4
  br label %87

87:                                               ; preds = %82, %87
  %88 = phi ptr [ %4, %82 ], [ %119, %87 ]
  %89 = phi i32 [ %70, %82 ], [ %118, %87 ]
  store i8 0, ptr %3, align 1, !tbaa !54
  %90 = load i8, ptr %88, align 1
  %91 = getelementptr inbounds i8, ptr %88, i64 1
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds i8, ptr %88, i64 2
  %94 = load i8, ptr %93, align 1
  %95 = lshr i8 %90, 2
  %96 = zext nneg i8 %95 to i64
  %97 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !54
  store i8 %98, ptr %3, align 1, !tbaa !54
  %99 = shl i8 %90, 4
  %100 = and i8 %99, 48
  %101 = lshr i8 %92, 4
  %102 = or disjoint i8 %100, %101
  %103 = zext nneg i8 %102 to i64
  %104 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !54
  store i8 %105, ptr %83, align 1, !tbaa !54
  %106 = shl i8 %92, 2
  %107 = and i8 %106, 60
  %108 = lshr i8 %94, 6
  %109 = or disjoint i8 %107, %108
  %110 = zext nneg i8 %109 to i64
  %111 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !54
  store i8 %112, ptr %84, align 1, !tbaa !54
  %113 = and i8 %94, 63
  %114 = zext nneg i8 %113 to i64
  %115 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !54
  store i8 %116, ptr %85, align 1, !tbaa !54
  store i8 0, ptr %86, align 1, !tbaa !54
  %117 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %3) #14
  %118 = add i32 %89, -3
  %119 = getelementptr inbounds i8, ptr %88, i64 3
  %120 = icmp ugt i32 %118, 3
  br i1 %120, label %87, label %121, !prof !159, !llvm.loop !160

121:                                              ; preds = %87, %80
  %122 = phi i32 [ %70, %80 ], [ %118, %87 ]
  %123 = phi ptr [ %4, %80 ], [ %119, %87 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i64 3, i1 false)
  store i8 0, ptr %3, align 1, !tbaa !54
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %159, label %125, !prof !75

125:                                              ; preds = %121
  %126 = zext nneg i32 %122 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %123, i64 %126, i1 false), !prof !161
  %127 = load i8, ptr %2, align 1, !tbaa !54
  %128 = lshr i8 %127, 2
  %129 = zext nneg i8 %128 to i64
  %130 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !54
  store i8 %131, ptr %3, align 1, !tbaa !54
  %132 = shl i8 %127, 4
  %133 = and i8 %132, 48
  %134 = getelementptr inbounds i8, ptr %2, i64 1
  %135 = load i8, ptr %134, align 1, !tbaa !54
  %136 = lshr i8 %135, 4
  %137 = or disjoint i8 %136, %133
  %138 = zext nneg i8 %137 to i64
  %139 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !54
  %141 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %140, ptr %141, align 1, !tbaa !54
  %142 = shl i8 %135, 2
  %143 = and i8 %142, 60
  %144 = getelementptr inbounds i8, ptr %2, i64 2
  %145 = load i8, ptr %144, align 1, !tbaa !54
  %146 = lshr i8 %145, 6
  %147 = or disjoint i8 %146, %143
  %148 = zext nneg i8 %147 to i64
  %149 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !54
  %151 = getelementptr inbounds i8, ptr %3, i64 2
  store i8 %150, ptr %151, align 1, !tbaa !54
  %152 = and i8 %145, 63
  %153 = zext nneg i8 %152 to i64
  %154 = getelementptr inbounds [65 x i8], ptr @bmap, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !54
  %156 = getelementptr inbounds i8, ptr %3, i64 3
  store i8 %155, ptr %156, align 1, !tbaa !54
  %157 = getelementptr i8, ptr %3, i64 %126
  %158 = getelementptr i8, ptr %157, i64 1
  store i8 0, ptr %158, align 1, !tbaa !54
  br label %159

159:                                              ; preds = %121, %125
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2)
  %160 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %3) #14
  br label %161

161:                                              ; preds = %67, %159
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #14
  ret ptr %68
}

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @boot_Digest__SHA, ptr @Perl_xs_handshake, i64 1}
!36 = !{ptr @boot_Digest__SHA, ptr @Perl_newXS_flags, i64 58}
!37 = !{ptr @boot_Digest__SHA, ptr @Perl_xs_boot_epilog, i64 1}
!38 = !{ptr @XS_Digest__SHA_sha1, ptr @shawrite, i64 24214}
!39 = !{ptr @XS_Digest__SHA_sha1, ptr @shafinish, i64 12034}
!40 = !{ptr @XS_Digest__SHA_sha1, ptr @shabase64, i64 12034}
!41 = !{ptr @XS_Digest__SHA_sha1, ptr @Perl_newSVpv, i64 12034}
!42 = !{ptr @XS_Digest__SHA_sha1, ptr @Perl_sv_2mortal, i64 12034}
!43 = !{ptr @shawrite, ptr @sha512, i64 534862}
!44 = !{ptr @shafinish, ptr @sha512, i64 13494}
!45 = !{ptr @shabase64, ptr @strcat, i64 264748}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!49, !50, i64 0}
!49 = !{!"cv", !50, i64 0, !53, i64 8, !53, i64 12, !51, i64 16}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"int", !51, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!"function_entry_count", i64 0}
!56 = !{!50, !50, i64 0}
!57 = !{!53, !53, i64 0}
!58 = !{!59, !53, i64 12}
!59 = !{!"sv", !50, i64 0, !53, i64 8, !53, i64 12, !51, i64 16}
!60 = !{!59, !50, i64 0}
!61 = !{!62, !51, i64 35}
!62 = !{!"op", !50, i64 0, !50, i64 8, !50, i64 16, !63, i64 24, !53, i64 32, !53, i64 33, !53, i64 33, !53, i64 33, !53, i64 33, !53, i64 33, !53, i64 33, !53, i64 33, !51, i64 34, !51, i64 35}
!63 = !{!"long", !51, i64 0}
!64 = !{!62, !63, i64 24}
!65 = !{i32 0, i32 2}
!66 = !{!"function_entry_count", i64 12034}
!67 = !{!"cpan/Digest-SHA/SHA.c;XS_Digest__SHA_sha1"}
!68 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 12034, i32 0, i32 0, i32 0, i32 0}
!69 = !{!70, !53, i64 0}
!70 = !{!"SHA", !53, i64 0, !50, i64 8, !51, i64 16, !51, i64 48, !51, i64 112, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252, !53, i64 256, !53, i64 260, !51, i64 264, !53, i64 328, !51, i64 332, !51, i64 461}
!71 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 12034, i32 0, i32 0}
!72 = !{!70, !50, i64 8}
!73 = !{!70, !53, i64 244}
!74 = !{!70, !53, i64 328}
!75 = !{!"branch_weights", i32 0, i32 12034}
!76 = !{!"branch_weights", i32 12033, i32 1}
!77 = !{!"branch_weights", i32 24068, i32 0}
!78 = !{!79, !63, i64 16}
!79 = !{!"xpv", !50, i64 0, !51, i64 8, !63, i64 16, !51, i64 24}
!80 = !{!63, !63, i64 0}
!81 = !{!"branch_weights", i32 146, i32 23922}
!82 = !{!"branch_weights", i32 0, i32 146}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"branch_weights", i32 12033, i32 12035}
!87 = distinct !{!87, !84, !85}
!88 = !{!"branch_weights", i32 12034, i32 0, i32 0}
!89 = !{!90, !53, i64 796}
!90 = !{!"", !70, i64 0, !70, i64 552, !53, i64 1104, !51, i64 1108}
!91 = !{!90, !53, i64 880}
!92 = !{!90, !53, i64 1104}
!93 = distinct !{!93, !84, !85}
!94 = !{!90, !53, i64 244}
!95 = distinct !{!95, !84, !85}
!96 = distinct !{!96, !84, !85}
!97 = distinct !{!97, !84, !85}
!98 = !{!90, !53, i64 328}
!99 = distinct !{!99, !84, !85}
!100 = distinct !{!100, !84, !85}
!101 = !{!70, !53, i64 240}
!102 = distinct !{!102, !84, !85}
!103 = !{!70, !53, i64 248}
!104 = !{!70, !53, i64 252}
!105 = !{!70, !53, i64 256}
!106 = !{!70, !53, i64 260}
!107 = distinct !{!107, !84, !85}
!108 = distinct !{!108, !84, !85}
!109 = distinct !{!109, !84, !85}
!110 = distinct !{!110, !84, !85}
!111 = distinct !{!111, !84, !85}
!112 = !{!"cpan/Digest-SHA/SHA.c;shainit"}
!113 = !{!"cpan/Digest-SHA/SHA.c;sharewind"}
!114 = distinct !{!114, !84, !85}
!115 = distinct !{!115, !84, !85}
!116 = !{!"function_entry_count", i64 548356}
!117 = !{!"cpan/Digest-SHA/SHA.c;sha512"}
!118 = !{!"branch_weights", i32 548356, i32 8225340}
!119 = distinct !{!119, !84, !85}
!120 = !{!"branch_weights", i32 548356, i32 34546428}
!121 = distinct !{!121, !84, !85}
!122 = !{!"branch_weights", i32 548356, i32 43320124}
!123 = distinct !{!123, !84, !85}
!124 = !{!"function_entry_count", i64 24214}
!125 = !{!"cpan/Digest-SHA/SHA.c;shawrite"}
!126 = !{!"branch_weights", i32 32, i32 24182}
!127 = !{!"branch_weights", i32 0, i32 24182}
!128 = !{!"branch_weights", i32 12034, i32 12148}
!129 = !{!"branch_weights", i32 1, i32 0}
!130 = distinct !{!130, !84, !85}
!131 = !{!"VP", i32 1, i64 12034, i64 9, i64 12034}
!132 = !{!"branch_weights", i32 12148, i32 0}
!133 = !{!"branch_weights", i32 0, i32 12148}
!134 = !{!"VP", i32 1, i64 12148, i64 65, i64 12148}
!135 = !{!"VP", i32 0, i64 12148, i64 -1185752440706861168, i64 12148}
!136 = !{!"branch_weights", i32 1, i32 12147}
!137 = !{!"VP", i32 0, i64 522714, i64 -1185752440706861168, i64 522714}
!138 = !{!"branch_weights", i32 12147, i32 510567}
!139 = !{!"branch_weights", i32 100, i32 12048}
!140 = !{!"VP", i32 1, i64 12048, i64 65, i64 5791, i64 33, i64 2925, i64 17, i64 1454, i64 9, i64 797}
!141 = distinct !{!141, !84, !85}
!142 = !{!"cpan/Digest-SHA/SHA.c;shafinish"}
!143 = !{!"branch_weights", i32 98212, i32 1460}
!144 = !{!"VP", i32 0, i64 1460, i64 -1185752440706861168, i64 1460}
!145 = !{!"branch_weights", i32 87639, i32 12033}
!146 = distinct !{!146, !84, !85}
!147 = !{!"branch_weights", i32 6127769, i32 12033}
!148 = distinct !{!148, !84, !85}
!149 = !{!"branch_weights", i32 12034, i32 0}
!150 = !{!"branch_weights", i32 12034, i32 36102}
!151 = !{!"VP", i32 0, i64 12034, i64 -1185752440706861168, i64 12034}
!152 = !{!"cpan/Digest-SHA/SHA.c;digcpy"}
!153 = distinct !{!153, !84, !85}
!154 = !{!"branch_weights", i32 96272, i32 288816}
!155 = !{!"branch_weights", i32 12034, i32 84238}
!156 = distinct !{!156, !84, !85}
!157 = distinct !{!157, !84, !85}
!158 = !{!"cpan/Digest-SHA/SHA.c;shabase64"}
!159 = !{!"branch_weights", i32 240681, i32 12033}
!160 = distinct !{!160, !84, !85}
!161 = !{!"VP", i32 1, i64 12034, i64 1, i64 12034}
