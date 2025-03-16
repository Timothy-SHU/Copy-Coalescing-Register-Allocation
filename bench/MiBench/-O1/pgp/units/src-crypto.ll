; ModuleID = 'src/crypto.c'
source_filename = "src/crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MD5Context = type { [4 x i64], [2 x i64], [64 x i8] }
%struct.hashedpw = type { ptr, [16 x i8] }
%struct.IdeaCfbContext = type { [8 x i8], [8 x i8], [52 x i16], i32 }
%struct.nkey = type { [8 x i8], ptr }

@timeshift = external local_unnamed_addr global i64, align 8
@cdate.datebuf = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%4d/%02d/%02d\00", align 1
@ctdate.tdatebuf = internal global [40 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [17 x i8] c"%s %02d:%02d GMT\00", align 1
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [78 x i8] c"\0A\07Unsupported packet format - you need a newer version of PGP for this file.\0A\00", align 1
@global_precision = external local_unnamed_addr global i16, align 2
@mpi_checksum = dso_local local_unnamed_addr global i16 0, align 2
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@verbose = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"signfile: infile = '%s', outfile = '%s', mode = '%c', literalfile = '%s'\0A\00", align 1
@globalPubringName = external global [256 x i8], align 16
@.str.6 = private unnamed_addr constant [34 x i8] c"\0A\07Can't open plaintext file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\0A\07Can't create signature file '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"signfile: invalid mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\0A\07Can't open key ring file '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"This key has already been revoked.\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"\0A\07Can't create output file to update key ring.\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\0AKey compromise certificate created.\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A\07Key is already signed by user '%s'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [229 x i8] c"\0A\0AREAD CAREFULLY:  Based on your own direct first-hand knowledge, are\0Ayou absolutely certain that you are prepared to solemnly certify that\0Athe above public key actually belongs to the user specified by the\0Aabove user ID (y/N)? \00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"\0AKey signature certificate added.\0A\00", align 1
@.str.17 = private unnamed_addr constant [149 x i8] c"\0AError: Key for signing userid '%s'\0Adoes not appear in public keyring '%s'.\0AThus, a signature made with this key cannot be checked on this keyring.\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\0ALooking for key for user '%s':\0A\00", align 1
@batchmode = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"check_signaturefile: infile = '%s', outfile = '%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"\0A\07Can't open ciphertext file '%s'\0A\00", align 1
@filter_mode = external local_unnamed_addr global i8, align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"\0AFile '%s' has signature, but with no text.\00", align 1
@myArgc = external local_unnamed_addr global i32, align 4
@myArgv = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [38 x i8] c"\0AText is assumed to be in file '%s'.\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"\0APlease enter filename of material that signature applies to: \00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"\0A\07Can't open file '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"\0A\07Error: Illegal mode byte %02x in literal packet.\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"File type: '%c'\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Original plaintext file name was: '%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"\0A\07Unrecognised local binary type %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [78 x i8] c"\0AWARNING: Can't find the right public key-- can't check signature integrity.\0A\00", align 1
@quietmode = external local_unnamed_addr global i8, align 1
@.str.31 = private unnamed_addr constant [116 x i8] c"\07\0AUnrecognized message digest algorithm.\0AThis may require a newer version of PGP.\0ACan't check signature integrity.\0A\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"\07\0AMalformed or obsolete signature.  Can't check signature integrity.\0A\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"\07\0ASigning key is too large.  Can't check signature integrity.\0A\00", align 1
@.str.34 = private unnamed_addr constant [119 x i8] c"\0A\07Error: RSA-decrypted block is corrupted.\0AThis may be caused either by corrupted data or by using the wrong RSA key.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [53 x i8] c"signature checking failed, trying in canonical mode\0A\00", align 1
@checksig_pass = external local_unnamed_addr global i32, align 4
@moreflag = external local_unnamed_addr global i8, align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"\0APress ENTER to continue...\00", align 1
@signature_checked = external local_unnamed_addr global i8, align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"\0AGood signature from user \22%s\22.\0A\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"Signature made %s using %d-bit key, key ID %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"\0ASignature and text are separate.  No output file produced. \00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"\0A\07Can't create plaintext file '%s'\0A\00", align 1
@CONVERSION = external local_unnamed_addr global i32, align 4
@SIG_EXTENSION = external global [0 x i8], align 1
@force_flag = external local_unnamed_addr global i8, align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"\0A\07Signature file '%s' already exists.  Overwrite (y/N)? \00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"\0AWriting signature certificate to '%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"\0A\07Error: Badly-formed or corrupted signature certificate.\0A\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"File \22%s\22 does not have a properly-formed signature.\0A\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"squish_file: infile = '%s', outfile = '%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"\0A\07Can't create compressed file '%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Compressing file...\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"compressed.  \00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"idea_encryptfile: infile = '%s', outfile = '%s'\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"\0A\07Can't create ciphertext file '%s'\0A\00", align 1
@passwds = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [46 x i8] c"\0AYou need a pass phrase to encrypt the file. \00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"Just a moment...\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"encryptfile: infile = %s, outfile = %s\0A\00", align 1
@already_have_md5 = internal unnamed_addr global i1 false, align 1
@md5buf = internal global [16 x i8] zeroinitializer, align 16
@encrypt_to_self = external local_unnamed_addr global i8, align 1
@keyID_list = internal unnamed_addr global ptr null, align 8
@my_name = external global [0 x i8], align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"make_literal: infile = %s, outfile = %s, mode = '%c', literalfile = '%s'\0A\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"\0A\07Can't open input plaintext file '%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"\0A\07Unable to append to literal plaintext file\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"strip_literal: infile = %s, outfile = %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"\0A\07'%s' is not a literal plaintext file.\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"decryptfile: infile = %s, outfile = %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"\0A\07'%s' is not a cipher file.\0A\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"\0A\07Out of memory.\0A\00", align 1
@.str.63 = private unnamed_addr constant [130 x i8] c"\07\0AError: key is too large.  RSA keys may be no longer than 1024 bits,\0Adue to limitations imposed by software provided by RSADSI.\0A\00", align 1
@.str.64 = private unnamed_addr constant [63 x i8] c"\0A\07Error: RSA block is possibly malformed.  Old format, maybe?\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"\07\0AUnexpected error %d decrypting\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"\0ARecipients:\0A\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"\0AThis message can only be read by:\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"  keyID: %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [63 x i8] c"\0A\07You do not have the secret key needed to decrypt this file.\0A\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"\07\0ABad or missing CTB_CKE byte.\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"\0A\07Error: Decrypted plaintext is corrupted.\0A\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"idea_decryptfile: infile = %s, outfile = %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c"\0AYou need a pass phrase to decrypt this file. \00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"\0A\07Error:  Bad pass phrase.\0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Pass phrase appears good. \00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"Decompressing plaintext...\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"\0A\07Can't open compressed file '%s'\0A\00", align 1
@.str.79 = private unnamed_addr constant [39 x i8] c"\07\0ABad or missing CTB_COMPRESSED byte.\0A\00", align 1
@.str.80 = private unnamed_addr constant [80 x i8] c"\07\0AUnrecognized compression algorithm.\0AThis may require a newer version of PGP.\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"\0A\07Can't create decompressed file '%s'\0A\00", align 1
@.str.82 = private unnamed_addr constant [51 x i8] c"\0A\07Decompression error.  Probable corrupted input.\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"done.  \00", align 1
@date_ymd.mdays = internal unnamed_addr constant [12 x i16] [i16 31, i16 28, i16 31, i16 30, i16 31, i16 30, i16 31, i16 31, i16 30, i16 31, i16 30, i16 31], align 16
@.str.84 = private unnamed_addr constant [52 x i8] c"\0A\07Error: RSA key length must be at least 256 bits.\0A\00", align 1
@.str.85 = private unnamed_addr constant [46 x i8] c"\0A\07Error: System clock/calendar is set wrong.\0A\00", align 1
@.str.86 = private unnamed_addr constant [31 x i8] c"\07\0AUnexpected error %d signing\0A\00", align 1
@version_byte = external local_unnamed_addr global i32, align 4
@.str.87 = private unnamed_addr constant [102 x i8] c"\07\0AWARNING:  This key has been revoked by its owner,\0Apossibly because the secret key was compromised.\0A\00", align 1
@.str.88 = private unnamed_addr constant [51 x i8] c"This could mean that this signature is a forgery.\0A\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"You cannot use this revoked key.\0A\00", align 1
@.str.90 = private unnamed_addr constant [165 x i8] c"\07\0AWARNING:  Because this public key is not certified with a trusted\0Asignature, it is not known with high confidence that this public key\0Aactually belongs to: \22%s\22.\0A\00", align 1
@.str.91 = private unnamed_addr constant [73 x i8] c"\07\0AWARNING:  This public key is not trusted to actually belong to:\0A\22%s\22.\0A\00", align 1
@.str.92 = private unnamed_addr constant [171 x i8] c"\07\0AWARNING:  Because this public key is not certified with enough trusted\0Asignatures, it is not known with high confidence that this public key\0Aactually belongs to: \22%s\22.\0A\00", align 1
@.str.93 = private unnamed_addr constant [59 x i8] c"But you previously approved using this public key anyway.\0A\00", align 1
@.str.94 = private unnamed_addr constant [54 x i8] c"\0AAre you sure you want to use this public key (y/N)? \00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"Preparing random session key...\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"\0ACompressing [%s] \00", align 1
@plainfile = external global [0 x i8], align 1
@globalSecringName = external global [256 x i8], align 16
@.str.99 = private unnamed_addr constant [103 x i8] c"\0A\07Cannot find the public key matching userid '%s'\0AThis user will not be able to decrypt this message.\0A\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Skipping userid %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [34 x i8] c"\07\0AUnexpected error %d encrypting\0A\00", align 1
@textbuf = external global [4096 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @CToPascal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @string_length(ptr noundef %0) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %5, %4 ], [ %11, %6 ]
  %8 = getelementptr i8, ptr %0, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  store i8 %10, ptr %8, align 1, !tbaa !5
  %11 = add nsw i64 %7, -1
  %12 = and i64 %11, 4294967295
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %6, !llvm.loop !8

14:                                               ; preds = %6, %1
  %15 = trunc i32 %2 to i8
  store i8 %15, ptr %0, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @string_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PascalToC(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i64 1
  %6 = zext i8 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %5, i64 %6, i1 false), !tbaa !5
  %7 = zext i8 %2 to i64
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i64 [ 0, %1 ], [ %7, %4 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_timestamp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @timeshift, align 8, !tbaa !10
  %3 = add i64 %2, 3735928559
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @put_word32(i64 noundef %3, ptr noundef nonnull %0) #16
  tail call void @hiloswap(ptr noundef nonnull %0, i16 noundef signext 4) #16
  br label %7

7:                                                ; preds = %5, %1
  ret i64 %3
}

declare ptr @put_word32(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @hiloswap(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @cdate(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8, !tbaa !10
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = udiv i64 %2, 86400
  %6 = add nsw i64 %5, -730
  %7 = shl nsw i64 %6, 2
  %8 = udiv i64 %7, 1461
  %9 = udiv i64 %7, 5844
  %10 = mul i64 %9, 4294965835
  %11 = add i64 %10, %6
  %12 = trunc i64 %11 to i32
  %13 = trunc i64 %8 to i32
  %14 = add i32 %13, 1972
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %31, label %18, !llvm.loop !12

18:                                               ; preds = %15, %4
  %19 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %20 = phi i32 [ %12, %4 ], [ %29, %15 ]
  %21 = urem i32 %19, 12
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [12 x i16], ptr @date_ymd.mdays, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !13
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %19, 1
  %27 = sext i1 %26 to i32
  %28 = add i32 %20, %27
  %29 = sub i32 %28, %25
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %15

31:                                               ; preds = %15, %18
  %32 = phi i32 [ %20, %18 ], [ %29, %15 ]
  %33 = add nuw nsw i32 %21, 1
  %34 = add nsw i32 %32, 1
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @cdate.datebuf, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14, i32 noundef %33, i32 noundef %34) #16
  br label %36

36:                                               ; preds = %1, %31
  %37 = phi ptr [ @cdate.datebuf, %31 ], [ @.str, %1 ]
  ret ptr %37
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @ctdate(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8, !tbaa !10
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = udiv i64 %2, 86400
  %6 = add nsw i64 %5, -730
  %7 = shl nsw i64 %6, 2
  %8 = udiv i64 %7, 1461
  %9 = udiv i64 %7, 5844
  %10 = mul i64 %9, 4294965835
  %11 = add i64 %10, %6
  %12 = trunc i64 %11 to i32
  %13 = trunc i64 %8 to i32
  %14 = add i32 %13, 1972
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, 48
  br i1 %17, label %31, label %18, !llvm.loop !12

18:                                               ; preds = %15, %4
  %19 = phi i32 [ 0, %4 ], [ %16, %15 ]
  %20 = phi i32 [ %12, %4 ], [ %29, %15 ]
  %21 = urem i32 %19, 12
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [12 x i16], ptr @date_ymd.mdays, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !13
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %19, 1
  %27 = sext i1 %26 to i32
  %28 = add i32 %20, %27
  %29 = sub i32 %28, %25
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %15

31:                                               ; preds = %18, %15
  %32 = phi i32 [ %20, %18 ], [ %29, %15 ]
  %33 = add nuw nsw i32 %21, 1
  %34 = add nsw i32 %32, 1
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @cdate.datebuf, ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14, i32 noundef %33, i32 noundef %34) #16
  br label %36

36:                                               ; preds = %1, %31
  %37 = phi ptr [ @cdate.datebuf, %31 ], [ @.str, %1 ]
  %38 = urem i64 %2, 86400
  %39 = add nuw nsw i64 %38, 30
  %40 = udiv i64 %39, 60
  %41 = trunc i64 %40 to i32
  %42 = urem i32 %41, 60
  %43 = udiv i32 %41, 60
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @ctdate.tdatebuf, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %37, i32 noundef %43, i32 noundef %42) #16
  ret ptr @ctdate.tdatebuf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @legal_ctb(i8 noundef zeroext %0) local_unnamed_addr #6 {
  %2 = icmp sgt i8 %0, -1
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = lshr i8 %0, 2
  %5 = and i8 %4, 27
  %6 = add nsw i8 %5, -1
  %7 = icmp ult i8 %6, 2
  %8 = and i8 %0, 120
  %9 = icmp eq i8 %8, 40
  %10 = or i1 %9, %7
  %11 = and i8 %0, 120
  %12 = icmp eq i8 %11, 32
  %13 = or i1 %12, %10
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %1, %3
  %16 = phi i8 [ %14, %3 ], [ 0, %1 ]
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @version_error(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %6 = tail call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef %6)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi i32 [ 1, %4 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @LANG(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @version_byte_error(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -4
  %3 = icmp ult i32 %2, -2
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %6 = tail call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef %6)
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i64 @getpastlength(i8 noundef zeroext %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %4 = and i8 %0, 3
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = zext nneg i8 %4 to i32
  %8 = shl nuw nsw i32 1, %7
  %9 = zext nneg i32 %8 to i64
  %10 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %9, ptr noundef %1)
  %11 = icmp ult i64 %10, %9
  br i1 %11, label %26, label %12

12:                                               ; preds = %6
  %13 = icmp eq i8 %4, 0
  %14 = load i8, ptr %3, align 8
  %15 = select i1 %13, i8 %14, i8 0
  %16 = zext i8 %15 to i64
  %17 = icmp eq i8 %4, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = call zeroext i16 @fetch_word16(ptr noundef nonnull %3) #16
  %20 = zext i16 %19 to i64
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i64 [ %20, %18 ], [ %16, %12 ]
  %23 = icmp eq i8 %4, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i64 @fetch_word32(ptr noundef nonnull %3) #16
  br label %26

26:                                               ; preds = %21, %24, %6, %2
  %27 = phi i64 [ -1, %2 ], [ -2, %6 ], [ %25, %24 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i64 %27
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare zeroext i16 @fetch_word16(ptr noundef) local_unnamed_addr #2

declare i64 @fetch_word32(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @write_ctb_len(ptr nocapture noundef %0, i8 noundef zeroext %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %6 = icmp ne i8 %3, 0
  %7 = icmp ugt i64 %2, 65535
  %8 = or i1 %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = and i64 %2, 65280
  %11 = icmp eq i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = xor i1 %11, true
  %15 = select i1 %11, i64 1, i64 2
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i32 [ 2, %4 ], [ %13, %9 ]
  %18 = phi i1 [ false, %4 ], [ %11, %9 ]
  %19 = phi i1 [ false, %4 ], [ %14, %9 ]
  %20 = phi i64 [ 4, %4 ], [ %15, %9 ]
  %21 = zext i8 %1 to i32
  %22 = shl nuw nsw i32 %21, 2
  %23 = add nuw nsw i32 %22, 128
  %24 = or disjoint i32 %17, %23
  %25 = tail call i32 @putc(i32 noundef %24, ptr noundef %0)
  br i1 %18, label %26, label %28

26:                                               ; preds = %16
  %27 = trunc i64 %2 to i8
  store i8 %27, ptr %5, align 1, !tbaa !5
  br label %28

28:                                               ; preds = %26, %16
  br i1 %19, label %29, label %32

29:                                               ; preds = %28
  %30 = trunc i64 %2 to i16
  %31 = call ptr @put_word16(i16 noundef zeroext %30, ptr noundef nonnull %5) #16
  br label %32

32:                                               ; preds = %29, %28
  br i1 %8, label %33, label %35

33:                                               ; preds = %32
  %34 = call ptr @put_word32(i64 noundef %2, ptr noundef nonnull %5) #16
  br label %35

35:                                               ; preds = %33, %32
  %36 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef %20, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @put_word16(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @read_mpi(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [262 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %5) #16
  tail call void @mp_init(ptr noundef %0, i16 noundef zeroext 0) #16
  %6 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 2, ptr noundef %1)
  %7 = and i64 %6, 4294967294
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = call zeroext i16 @fetch_word16(ptr noundef nonnull %5) #16
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 15
  %13 = lshr i32 %12, 4
  %14 = load i16, ptr @global_precision, align 2, !tbaa !13
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %45, label %17

17:                                               ; preds = %9
  %18 = add nuw nsw i32 %11, 7
  %19 = lshr i32 %18, 3
  %20 = getelementptr inbounds i8, ptr %5, i64 2
  %21 = zext nneg i32 %19 to i64
  %22 = call i64 @fread(ptr noundef nonnull %20, i64 noundef 1, i64 noundef %21, ptr noundef %1)
  %23 = trunc i64 %22 to i32
  %24 = icmp ugt i32 %19, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %17
  %26 = icmp eq ptr %3, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  call void @ideaCfbSync(ptr noundef nonnull %3) #16
  call void @ideaCfbDecrypt(ptr noundef nonnull %3, ptr noundef nonnull %20, ptr noundef nonnull %20, i32 noundef %19) #16
  br label %28

28:                                               ; preds = %27, %25
  %29 = trunc i32 %19 to i16
  %30 = add nuw nsw i16 %29, 2
  %31 = call zeroext i16 @checksum(ptr noundef nonnull %5, i16 noundef zeroext %30) #16
  %32 = load i16, ptr @mpi_checksum, align 2, !tbaa !13
  %33 = add i16 %32, %31
  store i16 %33, ptr @mpi_checksum, align 2, !tbaa !13
  %34 = icmp ne i8 %2, 0
  %35 = icmp ne i16 %10, 0
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = icmp ugt i16 %10, 2080
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = trunc i32 %13 to i16
  store i16 %40, ptr @global_precision, align 2, !tbaa !13
  br label %41

41:                                               ; preds = %39, %28
  %42 = call signext i16 @mpi2reg(ptr noundef %0, ptr noundef nonnull %5) #16
  %43 = icmp eq i16 %42, -1
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262) %5, i8 0, i64 262, i1 false)
  br label %45

45:                                               ; preds = %41, %37, %17, %9, %4, %44
  %46 = phi i32 [ %11, %44 ], [ -1, %4 ], [ -1, %9 ], [ -1, %17 ], [ -1, %37 ], [ -1, %41 ]
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %5) #16
  ret i32 %46
}

declare void @mp_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @ideaCfbSync(ptr noundef) local_unnamed_addr #2

declare void @ideaCfbDecrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @checksum(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare signext i16 @mpi2reg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @write_mpi(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [262 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %4) #16
  %5 = call signext i16 @reg2mpi(ptr noundef nonnull %4, ptr noundef %0) #16
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %6, 2
  %8 = trunc i32 %7 to i16
  %9 = call zeroext i16 @checksum(ptr noundef nonnull %4, i16 noundef zeroext %8) #16
  %10 = load i16, ptr @mpi_checksum, align 2, !tbaa !13
  %11 = add i16 %10, %9
  store i16 %11, ptr @mpi_checksum, align 2, !tbaa !13
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  call void @ideaCfbSync(ptr noundef nonnull %2) #16
  %14 = getelementptr inbounds i8, ptr %4, i64 2
  call void @ideaCfbEncrypt(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %14, i32 noundef %6) #16
  br label %15

15:                                               ; preds = %13, %3
  %16 = sext i32 %7 to i64
  %17 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %16, ptr noundef %1)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262) %4, i8 0, i64 262, i1 false)
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %4) #16
  ret void
}

declare signext i16 @reg2mpi(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ideaCfbEncrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @get_header_info_from_file(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %4, i1 false)
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %4, ptr noundef nonnull %5)
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @fclose(ptr noundef nonnull %5)
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi i32 [ %9, %7 ], [ -1, %3 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @signfile(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef signext %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca [286 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca %struct.MD5Context, align 8
  %14 = alloca [8 x i8], align 1
  %15 = alloca [130 x i16], align 16
  %16 = alloca [130 x i16], align 16
  %17 = alloca [130 x i16], align 16
  %18 = alloca [130 x i16], align 16
  %19 = alloca [130 x i16], align 16
  %20 = alloca [130 x i16], align 16
  %21 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 286, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %20) #16
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %22 = load i8, ptr @verbose, align 1, !tbaa !5
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %7
  %25 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %26 = tail call signext i8 @EXT_C(i8 noundef signext %5) #16
  %27 = sext i8 %26 to i32
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef %3, ptr noundef %4, i32 noundef %27, ptr noundef %6)
  br label %29

29:                                               ; preds = %24, %7
  %30 = call i32 @MDfile(ptr noundef nonnull %13, ptr noundef %3) #16
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  store i8 0, ptr %11, align 16, !tbaa !5
  %33 = icmp eq ptr %2, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %2) #16
  br label %36

36:                                               ; preds = %34, %32
  %37 = call i32 @getsecretkey(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  call void @extract_keyID(ptr noundef nonnull %14, ptr noundef nonnull %15) #16
  %40 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @globalPubringName) #16
  %41 = call i32 @getpublickey(i32 noundef 4, ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = icmp eq i8 %5, 116
  %45 = zext i1 %44 to i8
  %46 = call fastcc i32 @make_signature_certificate(ptr noundef nonnull %8, ptr noundef nonnull %13, i8 noundef zeroext %45, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %15)
  %47 = icmp sgt i32 %46, -1
  %48 = sext i32 %46 to i64
  br label %49

49:                                               ; preds = %43, %39, %36, %29
  %50 = phi i64 [ 0, %29 ], [ 0, %36 ], [ 0, %39 ], [ %48, %43 ]
  %51 = phi i1 [ false, %29 ], [ false, %36 ], [ false, %39 ], [ %47, %43 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br i1 %51, label %52, label %120

52:                                               ; preds = %49
  %53 = call noalias ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.4)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %57 = call ptr @LANG(ptr noundef nonnull @.str.6) #16
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef %57, ptr noundef %3)
  br label %120

59:                                               ; preds = %52
  %60 = call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.7)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %64 = call ptr @LANG(ptr noundef nonnull @.str.8) #16
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef %64, ptr noundef %4)
  %66 = call i32 @fclose(ptr noundef nonnull %53)
  br label %120

67:                                               ; preds = %59
  %68 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef %50, ptr noundef nonnull %60)
  %69 = icmp eq ptr %6, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %6) #16
  call void @file_to_canon(ptr noundef nonnull %9) #16
  %72 = call i32 @string_length(ptr noundef nonnull %9) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = sext i32 %72 to i64
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ %75, %74 ], [ %81, %76 ]
  %78 = getelementptr i8, ptr %9, i64 %77
  %79 = getelementptr i8, ptr %78, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !5
  store i8 %80, ptr %78, align 1, !tbaa !5
  %81 = add nsw i64 %77, -1
  %82 = and i64 %81, 4294967295
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %76, !llvm.loop !8

84:                                               ; preds = %76, %70
  %85 = trunc i32 %72 to i8
  br label %86

86:                                               ; preds = %67, %84
  %87 = phi i8 [ %85, %84 ], [ 0, %67 ]
  store i8 %87, ptr %9, align 16, !tbaa !5
  %88 = icmp eq i8 %1, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %86
  %90 = icmp eq i8 %0, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %89
  %92 = call i64 @fsize(ptr noundef nonnull %53) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #16
  store i64 0, ptr %21, align 8, !tbaa !10
  %93 = sext i8 %5 to i32
  %94 = icmp eq i8 %5, 108
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %97 = call i64 @fwrite(ptr nonnull @.str.9, i64 23, i64 1, ptr %96)
  br label %103

98:                                               ; preds = %91
  %99 = load i8, ptr %9, align 16, !tbaa !5
  %100 = zext i8 %99 to i64
  %101 = add i64 %92, 6
  %102 = add i64 %101, %100
  call void @write_ctb_len(ptr noundef nonnull %60, i8 noundef zeroext 11, i64 noundef %102, i8 noundef zeroext 0)
  br label %103

103:                                              ; preds = %98, %95
  %104 = call i32 @putc(i32 noundef %93, ptr noundef nonnull %60)
  br i1 %94, label %111, label %105

105:                                              ; preds = %103
  %106 = load i8, ptr %9, align 16, !tbaa !5
  %107 = zext i8 %106 to i64
  %108 = add nuw nsw i64 %107, 1
  %109 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 1, i64 noundef %108, ptr noundef nonnull %60)
  %110 = call i64 @fwrite(ptr noundef nonnull %21, i64 noundef 1, i64 noundef 8, ptr noundef nonnull %60)
  br label %111

111:                                              ; preds = %103, %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #16
  br label %112

112:                                              ; preds = %111, %89
  %113 = call i32 @copyfile(ptr noundef nonnull %53, ptr noundef nonnull %60, i64 noundef -1) #16
  br label %114

114:                                              ; preds = %112, %86
  %115 = call i32 @fclose(ptr noundef nonnull %53)
  %116 = call i32 @write_error(ptr noundef nonnull %60) #16
  %117 = icmp ne i32 %116, 0
  %118 = call i32 @fclose(ptr noundef nonnull %60)
  %119 = sext i1 %117 to i32
  br label %120

120:                                              ; preds = %114, %49, %62, %55
  %121 = phi i32 [ -1, %55 ], [ -1, %62 ], [ -1, %49 ], [ %119, %114 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 286, ptr nonnull %8) #16
  ret i32 %121
}

declare signext i8 @EXT_C(i8 noundef signext) local_unnamed_addr #2

declare i32 @MDfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

declare i32 @getsecretkey(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @extract_keyID(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @getpublickey(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_signature_certificate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca i8, align 1
  %11 = alloca [262 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca [8 x i8], align 8
  store i8 %2, ptr %10, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  %14 = tail call i32 @countbits(ptr noundef %8) #16
  %15 = icmp slt i32 %14, 249
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %18 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 51, i64 1, ptr %17)
  br label %85

19:                                               ; preds = %9
  %20 = load i64, ptr @timeshift, align 8, !tbaa !10
  %21 = add i64 %20, 3735928559
  %22 = call ptr @put_word32(i64 noundef %21, ptr noundef nonnull %12) #16
  call void @hiloswap(ptr noundef nonnull %12, i16 noundef signext 4) #16
  %23 = load i64, ptr %12, align 8, !tbaa !10
  %24 = icmp ult i64 %23, 662716800
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %27 = call ptr @LANG(ptr noundef nonnull @.str.85) #16
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27)
  br label %85

29:                                               ; preds = %19
  call void @hiloswap(ptr noundef nonnull %12, i16 noundef signext 4) #16
  call void @MD_addbuffer(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 1, ptr noundef null) #16
  call void @MD_addbuffer(ptr noundef %1, ptr noundef nonnull %12, i32 noundef 4, ptr noundef nonnull @md5buf) #16
  store i1 true, ptr @already_have_md5, align 1
  %30 = load i8, ptr @quietmode, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %34 = call ptr @LANG(ptr noundef nonnull @.str.52) #16
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef %34)
  %36 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %37 = call i32 @fflush(ptr noundef %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = call i32 @rsa_private_encrypt(ptr noundef nonnull %11, ptr noundef nonnull @md5buf, i16 noundef signext 16, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #16
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load ptr, ptr @pgpout, align 8, !tbaa !15
  switch i32 %39, label %47 [
    i32 -4, label %43
    i32 -3, label %45
  ]

43:                                               ; preds = %41
  %44 = call i64 @fwrite(ptr nonnull @.str.84, i64 51, i64 1, ptr %42)
  br label %85

45:                                               ; preds = %41
  %46 = call i64 @fwrite(ptr nonnull @.str.63, i64 129, i64 1, ptr %42)
  br label %85

47:                                               ; preds = %41
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.86, i32 noundef %39)
  br label %85

49:                                               ; preds = %38
  %50 = call signext i16 @reg2mpi(ptr noundef nonnull %11, ptr noundef nonnull %11) #16
  store i8 -119, ptr %0, align 1, !tbaa !5
  %51 = add i16 %50, 21
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  %53 = call ptr @put_word16(i16 noundef zeroext %51, ptr noundef nonnull %52) #16
  %54 = load i32, ptr @version_byte, align 4, !tbaa !17
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %55, ptr %56, align 1, !tbaa !5
  %57 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 5, ptr %57, align 1, !tbaa !5
  %58 = load i8, ptr %10, align 1, !tbaa !5
  %59 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %58, ptr %59, align 1, !tbaa !5
  %60 = getelementptr i8, ptr %0, i64 6
  %61 = load i32, ptr %12, align 8, !tbaa !5
  store i32 %61, ptr %60, align 1, !tbaa !5
  call void @extract_keyID(ptr noundef nonnull %13, ptr noundef %8) #16
  %62 = getelementptr i8, ptr %0, i64 10
  %63 = load i64, ptr %13, align 8, !tbaa !5
  store i64 %63, ptr %62, align 1, !tbaa !5
  %64 = getelementptr inbounds i8, ptr %0, i64 18
  store i8 1, ptr %64, align 1, !tbaa !5
  %65 = getelementptr i8, ptr %0, i64 19
  store i8 1, ptr %65, align 1, !tbaa !5
  %66 = load i8, ptr @md5buf, align 16, !tbaa !5
  %67 = getelementptr i8, ptr %0, i64 20
  store i8 %66, ptr %67, align 1, !tbaa !5
  %68 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @md5buf, i64 0, i64 1), align 1, !tbaa !5
  %69 = getelementptr i8, ptr %0, i64 21
  store i8 %68, ptr %69, align 1, !tbaa !5
  %70 = icmp sgt i16 %50, -2
  br i1 %70, label %71, label %77

71:                                               ; preds = %49
  %72 = sext i16 %50 to i32
  %73 = getelementptr i8, ptr %0, i64 22
  %74 = add nsw i32 %72, 2
  %75 = zext i32 %74 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr nonnull align 16 %11, i64 %75, i1 false), !tbaa !5
  %76 = add nsw i32 %72, 24
  br label %77

77:                                               ; preds = %71, %49
  %78 = phi i32 [ 22, %49 ], [ %76, %71 ]
  %79 = load i8, ptr @quietmode, align 1, !tbaa !5
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %83 = call i32 @fputc(i32 noundef 46, ptr noundef %82)
  br label %84

84:                                               ; preds = %81, %77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262) %11, i8 0, i64 262, i1 false)
  br label %85

85:                                               ; preds = %43, %47, %45, %84, %25, %16
  %86 = phi i32 [ -1, %16 ], [ -1, %25 ], [ %78, %84 ], [ %39, %45 ], [ %39, %47 ], [ %39, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %11) #16
  ret i32 %86
}

declare void @file_to_canon(ptr noundef) local_unnamed_addr #2

declare i64 @fsize(ptr noundef) local_unnamed_addr #2

declare i32 @copyfile(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @write_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @compromise(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [286 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca %struct.MD5Context, align 8
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  %12 = alloca [130 x i16], align 16
  %13 = alloca [130 x i16], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 286, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  tail call void @setoutdir(ptr noundef %1) #16
  %16 = tail call ptr @tempfile(i32 noundef 0) #16
  %17 = call i32 @getsecretkey(i32 noundef 0, ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %93, label %19

19:                                               ; preds = %2
  %20 = call i32 @getpublickey(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %93, label %22

22:                                               ; preds = %19
  %23 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.4)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %27 = call ptr @LANG(ptr noundef nonnull @.str.10) #16
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27, ptr noundef %1)
  br label %93

29:                                               ; preds = %22
  %30 = load i64, ptr %14, align 8, !tbaa !10
  %31 = load i32, ptr %15, align 4, !tbaa !17
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @fseek(ptr noundef nonnull %23, i64 noundef %33, i32 noundef 0)
  %35 = call signext i16 @nextkeypacket(ptr noundef nonnull %23, ptr noundef nonnull %3) #16
  %36 = load i8, ptr %3, align 1, !tbaa !5
  %37 = icmp eq i8 %36, -80
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i64 @ftell(ptr noundef nonnull %23)
  %40 = call signext i16 @nextkeypacket(ptr noundef nonnull %23, ptr noundef nonnull %3) #16
  br label %46

41:                                               ; preds = %29
  %42 = load i64, ptr %14, align 8, !tbaa !10
  %43 = load i32, ptr %15, align 4, !tbaa !17
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i64 [ %39, %38 ], [ %45, %41 ]
  %48 = load i8, ptr %3, align 1, !tbaa !5
  %49 = and i8 %48, 124
  %50 = icmp eq i8 %49, 8
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %53 = call ptr @LANG(ptr noundef nonnull @.str.11) #16
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef %53)
  %55 = call i32 @fclose(ptr noundef nonnull %23)
  br label %93

56:                                               ; preds = %46
  %57 = load i16, ptr @global_precision, align 2, !tbaa !13
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %58 = load i64, ptr %14, align 8, !tbaa !10
  %59 = call i32 @fseek(ptr noundef nonnull %23, i64 noundef %58, i32 noundef 0)
  %60 = load i32, ptr %15, align 4, !tbaa !17
  %61 = sext i32 %60 to i64
  %62 = call i32 @MDfile0_len(ptr noundef nonnull %9, ptr noundef nonnull %23, i64 noundef %61) #16
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @fclose(ptr noundef nonnull %23)
  br label %93

66:                                               ; preds = %56
  store i16 %57, ptr @global_precision, align 2, !tbaa !13
  %67 = call fastcc i32 @make_signature_certificate(ptr noundef nonnull %4, ptr noundef nonnull %9, i8 noundef zeroext 32, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %7)
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @fclose(ptr noundef nonnull %23)
  br label %93

71:                                               ; preds = %66
  %72 = call noalias ptr @fopen(ptr noundef %16, ptr noundef nonnull @.str.7)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %76 = call ptr @LANG(ptr noundef nonnull @.str.12) #16
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef %76)
  %78 = call i32 @fclose(ptr noundef nonnull %23)
  br label %93

79:                                               ; preds = %71
  call void @rewind(ptr noundef nonnull %23)
  %80 = call i32 @copyfile(ptr noundef nonnull %23, ptr noundef nonnull %72, i64 noundef %47) #16
  %81 = zext nneg i32 %67 to i64
  %82 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef %81, ptr noundef nonnull %72)
  %83 = call i32 @copyfile(ptr noundef nonnull %23, ptr noundef nonnull %72, i64 noundef -1) #16
  %84 = call i32 @fclose(ptr noundef nonnull %23)
  %85 = call i32 @write_error(ptr noundef nonnull %72) #16
  %86 = icmp eq i32 %85, 0
  %87 = call i32 @fclose(ptr noundef nonnull %72)
  br i1 %86, label %88, label %93

88:                                               ; preds = %79
  %89 = call i32 @savetempbak(ptr noundef %16, ptr noundef %1) #16
  %90 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %91 = call ptr @LANG(ptr noundef nonnull @.str.13) #16
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef %91)
  br label %93

93:                                               ; preds = %79, %19, %2, %88, %74, %69, %64, %51, %25
  %94 = phi i32 [ -1, %25 ], [ -1, %51 ], [ -1, %64 ], [ -1, %69 ], [ -1, %74 ], [ 0, %88 ], [ -1, %2 ], [ -1, %19 ], [ -1, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 286, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret i32 %94
}

declare void @setoutdir(ptr noundef) local_unnamed_addr #2

declare ptr @tempfile(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare signext i16 @nextkeypacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @MDfile0_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @savetempbak(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @do_sign(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca [130 x i16], align 16
  %12 = alloca [130 x i16], align 16
  %13 = alloca [286 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.MD5Context, align 8
  %17 = alloca [130 x i16], align 16
  %18 = alloca [130 x i16], align 16
  %19 = alloca [130 x i16], align 16
  %20 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 286, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  %21 = call i32 @getpubuserid(ptr noundef %0, i64 noundef %1, ptr noundef %3, ptr noundef nonnull %14, ptr noundef nonnull %15, i8 noundef zeroext 0) #16
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %160, label %23

23:                                               ; preds = %7
  %24 = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %28 = call ptr @LANG(ptr noundef nonnull @.str.10) #16
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef %28, ptr noundef %0)
  br label %160

30:                                               ; preds = %23
  %31 = load i64, ptr %14, align 8, !tbaa !10
  %32 = load i32, ptr %15, align 4, !tbaa !17
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @fseek(ptr noundef nonnull %24, i64 noundef %34, i32 noundef 0)
  %36 = call signext i16 @nextkeypacket(ptr noundef nonnull %24, ptr noundef nonnull %8) #16
  %37 = load i8, ptr %8, align 1, !tbaa !5
  %38 = icmp eq i8 %37, -80
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load i64, ptr %14, align 8, !tbaa !10
  %41 = load i32, ptr %15, align 4, !tbaa !17
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @fseek(ptr noundef nonnull %24, i64 noundef %43, i32 noundef 0)
  br label %54

45:                                               ; preds = %30
  %46 = call i64 @ftell(ptr noundef nonnull %24)
  %47 = load i64, ptr %14, align 8, !tbaa !10
  %48 = load i32, ptr %15, align 4, !tbaa !17
  %49 = zext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = sub i64 %46, %50
  %52 = shl i64 %51, 32
  %53 = ashr exact i64 %52, 32
  br label %54

54:                                               ; preds = %45, %39
  %55 = phi i64 [ 0, %39 ], [ %53, %45 ]
  br label %56

56:                                               ; preds = %66, %54
  %57 = call signext i16 @readkeypacket(ptr noundef nonnull %24, ptr noundef null, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef null) #16
  %58 = icmp slt i16 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = load i8, ptr %8, align 1, !tbaa !5
  %61 = call i32 @is_key_ctb(i8 noundef zeroext %60) #16
  %62 = icmp ne i32 %61, 0
  %63 = load i8, ptr %8, align 1
  %64 = icmp eq i8 %63, -76
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %59
  %67 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) %10, i64 8)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %56, !llvm.loop !19

69:                                               ; preds = %66
  %70 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %71 = call ptr @LANG(ptr noundef nonnull @.str.14) #16
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef %71, ptr noundef %5)
  %73 = call i32 @fclose(ptr noundef nonnull %24)
  br label %160

74:                                               ; preds = %56, %59
  call void @rewind(ptr noundef nonnull %24)
  %75 = icmp eq i8 %6, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %78 = call ptr @LANG(ptr noundef nonnull @.str.15) #16
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef %78)
  %80 = call zeroext i8 @getyesno(i8 noundef signext 110) #16
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @fclose(ptr noundef nonnull %24)
  br label %160

84:                                               ; preds = %76, %74
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %20) #16
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %85 = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = call i32 @fclose(ptr noundef nonnull %24)
  %89 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %90 = call ptr @LANG(ptr noundef nonnull @.str.10) #16
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef %90, ptr noundef %0)
  br label %129

92:                                               ; preds = %84
  %93 = call i32 @fseek(ptr noundef nonnull %85, i64 noundef %1, i32 noundef 0)
  %94 = sext i32 %2 to i64
  %95 = call i32 @MDfile0_len(ptr noundef nonnull %16, ptr noundef nonnull %85, i64 noundef %94) #16
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = call i32 @fclose(ptr noundef nonnull %24)
  %99 = call i32 @fclose(ptr noundef nonnull %85)
  br label %129

100:                                              ; preds = %92
  %101 = call i32 @fclose(ptr noundef nonnull %85)
  %102 = call i32 @string_length(ptr noundef %3) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = sext i32 %102 to i64
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ %105, %104 ], [ %111, %106 ]
  %108 = getelementptr i8, ptr %3, i64 %107
  %109 = getelementptr i8, ptr %108, i64 -1
  %110 = load i8, ptr %109, align 1, !tbaa !5
  store i8 %110, ptr %108, align 1, !tbaa !5
  %111 = add nsw i64 %107, -1
  %112 = and i64 %111, 4294967295
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %106, !llvm.loop !8

114:                                              ; preds = %106, %100
  %115 = trunc i32 %102 to i8
  store i8 %115, ptr %3, align 1, !tbaa !5
  %116 = getelementptr inbounds i8, ptr %3, i64 1
  %117 = and i32 %102, 255
  call void @MD5Update(ptr noundef nonnull %16, ptr noundef nonnull %116, i32 noundef %117) #16
  %118 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %5) #16
  %119 = select i1 %75, i32 16, i32 0
  %120 = call i32 @getsecretkey(i32 noundef %119, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20) #16
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 @fclose(ptr noundef nonnull %24)
  br label %129

124:                                              ; preds = %114
  %125 = call fastcc i32 @make_signature_certificate(ptr noundef nonnull %13, ptr noundef nonnull %16, i8 noundef zeroext 16, ptr noundef nonnull %12, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %11)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @fclose(ptr noundef nonnull %24)
  br label %129

129:                                              ; preds = %124, %127, %122, %97, %87
  %130 = phi i32 [ undef, %87 ], [ undef, %97 ], [ undef, %122 ], [ %125, %127 ], [ %125, %124 ]
  %131 = phi i1 [ false, %87 ], [ false, %97 ], [ false, %122 ], [ false, %127 ], [ true, %124 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %16) #16
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = call ptr @tempfile(i32 noundef 4) #16
  %134 = call noalias ptr @fopen(ptr noundef %133, ptr noundef nonnull @.str.7)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %138 = call ptr @LANG(ptr noundef nonnull @.str.12) #16
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef %138)
  %140 = call i32 @fclose(ptr noundef nonnull %24)
  br label %160

141:                                              ; preds = %132
  %142 = load i64, ptr %14, align 8, !tbaa !10
  %143 = load i32, ptr %15, align 4, !tbaa !17
  %144 = sext i32 %143 to i64
  %145 = add i64 %142, %55
  %146 = add i64 %145, %144
  %147 = call i32 @copyfile(ptr noundef nonnull %24, ptr noundef nonnull %134, i64 noundef %146) #16
  %148 = sext i32 %130 to i64
  %149 = call i64 @fwrite(ptr noundef nonnull %13, i64 noundef 1, i64 noundef %148, ptr noundef nonnull %134)
  call void @write_trust(ptr noundef nonnull %134, i8 noundef zeroext -57) #16
  %150 = call i32 @copyfile(ptr noundef nonnull %24, ptr noundef nonnull %134, i64 noundef -1) #16
  %151 = call i32 @fclose(ptr noundef nonnull %24)
  %152 = call i32 @write_error(ptr noundef nonnull %134) #16
  %153 = icmp eq i32 %152, 0
  %154 = call i32 @fclose(ptr noundef nonnull %134)
  br i1 %153, label %155, label %160

155:                                              ; preds = %141
  %156 = call i32 @savetempbak(ptr noundef %133, ptr noundef %0) #16
  %157 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %158 = call ptr @LANG(ptr noundef nonnull @.str.16) #16
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef %158)
  br label %160

160:                                              ; preds = %141, %7, %129, %155, %136, %82, %69, %26
  %161 = phi i32 [ -1, %26 ], [ -1, %136 ], [ 0, %155 ], [ -1, %129 ], [ -1, %82 ], [ -1, %69 ], [ -1, %7 ], [ -1, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 286, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  ret i32 %161
}

declare i32 @getpubuserid(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare signext i16 @readkeypacket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @is_key_ctb(i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @getyesno(i8 noundef signext) local_unnamed_addr #2

declare void @MD5Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @write_trust(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @signkey(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i8], align 1
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #16
  %12 = call i32 @getsecretkey(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %3
  call void @extract_keyID(ptr noundef nonnull %4, ptr noundef nonnull %7) #16
  %15 = call i32 @getpublickey(i32 noundef 5, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8, ptr %6, align 16, !tbaa !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %6, i64 1
  %22 = zext i8 %18 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %21, i64 %22, i1 false), !tbaa !5
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi i64 [ 0, %17 ], [ %22, %20 ]
  %25 = getelementptr inbounds i8, ptr %6, i64 %24
  store i8 0, ptr %25, align 1, !tbaa !5
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %27 = call ptr @LANG(ptr noundef nonnull @.str.17) #16
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %6, ptr noundef %2)
  br label %50

29:                                               ; preds = %14
  %30 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #16
  %31 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %32 = call ptr @LANG(ptr noundef nonnull @.str.18) #16
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %6)
  %34 = call i32 @getpublickey(i32 noundef 6, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %29
  call void @showKeyHash(ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %37 = load i8, ptr %6, align 16, !tbaa !5
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %6, i64 1
  %41 = zext i8 %37 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %40, i64 %41, i1 false), !tbaa !5
  br label %42

42:                                               ; preds = %36, %39
  %43 = phi i64 [ 0, %36 ], [ %41, %39 ]
  %44 = getelementptr inbounds i8, ptr %6, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !5
  %45 = load i64, ptr %9, align 8, !tbaa !10
  %46 = load i32, ptr %10, align 4, !tbaa !17
  %47 = load i8, ptr @batchmode, align 1, !tbaa !5
  %48 = call i32 @do_sign(ptr noundef %2, i64 noundef %45, i32 noundef %46, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext %47), !range !20
  %49 = ashr i32 %48, 31
  br label %50

50:                                               ; preds = %42, %29, %3, %23
  %51 = phi i32 [ -1, %23 ], [ -1, %3 ], [ -1, %29 ], [ %49, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %51
}

declare void @showKeyHash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @check_signaturefile(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [8 x i8], align 8
  %6 = alloca i8, align 1
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca [286 x i8], align 16
  %12 = alloca [130 x i16], align 16
  %13 = alloca [130 x i16], align 16
  %14 = alloca [260 x i8], align 16
  %15 = alloca [260 x i8], align 16
  %16 = alloca [8 x i8], align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca %struct.MD5Context, align 8
  %21 = alloca [16 x i8], align 16
  %22 = alloca i8, align 1
  %23 = alloca [256 x i8], align 16
  %24 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 286, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #16
  store i8 98, ptr %22, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %24) #16
  store i64 0, ptr %16, align 8
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @globalPubringName) #16
  %26 = load i8, ptr @verbose, align 1, !tbaa !5
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef %0, ptr noundef %1)
  br label %31

31:                                               ; preds = %28, %4
  %32 = icmp eq ptr %3, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  store i8 0, ptr %3, align 1, !tbaa !5
  br label %34

34:                                               ; preds = %33, %31
  %35 = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %39 = call ptr @LANG(ptr noundef nonnull @.str.20) #16
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef %39, ptr noundef %0)
  br label %504

41:                                               ; preds = %34
  %42 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 1, ptr noundef %35)
  %43 = load i8, ptr %6, align 1, !tbaa !5
  %44 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %43, ptr %11, align 16, !tbaa !5
  %45 = and i8 %43, -4
  %46 = icmp eq i8 %45, -120
  br i1 %46, label %47, label %494

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  %48 = and i8 %43, 3
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %70, label %50

50:                                               ; preds = %47
  %51 = zext nneg i8 %48 to i32
  %52 = shl nuw nsw i32 1, %51
  %53 = zext nneg i32 %52 to i64
  %54 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef %53, ptr noundef %35)
  %55 = icmp ult i64 %54, %53
  br i1 %55, label %70, label %56

56:                                               ; preds = %50
  %57 = icmp eq i8 %48, 0
  %58 = load i8, ptr %5, align 8
  %59 = select i1 %57, i8 %58, i8 0
  %60 = zext i8 %59 to i64
  %61 = icmp eq i8 %48, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call zeroext i16 @fetch_word16(ptr noundef nonnull %5) #16
  %64 = zext i16 %63 to i64
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i64 [ %64, %62 ], [ %60, %56 ]
  %67 = icmp eq i8 %48, 2
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i64 @fetch_word32(ptr noundef nonnull %5) #16
  br label %70

70:                                               ; preds = %47, %50, %65, %68
  %71 = phi i64 [ -1, %47 ], [ -2, %50 ], [ %69, %68 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %72 = zext nneg i8 %48 to i32
  %73 = shl nuw nsw i32 1, %72
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr i8, ptr %44, i64 %74
  %76 = trunc i64 %71 to i32
  %77 = and i32 %76, 65535
  %78 = icmp ugt i32 %77, 283
  br i1 %78, label %494, label %79

79:                                               ; preds = %70
  %80 = and i64 %71, 65535
  %81 = call i64 @fread(ptr noundef nonnull %75, i64 noundef 1, i64 noundef %80, ptr noundef %35)
  %82 = icmp ult i64 %81, %80
  br i1 %82, label %494, label %83

83:                                               ; preds = %79
  %84 = load i8, ptr %75, align 1, !tbaa !5
  %85 = and i8 %84, -2
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %89 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef %89)
  br label %501

91:                                               ; preds = %83
  %92 = getelementptr inbounds i8, ptr %75, i64 1
  %93 = getelementptr inbounds i8, ptr %75, i64 2
  %94 = load i8, ptr %92, align 1, !tbaa !5
  %95 = load i8, ptr %93, align 1, !tbaa !5
  %96 = icmp ugt i8 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = zext i8 %95 to i32
  %99 = call i32 @version_error(i32 noundef %98, i32 noundef 1), !range !21
  br label %501

100:                                              ; preds = %91
  %101 = getelementptr i8, ptr %75, i64 3
  %102 = add i8 %94, -1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %101, align 1, !tbaa !5
  store i32 %105, ptr %17, align 8, !tbaa !5
  %106 = getelementptr i8, ptr %11, i64 %74
  %107 = getelementptr i8, ptr %106, i64 8
  %108 = add i8 %94, -5
  br label %109

109:                                              ; preds = %104, %100
  %110 = phi ptr [ %101, %100 ], [ %107, %104 ]
  %111 = phi i8 [ %102, %100 ], [ %108, %104 ]
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %112, i64 0, i64 2
  %114 = getelementptr i8, ptr %110, i64 %113
  br label %115

115:                                              ; preds = %109, %115
  %116 = phi i64 [ 0, %109 ], [ %121, %115 ]
  %117 = phi ptr [ %114, %109 ], [ %118, %115 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = load i8, ptr %117, align 1, !tbaa !5
  %120 = getelementptr inbounds [8 x i8], ptr %16, i64 0, i64 %116
  store i8 %119, ptr %120, align 1, !tbaa !5
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, 8
  br i1 %122, label %123, label %115, !llvm.loop !22

123:                                              ; preds = %115
  %124 = load i8, ptr %118, align 1, !tbaa !5
  %125 = zext i8 %124 to i32
  %126 = call i32 @version_error(i32 noundef %125, i32 noundef 1), !range !21
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %501

128:                                              ; preds = %123
  %129 = getelementptr inbounds i8, ptr %117, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !5
  %131 = zext i8 %130 to i32
  %132 = call i32 @version_error(i32 noundef %131, i32 noundef 1), !range !21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %501

134:                                              ; preds = %128
  %135 = getelementptr inbounds i8, ptr %117, i64 3
  %136 = getelementptr inbounds i8, ptr %117, i64 4
  %137 = load i8, ptr %135, align 1, !tbaa !5
  %138 = getelementptr inbounds i8, ptr %117, i64 5
  %139 = load i8, ptr %136, align 1, !tbaa !5
  %140 = call i32 @getpublickey(i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %143 = load i8, ptr @filter_mode, align 1, !tbaa !5
  %144 = icmp ne i8 %143, 0
  %145 = load i8, ptr @batchmode, align 1
  %146 = icmp ne i8 %145, 0
  %147 = select i1 %144, i1 true, i1 %146
  br label %148

148:                                              ; preds = %142, %134
  %149 = phi i1 [ false, %134 ], [ %147, %142 ]
  %150 = call signext i16 @mpi2reg(ptr noundef nonnull %14, ptr noundef nonnull %138) #16
  %151 = icmp eq i16 %150, -1
  br i1 %151, label %501, label %152

152:                                              ; preds = %148
  %153 = call i32 @countbits(ptr noundef nonnull %14) #16
  %154 = add nsw i32 %153, 7
  %155 = ashr i32 %154, 3
  %156 = sext i32 %155 to i64
  %157 = getelementptr i8, ptr %138, i64 %156
  %158 = getelementptr i8, ptr %157, i64 2
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %11 to i64
  %161 = sub i64 %159, %160
  %162 = add nuw nsw i32 %77, 3
  %163 = zext nneg i32 %162 to i64
  %164 = icmp eq i64 %161, %163
  br i1 %164, label %165, label %494

165:                                              ; preds = %152
  %166 = call i64 @ftell(ptr noundef %35)
  %167 = call i64 @fread(ptr noundef nonnull %15, i64 noundef 1, i64 noundef 1, ptr noundef %35)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %221

169:                                              ; preds = %165
  br i1 %32, label %171, label %170

170:                                              ; preds = %169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @.str.21, i64 10, i1 false) #16
  br label %171

171:                                              ; preds = %170, %169
  %172 = call i32 @fclose(ptr noundef %35)
  %173 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %174 = call ptr @LANG(ptr noundef nonnull @.str.22) #16
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef %174, ptr noundef %0)
  %176 = load i32, ptr @myArgc, align 4, !tbaa !17
  %177 = icmp sgt i32 %176, 3
  br i1 %177, label %178, label %191

178:                                              ; preds = %171
  %179 = load ptr, ptr @myArgv, align 8, !tbaa !15
  %180 = getelementptr inbounds ptr, ptr %179, i64 3
  %181 = load ptr, ptr %180, align 8, !tbaa !15
  %182 = call zeroext i8 @file_exists(ptr noundef %181) #16
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %178
  %185 = load ptr, ptr @myArgv, align 8, !tbaa !15
  %186 = getelementptr inbounds ptr, ptr %185, i64 3
  %187 = load ptr, ptr %186, align 8, !tbaa !15
  %188 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %189 = call ptr @LANG(ptr noundef nonnull @.str.23) #16
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef %189, ptr noundef %187)
  br label %210

191:                                              ; preds = %178, %171
  %192 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #16
  call void @drop_extension(ptr noundef nonnull %9) #16
  %193 = call zeroext i8 @file_exists(ptr noundef nonnull %9) #16
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %197 = call ptr @LANG(ptr noundef nonnull @.str.23) #16
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef %197, ptr noundef nonnull %9)
  br label %210

199:                                              ; preds = %191
  %200 = load i8, ptr @batchmode, align 1, !tbaa !5
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %504

202:                                              ; preds = %199
  %203 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %204 = call ptr @LANG(ptr noundef nonnull @.str.24) #16
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef %204)
  %206 = call i32 @getstring(ptr noundef nonnull %9, i32 noundef 59, i32 noundef 1) #16
  %207 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #17
  %208 = and i64 %207, 4294967295
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %504, label %210

210:                                              ; preds = %195, %202, %184
  %211 = phi ptr [ %187, %184 ], [ %9, %195 ], [ %9, %202 ]
  %212 = call noalias ptr @fopen(ptr noundef %211, ptr noundef nonnull @.str.4)
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %216 = call ptr @LANG(ptr noundef nonnull @.str.25) #16
  %217 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef %216, ptr noundef %211)
  br label %504

218:                                              ; preds = %210
  %219 = call i64 @ftell(ptr noundef nonnull %212)
  %220 = call i64 @fsize(ptr noundef nonnull %212) #16
  br label %282

221:                                              ; preds = %165
  %222 = load i8, ptr %15, align 16, !tbaa !5
  %223 = and i8 %222, 124
  %224 = icmp eq i8 %223, 44
  %225 = icmp sgt i8 %222, -1
  br i1 %225, label %282, label %226

226:                                              ; preds = %221
  switch i8 %223, label %282 [
    i8 44, label %227
    i8 40, label %227
  ]

227:                                              ; preds = %226, %226
  %228 = call i64 @getpastlength(i8 noundef zeroext %222, ptr noundef %35)
  store i8 0, ptr %22, align 1, !tbaa !5
  %229 = call i64 @fread(ptr noundef nonnull %22, i64 noundef 1, i64 noundef 1, ptr noundef %35)
  %230 = load i8, ptr %22, align 1
  switch i8 %230, label %231 [
    i8 116, label %236
    i8 108, label %236
    i8 98, label %236
  ]

231:                                              ; preds = %227
  %232 = sext i8 %230 to i32
  %233 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef nonnull @.str.26, i32 noundef %232)
  %235 = call i32 @version_error(i32 noundef %232, i32 noundef 98), !range !21
  br label %501

236:                                              ; preds = %227, %227, %227
  %237 = load i8, ptr @verbose, align 1, !tbaa !5
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %241 = call ptr @LANG(ptr noundef nonnull @.str.27) #16
  %242 = call signext i8 @EXT_C(i8 noundef signext %230) #16
  %243 = sext i8 %242 to i32
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %240, ptr noundef %241, i32 noundef %243)
  br label %245

245:                                              ; preds = %239, %236
  store i8 0, ptr %23, align 16, !tbaa !5
  %246 = call i64 @fread(ptr noundef nonnull %23, i64 noundef 1, i64 noundef 1, ptr noundef %35)
  %247 = load i8, ptr %23, align 16
  %248 = zext i8 %247 to i64
  %249 = add nuw nsw i64 %248, 10
  %250 = select i1 %224, i64 %249, i64 0
  %251 = sub i64 %228, %250
  %252 = icmp eq i8 %247, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %245
  %254 = getelementptr inbounds i8, ptr %23, i64 1
  %255 = call i64 @fread(ptr noundef nonnull %254, i64 noundef 1, i64 noundef %248, ptr noundef %35)
  br label %256

256:                                              ; preds = %253, %245
  %257 = load i8, ptr %23, align 16, !tbaa !5
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %23, i64 1
  %261 = zext i8 %257 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %23, ptr nonnull align 1 %260, i64 %261, i1 false), !tbaa !5
  %262 = getelementptr inbounds i8, ptr %23, i64 %261
  store i8 0, ptr %262, align 1, !tbaa !5
  %263 = load i8, ptr @verbose, align 1, !tbaa !5
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %259
  %266 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %267 = call ptr @LANG(ptr noundef nonnull @.str.28) #16
  %268 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %266, ptr noundef %267, ptr noundef nonnull %23)
  br label %269

269:                                              ; preds = %265, %259
  br i1 %32, label %272, label %270

270:                                              ; preds = %269
  %271 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %23) #16
  br label %272

272:                                              ; preds = %269, %270, %256
  %273 = icmp eq i8 %230, 108
  br i1 %273, label %274, label %279

274:                                              ; preds = %272
  %275 = call i64 @fread(ptr noundef nonnull %24, i64 noundef 1, i64 noundef 4, ptr noundef %35)
  %276 = getelementptr inbounds [5 x i8], ptr %24, i64 0, i64 4
  store i8 0, ptr %276, align 1, !tbaa !5
  %277 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.29, ptr noundef nonnull %24)
  br label %504

279:                                              ; preds = %272
  %280 = call i64 @fread(ptr noundef nonnull %18, i64 noundef 1, i64 noundef 8, ptr noundef %35)
  %281 = call i64 @ftell(ptr noundef %35)
  br label %282

282:                                              ; preds = %226, %221, %279, %218
  %283 = phi i1 [ false, %218 ], [ %224, %279 ], [ %224, %226 ], [ %224, %221 ]
  %284 = phi i64 [ %220, %218 ], [ %251, %279 ], [ -1, %226 ], [ -1, %221 ]
  %285 = phi i64 [ %219, %218 ], [ %281, %279 ], [ %166, %226 ], [ %166, %221 ]
  %286 = phi ptr [ %212, %218 ], [ %35, %279 ], [ %35, %226 ], [ %35, %221 ]
  %287 = phi i8 [ 0, %218 ], [ %222, %279 ], [ %222, %226 ], [ %222, %221 ]
  %288 = phi ptr [ %211, %218 ], [ %1, %279 ], [ %1, %226 ], [ %1, %221 ]
  br i1 %149, label %292, label %289

289:                                              ; preds = %282
  %290 = call i32 @getpublickey(i32 noundef 0, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %289, %282
  %293 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %294 = call ptr @LANG(ptr noundef nonnull @.str.30) #16
  %295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef %294)
  br label %409

296:                                              ; preds = %289
  %297 = call i32 @rsa_public_decrypt(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %12) #16
  %298 = load i8, ptr @quietmode, align 1, !tbaa !5
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %302 = call i32 @fputc(i32 noundef 46, ptr noundef %301)
  br label %303

303:                                              ; preds = %300, %296
  %304 = icmp eq i32 %297, -7
  br i1 %304, label %309, label %305

305:                                              ; preds = %303
  %306 = icmp sgt i32 %297, 0
  %307 = icmp ne i32 %297, 16
  %308 = and i1 %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %305, %303
  %310 = call ptr @LANG(ptr noundef nonnull @.str.31) #16
  %311 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %312 = call i32 @fputs(ptr noundef %310, ptr noundef %311)
  br label %409

313:                                              ; preds = %305
  switch i32 %297, label %322 [
    i32 -5, label %314
    i32 -3, label %318
  ]

314:                                              ; preds = %313
  %315 = call ptr @LANG(ptr noundef nonnull @.str.32) #16
  %316 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %317 = call i32 @fputs(ptr noundef %315, ptr noundef %316)
  br label %409

318:                                              ; preds = %313
  %319 = call ptr @LANG(ptr noundef nonnull @.str.33) #16
  %320 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %321 = call i32 @fputs(ptr noundef %319, ptr noundef %320)
  br label %409

322:                                              ; preds = %313
  %323 = icmp slt i32 %297, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %322
  %325 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %326 = call ptr @LANG(ptr noundef nonnull @.str.34) #16
  %327 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef %326)
  br label %409

328:                                              ; preds = %322
  %329 = zext i1 %307 to i64
  %330 = getelementptr inbounds [260 x i8], ptr %15, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !5
  %332 = icmp eq i8 %331, %137
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = select i1 %307, i64 2, i64 1
  %335 = getelementptr inbounds [260 x i8], ptr %15, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !5
  %337 = icmp eq i8 %336, %139
  br i1 %337, label %342, label %338

338:                                              ; preds = %333, %328
  %339 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %340 = call ptr @LANG(ptr noundef nonnull @.str.34) #16
  %341 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef %340)
  br label %409

342:                                              ; preds = %333
  %343 = call i32 @fseek(ptr noundef %286, i64 noundef %285, i32 noundef 0)
  %344 = call i32 @MDfile0_len(ptr noundef nonnull %20, ptr noundef %286, i64 noundef %284) #16
  %345 = zext i8 %94 to i32
  call void @MD_addbuffer(ptr noundef nonnull %20, ptr noundef nonnull %93, i32 noundef %345, ptr noundef nonnull %21) #16
  call void @hiloswap(ptr noundef nonnull %17, i16 noundef signext 4) #16
  %346 = load i8, ptr %19, align 16, !tbaa !5
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %342
  %349 = getelementptr inbounds i8, ptr %19, i64 1
  %350 = zext i8 %346 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %19, ptr nonnull align 1 %349, i64 %350, i1 false), !tbaa !5
  br label %351

351:                                              ; preds = %342, %348
  %352 = phi i64 [ 0, %342 ], [ %350, %348 ]
  %353 = getelementptr inbounds i8, ptr %19, i64 %352
  store i8 0, ptr %353, align 1, !tbaa !5
  %354 = getelementptr inbounds i8, ptr %15, i64 %329
  %355 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %21, ptr noundef nonnull dereferenceable(16) %354, i64 16)
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %396, label %357

357:                                              ; preds = %351
  %358 = icmp eq i8 %95, 1
  %359 = and i1 %358, %168
  br i1 %359, label %360, label %379

360:                                              ; preds = %357
  %361 = call i32 @is_text_file(ptr noundef %288) #16
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %379, label %363

363:                                              ; preds = %360
  call void @rewind(ptr noundef %286)
  %364 = call ptr @tempfile(i32 noundef 5) #16
  %365 = load i8, ptr @verbose, align 1, !tbaa !5
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr @stderr, align 8, !tbaa !15
  %369 = call i64 @fwrite(ptr nonnull @.str.35, i64 52, i64 1, ptr %368) #18
  br label %370

370:                                              ; preds = %367, %363
  %371 = call i32 @make_canonical(ptr noundef %288, ptr noundef %364) #16
  %372 = call noalias ptr @fopen(ptr noundef %364, ptr noundef nonnull @.str.4)
  %373 = icmp eq ptr %372, null
  br i1 %373, label %379, label %374

374:                                              ; preds = %370
  %375 = call i32 @MDfile0_len(ptr noundef nonnull %20, ptr noundef nonnull %372, i64 noundef -1) #16
  call void @MD_addbuffer(ptr noundef nonnull %20, ptr noundef nonnull %93, i32 noundef %345, ptr noundef nonnull %21) #16
  %376 = call i32 @fclose(ptr noundef nonnull %372)
  call void @rmtemp(ptr noundef %364) #16
  %377 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %21, ptr noundef nonnull dereferenceable(16) %354, i64 16)
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %396, label %379

379:                                              ; preds = %370, %374, %360, %357
  %380 = load i32, ptr @checksig_pass, align 4, !tbaa !17
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  store i32 2, ptr @checksig_pass, align 4, !tbaa !17
  br label %504

383:                                              ; preds = %379
  %384 = load i8, ptr @moreflag, align 1, !tbaa !5
  %385 = icmp eq i8 %384, 0
  %386 = load i8, ptr @batchmode, align 1
  %387 = icmp ne i8 %386, 0
  %388 = select i1 %385, i1 true, i1 %387
  br i1 %388, label %406, label %389

389:                                              ; preds = %383
  %390 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %391 = call ptr @LANG(ptr noundef nonnull @.str.36) #16
  %392 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %390, ptr noundef %391)
  %393 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %394 = call i32 @fflush(ptr noundef %393)
  %395 = call zeroext i8 @getyesno(i8 noundef signext 110) #16
  br label %406

396:                                              ; preds = %351, %374
  store i8 1, ptr @signature_checked, align 1, !tbaa !5
  %397 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %398 = call ptr @LANG(ptr noundef nonnull @.str.37) #16
  %399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %397, ptr noundef %398, ptr noundef nonnull %19)
  %400 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %401 = call ptr @LANG(ptr noundef nonnull @.str.38) #16
  %402 = call ptr @ctdate(ptr noundef nonnull %17)
  %403 = call i32 @countbits(ptr noundef nonnull %12) #16
  %404 = call ptr @key2IDstring(ptr noundef nonnull %12) #16
  %405 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef %401, ptr noundef nonnull @ctdate.tdatebuf, i32 noundef %403, ptr noundef %404)
  br label %406

406:                                              ; preds = %383, %389, %396
  %407 = load i64, ptr %10, align 8, !tbaa !10
  %408 = call fastcc i32 @warn_signatures(ptr noundef nonnull %7, i64 noundef %407, ptr noundef nonnull %19, i8 noundef zeroext 1), !range !23
  br label %409

409:                                              ; preds = %406, %338, %324, %318, %314, %309, %292
  %410 = call i32 @fseek(ptr noundef %286, i64 noundef %285, i32 noundef 0)
  br i1 %168, label %411, label %418

411:                                              ; preds = %409
  %412 = load i8, ptr @quietmode, align 1, !tbaa !5
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %485

414:                                              ; preds = %411
  %415 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %416 = call ptr @LANG(ptr noundef nonnull @.str.39) #16
  %417 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %415, ptr noundef %416)
  br label %485

418:                                              ; preds = %409
  %419 = load i8, ptr %22, align 1, !tbaa !5
  %420 = icmp eq i8 %419, 108
  br i1 %420, label %443, label %421

421:                                              ; preds = %418
  %422 = call noalias ptr @fopen(ptr noundef %288, ptr noundef nonnull @.str.7)
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %428

424:                                              ; preds = %421
  %425 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %426 = call ptr @LANG(ptr noundef nonnull @.str.40) #16
  %427 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %425, ptr noundef %426, ptr noundef %288)
  br label %501

428:                                              ; preds = %421
  %429 = icmp eq i8 %419, 116
  %430 = select i1 %429, i32 2, i32 0
  store i32 %430, ptr @CONVERSION, align 4, !tbaa !17
  %431 = icmp eq i8 %419, 98
  br i1 %431, label %432, label %434

432:                                              ; preds = %428
  %433 = call i32 @copyfile(ptr noundef %286, ptr noundef nonnull %422, i64 noundef %284) #16
  br label %436

434:                                              ; preds = %428
  %435 = call i32 @copyfile_from_canon(ptr noundef %286, ptr noundef nonnull %422, i64 noundef %284) #16
  br label %436

436:                                              ; preds = %434, %432
  %437 = phi i32 [ %433, %432 ], [ %435, %434 ]
  store i32 0, ptr @CONVERSION, align 4, !tbaa !17
  %438 = call i32 @write_error(ptr noundef nonnull %422) #16
  %439 = icmp ne i32 %438, 0
  %440 = icmp slt i32 %437, 0
  %441 = select i1 %439, i1 true, i1 %440
  %442 = call i32 @fclose(ptr noundef nonnull %422)
  br i1 %441, label %501, label %443

443:                                              ; preds = %418, %436
  %444 = icmp eq i8 %2, 0
  br i1 %444, label %485, label %445

445:                                              ; preds = %443
  %446 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %288) #16
  call void @force_extension(ptr noundef nonnull %8, ptr noundef nonnull @SIG_EXTENSION) #16
  %447 = load i8, ptr @force_flag, align 1, !tbaa !5
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %445
  %450 = call zeroext i8 @file_exists(ptr noundef nonnull %8) #16
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %458, label %452

452:                                              ; preds = %449
  %453 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %454 = call ptr @LANG(ptr noundef nonnull @.str.41) #16
  %455 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %453, ptr noundef %454, ptr noundef nonnull %8)
  %456 = call zeroext i8 @getyesno(i8 noundef signext 110) #16
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %501, label %458

458:                                              ; preds = %452, %449, %445
  %459 = call noalias ptr @fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.7)
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %465

461:                                              ; preds = %458
  %462 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %463 = call ptr @LANG(ptr noundef nonnull @.str.8) #16
  %464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %462, ptr noundef %463, ptr noundef nonnull %8)
  br label %501

465:                                              ; preds = %458
  %466 = call i32 @fseek(ptr noundef %286, i64 noundef 0, i32 noundef 0)
  %467 = load i8, ptr %6, align 1, !tbaa !5
  %468 = and i8 %467, 3
  %469 = zext nneg i8 %468 to i32
  %470 = shl nuw nsw i32 1, %469
  %471 = add nuw nsw i32 %77, 1
  %472 = add nuw nsw i32 %471, %470
  %473 = zext nneg i32 %472 to i64
  %474 = call i32 @copyfile(ptr noundef %286, ptr noundef nonnull %459, i64 noundef %473) #16
  %475 = call i32 @write_error(ptr noundef nonnull %459) #16
  %476 = icmp eq i32 %475, 0
  %477 = call i32 @fclose(ptr noundef nonnull %459)
  br i1 %476, label %478, label %501

478:                                              ; preds = %465
  %479 = load i8, ptr @quietmode, align 1, !tbaa !5
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  %482 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %483 = call ptr @LANG(ptr noundef nonnull @.str.42) #16
  %484 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %482, ptr noundef %483, ptr noundef nonnull %8)
  br label %485

485:                                              ; preds = %443, %481, %478, %411, %414
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %14, i8 0, i64 260, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %15, i8 0, i64 260, i1 false)
  %486 = call i32 @fclose(ptr noundef %286)
  br i1 %168, label %504, label %487

487:                                              ; preds = %485
  %488 = icmp sgt i8 %287, -1
  br i1 %488, label %493, label %489

489:                                              ; preds = %487
  %490 = and i8 %287, 124
  %491 = icmp eq i8 %490, 40
  %492 = or i1 %283, %491
  br i1 %492, label %504, label %493

493:                                              ; preds = %489, %487
  br label %504

494:                                              ; preds = %152, %79, %70, %41
  %495 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %496 = call ptr @LANG(ptr noundef nonnull @.str.43) #16
  %497 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %495, ptr noundef %496)
  %498 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %499 = call ptr @LANG(ptr noundef nonnull @.str.44) #16
  %500 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %498, ptr noundef %499, ptr noundef %0)
  br label %501

501:                                              ; preds = %465, %436, %87, %452, %148, %128, %123, %494, %461, %424, %231, %97
  %502 = phi ptr [ %35, %494 ], [ %35, %87 ], [ %35, %97 ], [ %35, %123 ], [ %35, %128 ], [ %35, %148 ], [ %286, %461 ], [ %286, %452 ], [ %286, %424 ], [ %35, %231 ], [ %286, %436 ], [ %286, %465 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %14, i8 0, i64 260, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %15, i8 0, i64 260, i1 false)
  %503 = call i32 @fclose(ptr noundef %502)
  br label %504

504:                                              ; preds = %489, %485, %202, %199, %501, %493, %382, %274, %214, %37
  %505 = phi i32 [ -1, %37 ], [ -1, %501 ], [ -1, %214 ], [ 1, %493 ], [ -1, %382 ], [ -1, %274 ], [ -1, %199 ], [ -1, %202 ], [ 0, %485 ], [ 0, %489 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 286, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  ret i32 %505
}

declare i32 @countbits(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @file_exists(ptr noundef) local_unnamed_addr #2

declare void @drop_extension(ptr noundef) local_unnamed_addr #2

declare i32 @getstring(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare i32 @rsa_public_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

declare void @MD_addbuffer(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @is_text_file(ptr noundef) local_unnamed_addr #2

declare i32 @make_canonical(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rmtemp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

declare ptr @key2IDstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @warn_signatures(ptr noundef %0, i64 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !tbaa !5
  %9 = call i32 @getpubuserid(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 0) #16
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %55

11:                                               ; preds = %4
  %12 = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %13 = load i64, ptr %5, align 8, !tbaa !10
  %14 = load i32, ptr %6, align 4, !tbaa !17
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @fseek(ptr noundef %12, i64 noundef %16, i32 noundef 0)
  %18 = call i32 @read_trust(ptr noundef %12, ptr noundef nonnull %7) #16
  %19 = call i32 @fseek(ptr noundef %12, i64 noundef %1, i32 noundef 0)
  %20 = call i32 @is_compromised(ptr noundef %12) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %11
  %23 = call i32 @string_length(ptr noundef %2) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = sext i32 %23 to i64
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ %26, %25 ], [ %32, %27 ]
  %29 = getelementptr i8, ptr %2, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  store i8 %31, ptr %29, align 1, !tbaa !5
  %32 = add nsw i64 %28, -1
  %33 = and i64 %32, 4294967295
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %27, !llvm.loop !8

35:                                               ; preds = %27, %22
  %36 = trunc i32 %23 to i8
  store i8 %36, ptr %2, align 1, !tbaa !5
  %37 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %38 = call i32 @fputc(i32 10, ptr %37)
  %39 = call i32 @show_key(ptr noundef %12, i64 noundef %1, i32 noundef 0) #16
  %40 = call i32 @fclose(ptr noundef %12)
  %41 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %42 = call ptr @LANG(ptr noundef nonnull @.str.87) #16
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef %42)
  %44 = icmp eq i8 %3, 0
  %45 = load ptr, ptr @pgpout, align 8, !tbaa !15
  br i1 %44, label %49, label %46

46:                                               ; preds = %35
  %47 = call ptr @LANG(ptr noundef nonnull @.str.88) #16
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef %47)
  br label %159

49:                                               ; preds = %35
  %50 = call ptr @LANG(ptr noundef nonnull @.str.89) #16
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef %50)
  br label %159

52:                                               ; preds = %11
  %53 = call i32 @fclose(ptr noundef %12)
  %54 = icmp eq i32 %18, 0
  br label %55

55:                                               ; preds = %52, %4
  %56 = phi i1 [ %54, %52 ], [ false, %4 ]
  %57 = call i32 @string_length(ptr noundef %2) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = sext i32 %57 to i64
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ %60, %59 ], [ %66, %61 ]
  %63 = getelementptr i8, ptr %2, i64 %62
  %64 = getelementptr i8, ptr %63, i64 -1
  %65 = load i8, ptr %64, align 1, !tbaa !5
  store i8 %65, ptr %63, align 1, !tbaa !5
  %66 = add nsw i64 %62, -1
  %67 = and i64 %66, 4294967295
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %61, !llvm.loop !8

69:                                               ; preds = %61, %55
  %70 = trunc i32 %57 to i8
  store i8 %70, ptr %2, align 1, !tbaa !5
  %71 = load i8, ptr %7, align 1, !tbaa !5
  %72 = and i8 %71, 3
  %73 = icmp eq i8 %72, 3
  br i1 %73, label %159, label %74

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #16
  %75 = icmp eq i8 %70, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %74
  %77 = getelementptr i8, ptr %2, i64 1
  %78 = and i32 %57, 255
  %79 = zext nneg i32 %78 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr align 1 %77, i64 %79, i1 false), !tbaa !5
  br label %80

80:                                               ; preds = %74, %76
  %81 = phi i64 [ 0, %74 ], [ %79, %76 ]
  %82 = getelementptr inbounds i8, ptr %2, i64 %81
  store i8 0, ptr %82, align 1, !tbaa !5
  %83 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %2) #16
  %84 = call i32 @string_length(ptr noundef nonnull %2) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %80
  %87 = sext i32 %84 to i64
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i64 [ %87, %86 ], [ %93, %88 ]
  %90 = getelementptr i8, ptr %2, i64 %89
  %91 = getelementptr i8, ptr %90, i64 -1
  %92 = load i8, ptr %91, align 1, !tbaa !5
  store i8 %92, ptr %90, align 1, !tbaa !5
  %93 = add nsw i64 %89, -1
  %94 = and i64 %93, 4294967295
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %88, !llvm.loop !8

96:                                               ; preds = %88, %80
  %97 = trunc i32 %84 to i8
  store i8 %97, ptr %2, align 1, !tbaa !5
  %98 = load i8, ptr %7, align 1, !tbaa !5
  %99 = and i8 %98, 3
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %103 = call ptr @LANG(ptr noundef nonnull @.str.90) #16
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef %103, ptr noundef nonnull %8)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i8, ptr %7, align 1, !tbaa !5
  %107 = and i8 %106, 3
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %111 = call ptr @LANG(ptr noundef nonnull @.str.91) #16
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef %111, ptr noundef nonnull %8)
  br label %113

113:                                              ; preds = %109, %105
  %114 = load i8, ptr %7, align 1, !tbaa !5
  %115 = and i8 %114, 3
  %116 = icmp eq i8 %115, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %119 = call ptr @LANG(ptr noundef nonnull @.str.92) #16
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef %119, ptr noundef nonnull %8)
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i8, ptr %7, align 1, !tbaa !5
  %123 = icmp sgt i8 %122, -1
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %126 = call ptr @LANG(ptr noundef nonnull @.str.93) #16
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i8, ptr @filter_mode, align 1, !tbaa !5
  %130 = load i8, ptr @batchmode, align 1
  %131 = icmp eq i8 %130, 0
  %132 = or i8 %129, %3
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, i1 %131, i1 false
  %135 = load i8, ptr %7, align 1
  %136 = icmp sgt i8 %135, -1
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %157

138:                                              ; preds = %128
  %139 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %140 = call ptr @LANG(ptr noundef nonnull @.str.94) #16
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef %140)
  %142 = call zeroext i8 @getyesno(i8 noundef signext 110) #16
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %138
  br i1 %56, label %145, label %157

145:                                              ; preds = %144
  %146 = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.95)
  %147 = icmp eq ptr %146, null
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load i64, ptr %5, align 8, !tbaa !10
  %150 = load i32, ptr %6, align 4, !tbaa !17
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = call i32 @fseek(ptr noundef nonnull %146, i64 noundef %152, i32 noundef 0)
  %154 = load i8, ptr %7, align 1, !tbaa !5
  %155 = or i8 %154, -128
  store i8 %155, ptr %7, align 1, !tbaa !5
  call void @write_trust(ptr noundef nonnull %146, i8 noundef zeroext %155) #16
  %156 = call i32 @fclose(ptr noundef nonnull %146)
  br label %157

157:                                              ; preds = %128, %148, %145, %144
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #16
  br label %159

158:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #16
  br label %159

159:                                              ; preds = %69, %157, %158, %49, %46
  %160 = phi i32 [ 1, %46 ], [ -1, %49 ], [ -1, %158 ], [ 0, %157 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %160
}

declare i32 @copyfile_from_canon(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @force_extension(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @check_key_sig(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #0 {
  %11 = alloca [8 x i8], align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca [286 x i8], align 16
  %15 = alloca [130 x i16], align 16
  %16 = alloca [130 x i16], align 16
  %17 = alloca [260 x i8], align 16
  %18 = alloca [260 x i8], align 16
  %19 = alloca [8 x i8], align 8
  %20 = alloca %struct.MD5Context, align 8
  %21 = alloca [16 x i8], align 16
  %22 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 286, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #16
  store i64 0, ptr %19, align 8
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %23 = tail call i32 @fseek(ptr noundef %4, i64 noundef %5, i32 noundef 0)
  %24 = call i64 @fread(ptr noundef nonnull %12, i64 noundef 1, i64 noundef 1, ptr noundef %4)
  %25 = load i8, ptr %12, align 1, !tbaa !5
  %26 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %25, ptr %14, align 16, !tbaa !5
  %27 = and i8 %25, -4
  %28 = icmp eq i8 %27, -120
  br i1 %28, label %29, label %157

29:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store i64 0, ptr %11, align 8
  %30 = and i8 %25, 3
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  %33 = zext nneg i8 %30 to i32
  %34 = shl nuw nsw i32 1, %33
  %35 = zext nneg i32 %34 to i64
  %36 = call i64 @fread(ptr noundef nonnull %11, i64 noundef 1, i64 noundef %35, ptr noundef %4)
  %37 = icmp ult i64 %36, %35
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = icmp eq i8 %30, 0
  %40 = load i8, ptr %11, align 8
  %41 = select i1 %39, i8 %40, i8 0
  %42 = zext i8 %41 to i64
  %43 = icmp eq i8 %30, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call zeroext i16 @fetch_word16(ptr noundef nonnull %11) #16
  %46 = zext i16 %45 to i64
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i64 [ %46, %44 ], [ %42, %38 ]
  %49 = icmp eq i8 %30, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i64 @fetch_word32(ptr noundef nonnull %11) #16
  br label %52

52:                                               ; preds = %29, %32, %47, %50
  %53 = phi i64 [ -1, %29 ], [ -2, %32 ], [ %51, %50 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  %54 = zext nneg i8 %30 to i32
  %55 = shl nuw nsw i32 1, %54
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr i8, ptr %26, i64 %56
  %58 = trunc i64 %53 to i32
  %59 = and i32 %58, 65535
  %60 = icmp ugt i32 %59, 283
  br i1 %60, label %157, label %61

61:                                               ; preds = %52
  %62 = and i64 %53, 65535
  %63 = call i64 @fread(ptr noundef nonnull %57, i64 noundef 1, i64 noundef %62, ptr noundef %4)
  %64 = icmp ult i64 %63, %62
  br i1 %64, label %157, label %65

65:                                               ; preds = %61
  %66 = load i8, ptr %57, align 1, !tbaa !5
  %67 = and i8 %66, -2
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %71 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef %71)
  br label %161

73:                                               ; preds = %65
  %74 = getelementptr inbounds i8, ptr %57, i64 1
  %75 = getelementptr inbounds i8, ptr %57, i64 2
  %76 = load i8, ptr %74, align 1, !tbaa !5
  %77 = zext i8 %76 to i32
  %78 = icmp eq i8 %76, 5
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %81 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef %81)
  br label %161

83:                                               ; preds = %73
  %84 = load i8, ptr %75, align 1, !tbaa !5
  store i8 %84, ptr %9, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 32
  switch i8 %84, label %86 [
    i8 32, label %89
    i8 19, label %89
    i8 18, label %89
    i8 17, label %89
    i8 16, label %89
  ]

86:                                               ; preds = %83
  %87 = zext i8 %84 to i32
  %88 = call i32 @version_error(i32 noundef %87, i32 noundef 16), !range !21
  br label %161

89:                                               ; preds = %83, %83, %83, %83, %83
  %90 = getelementptr i8, ptr %57, i64 3
  %91 = load i32, ptr %90, align 1, !tbaa !5
  store i32 %91, ptr %22, align 8, !tbaa !5
  %92 = getelementptr i8, ptr %14, i64 %56
  %93 = getelementptr i8, ptr %92, i64 8
  %94 = load i64, ptr %93, align 1, !tbaa !5
  store i64 %94, ptr %19, align 8, !tbaa !5
  %95 = or disjoint i64 %56, 16
  %96 = getelementptr i8, ptr %14, i64 %56
  %97 = getelementptr i8, ptr %14, i64 %95
  %98 = load i8, ptr %97, align 1, !tbaa !5
  %99 = zext i8 %98 to i32
  %100 = call i32 @version_error(i32 noundef %99, i32 noundef 1), !range !21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %161

102:                                              ; preds = %89
  %103 = getelementptr i8, ptr %96, i64 17
  %104 = load i8, ptr %103, align 1, !tbaa !5
  %105 = zext i8 %104 to i32
  %106 = call i32 @version_error(i32 noundef %105, i32 noundef 1), !range !21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %161

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %96, i64 18
  %110 = getelementptr i8, ptr %96, i64 19
  %111 = load i8, ptr %109, align 1, !tbaa !5
  %112 = getelementptr i8, ptr %96, i64 20
  %113 = load i8, ptr %110, align 1, !tbaa !5
  %114 = call i32 @getpublickey(i32 noundef 1, ptr noundef %6, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %19, ptr noundef %8, ptr noundef %7, ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %161, label %116

116:                                              ; preds = %108
  %117 = call signext i16 @mpi2reg(ptr noundef nonnull %17, ptr noundef nonnull %112) #16
  %118 = icmp eq i16 %117, -1
  br i1 %118, label %161, label %119

119:                                              ; preds = %116
  %120 = call i32 @countbits(ptr noundef nonnull %17) #16
  %121 = add nsw i32 %120, 7
  %122 = ashr i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, ptr %112, i64 %123
  %125 = getelementptr i8, ptr %124, i64 2
  %126 = ptrtoint ptr %125 to i64
  %127 = ptrtoint ptr %14 to i64
  %128 = sub i64 %126, %127
  %129 = add nuw nsw i32 %59, 3
  %130 = zext nneg i32 %129 to i64
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %132, label %161

132:                                              ; preds = %119
  %133 = call i32 @rsa_public_decrypt(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %15) #16
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %161, label %135

135:                                              ; preds = %132
  %136 = icmp eq i32 %133, 16
  br i1 %136, label %137, label %161

137:                                              ; preds = %135
  %138 = load i8, ptr %18, align 16, !tbaa !5
  %139 = icmp eq i8 %138, %111
  %140 = getelementptr inbounds [260 x i8], ptr %18, i64 0, i64 1
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, %113
  %143 = select i1 %139, i1 %142, i1 false
  br i1 %143, label %144, label %161

144:                                              ; preds = %137
  %145 = call i32 @fseek(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %146 = sext i32 %2 to i64
  %147 = call i32 @MDfile0_len(ptr noundef nonnull %20, ptr noundef %0, i64 noundef %146) #16
  br i1 %85, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds i8, ptr %3, i64 1
  %150 = load i8, ptr %3, align 1, !tbaa !5
  %151 = zext i8 %150 to i32
  call void @MD5Update(ptr noundef nonnull %20, ptr noundef nonnull %149, i32 noundef %151) #16
  br label %152

152:                                              ; preds = %148, %144
  call void @MD_addbuffer(ptr noundef nonnull %20, ptr noundef nonnull %75, i32 noundef %77, ptr noundef nonnull %21) #16
  %153 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %21, ptr noundef nonnull dereferenceable(16) %18, i64 16)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  call void @hiloswap(ptr noundef nonnull %22, i16 noundef signext 4) #16
  %156 = load i32, ptr %22, align 8
  store i32 %156, ptr %8, align 1
  br label %161

157:                                              ; preds = %61, %52, %10
  %158 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %159 = call ptr @LANG(ptr noundef nonnull @.str.43) #16
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef %159)
  br label %161

161:                                              ; preds = %79, %69, %152, %137, %135, %132, %119, %116, %108, %102, %89, %157, %155, %86
  %162 = phi i32 [ -10, %157 ], [ -8, %86 ], [ 0, %155 ], [ -8, %69 ], [ -8, %79 ], [ -6, %89 ], [ -7, %102 ], [ -2, %108 ], [ -10, %116 ], [ -10, %119 ], [ %133, %132 ], [ -9, %135 ], [ -9, %137 ], [ -20, %152 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 286, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #16
  ret i32 %162
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @squish_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @verbose, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.45, ptr noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %5, %2
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %13 = tail call ptr @LANG(ptr noundef nonnull @.str.25) #16
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef %13, ptr noundef %0)
  br label %46

15:                                               ; preds = %8
  %16 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %20 = tail call ptr @LANG(ptr noundef nonnull @.str.46) #16
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef %20, ptr noundef %1)
  %22 = tail call i32 @fclose(ptr noundef nonnull %9)
  br label %46

23:                                               ; preds = %15
  %24 = load i8, ptr @verbose, align 1, !tbaa !5
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %28 = tail call ptr @LANG(ptr noundef nonnull @.str.47) #16
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = tail call i32 @putc(i32 noundef 163, ptr noundef nonnull %16)
  %32 = tail call i32 @putc(i32 noundef 1, ptr noundef nonnull %16)
  %33 = tail call i32 @zipup(ptr noundef nonnull %9, ptr noundef nonnull %16) #16
  %34 = load i8, ptr @verbose, align 1, !tbaa !5
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %38 = tail call ptr @LANG(ptr noundef nonnull @.str.48) #16
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = tail call i32 @fclose(ptr noundef nonnull %9)
  %42 = tail call i32 @write_error(ptr noundef nonnull %16) #16
  %43 = icmp ne i32 %42, 0
  %44 = tail call i32 @fclose(ptr noundef nonnull %16)
  %45 = sext i1 %43 to i32
  br label %46

46:                                               ; preds = %40, %18, %11
  %47 = phi i32 [ -1, %11 ], [ -1, %18 ], [ %45, %40 ]
  ret i32 %47
}

declare i32 @zipup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @idea_encryptfile(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = load i8, ptr @verbose, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.49, ptr noundef %0, ptr noundef %1)
  br label %10

10:                                               ; preds = %7, %3
  %11 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %15 = tail call ptr @LANG(ptr noundef nonnull @.str.6) #16
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef %15, ptr noundef %0)
  br label %62

17:                                               ; preds = %10
  %18 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %22 = tail call ptr @LANG(ptr noundef nonnull @.str.50) #16
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef %22, ptr noundef %1)
  %24 = tail call i32 @fclose(ptr noundef nonnull %11)
  br label %62

25:                                               ; preds = %17
  %26 = load ptr, ptr @passwds, align 8, !tbaa !15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hashedpw, ptr %26, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %30 = load ptr, ptr %26, align 8, !tbaa !24
  store ptr %30, ptr @passwds, align 8, !tbaa !15
  tail call void @free(ptr noundef %26) #16
  br label %47

31:                                               ; preds = %25
  %32 = load i8, ptr @quietmode, align 1, !tbaa !5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %36 = tail call ptr @LANG(ptr noundef nonnull @.str.51) #16
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i8, ptr @batchmode, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @GetHashedPassPhrase(ptr noundef nonnull %4, i8 noundef zeroext 2) #16
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = call i32 @fclose(ptr noundef nonnull %11)
  %46 = call i32 @fclose(ptr noundef nonnull %18)
  br label %62

47:                                               ; preds = %41, %28
  call fastcc void @make_random_ideakey(ptr noundef nonnull %4, i32 noundef 16)
  %48 = load i8, ptr @quietmode, align 1, !tbaa !5
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %52 = call ptr @LANG(ptr noundef nonnull @.str.52) #16
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef %52)
  %54 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %55 = call i32 @fflush(ptr noundef %54)
  br label %56

56:                                               ; preds = %50, %47
  call fastcc void @squish_and_idea_file(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %18, i8 noundef zeroext %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %57 = call i32 @fclose(ptr noundef nonnull %11)
  %58 = call i32 @write_error(ptr noundef nonnull %18) #16
  %59 = icmp ne i32 %58, 0
  %60 = call i32 @fclose(ptr noundef nonnull %18)
  %61 = sext i1 %59 to i32
  br label %62

62:                                               ; preds = %56, %44, %20, %13
  %63 = phi i32 [ -1, %13 ], [ -1, %20 ], [ -1, %44 ], [ %61, %56 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret i32 %63
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare i32 @GetHashedPassPhrase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @make_random_ideakey(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.IdeaCfbContext, align 4
  %4 = alloca [10 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #16
  call void @ideaCfbInit(ptr noundef nonnull %3, ptr noundef nonnull @md5buf) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @md5buf, i8 0, i64 16, i1 false)
  %5 = call i32 @cryptRandOpen(ptr noundef nonnull %3) #16
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %9 = call ptr @LANG(ptr noundef nonnull @.str.96) #16
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef %9)
  call void @trueRandAccum(i32 noundef 192) #16
  call void @cryptRandInit(ptr noundef nonnull %3) #16
  br label %11

11:                                               ; preds = %7, %2
  %12 = icmp slt i32 %1, 24
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = sext i32 %1 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ %14, %13 ], [ %22, %15 ]
  %17 = call zeroext i8 @cryptRandByte() #16
  %18 = call i32 @trueRandByte() #16
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %17, %19
  %21 = getelementptr inbounds i8, ptr %0, i64 %16
  store i8 %20, ptr %21, align 1, !tbaa !5
  %22 = add nsw i64 %16, 1
  %23 = and i64 %22, 4294967295
  %24 = icmp eq i64 %23, 24
  br i1 %24, label %25, label %15, !llvm.loop !26

25:                                               ; preds = %15, %11
  call void @ideaCfbInit(ptr noundef nonnull %3, ptr noundef %0) #16
  %26 = load i64, ptr %0, align 1
  store i64 %26, ptr %4, align 8
  %27 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 6
  %28 = load i8, ptr %27, align 2, !tbaa !5
  %29 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 8
  store i8 %28, ptr %29, align 8, !tbaa !5
  %30 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 7
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 9
  store i8 %31, ptr %32, align 1, !tbaa !5
  call void @ideaCfbEncrypt(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 10) #16
  call void @ideaCfbSync(ptr noundef nonnull %3) #16
  call void @cryptRandSave(ptr noundef nonnull %3) #16
  call void @ideaCfbDestroy(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @squish_and_idea_file(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x i8], align 1
  tail call void @rewind(ptr noundef %1)
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @tempfile(i32 noundef 5) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = tail call noalias ptr @fopen(ptr noundef nonnull %9, ptr noundef nonnull @.str.97)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr @verbose, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.98, ptr noundef nonnull @plainfile)
  br label %20

20:                                               ; preds = %17, %14
  %21 = tail call i32 @putc(i32 noundef 163, ptr noundef nonnull %12)
  %22 = tail call i32 @putc(i32 noundef 1, ptr noundef nonnull %12)
  %23 = tail call i32 @zipup(ptr noundef %1, ptr noundef nonnull %12) #16
  %24 = tail call i32 @write_error(ptr noundef nonnull %12) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @fclose(ptr noundef nonnull %12)
  br label %63

28:                                               ; preds = %20
  %29 = load i8, ptr @verbose, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %33 = tail call ptr @LANG(ptr noundef nonnull @.str.48) #16
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef %33)
  br label %41

35:                                               ; preds = %28
  %36 = load i8, ptr @quietmode, align 1, !tbaa !5
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %40 = tail call i32 @fputc(i32 noundef 46, ptr noundef %39)
  br label %41

41:                                               ; preds = %35, %38, %31
  tail call void @rewind(ptr noundef nonnull %12)
  br label %42

42:                                               ; preds = %8, %11, %4, %41
  %43 = phi ptr [ %9, %41 ], [ null, %4 ], [ %9, %11 ], [ %9, %8 ]
  %44 = phi ptr [ %12, %41 ], [ %1, %4 ], [ %1, %11 ], [ %1, %8 ]
  %45 = tail call i64 @ftell(ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %46 = tail call i32 @putc(i32 noundef 166, ptr noundef %2)
  %47 = call ptr @put_word32(i64 noundef 0, ptr noundef nonnull %6) #16
  %48 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 4, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %49 = call i64 @ftell(ptr noundef %2)
  %50 = sub i64 %45, %49
  %51 = call i64 @fsize(ptr noundef %44) #16
  %52 = call fastcc i32 @idea_file(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %44, ptr noundef %2, i64 noundef %51), !range !27
  %53 = call i32 @fseek(ptr noundef %2, i64 noundef %45, i32 noundef 0)
  %54 = call i64 @fsize(ptr noundef %2) #16
  %55 = add i64 %50, %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %56 = call i32 @putc(i32 noundef 166, ptr noundef %2)
  %57 = call ptr @put_word32(i64 noundef %55, ptr noundef nonnull %5) #16
  %58 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 4, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %59 = icmp eq ptr %44, %1
  br i1 %59, label %65, label %60

60:                                               ; preds = %42
  %61 = call i32 @fclose(ptr noundef %44)
  %62 = icmp eq ptr %43, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %26
  %64 = phi ptr [ %9, %26 ], [ %43, %60 ]
  call void @rmtemp(ptr noundef nonnull %64) #16
  br label %65

65:                                               ; preds = %63, %42, %60
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @encryptfile(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [260 x i8], align 16
  %6 = alloca [24 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.MD5Context, align 8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #16
  %9 = icmp eq ptr %0, null
  br i1 %9, label %102, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %102, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %11, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %102, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr @verbose, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %2)
  br label %22

22:                                               ; preds = %19, %16
  %23 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.4)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %27 = tail call ptr @LANG(ptr noundef nonnull @.str.6) #16
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27, ptr noundef %1)
  br label %102

29:                                               ; preds = %22
  %30 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.7)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %34 = tail call ptr @LANG(ptr noundef nonnull @.str.50) #16
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef %34, ptr noundef %2)
  %36 = tail call i32 @fclose(ptr noundef nonnull %23)
  br label %102

37:                                               ; preds = %29
  %38 = load i1, ptr @already_have_md5, align 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #16
  call void @MD5Init(ptr noundef nonnull %8) #16
  %40 = call i32 @MDfile0_len(ptr noundef nonnull %8, ptr noundef nonnull %23, i64 noundef 4096) #16
  call void @MD5Final(ptr noundef nonnull @md5buf, ptr noundef nonnull %8) #16
  store i1 true, ptr @already_have_md5, align 1
  %41 = call i32 @fseek(ptr noundef nonnull %23, i64 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #16
  br label %42

42:                                               ; preds = %39, %37
  call fastcc void @make_random_ideakey(ptr noundef nonnull %6, i32 noundef 0)
  store i8 1, ptr %5, align 16, !tbaa !5
  %43 = getelementptr inbounds i8, ptr %5, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %43, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa !5
  %44 = getelementptr inbounds i8, ptr %5, i64 1
  %45 = call zeroext i16 @checksum(ptr noundef nonnull %44, i16 noundef zeroext 16) #16
  %46 = getelementptr inbounds i8, ptr %5, i64 17
  %47 = call ptr @put_word16(i16 noundef zeroext %45, ptr noundef nonnull %46) #16
  br label %48

48:                                               ; preds = %48, %42
  %49 = phi i64 [ %53, %48 ], [ 0, %42 ]
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = icmp eq ptr %51, null
  %53 = add nuw i64 %49, 1
  br i1 %52, label %54, label %48, !llvm.loop !28

54:                                               ; preds = %48
  %55 = trunc i64 %49 to i32
  %56 = load i8, ptr @encrypt_to_self, align 1, !tbaa !5
  %57 = icmp ne i8 %56, 0
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %55, %58
  %60 = shl nsw i32 %59, 3
  %61 = call ptr @xmalloc(i32 noundef %60) #16
  store ptr %61, ptr @keyID_list, align 8, !tbaa !15
  %62 = load ptr, ptr %0, align 8, !tbaa !15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %54, %70
  %65 = phi ptr [ %74, %70 ], [ %62, %54 ]
  %66 = phi i32 [ %72, %70 ], [ 0, %54 ]
  %67 = phi ptr [ %73, %70 ], [ %0, %54 ]
  %68 = load i8, ptr %65, align 1, !tbaa !5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @globalPubringName) #16
  %72 = call fastcc i32 @encryptkeyintofile(ptr noundef nonnull %30, ptr noundef nonnull %65, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 19, i32 noundef %66)
  %73 = getelementptr inbounds ptr, ptr %67, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %64, !llvm.loop !29

76:                                               ; preds = %64, %70, %54
  %77 = phi i32 [ 0, %54 ], [ %66, %64 ], [ %72, %70 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32 @fclose(ptr noundef nonnull %23)
  %81 = call i32 @fclose(ptr noundef nonnull %30)
  %82 = load ptr, ptr @keyID_list, align 8, !tbaa !15
  call void @free(ptr noundef %82) #16
  br label %102

83:                                               ; preds = %76
  %84 = load i8, ptr @encrypt_to_self, align 1, !tbaa !5
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %83
  %87 = load i8, ptr @my_name, align 1, !tbaa !5
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call fastcc void @getmyname()
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i8, ptr @my_name, align 1, !tbaa !5
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call fastcc i32 @encryptkeyintofile(ptr noundef nonnull %30, ptr noundef nonnull @my_name, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 19, i32 noundef %77)
  br label %95

95:                                               ; preds = %90, %93, %83
  %96 = load ptr, ptr @keyID_list, align 8, !tbaa !15
  call void @free(ptr noundef %96) #16
  call fastcc void @squish_and_idea_file(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %30, i8 noundef zeroext %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %5, i8 0, i64 260, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %97 = call i32 @fclose(ptr noundef nonnull %23)
  %98 = call i32 @write_error(ptr noundef nonnull %30) #16
  %99 = icmp ne i32 %98, 0
  %100 = call i32 @fclose(ptr noundef nonnull %30)
  %101 = sext i1 %99 to i32
  br label %102

102:                                              ; preds = %95, %4, %10, %13, %79, %32, %25
  %103 = phi i32 [ -1, %25 ], [ -1, %32 ], [ -1, %79 ], [ -1, %13 ], [ -1, %10 ], [ -1, %4 ], [ %101, %95 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #16
  ret i32 %103
}

declare void @MD5Init(ptr noundef) local_unnamed_addr #2

declare void @MD5Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @encryptkeyintofile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [262 x i8], align 16
  %8 = alloca [4 x i8], align 1
  %9 = alloca [130 x i16], align 16
  %10 = alloca [130 x i16], align 16
  %11 = alloca [8 x i8], align 8
  %12 = alloca [260 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  store i8 0, ptr %14, align 16, !tbaa !5
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %1) #16
  %17 = load i8, ptr @quietmode, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 6, i32 4
  %20 = call i32 @getpublickey(i32 noundef %19, ptr noundef %3, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %24 = call ptr @LANG(ptr noundef nonnull @.str.99) #16
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef %24, ptr noundef %1)
  br label %129

26:                                               ; preds = %6
  call void @extract_keyID(ptr noundef nonnull %11, ptr noundef nonnull %9) #16
  %27 = load ptr, ptr @keyID_list, align 8, !tbaa !15
  %28 = sext i32 %5 to i64
  %29 = getelementptr inbounds [8 x i8], ptr %27, i64 %28
  %30 = icmp sgt i32 %5, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %27, ptr noundef nonnull dereferenceable(8) %11, i64 8)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %37

34:                                               ; preds = %37
  %35 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %39, ptr noundef nonnull dereferenceable(8) %11, i64 8)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !llvm.loop !30

37:                                               ; preds = %31, %34
  %38 = phi ptr [ %39, %34 ], [ %27, %31 ]
  %39 = getelementptr inbounds [8 x i8], ptr %38, i64 1
  %40 = icmp ult ptr %39, %29
  br i1 %40, label %34, label %44, !llvm.loop !30

41:                                               ; preds = %34, %31
  %42 = phi i1 [ %30, %31 ], [ %40, %34 ]
  %43 = phi ptr [ %27, %31 ], [ %39, %34 ]
  br i1 %42, label %129, label %44

44:                                               ; preds = %37, %26, %41
  %45 = phi ptr [ %43, %41 ], [ %27, %26 ], [ %39, %37 ]
  %46 = load i64, ptr %11, align 8
  store i64 %46, ptr %45, align 1
  %47 = load i8, ptr %14, align 16, !tbaa !5
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %14, i64 1
  %51 = zext i8 %47 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %14, ptr nonnull align 1 %50, i64 %51, i1 false), !tbaa !5
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi i64 [ 0, %44 ], [ %51, %49 ]
  %54 = getelementptr inbounds i8, ptr %14, i64 %53
  store i8 0, ptr %54, align 1, !tbaa !5
  %55 = load i64, ptr %15, align 8, !tbaa !10
  %56 = call fastcc i32 @warn_signatures(ptr noundef %3, i64 noundef %55, ptr noundef nonnull %14, i8 noundef zeroext 0), !range !23
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %60 = call ptr @LANG(ptr noundef nonnull @.str.100) #16
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef %60, ptr noundef %1)
  br label %129

62:                                               ; preds = %52
  %63 = call i32 @countbits(ptr noundef nonnull %9) #16
  %64 = icmp slt i32 %63, 249
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %67 = call i64 @fwrite(ptr nonnull @.str.84, i64 51, i64 1, ptr %66)
  %68 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.100, ptr noundef %1)
  br label %129

70:                                               ; preds = %62
  %71 = trunc i32 %4 to i16
  %72 = call i32 @rsa_public_encrypt(ptr noundef nonnull %12, ptr noundef %2, i16 noundef signext %71, ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load ptr, ptr @pgpout, align 8, !tbaa !15
  switch i32 %72, label %80 [
    i32 -4, label %76
    i32 -3, label %78
  ]

76:                                               ; preds = %74
  %77 = call i64 @fwrite(ptr nonnull @.str.84, i64 51, i64 1, ptr %75)
  br label %82

78:                                               ; preds = %74
  %79 = call i64 @fwrite(ptr nonnull @.str.63, i64 129, i64 1, ptr %75)
  br label %82

80:                                               ; preds = %74
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.101, i32 noundef %72)
  br label %82

82:                                               ; preds = %78, %80, %76
  %83 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %84 = call ptr @LANG(ptr noundef nonnull @.str.100) #16
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef %84, ptr noundef %1)
  br label %129

86:                                               ; preds = %70
  %87 = call i32 @countbits(ptr noundef nonnull %12) #16
  %88 = add nsw i32 %87, 7
  %89 = ashr i32 %88, 3
  %90 = add nsw i32 %89, 12
  %91 = sext i32 %90 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %92 = icmp ugt i32 %90, 65535
  br i1 %92, label %99, label %93

93:                                               ; preds = %86
  %94 = icmp ult i32 %90, 256
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = select i1 %94, i64 1, i64 2
  %98 = or disjoint i32 %96, 132
  br label %99

99:                                               ; preds = %93, %86
  %100 = phi i32 [ 134, %86 ], [ %98, %93 ]
  %101 = phi i1 [ false, %86 ], [ %94, %93 ]
  %102 = phi i1 [ false, %86 ], [ %95, %93 ]
  %103 = phi i64 [ 4, %86 ], [ %97, %93 ]
  %104 = call i32 @putc(i32 noundef %100, ptr noundef %0)
  br i1 %101, label %105, label %107

105:                                              ; preds = %99
  %106 = trunc i32 %90 to i8
  store i8 %106, ptr %8, align 1, !tbaa !5
  br label %107

107:                                              ; preds = %105, %99
  br i1 %102, label %108, label %111

108:                                              ; preds = %107
  %109 = trunc i32 %90 to i16
  %110 = call ptr @put_word16(i16 noundef zeroext %109, ptr noundef nonnull %8) #16
  br label %111

111:                                              ; preds = %108, %107
  br i1 %92, label %112, label %114

112:                                              ; preds = %111
  %113 = call ptr @put_word32(i64 noundef %91, ptr noundef nonnull %8) #16
  br label %114

114:                                              ; preds = %111, %112
  %115 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef %103, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %116 = load i32, ptr @version_byte, align 4, !tbaa !17
  %117 = call i32 @putc(i32 noundef %116, ptr noundef %0)
  call void @writekeyID(ptr noundef nonnull %9, ptr noundef %0) #16
  %118 = call i32 @putc(i32 noundef 1, ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %7) #16
  %119 = call signext i16 @reg2mpi(ptr noundef nonnull %7, ptr noundef nonnull %12) #16
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %120, 2
  %122 = trunc i32 %121 to i16
  %123 = call zeroext i16 @checksum(ptr noundef nonnull %7, i16 noundef zeroext %122) #16
  %124 = load i16, ptr @mpi_checksum, align 2, !tbaa !13
  %125 = add i16 %124, %123
  store i16 %125, ptr @mpi_checksum, align 2, !tbaa !13
  %126 = sext i32 %121 to i64
  %127 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %126, ptr noundef %0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262) %7, i8 0, i64 262, i1 false)
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %12, i8 0, i64 260, i1 false)
  %128 = add nsw i32 %5, 1
  br label %129

129:                                              ; preds = %22, %58, %65, %82, %114, %41
  %130 = phi i32 [ %5, %22 ], [ %5, %41 ], [ %5, %58 ], [ %5, %65 ], [ %5, %82 ], [ %128, %114 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #16
  ret i32 %130
}

; Function Attrs: nounwind uwtable
define internal fastcc void @getmyname() unnamed_addr #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [130 x i16], align 16
  %3 = alloca [130 x i16], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @globalSecringName) #16
  %7 = call i32 @getpublickey(i32 noundef 32, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @my_name, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %8 = load i8, ptr @my_name, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = zext i8 %8 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 @my_name, ptr align 1 getelementptr ([0 x i8], ptr @my_name, i64 0, i64 1), i64 %11, i1 false), !tbaa !5
  br label %12

12:                                               ; preds = %0, %10
  %13 = phi i64 [ 0, %0 ], [ %11, %10 ]
  %14 = getelementptr inbounds i8, ptr @my_name, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @make_literal(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca [256 x i8], align 16
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store i64 0, ptr %9, align 8, !tbaa !10
  %10 = load i8, ptr @verbose, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %14 = tail call signext i8 @EXT_C(i8 noundef signext %2) #16
  %15 = sext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.54, ptr noundef %0, ptr noundef %1, i32 noundef %15, ptr noundef %3)
  br label %17

17:                                               ; preds = %12, %4
  %18 = sext i8 %2 to i32
  %19 = icmp eq i8 %2, 116
  %20 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %24 = tail call ptr @LANG(ptr noundef nonnull @.str.55) #16
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef %24, ptr noundef %0)
  br label %124

26:                                               ; preds = %17
  %27 = tail call i64 @fsize(ptr noundef nonnull %20) #16
  %28 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %32 = tail call ptr @LANG(ptr noundef nonnull @.str.40) #16
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef %32, ptr noundef %1)
  br label %122

34:                                               ; preds = %26
  %35 = icmp eq ptr %3, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %34
  %37 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %3) #16
  call void @file_to_canon(ptr noundef nonnull %8) #16
  %38 = call i32 @string_length(ptr noundef nonnull %8) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = sext i32 %38 to i64
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ %41, %40 ], [ %47, %42 ]
  %44 = getelementptr i8, ptr %8, i64 %43
  %45 = getelementptr i8, ptr %44, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !5
  store i8 %46, ptr %44, align 1, !tbaa !5
  %47 = add nsw i64 %43, -1
  %48 = and i64 %47, 4294967295
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %42, !llvm.loop !8

50:                                               ; preds = %42, %36
  %51 = trunc i32 %38 to i8
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi i8 [ %51, %50 ], [ 0, %34 ]
  store i8 %53, ptr %8, align 16, !tbaa !5
  %54 = icmp eq i8 %2, 98
  br i1 %54, label %55, label %84

55:                                               ; preds = %52
  %56 = load i8, ptr %8, align 16, !tbaa !5
  %57 = zext i8 %56 to i64
  %58 = add i64 %27, 6
  %59 = add i64 %58, %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %60 = icmp ugt i64 %59, 65535
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = icmp ult i64 %59, 256
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = select i1 %62, i64 1, i64 2
  %66 = or disjoint i32 %64, 172
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i32 [ 174, %55 ], [ %66, %61 ]
  %69 = phi i1 [ false, %55 ], [ %62, %61 ]
  %70 = phi i1 [ false, %55 ], [ %63, %61 ]
  %71 = phi i64 [ 4, %55 ], [ %65, %61 ]
  %72 = call i32 @putc(i32 noundef %68, ptr noundef nonnull %28)
  br i1 %69, label %73, label %75

73:                                               ; preds = %67
  %74 = trunc i64 %59 to i8
  store i8 %74, ptr %7, align 1, !tbaa !5
  br label %75

75:                                               ; preds = %73, %67
  br i1 %70, label %76, label %79

76:                                               ; preds = %75
  %77 = trunc i64 %59 to i16
  %78 = call ptr @put_word16(i16 noundef zeroext %77, ptr noundef nonnull %7) #16
  br label %79

79:                                               ; preds = %76, %75
  br i1 %60, label %80, label %82

80:                                               ; preds = %79
  %81 = call ptr @put_word32(i64 noundef %59, ptr noundef nonnull %7) #16
  br label %82

82:                                               ; preds = %79, %80
  %83 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 1, i64 noundef %71, ptr noundef nonnull %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %88

84:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %85 = call i32 @putc(i32 noundef 174, ptr noundef nonnull %28)
  %86 = call ptr @put_word32(i64 noundef 0, ptr noundef nonnull %6) #16
  %87 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %88

88:                                               ; preds = %84, %82
  %89 = call i64 @ftell(ptr noundef nonnull %28)
  %90 = call i32 @putc(i32 noundef %18, ptr noundef nonnull %28)
  %91 = icmp eq i8 %2, 108
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = load i8, ptr %8, align 16, !tbaa !5
  %94 = zext i8 %93 to i64
  %95 = add nuw nsw i64 %94, 1
  %96 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef %95, ptr noundef nonnull %28)
  %97 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 8, ptr noundef nonnull %28)
  br i1 %54, label %98, label %105

98:                                               ; preds = %92, %88
  %99 = call i32 @copyfile(ptr noundef nonnull %20, ptr noundef nonnull %28, i64 noundef -1) #16
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %103 = call i64 @fwrite(ptr nonnull @.str.56, i64 44, i64 1, ptr %102)
  call void @perror(ptr noundef nonnull @.str.57) #18
  %104 = call i32 @fclose(ptr noundef nonnull %28)
  br label %122

105:                                              ; preds = %92
  %106 = zext i1 %19 to i32
  store i32 %106, ptr @CONVERSION, align 4, !tbaa !17
  %107 = call i32 @copyfile_to_canon(ptr noundef nonnull %20, ptr noundef nonnull %28, i64 noundef -1) #16
  store i32 0, ptr @CONVERSION, align 4, !tbaa !17
  call void @rewind(ptr noundef nonnull %28)
  %108 = call i64 @fsize(ptr noundef nonnull %28) #16
  %109 = sub i64 %108, %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %110 = call i32 @putc(i32 noundef 174, ptr noundef nonnull %28)
  %111 = call ptr @put_word32(i64 noundef %109, ptr noundef nonnull %5) #16
  %112 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %113 = icmp slt i32 %107, 0
  br label %114

114:                                              ; preds = %98, %105
  %115 = phi i1 [ false, %98 ], [ %113, %105 ]
  %116 = call i32 @write_error(ptr noundef nonnull %28) #16
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, i1 true, i1 %115
  %119 = call i32 @fclose(ptr noundef nonnull %28)
  br i1 %118, label %122, label %120

120:                                              ; preds = %114
  %121 = call i32 @fclose(ptr noundef nonnull %20)
  br label %124

122:                                              ; preds = %114, %101, %30
  %123 = call i32 @fclose(ptr noundef nonnull %20)
  br label %124

124:                                              ; preds = %122, %120, %22
  %125 = phi i32 [ -1, %22 ], [ -1, %122 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #16
  ret i32 %125
}

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

declare i32 @copyfile_to_canon(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @strip_literal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [8 x i8], align 8
  %6 = alloca i8, align 1
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %9) #16
  store i8 98, ptr %3, align 1, !tbaa !5
  %10 = load i8, ptr @verbose, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.58, ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %12, %4
  %16 = icmp eq ptr %2, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  store i8 0, ptr %2, align 1, !tbaa !5
  br label %18

18:                                               ; preds = %17, %15
  %19 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %23 = tail call ptr @LANG(ptr noundef nonnull @.str.55) #16
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef %23, ptr noundef %0)
  br label %145

25:                                               ; preds = %18
  %26 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %19)
  %27 = load i8, ptr %6, align 1, !tbaa !5
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = and i8 %27, 124
  switch i8 %30, label %31 [
    i8 40, label %35
    i8 44, label %35
  ]

31:                                               ; preds = %29, %25
  %32 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.59, ptr noundef %0)
  %34 = tail call i32 @fclose(ptr noundef nonnull %19)
  br label %145

35:                                               ; preds = %29, %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8
  %36 = and i8 %27, 3
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %58, label %38

38:                                               ; preds = %35
  %39 = zext nneg i8 %36 to i32
  %40 = shl nuw nsw i32 1, %39
  %41 = zext nneg i32 %40 to i64
  %42 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef %41, ptr noundef nonnull %19)
  %43 = icmp ult i64 %42, %41
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  %45 = icmp eq i8 %36, 0
  %46 = load i8, ptr %5, align 8
  %47 = select i1 %45, i8 %46, i8 0
  %48 = zext i8 %47 to i64
  %49 = icmp eq i8 %36, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = call zeroext i16 @fetch_word16(ptr noundef nonnull %5) #16
  %52 = zext i16 %51 to i64
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i64 [ %52, %50 ], [ %48, %44 ]
  %55 = icmp eq i8 %36, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i64 @fetch_word32(ptr noundef nonnull %5) #16
  br label %58

58:                                               ; preds = %35, %38, %53, %56
  %59 = phi i64 [ -1, %35 ], [ -2, %38 ], [ %57, %56 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  store i8 0, ptr %3, align 1, !tbaa !5
  %60 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %19)
  %61 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %61, label %62 [
    i8 98, label %67
    i8 116, label %67
    i8 108, label %67
  ]

62:                                               ; preds = %58
  %63 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %64 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef %64)
  %66 = call i32 @fclose(ptr noundef nonnull %19)
  br label %145

67:                                               ; preds = %58, %58, %58
  %68 = load i8, ptr @verbose, align 1, !tbaa !5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %72 = call ptr @LANG(ptr noundef nonnull @.str.27) #16
  %73 = load i8, ptr %3, align 1, !tbaa !5
  %74 = call signext i8 @EXT_C(i8 noundef signext %73) #16
  %75 = sext i8 %74 to i32
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef %72, i32 noundef %75)
  br label %77

77:                                               ; preds = %70, %67
  store i8 0, ptr %7, align 16, !tbaa !5
  %78 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %19)
  %79 = icmp eq i8 %30, 44
  %80 = load i8, ptr %7, align 16
  %81 = zext i8 %80 to i64
  %82 = add nuw nsw i64 %81, 10
  %83 = select i1 %79, i64 %82, i64 0
  %84 = sub i64 %59, %83
  %85 = icmp eq i8 %80, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds i8, ptr %7, i64 1
  %88 = call i64 @fread(ptr noundef nonnull %87, i64 noundef 1, i64 noundef %81, ptr noundef nonnull %19)
  br label %89

89:                                               ; preds = %86, %77
  %90 = load i8, ptr %7, align 16, !tbaa !5
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %7, i64 1
  %94 = zext i8 %90 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %7, ptr nonnull align 1 %93, i64 %94, i1 false), !tbaa !5
  %95 = getelementptr inbounds i8, ptr %7, i64 %94
  store i8 0, ptr %95, align 1, !tbaa !5
  %96 = load i8, ptr @verbose, align 1, !tbaa !5
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %100 = call ptr @LANG(ptr noundef nonnull @.str.28) #16
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef %100, ptr noundef nonnull %7)
  br label %102

102:                                              ; preds = %98, %92
  br i1 %16, label %105, label %103

103:                                              ; preds = %102
  %104 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %7) #16
  br label %105

105:                                              ; preds = %102, %103, %89
  %106 = load i8, ptr %3, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 108
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = call i64 @fread(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %19)
  %110 = getelementptr inbounds [5 x i8], ptr %9, i64 0, i64 4
  store i8 0, ptr %110, align 1, !tbaa !5
  %111 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.29, ptr noundef nonnull %9)
  br label %145

113:                                              ; preds = %105
  %114 = call i64 @fread(ptr noundef nonnull %8, i64 noundef 1, i64 noundef 8, ptr noundef nonnull %19)
  %115 = load i8, ptr %3, align 1, !tbaa !5
  %116 = icmp eq i8 %115, 108
  br i1 %116, label %141, label %117

117:                                              ; preds = %113
  %118 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %122 = call ptr @LANG(ptr noundef nonnull @.str.40) #16
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef %122, ptr noundef %1)
  br label %143

124:                                              ; preds = %117
  %125 = load i8, ptr %3, align 1, !tbaa !5
  %126 = icmp eq i8 %125, 116
  %127 = select i1 %126, i32 2, i32 0
  store i32 %127, ptr @CONVERSION, align 4, !tbaa !17
  %128 = load i8, ptr %3, align 1, !tbaa !5
  %129 = icmp eq i8 %128, 98
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 @copyfile(ptr noundef nonnull %19, ptr noundef nonnull %118, i64 noundef %84) #16
  br label %134

132:                                              ; preds = %124
  %133 = call i32 @copyfile_from_canon(ptr noundef nonnull %19, ptr noundef nonnull %118, i64 noundef %84) #16
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 0, ptr @CONVERSION, align 4, !tbaa !17
  %136 = call i32 @write_error(ptr noundef nonnull %118) #16
  %137 = icmp ne i32 %136, 0
  %138 = icmp slt i32 %135, 0
  %139 = select i1 %137, i1 true, i1 %138
  %140 = call i32 @fclose(ptr noundef nonnull %118)
  br i1 %139, label %143, label %141

141:                                              ; preds = %113, %134
  %142 = call i32 @fclose(ptr noundef nonnull %19)
  br label %145

143:                                              ; preds = %134, %120
  %144 = call i32 @fclose(ptr noundef nonnull %19)
  br label %145

145:                                              ; preds = %143, %141, %108, %62, %31, %21
  %146 = phi i32 [ -1, %21 ], [ -1, %62 ], [ -1, %108 ], [ 0, %141 ], [ -1, %143 ], [ -1, %31 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define dso_local i32 @decryptfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [130 x i16], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca [130 x i16], align 16
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  %12 = alloca [260 x i8], align 16
  %13 = alloca [260 x i8], align 16
  %14 = alloca [8 x i8], align 8
  %15 = alloca i64, align 8
  %16 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #16
  %17 = load i8, ptr @verbose, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.60, ptr noundef %0, ptr noundef %1)
  br label %22

22:                                               ; preds = %19, %2
  %23 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %27 = tail call ptr @LANG(ptr noundef nonnull @.str.20) #16
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef %27, ptr noundef %0)
  br label %257

29:                                               ; preds = %22, %143
  %30 = phi i32 [ %144, %143 ], [ 0, %22 ]
  %31 = phi i64 [ %145, %143 ], [ 0, %22 ]
  %32 = phi i32 [ %146, %143 ], [ 0, %22 ]
  %33 = phi i16 [ %147, %143 ], [ 0, %22 ]
  %34 = phi i32 [ %148, %143 ], [ 0, %22 ]
  %35 = phi ptr [ %149, %143 ], [ null, %22 ]
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  %36 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef %23)
  %37 = load i8, ptr %4, align 1, !tbaa !5
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %41 = call ptr @LANG(ptr noundef nonnull @.str.61) #16
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef %41, ptr noundef %0)
  %43 = call i32 @fclose(ptr noundef %23)
  br label %257

44:                                               ; preds = %29
  %45 = and i8 %37, 124
  %46 = icmp eq i8 %45, 4
  br i1 %46, label %47, label %143

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %48 = and i8 %37, 3
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = zext nneg i8 %48 to i32
  %52 = shl nuw nsw i32 1, %51
  %53 = zext nneg i32 %52 to i64
  %54 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %53, ptr noundef %23)
  %55 = icmp ult i64 %54, %53
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  switch i8 %48, label %61 [
    i8 1, label %57
    i8 2, label %59
  ]

57:                                               ; preds = %56
  %58 = call zeroext i16 @fetch_word16(ptr noundef nonnull %3) #16
  br label %61

59:                                               ; preds = %56
  %60 = call i64 @fetch_word32(ptr noundef nonnull %3) #16
  br label %61

61:                                               ; preds = %57, %56, %47, %50, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %62 = call i32 @getc(ptr noundef %23)
  %63 = and i32 %62, 254
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %67 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef %67)
  %69 = call i32 @fclose(ptr noundef %23)
  br label %257

70:                                               ; preds = %61
  %71 = call i64 @fread(ptr noundef nonnull %14, i64 noundef 1, i64 noundef 8, ptr noundef %23)
  %72 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load ptr, ptr @stderr, align 8, !tbaa !15
  %76 = call ptr @LANG(ptr noundef nonnull @.str.62) #16
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef %76) #18
  call void @exitPGP(i32 noundef 7) #16
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i64, ptr %14, align 8
  store i64 %79, ptr %72, align 8
  %80 = getelementptr inbounds %struct.nkey, ptr %72, i64 0, i32 1
  store ptr %35, ptr %80, align 8, !tbaa !31
  %81 = call i32 @getc(ptr noundef %23)
  %82 = and i32 %81, 255
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %86 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef %86)
  %88 = call i32 @fclose(ptr noundef %23)
  br label %257

89:                                               ; preds = %78
  %90 = icmp eq i32 %32, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %89
  %92 = load i8, ptr @quietmode, align 1, !tbaa !5
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 3, i32 1
  %95 = call i32 @getsecretkey(i32 noundef %94, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i16, ptr @global_precision, align 2, !tbaa !13
  br label %100

99:                                               ; preds = %91
  store i16 130, ptr @global_precision, align 2, !tbaa !13
  br label %100

100:                                              ; preds = %97, %99, %89
  %101 = phi i32 [ 1, %89 ], [ 1, %97 ], [ 0, %99 ]
  %102 = phi i1 [ true, %89 ], [ false, %97 ], [ true, %99 ]
  %103 = phi i16 [ %33, %89 ], [ %98, %97 ], [ %33, %99 ]
  %104 = call i32 @read_mpi(ptr noundef nonnull %12, ptr noundef %23, i8 noundef zeroext 0, ptr noundef null), !range !33
  br i1 %102, label %140, label %105

105:                                              ; preds = %100
  %106 = load i8, ptr @quietmode, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %110 = call ptr @LANG(ptr noundef nonnull @.str.52) #16
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef %110)
  %112 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %113 = call i32 @fflush(ptr noundef %112)
  br label %114

114:                                              ; preds = %108, %105
  %115 = call i32 @rsa_private_decrypt(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %6) #16
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  switch i32 %115, label %129 [
    i32 -3, label %118
    i32 -7, label %121
    i32 -9, label %121
    i32 -5, label %125
  ]

118:                                              ; preds = %117
  %119 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %120 = call i64 @fwrite(ptr nonnull @.str.63, i64 129, i64 1, ptr %119)
  br label %132

121:                                              ; preds = %117, %117
  %122 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %123 = call ptr @LANG(ptr noundef nonnull @.str.34) #16
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef %123)
  br label %132

125:                                              ; preds = %117
  %126 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %127 = call ptr @LANG(ptr noundef nonnull @.str.64) #16
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef %127)
  br label %132

129:                                              ; preds = %117
  %130 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.65, i32 noundef %115)
  br label %132

132:                                              ; preds = %121, %129, %125, %118
  %133 = call i32 @fclose(ptr noundef %23)
  br label %257

134:                                              ; preds = %114
  %135 = load i8, ptr @quietmode, align 1, !tbaa !5
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %139 = call i32 @fputc(i32 noundef 46, ptr noundef %138)
  br label %140

140:                                              ; preds = %134, %137, %100
  %141 = phi i32 [ %115, %134 ], [ %115, %137 ], [ %34, %100 ]
  %142 = call i64 @ftell(ptr noundef %23)
  br label %143

143:                                              ; preds = %44, %140
  %144 = phi i32 [ %30, %140 ], [ 1, %44 ]
  %145 = phi i64 [ %142, %140 ], [ %31, %44 ]
  %146 = phi i32 [ %101, %140 ], [ %32, %44 ]
  %147 = phi i16 [ %103, %140 ], [ %33, %44 ]
  %148 = phi i32 [ %141, %140 ], [ %34, %44 ]
  %149 = phi ptr [ %72, %140 ], [ %35, %44 ]
  %150 = icmp eq i32 %144, 0
  br i1 %150, label %29, label %151, !llvm.loop !34

151:                                              ; preds = %143
  %152 = icmp eq i32 %146, 0
  %153 = load i8, ptr @verbose, align 1
  %154 = icmp ne i8 %153, 0
  %155 = select i1 %152, i1 true, i1 %154
  br i1 %155, label %156, label %183

156:                                              ; preds = %151
  %157 = call i32 @setkrent(ptr noundef null) #16
  %158 = call i32 @init_userhash() #16
  %159 = load ptr, ptr @pgpout, align 8, !tbaa !15
  br i1 %152, label %162, label %160

160:                                              ; preds = %156
  %161 = call i64 @fwrite(ptr nonnull @.str.66, i64 13, i64 1, ptr %159)
  br label %165

162:                                              ; preds = %156
  %163 = call ptr @LANG(ptr noundef nonnull @.str.67) #16
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef %163)
  br label %165

165:                                              ; preds = %162, %160
  %166 = icmp eq ptr %149, null
  br i1 %166, label %182, label %167

167:                                              ; preds = %165, %178
  %168 = phi ptr [ %180, %178 ], [ %149, %165 ]
  %169 = call ptr @user_from_keyID(ptr noundef nonnull %168) #16
  %170 = icmp eq ptr %169, null
  %171 = load ptr, ptr @pgpout, align 8, !tbaa !15
  br i1 %170, label %172, label %176

172:                                              ; preds = %167
  %173 = call ptr @LANG(ptr noundef nonnull @.str.68) #16
  %174 = call ptr @keyIDstring(ptr noundef nonnull %168) #16
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef %173, ptr noundef %174)
  br label %178

176:                                              ; preds = %167
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef nonnull @.str.69, ptr noundef nonnull %169)
  br label %178

178:                                              ; preds = %172, %176
  %179 = getelementptr inbounds %struct.nkey, ptr %168, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !31
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %167, !llvm.loop !35

182:                                              ; preds = %178, %165
  call void @endkrent() #16
  br label %183

183:                                              ; preds = %151, %182
  %184 = icmp eq ptr %149, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %183, %185
  %186 = phi ptr [ %188, %185 ], [ %149, %183 ]
  %187 = getelementptr inbounds %struct.nkey, ptr %186, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !31
  call void @free(ptr noundef %186) #16
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %185, !llvm.loop !36

190:                                              ; preds = %185, %183
  br i1 %152, label %200, label %191

191:                                              ; preds = %190
  %192 = call i32 @fseek(ptr noundef %23, i64 noundef %145, i32 noundef 0)
  store i16 %147, ptr @global_precision, align 2, !tbaa !13
  %193 = load i8, ptr %13, align 16, !tbaa !5
  %194 = icmp eq i8 %193, 1
  br i1 %194, label %205, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %197 = call ptr @LANG(ptr noundef nonnull @.str.3) #16
  %198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef %197)
  %199 = call i32 @fclose(ptr noundef %23)
  br label %257

200:                                              ; preds = %190
  %201 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %202 = call ptr @LANG(ptr noundef nonnull @.str.70) #16
  %203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef %202)
  %204 = call i32 @fclose(ptr noundef %23)
  br label %257

205:                                              ; preds = %191
  %206 = add nsw i32 %148, -3
  %207 = getelementptr inbounds i8, ptr %13, i64 1
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, ptr %207, i64 %208
  %210 = call zeroext i16 @fetch_word16(ptr noundef nonnull %209) #16
  %211 = trunc i32 %206 to i16
  %212 = call zeroext i16 @checksum(ptr noundef nonnull %207, i16 noundef zeroext %211) #16
  %213 = icmp eq i16 %210, %212
  br i1 %213, label %219, label %214

214:                                              ; preds = %205
  %215 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %216 = call ptr @LANG(ptr noundef nonnull @.str.34) #16
  %217 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef %216)
  %218 = call i32 @fclose(ptr noundef %23)
  br label %257

219:                                              ; preds = %205
  %220 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %224 = call ptr @LANG(ptr noundef nonnull @.str.40) #16
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef %224, ptr noundef %1)
  br label %255

226:                                              ; preds = %219
  %227 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 1, ptr noundef %23)
  %228 = load i8, ptr %5, align 1, !tbaa !5
  %229 = and i8 %228, -4
  %230 = icmp eq i8 %229, -92
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %233 = call i64 @fwrite(ptr nonnull @.str.71, i64 31, i64 1, ptr %232)
  br label %255

234:                                              ; preds = %226
  %235 = call i64 @getpastlength(i8 noundef zeroext %228, ptr noundef %23)
  %236 = call fastcc i32 @idea_file(ptr noundef nonnull %207, i8 noundef zeroext 1, ptr noundef %23, ptr noundef nonnull %220, i64 noundef %235), !range !27
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %240 = call ptr @LANG(ptr noundef nonnull @.str.72) #16
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef %240)
  br label %242

242:                                              ; preds = %238, %234
  %243 = load i8, ptr @quietmode, align 1, !tbaa !5
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %247 = call i32 @fputc(i32 noundef 46, ptr noundef %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = call i32 @write_error(ptr noundef nonnull %220) #16
  %250 = icmp eq i32 %249, 0
  %251 = call i32 @fclose(ptr noundef nonnull %220)
  br i1 %250, label %252, label %255

252:                                              ; preds = %248
  %253 = call i32 @fclose(ptr noundef %23)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %12, i8 0, i64 260, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %13, i8 0, i64 260, i1 false)
  call void @mp_init(ptr noundef nonnull %8, i16 noundef zeroext 0) #16
  call void @mp_init(ptr noundef nonnull %9, i16 noundef zeroext 0) #16
  call void @mp_init(ptr noundef nonnull %10, i16 noundef zeroext 0) #16
  call void @mp_init(ptr noundef nonnull %11, i16 noundef zeroext 0) #16
  %254 = select i1 %237, i32 %236, i32 1
  br label %257

255:                                              ; preds = %248, %231, %222
  %256 = call i32 @fclose(ptr noundef %23)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %12, i8 0, i64 260, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %13, i8 0, i64 260, i1 false)
  call void @mp_init(ptr noundef nonnull %8, i16 noundef zeroext 0) #16
  call void @mp_init(ptr noundef nonnull %9, i16 noundef zeroext 0) #16
  call void @mp_init(ptr noundef nonnull %10, i16 noundef zeroext 0) #16
  call void @mp_init(ptr noundef nonnull %11, i16 noundef zeroext 0) #16
  br label %257

257:                                              ; preds = %252, %255, %214, %195, %200, %132, %84, %65, %39, %25
  %258 = phi i32 [ -1, %25 ], [ -1, %65 ], [ -1, %84 ], [ %115, %132 ], [ -1, %195 ], [ -1, %214 ], [ -1, %255 ], [ -1, %200 ], [ -1, %39 ], [ %254, %252 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i32 %258
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

declare void @exitPGP(i32 noundef) local_unnamed_addr #2

declare i32 @rsa_private_decrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @setkrent(ptr noundef) local_unnamed_addr #2

declare i32 @init_userhash() local_unnamed_addr #2

declare ptr @user_from_keyID(ptr noundef) local_unnamed_addr #2

declare ptr @keyIDstring(ptr noundef) local_unnamed_addr #2

declare void @endkrent() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @idea_file(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.IdeaCfbContext, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %6) #16
  call void @ideaCfbInit(ptr noundef nonnull %6, ptr noundef %0) #16
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  %10 = load i64, ptr %9, align 1
  store i64 %10, ptr @textbuf, align 16
  %11 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 6), align 2, !tbaa !5
  store i8 %11, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 8), align 8, !tbaa !5
  %12 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 7), align 1, !tbaa !5
  store i8 %12, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 9), align 1, !tbaa !5
  call void @ideaCfbEncrypt(ptr noundef nonnull %6, ptr noundef nonnull @textbuf, ptr noundef nonnull @textbuf, i32 noundef 10) #16
  %13 = call i64 @fwrite(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef 10, ptr noundef %3)
  br label %30

14:                                               ; preds = %5
  %15 = call i64 @fread(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef 10, ptr noundef %2)
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = sub i64 %4, %17
  %19 = and i64 %15, 4294967295
  %20 = icmp eq i64 %19, 10
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  call void @ideaCfbDecrypt(ptr noundef nonnull %6, ptr noundef nonnull @textbuf, ptr noundef nonnull @textbuf, i32 noundef 10) #16
  %22 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 8), align 8, !tbaa !5
  %23 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 6), align 2, !tbaa !5
  %24 = icmp eq i8 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 9), align 1, !tbaa !5
  %27 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @textbuf, i64 0, i64 7), align 1, !tbaa !5
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %14, %29, %25, %8
  %31 = phi i64 [ %18, %29 ], [ %18, %25 ], [ %4, %8 ], [ %18, %14 ]
  %32 = phi i1 [ false, %29 ], [ true, %25 ], [ true, %8 ], [ false, %14 ]
  %33 = phi i32 [ -2, %29 ], [ 0, %25 ], [ 0, %8 ], [ -3, %14 ]
  call void @ideaCfbSync(ptr noundef nonnull %6) #16
  %34 = icmp ne i64 %31, 0
  %35 = and i1 %34, %32
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = call i64 @llvm.umin.i64(i64 %31, i64 4096)
  br label %38

38:                                               ; preds = %36, %49
  %39 = phi i64 [ %52, %49 ], [ %37, %36 ]
  %40 = phi i64 [ %46, %49 ], [ %31, %36 ]
  %41 = call i64 @fread(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef %39, ptr noundef %2)
  %42 = trunc i64 %41 to i32
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = and i64 %41, 4294967295
  %46 = sub i64 %40, %45
  br i1 %7, label %48, label %47

47:                                               ; preds = %44
  call void @ideaCfbDecrypt(ptr noundef nonnull %6, ptr noundef nonnull @textbuf, ptr noundef nonnull @textbuf, i32 noundef %42) #16
  br label %49

48:                                               ; preds = %44
  call void @ideaCfbEncrypt(ptr noundef nonnull %6, ptr noundef nonnull @textbuf, ptr noundef nonnull @textbuf, i32 noundef %42) #16
  br label %49

49:                                               ; preds = %48, %47
  %50 = call i64 @fwrite(ptr noundef nonnull @textbuf, i64 noundef 1, i64 noundef %45, ptr noundef %3)
  %51 = icmp eq i64 %50, %45
  %52 = call i64 @llvm.umin.i64(i64 %46, i64 4096)
  %53 = icmp ne i64 %46, 0
  %54 = and i1 %53, %51
  br i1 %54, label %38, label %55, !llvm.loop !37

55:                                               ; preds = %49
  %56 = select i1 %51, i32 0, i32 -3
  br label %57

57:                                               ; preds = %55, %38, %30
  %58 = phi i32 [ %33, %30 ], [ %56, %55 ], [ -3, %38 ]
  call void @ideaCfbDestroy(ptr noundef nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @textbuf, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %6) #16
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @idea_decryptfile(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca i8, align 1
  %5 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = load i8, ptr @verbose, align 1, !tbaa !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.73, ptr noundef %0, ptr noundef %1)
  br label %11

11:                                               ; preds = %8, %2
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %16 = tail call ptr @LANG(ptr noundef nonnull @.str.20) #16
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef %16, ptr noundef %0)
  br label %136

18:                                               ; preds = %11
  %19 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %23 = tail call ptr @LANG(ptr noundef nonnull @.str.40) #16
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef %23, ptr noundef %1)
  br label %134

25:                                               ; preds = %18
  %26 = load ptr, ptr @passwds, align 8, !tbaa !15
  br label %27

27:                                               ; preds = %103, %25
  %28 = phi i32 [ 0, %25 ], [ %104, %103 ]
  %29 = phi ptr [ %26, %25 ], [ %105, %103 ]
  %30 = phi ptr [ @passwds, %25 ], [ %106, %103 ]
  %31 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %12)
  %32 = load i8, ptr %4, align 1, !tbaa !5
  %33 = and i8 %32, -4
  %34 = icmp eq i8 %33, -92
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %37 = call i64 @fwrite(ptr nonnull @.str.71, i64 31, i64 1, ptr %36)
  %38 = call i32 @fclose(ptr noundef nonnull %19)
  br label %134

39:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %40 = and i8 %32, 3
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %62, label %42

42:                                               ; preds = %39
  %43 = zext nneg i8 %40 to i32
  %44 = shl nuw nsw i32 1, %43
  %45 = zext nneg i32 %44 to i64
  %46 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %45, ptr noundef nonnull %12)
  %47 = icmp ult i64 %46, %45
  br i1 %47, label %62, label %48

48:                                               ; preds = %42
  %49 = icmp eq i8 %40, 0
  %50 = load i8, ptr %3, align 8
  %51 = select i1 %49, i8 %50, i8 0
  %52 = zext i8 %51 to i64
  %53 = icmp eq i8 %40, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = call zeroext i16 @fetch_word16(ptr noundef nonnull %3) #16
  %56 = zext i16 %55 to i64
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i64 [ %56, %54 ], [ %52, %48 ]
  %59 = icmp eq i8 %40, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i64 @fetch_word32(ptr noundef nonnull %3) #16
  br label %62

62:                                               ; preds = %39, %42, %57, %60
  %63 = phi i64 [ -1, %39 ], [ -2, %42 ], [ %61, %60 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %64 = icmp eq ptr %29, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hashedpw, ptr %29, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %66, i64 16, i1 false)
  br label %79

67:                                               ; preds = %62
  %68 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %69 = call ptr @LANG(ptr noundef nonnull @.str.74) #16
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef %69)
  %71 = load i8, ptr @batchmode, align 1, !tbaa !5
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = call i32 @GetHashedPassPhrase(ptr noundef nonnull %5, i8 noundef zeroext 1) #16
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %67
  %77 = call i32 @fclose(ptr noundef nonnull %12)
  %78 = call i32 @fclose(ptr noundef nonnull %19)
  br label %136

79:                                               ; preds = %73, %65
  %80 = load i8, ptr @quietmode, align 1, !tbaa !5
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %84 = call ptr @LANG(ptr noundef nonnull @.str.52) #16
  %85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef %84)
  %86 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %87 = call i32 @fflush(ptr noundef %86)
  br label %88

88:                                               ; preds = %82, %79
  %89 = call fastcc i32 @idea_file(ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef nonnull %12, ptr noundef nonnull %19, i64 noundef %63), !range !27
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  br i1 %64, label %110, label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %29, align 8, !tbaa !24
  store ptr %93, ptr %30, align 8, !tbaa !15
  %94 = getelementptr inbounds %struct.hashedpw, ptr %29, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, i8 0, i64 16, i1 false)
  call void @free(ptr noundef %29) #16
  br label %110

95:                                               ; preds = %88
  br i1 %64, label %98, label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %29, align 8, !tbaa !15
  br label %103

98:                                               ; preds = %95
  %99 = add nuw nsw i32 %28, 1
  %100 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %101 = call ptr @LANG(ptr noundef nonnull @.str.75) #16
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef %101)
  br label %103

103:                                              ; preds = %98, %96
  %104 = phi i32 [ %28, %96 ], [ %99, %98 ]
  %105 = phi ptr [ %97, %96 ], [ null, %98 ]
  %106 = phi ptr [ %29, %96 ], [ %30, %98 ]
  call void @rewind(ptr noundef nonnull %12)
  call void @rewind(ptr noundef nonnull %19)
  %107 = icmp eq i32 %89, -2
  %108 = icmp slt i32 %104, 2
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %27, label %110, !llvm.loop !38

110:                                              ; preds = %103, %91, %92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %111 = icmp ne i32 %89, 0
  %112 = load i8, ptr @quietmode, align 1
  %113 = icmp ne i8 %112, 0
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %117 = call i32 @fputc(i32 noundef 46, ptr noundef %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = call i32 @write_error(ptr noundef nonnull %19) #16
  %120 = icmp eq i32 %119, 0
  %121 = call i32 @fclose(ptr noundef nonnull %19)
  br i1 %120, label %122, label %134

122:                                              ; preds = %118
  %123 = call i32 @fclose(ptr noundef nonnull %12)
  %124 = icmp slt i32 %89, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 @remove(ptr noundef %1) #16
  br label %136

127:                                              ; preds = %122
  %128 = load i8, ptr @quietmode, align 1, !tbaa !5
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %132 = call ptr @LANG(ptr noundef nonnull @.str.76) #16
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef %132)
  br label %136

134:                                              ; preds = %118, %35, %21
  %135 = call i32 @fclose(ptr noundef nonnull %12)
  br label %136

136:                                              ; preds = %127, %130, %134, %125, %76, %14
  %137 = phi i32 [ -1, %14 ], [ -1, %134 ], [ %89, %125 ], [ -1, %76 ], [ 1, %130 ], [ 1, %127 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i32 %137
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @decompress_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %5 = load i8, ptr @verbose, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %9 = tail call ptr @LANG(ptr noundef nonnull @.str.77) #16
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.4)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %16 = tail call ptr @LANG(ptr noundef nonnull @.str.78) #16
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef %16, ptr noundef %0)
  br label %85

18:                                               ; preds = %11
  %19 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %12)
  %20 = load i8, ptr %4, align 1, !tbaa !5
  %21 = and i8 %20, 124
  %22 = icmp eq i8 %21, 32
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %25 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 38, i64 1, ptr %24)
  br label %83

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8
  %27 = and i8 %20, 3
  %28 = icmp eq i8 %27, 3
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = zext nneg i8 %27 to i32
  %31 = shl nuw nsw i32 1, %30
  %32 = zext nneg i32 %31 to i64
  %33 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %32, ptr noundef nonnull %12)
  %34 = icmp ult i64 %33, %32
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  switch i8 %27, label %40 [
    i8 1, label %36
    i8 2, label %38
  ]

36:                                               ; preds = %35
  %37 = call zeroext i16 @fetch_word16(ptr noundef nonnull %3) #16
  br label %40

38:                                               ; preds = %35
  %39 = call i64 @fetch_word32(ptr noundef nonnull %3) #16
  br label %40

40:                                               ; preds = %36, %35, %26, %29, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %41 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %12)
  %42 = load i8, ptr %4, align 1, !tbaa !5
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %46 = call ptr @LANG(ptr noundef nonnull @.str.80) #16
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef %46)
  br label %83

48:                                               ; preds = %40
  %49 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %53 = call ptr @LANG(ptr noundef nonnull @.str.81) #16
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef %53, ptr noundef %1)
  br label %83

55:                                               ; preds = %48
  %56 = call i32 @unzip(ptr noundef nonnull %12, ptr noundef nonnull %49) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %60 = call ptr @LANG(ptr noundef nonnull @.str.82) #16
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef %60)
  br label %81

62:                                               ; preds = %55
  %63 = load i8, ptr @verbose, align 1, !tbaa !5
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %67 = call ptr @LANG(ptr noundef nonnull @.str.83) #16
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef %67)
  br label %75

69:                                               ; preds = %62
  %70 = load i8, ptr @quietmode, align 1, !tbaa !5
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load ptr, ptr @pgpout, align 8, !tbaa !15
  %74 = call i32 @fputc(i32 noundef 46, ptr noundef %73)
  br label %75

75:                                               ; preds = %69, %72, %65
  %76 = call i32 @write_error(ptr noundef nonnull %49) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = call i32 @fclose(ptr noundef nonnull %49)
  %80 = call i32 @fclose(ptr noundef nonnull %12)
  br label %85

81:                                               ; preds = %75, %58
  %82 = call i32 @fclose(ptr noundef nonnull %49)
  br label %83

83:                                               ; preds = %81, %51, %44, %23
  %84 = call i32 @fclose(ptr noundef nonnull %12)
  br label %85

85:                                               ; preds = %83, %78, %14
  %86 = phi i32 [ -1, %14 ], [ -1, %83 ], [ 1, %78 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret i32 %86
}

declare i32 @unzip(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rsa_private_encrypt(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @read_trust(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @is_compromised(ptr noundef) local_unnamed_addr #2

declare i32 @show_key(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @ideaCfbInit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cryptRandOpen(ptr noundef) local_unnamed_addr #2

declare void @trueRandAccum(i32 noundef) local_unnamed_addr #2

declare void @cryptRandInit(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @cryptRandByte() local_unnamed_addr #2

declare i32 @trueRandByte() local_unnamed_addr #2

declare void @cryptRandSave(ptr noundef) local_unnamed_addr #2

declare void @ideaCfbDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @rsa_public_encrypt(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @writekeyID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !9}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !6, i64 0}
!19 = distinct !{!19, !9}
!20 = !{i32 -1, i32 1}
!21 = !{i32 0, i32 2}
!22 = distinct !{!22, !9}
!23 = !{i32 -1, i32 2}
!24 = !{!25, !16, i64 0}
!25 = !{!"hashedpw", !16, i64 0, !6, i64 8}
!26 = distinct !{!26, !9}
!27 = !{i32 -3, i32 1}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = !{!32, !16, i64 8}
!32 = !{!"nkey", !6, i64 0, !16, i64 8}
!33 = !{i32 -1, i32 65536}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
