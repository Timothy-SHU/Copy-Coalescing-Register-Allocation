; ModuleID = 'src/keymgmt.c'
source_filename = "src/keymgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IdeaCfbContext = type { [8 x i8], [8 x i8], [52 x i16], i32 }
%struct.hashedpw = type { ptr, [16 x i8] }
%struct.MD5Context = type { [4 x i64], [2 x i64], [64 x i8] }

@blankkeyID = dso_local constant [9 x i8] c"        \00", align 1
@keyIDstring.keyIDbuf = internal global [9 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@global_precision = external local_unnamed_addr global i16, align 2
@mpi_checksum = external global i16, align 2
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"\0A\07Corrupted key.  Bad length, off by %d bytes.\0A\00", align 1
@PGP_EXTENSION = external global [0 x i8], align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\0A\07Keyring file '%s' does not exist. \00", align 1
@verbose = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"searching key ring file '%s' \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"for keyID %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"for userid \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\0A\07Could not read key from file '%s'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"\0A\07Sorry, this key has been revoked by its owner.\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"\0AKey for user ID \22%s\22\0Ahas been revoked.  You cannot use this key.\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"\0A\07Key matching expected Key ID %s not found in file '%s'.\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\0A\07Key matching userid '%s' not found in file '%s'.\0A\00", align 1
@filter_mode = external local_unnamed_addr global i8, align 1
@batchmode = external local_unnamed_addr global i8, align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Enter secret key filename: \00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Enter public key filename: \00", align 1
@globalSecringName = external global [256 x i8], align 16
@keypasswds = external local_unnamed_addr global ptr, align 8
@passwds = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [28 x i8] c"\0A\07Error:  Bad pass phrase.\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AYou need a pass phrase to unlock your RSA secret key. \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"\0AKey for user ID: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"%d-bit key, key ID %s, created %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"No passphrase; secret key unavailable.\0A\00", align 1
@quietmode = external local_unnamed_addr global i8, align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"\0AAdvisory warning: This RSA secret key is not protected by a passphrase.\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"Pass phrase is good.  \00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"\0A\07Key file '%s' is not a secret key file.\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Key fingerprint =\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@globalPubringName = external global [256 x i8], align 16
@.str.26 = private unnamed_addr constant [33 x i8] c"\0A\07Can't open key ring file '%s'\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@moreflag = external local_unnamed_addr global i8, align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"\0AKey ring: '%s'\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c", looking for user ID \22%s\22.\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"1 matching key found.\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"%d matching keys found.\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"\0AChecking signatures...\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"%4d/%s %s \00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"          %s            \00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"*** KEY REVOKED ***\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"          %s              \00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"!      \00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"?      \00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"%      \00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"*      \00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"          %s             \00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"             \00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"(Unknown signator, can't be checked)\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"(Key too long, can't be checked)\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"(Malformed or obsolete signature format)\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"(Unknown public-key algorithm)\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"(Unknown hash algorithm)\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"(Unknown signature packet version)\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"(Malformed signature)\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"(Corrupted signature packet)\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"\07**** BAD SIGNATURE! ****\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"(Unexpected signature error %d)\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Remove bad signatures (Y/n)? \00", align 1
@BAK_EXTENSION = external global [0 x i8], align 1
@.str.64 = private unnamed_addr constant [56 x i8] c"\0ARemoving signatures from userid '%s' in key ring '%s'\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"\0A\07Key not found in key ring '%s'.\0A\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"\0AKey has no signatures to remove.\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"\0AKey has %d signature(s):\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"%c     \00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"               \00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"(Unknown signator, can't be checked)\0A\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Remove this signature (y/N)? \00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"\0ANo key signatures removed.\0A\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"\0A%d key signature(s) removed.\0A\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"\0ARemoving from key ring: '%s'\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c", userid \22%s\22.\0A\00", align 1
@.str.76 = private unnamed_addr constant [76 x i8] c"\0AKey has more than one user ID.\0ADo you want to remove the whole key (y/N)? \00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"\0ANo more user ID's\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"Remove \22%s\22 (y/N)? \00", align 1
@force_flag = external local_unnamed_addr global i8, align 1
@.str.79 = private unnamed_addr constant [48 x i8] c"\0AAre you sure you want this key removed (y/N)? \00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"\0AUser ID removed from key ring.\0A\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"\0AKey removed from key ring.\0A\00", align 1
@.str.82 = private unnamed_addr constant [113 x i8] c"\0AKey or user ID is also present in secret keyring.\0ADo you also want to remove it from the secret keyring (y/N)? \00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"\0AExtracting from key ring: '%s'\00", align 1
@.str.85 = private unnamed_addr constant [39 x i8] c"Extract the above key into which file?\00", align 1
@ASC_EXTENSION = external global [0 x i8], align 1
@.str.87 = private unnamed_addr constant [49 x i8] c"Key ID %s is already included in key ring '%s'.\0A\00", align 1
@.str.88 = private unnamed_addr constant [54 x i8] c"\0A\07Output file '%s' already exists.  Overwrite (y/N)? \00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"\0A\07Unable to create key file '%s'.\0A\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"\0AKey extracted to file '%s'.\0A\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"secring.pgp\00", align 1
@.str.92 = private unnamed_addr constant [88 x i8] c"\0AThis operation may not be performed on a secret keyring.\0ADefaulting to public keyring.\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"\0AEditing userid \22%s\22 in key ring: '%s'.\0A\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"\0ACan't open public key ring file '%s'\0A\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"\0A\07File '%s' is not a public keyring.\0A\00", align 1
@.str.96 = private unnamed_addr constant [43 x i8] c"\0A\07This key has been revoked by its owner.\0A\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"\0ACan't open secret key ring file '%s'\0A\00", align 1
@.str.98 = private unnamed_addr constant [64 x i8] c"\0ANo secret key available.  Editing public key trust parameter.\0A\00", align 1
@.str.99 = private unnamed_addr constant [43 x i8] c"Current trust for this key's owner is: %s\0A\00", align 1
@trust_lst = external global [8 x [16 x i8]], align 16
@.str.100 = private unnamed_addr constant [26 x i8] c"Public key ring updated.\0A\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"\0AUse this key as an ultimately-trusted introducer (y/N)? \00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"\0ACurrent user ID: %s\00", align 1
@.str.103 = private unnamed_addr constant [42 x i8] c"\0ADo you want to add a new user ID (y/N)? \00", align 1
@.str.104 = private unnamed_addr constant [25 x i8] c"\0AEnter the new user ID: \00", align 1
@.str.105 = private unnamed_addr constant [60 x i8] c"\0AMake this user ID the primary user ID for this key (y/N)? \00", align 1
@.str.106 = private unnamed_addr constant [48 x i8] c"\0ADo you want to change your pass phrase (y/N)? \00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"(No changes will be made.)\0A\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"\0A\07Unable to update secret key ring.\0A\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"\0ASecret key ring updated...\0A\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"\0A\07Unable to update public key ring.\0A\00", align 1
@sign_new_userids = external local_unnamed_addr global i8, align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"(No need to update public key ring)\0A\00", align 1
@.str.112 = private unnamed_addr constant [115 x i8] c"\0ADo you want to permanently revoke your public key\0Aby issuing a secret key compromise certificate\0Afor \22%s\22 (y/N)? \00", align 1
@.str.113 = private unnamed_addr constant [51 x i8] c"You can only disable keys on your public keyring.\0A\00", align 1
@.str.114 = private unnamed_addr constant [71 x i8] c"\0AKey is already disabled.\0ADo you want to enable this key again (y/N)? \00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"\0ADisable this key (y/N)? \00", align 1
@.str.116 = private unnamed_addr constant [269 x i8] c"Pick your RSA key size:\0A    1)   512 bits- Low commercial grade, fast but less secure\0A    2)   768 bits- High commercial grade, medium speed, good security\0A    3)  1024 bits- \22Military\22 grade, slow, highest security\0AChoose 1, 2, or 3, or enter desired number of bits: \00", align 1
@.str.117 = private unnamed_addr constant [46 x i8] c"Generating an RSA key with a %d-bit modulus.\0A\00", align 1
@.str.118 = private unnamed_addr constant [278 x i8] c"\0AYou need a user ID for your public key.  The desired form for this\0Auser ID is your name, followed by your E-mail address enclosed in\0A<angle brackets>, if you have an E-mail address.\0AFor example:  John Q. Smith <12345.6789@compuserve.com>\0AEnter a user ID for your public key: \0A\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Generating RSA key-pair with UserID \22%s\22.\0A\00", align 1
@.str.120 = private unnamed_addr constant [185 x i8] c"\0AYou need a pass phrase to protect your RSA secret key.\0AYour pass phrase can be any sentence or phrase and may have many\0Awords, spaces, punctuation, or any other printable characters.\0A\00", align 1
@.str.121 = private unnamed_addr constant [49 x i8] c"\0ANote that key generation is a lengthy process.\0A\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"\0A\07Keygen failed!\0A\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"Key ID %s\0A\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c" modulus n = \00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"exponent e = \00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"Display secret components (y/N)?\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"exponent d = \00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"   prime p = \00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"   prime q = \00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c" inverse u = \00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"\07Key generation completed.\0A\00", align 1
@.str.132 = private unnamed_addr constant [39 x i8] c"Type Bits/KeyID    Date       User ID\0A\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"     %s                 \00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"%c      \00", align 1
@version_byte = external local_unnamed_addr global i32, align 4
@.str.137 = private unnamed_addr constant [37 x i8] c"%d-bit %s key written to file '%s'.\0A\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"public\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @is_key_ctb(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = icmp eq i8 %0, -103
  %3 = icmp eq i8 %0, -107
  %4 = or i1 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef nonnull ptr @keyIDstring(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 4, %1 ], [ %10, %2 ]
  %4 = phi ptr [ @keyIDstring.keyIDbuf, %1 ], [ %9, %2 ]
  %5 = getelementptr inbounds i8, ptr %0, i64 %3
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #13
  %9 = getelementptr inbounds i8, ptr %4, i64 2
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %12, label %2, !llvm.loop !8

12:                                               ; preds = %2
  store i8 0, ptr %9, align 1, !tbaa !5
  ret ptr @keyIDstring.keyIDbuf
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @extract_keyID(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [262 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %4 = call signext i16 @reg2mpi(ptr noundef nonnull %3, ptr noundef %1) #13
  %5 = call signext i16 @reg2mpi(ptr noundef nonnull %3, ptr noundef %1) #13
  %6 = add i16 %5, -6
  br label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ 0, %2 ], [ %14, %7 ]
  %9 = phi i16 [ %6, %2 ], [ %10, %7 ]
  %10 = add i16 %9, 1
  %11 = sext i16 %9 to i64
  %12 = getelementptr inbounds [262 x i8], ptr %3, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = add nuw nsw i64 %8, 1
  %15 = getelementptr inbounds i8, ptr %0, i64 %8
  store i8 %13, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i64 %14, 8
  br i1 %16, label %17, label %7, !llvm.loop !10

17:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare signext i16 @reg2mpi(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @key2IDstring(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [262 x i8], align 16
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %2, i8 0, i64 10, i1 false)
  %4 = call signext i16 @reg2mpi(ptr noundef nonnull %2, ptr noundef %0) #13
  %5 = call signext i16 @reg2mpi(ptr noundef nonnull %2, ptr noundef %0) #13
  %6 = add i16 %5, -6
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i64 [ 0, %1 ], [ %14, %7 ]
  %9 = phi i16 [ %6, %1 ], [ %10, %7 ]
  %10 = add i16 %9, 1
  %11 = sext i16 %9 to i64
  %12 = getelementptr inbounds [262 x i8], ptr %2, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = add nuw nsw i64 %8, 1
  %15 = getelementptr inbounds i8, ptr %3, i64 %8
  store i8 %13, ptr %15, align 1, !tbaa !5
  %16 = icmp eq i64 %14, 8
  br i1 %16, label %17, label %7, !llvm.loop !10

17:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %2) #13
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi i64 [ 4, %17 ], [ %26, %18 ]
  %20 = phi ptr [ @keyIDstring.keyIDbuf, %17 ], [ %25, %18 ]
  %21 = getelementptr inbounds i8, ptr %3, i64 %19
  %22 = load i8, ptr %21, align 1, !tbaa !5
  %23 = zext i8 %22 to i32
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %23) #13
  %25 = getelementptr inbounds i8, ptr %20, i64 2
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %18, !llvm.loop !8

28:                                               ; preds = %18
  store i8 0, ptr %25, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr @keyIDstring.keyIDbuf
}

; Function Attrs: nounwind uwtable
define dso_local void @writekeyID(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = alloca [262 x i8], align 16
  %4 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %5 = call signext i16 @reg2mpi(ptr noundef nonnull %3, ptr noundef %0) #13
  %6 = call signext i16 @reg2mpi(ptr noundef nonnull %3, ptr noundef %0) #13
  %7 = add i16 %6, -6
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %15, %8 ]
  %10 = phi i16 [ %7, %2 ], [ %11, %8 ]
  %11 = add i16 %10, 1
  %12 = sext i16 %10 to i64
  %13 = getelementptr inbounds [262 x i8], ptr %3, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = add nuw nsw i64 %9, 1
  %16 = getelementptr inbounds i8, ptr %4, i64 %9
  store i8 %14, ptr %16, align 1, !tbaa !5
  %17 = icmp eq i64 %15, 8
  br i1 %17, label %18, label %8, !llvm.loop !10

18:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %3) #13
  %19 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 8, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @write_trust(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = tail call i32 @putc(i32 noundef 176, ptr noundef %0)
  %4 = tail call i32 @putc(i32 noundef 1, ptr noundef %0)
  %5 = zext i8 %1 to i32
  %6 = tail call i32 @putc(i32 noundef %5, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @nextkeypacket(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %1, align 1, !tbaa !5
  %4 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %5 = and i64 %4, 4294967295
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %3, align 1
  store i8 %8, ptr %1, align 1, !tbaa !5
  switch i8 %8, label %9 [
    i8 -76, label %14
    i8 -80, label %14
    i8 -103, label %14
    i8 -107, label %14
  ]

9:                                                ; preds = %7
  %10 = and i8 %8, 124
  switch i8 %10, label %11 [
    i8 8, label %14
    i8 56, label %14
  ]

11:                                               ; preds = %9
  %12 = icmp eq i8 %8, 26
  %13 = select i1 %12, i16 -1, i16 -2
  br label %19

14:                                               ; preds = %9, %9, %7, %7, %7, %7
  %15 = tail call i64 @getpastlength(i8 noundef zeroext %8, ptr noundef %0) #13
  %16 = icmp ugt i64 %15, 1591
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @fseek(ptr noundef %0, i64 noundef %15, i32 noundef 1)
  br label %19

19:                                               ; preds = %14, %2, %17, %11
  %20 = phi i16 [ 0, %17 ], [ %13, %11 ], [ -1, %2 ], [ -3, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i16 %20
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i64 @getpastlength(i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef signext i16 @readkeypacket(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #4 {
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  store i8 0, ptr %2, align 1, !tbaa !5
  %21 = call i64 @fread(ptr noundef nonnull %14, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %22 = and i64 %21, 4294967295
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %215, label %24

24:                                               ; preds = %13
  %25 = load i8, ptr %14, align 1
  store i8 %25, ptr %2, align 1, !tbaa !5
  switch i8 %25, label %26 [
    i8 -76, label %31
    i8 -80, label %31
    i8 -103, label %31
    i8 -107, label %31
  ]

26:                                               ; preds = %24
  %27 = and i8 %25, 124
  switch i8 %27, label %28 [
    i8 8, label %31
    i8 56, label %31
  ]

28:                                               ; preds = %26
  %29 = icmp eq i8 %25, 26
  %30 = select i1 %29, i16 -1, i16 -2
  br label %215

31:                                               ; preds = %26, %26, %24, %24, %24, %24
  %32 = tail call i64 @getpastlength(i8 noundef zeroext %25, ptr noundef %0) #13
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = icmp ugt i32 %34, 1591
  br i1 %35, label %215, label %36

36:                                               ; preds = %31
  %37 = tail call i64 @ftell(ptr noundef %0)
  %38 = and i64 %32, 65535
  %39 = add nsw i64 %37, %38
  %40 = icmp eq i8 %25, -76
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = icmp ugt i32 %34, 255
  br i1 %42, label %215, label %43

43:                                               ; preds = %41
  %44 = icmp eq ptr %4, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = trunc i64 %32 to i8
  store i8 %46, ptr %4, align 1, !tbaa !5
  %47 = getelementptr inbounds i8, ptr %4, i64 1
  %48 = tail call i64 @fread(ptr noundef nonnull %47, i64 noundef 1, i64 noundef %38, ptr noundef %0)
  br label %215

49:                                               ; preds = %43
  %50 = tail call i32 @fseek(ptr noundef %0, i64 noundef %38, i32 noundef 1)
  br label %215

51:                                               ; preds = %36
  %52 = and i8 %25, 124
  %53 = icmp eq i8 %52, 8
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = icmp eq ptr %11, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %54
  %57 = call i64 @fread(ptr noundef nonnull %15, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %58 = load i8, ptr %15, align 1, !tbaa !5
  %59 = zext i8 %58 to i32
  %60 = tail call i32 @version_byte_error(i32 noundef %59) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = tail call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

64:                                               ; preds = %56
  %65 = call i64 @fread(ptr noundef nonnull %17, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %66 = load i8, ptr %17, align 1, !tbaa !5
  %67 = zext i8 %66 to i64
  %68 = tail call i32 @fseek(ptr noundef %0, i64 noundef %67, i32 noundef 1)
  %69 = tail call i64 @fread(ptr noundef nonnull %11, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  br label %70

70:                                               ; preds = %64, %54
  %71 = tail call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

72:                                               ; preds = %51
  switch i8 %25, label %81 [
    i8 -80, label %73
    i8 -103, label %83
    i8 -107, label %83
  ]

73:                                               ; preds = %72
  %74 = icmp eq i32 %34, 1
  br i1 %74, label %75, label %215

75:                                               ; preds = %73
  %76 = icmp eq ptr %12, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = tail call i64 @fread(ptr noundef nonnull %12, i64 noundef 1, i64 noundef %38, ptr noundef %0)
  br label %215

79:                                               ; preds = %75
  %80 = tail call i32 @fseek(ptr noundef %0, i64 noundef %38, i32 noundef 1)
  br label %215

81:                                               ; preds = %72
  %82 = tail call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

83:                                               ; preds = %72, %72
  %84 = icmp eq ptr %5, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %83
  store i16 130, ptr @global_precision, align 2, !tbaa !11
  br label %86

86:                                               ; preds = %85, %83
  %87 = call i64 @fread(ptr noundef nonnull %15, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %88 = load i8, ptr %15, align 1, !tbaa !5
  %89 = zext i8 %88 to i32
  %90 = tail call i32 @version_byte_error(i32 noundef %89) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = tail call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

94:                                               ; preds = %86
  %95 = icmp eq ptr %3, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = tail call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 4, ptr noundef %0)
  tail call void @hiloswap(ptr noundef nonnull %3, i16 noundef signext 4) #13
  br label %100

98:                                               ; preds = %94
  %99 = tail call i32 @fseek(ptr noundef %0, i64 noundef 4, i32 noundef 1)
  br label %100

100:                                              ; preds = %98, %96
  %101 = call i64 @fread(ptr noundef nonnull %18, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  call void @hiloswap(ptr noundef nonnull %18, i16 noundef signext 2) #13
  %102 = call i64 @fread(ptr noundef nonnull %16, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %103 = load i8, ptr %16, align 1, !tbaa !5
  %104 = zext i8 %103 to i32
  %105 = call i32 @version_error(i32 noundef %104, i32 noundef 1) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

109:                                              ; preds = %100
  br i1 %84, label %110, label %112

110:                                              ; preds = %109
  %111 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

112:                                              ; preds = %109
  %113 = call i32 @read_mpi(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #13
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

117:                                              ; preds = %112
  %118 = call i32 @read_mpi(ptr noundef %6, ptr noundef %0, i8 noundef zeroext 0, ptr noundef null) #13
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

122:                                              ; preds = %117
  %123 = call i32 @countbits(ptr noundef nonnull %5) #13
  %124 = add nsw i32 %123, 7
  %125 = lshr i32 %124, 3
  %126 = call i32 @countbits(ptr noundef %6) #13
  %127 = add nsw i32 %126, 7
  %128 = lshr i32 %127, 3
  %129 = add nuw nsw i32 %125, %128
  %130 = sub i32 %33, %129
  %131 = trunc i32 %130 to i16
  %132 = add i16 %131, -12
  %133 = icmp eq ptr %7, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = icmp eq i16 %132, 0
  %136 = icmp eq i8 %52, 20
  %137 = or i1 %136, %135
  %138 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  %139 = select i1 %137, i16 0, i16 -4
  br label %215

140:                                              ; preds = %122
  %141 = icmp eq i8 %52, 20
  br i1 %141, label %142, label %206

142:                                              ; preds = %140
  %143 = call i64 @fread(ptr noundef nonnull %16, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %144 = load i8, ptr %16, align 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = zext i8 %144 to i32
  %148 = call i32 @version_error(i32 noundef %147, i32 noundef 1) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

152:                                              ; preds = %146, %142
  %153 = icmp eq ptr %1, null
  %154 = icmp ne i8 %144, 0
  %155 = and i1 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

158:                                              ; preds = %152
  br i1 %145, label %165, label %159

159:                                              ; preds = %158
  %160 = call i64 @fread(ptr noundef nonnull %20, i64 noundef 1, i64 noundef 8, ptr noundef %0)
  %161 = trunc i64 %160 to i32
  %162 = icmp slt i32 %161, 8
  br i1 %162, label %215, label %163

163:                                              ; preds = %159
  call void @ideaCfbDecrypt(ptr noundef %1, ptr noundef nonnull %20, ptr noundef nonnull %20, i32 noundef 8) #13
  %164 = add i16 %131, -20
  br label %165

165:                                              ; preds = %163, %158
  %166 = phi i16 [ %164, %163 ], [ %132, %158 ]
  store i16 0, ptr @mpi_checksum, align 2, !tbaa !11
  %167 = call i32 @read_mpi(ptr noundef nonnull %7, ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1) #13
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %215, label %169

169:                                              ; preds = %165
  %170 = call i32 @read_mpi(ptr noundef %8, ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1) #13
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %215, label %172

172:                                              ; preds = %169
  %173 = call i32 @read_mpi(ptr noundef %9, ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1) #13
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %215, label %175

175:                                              ; preds = %172
  %176 = call i32 @mp_mult(ptr noundef %10, ptr noundef %8, ptr noundef %9) #13
  %177 = call signext i16 @mp_compare(ptr noundef nonnull %5, ptr noundef %10) #13
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %215

179:                                              ; preds = %175
  %180 = call i32 @read_mpi(ptr noundef %10, ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1) #13
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %215, label %182

182:                                              ; preds = %179
  %183 = call i64 @fread(ptr noundef nonnull %19, i64 noundef 1, i64 noundef 2, ptr noundef %0)
  call void @hiloswap(ptr noundef nonnull %19, i16 noundef signext 2) #13
  %184 = load i16, ptr %19, align 2, !tbaa !11
  %185 = load i16, ptr @mpi_checksum, align 2, !tbaa !11
  %186 = icmp eq i16 %184, %185
  br i1 %186, label %187, label %215

187:                                              ; preds = %182
  %188 = call i32 @countbits(ptr noundef nonnull %7) #13
  %189 = add nsw i32 %188, 7
  %190 = lshr i32 %189, 3
  %191 = call i32 @countbits(ptr noundef %8) #13
  %192 = add nsw i32 %191, 7
  %193 = lshr i32 %192, 3
  %194 = add nuw nsw i32 %193, %190
  %195 = call i32 @countbits(ptr noundef %9) #13
  %196 = add nsw i32 %195, 7
  %197 = lshr i32 %196, 3
  %198 = add nuw nsw i32 %194, %197
  %199 = call i32 @countbits(ptr noundef %10) #13
  %200 = add nsw i32 %199, 7
  %201 = lshr i32 %200, 3
  %202 = add nuw nsw i32 %198, %201
  %203 = trunc i32 %202 to i16
  %204 = add i16 %166, -11
  %205 = sub i16 %204, %203
  br label %207

206:                                              ; preds = %140
  call void @mp_init(ptr noundef nonnull %7, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef %8, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef %9, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef %10, i16 noundef zeroext 0) #13
  br label %207

207:                                              ; preds = %206, %187
  %208 = phi i16 [ %205, %187 ], [ %132, %206 ]
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  %211 = zext i16 %208 to i32
  %212 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.1, i32 noundef %211)
  %214 = call i32 @fseek(ptr noundef %0, i64 noundef %39, i32 noundef 0)
  br label %215

215:                                              ; preds = %134, %207, %182, %179, %175, %172, %169, %165, %159, %77, %79, %73, %45, %49, %41, %31, %13, %210, %156, %150, %120, %115, %110, %107, %92, %81, %70, %62, %28
  %216 = phi i16 [ -6, %62 ], [ 0, %70 ], [ -6, %92 ], [ -6, %107 ], [ 0, %110 ], [ -4, %115 ], [ -4, %120 ], [ -6, %150 ], [ -5, %156 ], [ -4, %210 ], [ 0, %81 ], [ %30, %28 ], [ -1, %13 ], [ -3, %31 ], [ -3, %41 ], [ 0, %49 ], [ 0, %45 ], [ -3, %73 ], [ 0, %79 ], [ 0, %77 ], [ -4, %159 ], [ -4, %165 ], [ -4, %169 ], [ -4, %172 ], [ -5, %175 ], [ -4, %179 ], [ -5, %182 ], [ 0, %207 ], [ %139, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #13
  ret i16 %216
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @version_byte_error(i32 noundef) local_unnamed_addr #6

declare void @hiloswap(ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare i32 @version_error(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @read_mpi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

declare i32 @countbits(ptr noundef) local_unnamed_addr #6

declare void @ideaCfbDecrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @mp_mult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare signext i16 @mp_compare(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mp_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @getpublickey(i32 noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #4 {
  %10 = alloca i8, align 1
  %11 = alloca [262 x i8], align 16
  %12 = alloca [8 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca [256 x i8], align 16
  %15 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #13
  %16 = icmp eq ptr %4, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %6) #13
  br label %20

19:                                               ; preds = %9
  store i8 0, ptr %14, align 16, !tbaa !5
  br label %20

20:                                               ; preds = %19, %17
  %21 = load i8, ptr %1, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %228, label %23

23:                                               ; preds = %20
  %24 = and i32 %0, 8
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %25, %16
  %27 = and i32 %0, 2
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %0, 4
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %0, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %0, 1
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %0, 32
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.14, ptr @.str.13
  br label %38

38:                                               ; preds = %23, %218
  %39 = phi i8 [ 0, %23 ], [ %212, %218 ]
  %40 = phi i32 [ 0, %23 ], [ %211, %218 ]
  %41 = phi i64 [ 0, %23 ], [ %210, %218 ]
  %42 = phi i32 [ -1, %23 ], [ %209, %218 ]
  %43 = call zeroext i8 @file_exists(ptr noundef nonnull %1) #13
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  call void @default_extension(ptr noundef nonnull %1, ptr noundef nonnull @PGP_EXTENSION) #13
  br label %46

46:                                               ; preds = %45, %38
  %47 = call zeroext i8 @file_exists(ptr noundef nonnull %1) #13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  br i1 %34, label %50, label %228

50:                                               ; preds = %49
  %51 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %52 = call ptr @LANG(ptr noundef nonnull @.str.2) #13
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef %52, ptr noundef nonnull %1)
  %54 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %55 = call i32 @fputc(i32 10, ptr %54)
  br label %208

56:                                               ; preds = %46
  %57 = load i8, ptr @verbose, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.4, ptr noundef nonnull %1)
  %62 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %16, label %75, label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ %71, %63 ], [ 4, %59 ]
  %65 = phi ptr [ %70, %63 ], [ @keyIDstring.keyIDbuf, %59 ]
  %66 = getelementptr inbounds i8, ptr %4, i64 %64
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = zext i8 %67 to i32
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %68) #13
  %70 = getelementptr inbounds i8, ptr %65, i64 2
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %73, label %63, !llvm.loop !8

73:                                               ; preds = %63
  store i8 0, ptr %70, align 1, !tbaa !5
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.5, ptr noundef nonnull @keyIDstring.keyIDbuf)
  br label %77

75:                                               ; preds = %59
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef %6)
  br label %77

77:                                               ; preds = %73, %75, %56
  %78 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.7)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %228, label %80

80:                                               ; preds = %77, %179
  %81 = phi i32 [ %113, %179 ], [ %42, %77 ]
  %82 = phi i64 [ %114, %179 ], [ %41, %77 ]
  %83 = phi i32 [ %115, %179 ], [ %40, %77 ]
  %84 = phi i8 [ %180, %179 ], [ %39, %77 ]
  %85 = call i64 @ftell(ptr noundef nonnull %78)
  %86 = call signext i16 @readkeypacket(ptr noundef nonnull %78, ptr noundef null, ptr noundef nonnull %13, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !range !15
  %87 = sext i16 %86 to i32
  %88 = icmp eq i16 %86, -1
  br i1 %88, label %187, label %89

89:                                               ; preds = %80
  %90 = icmp slt i16 %86, -1
  br i1 %90, label %91, label %96

91:                                               ; preds = %89
  switch i16 %86, label %92 [
    i16 -4, label %96
    i16 -6, label %96
  ]

92:                                               ; preds = %91
  %93 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %94 = call ptr @LANG(ptr noundef nonnull @.str.8) #13
  %95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef %94, ptr noundef nonnull %1)
  br label %225

96:                                               ; preds = %91, %91, %89
  %97 = load i8, ptr %13, align 1
  switch i8 %97, label %112 [
    i8 -103, label %98
    i8 -107, label %98
  ]

98:                                               ; preds = %96, %96
  %99 = call i64 @ftell(ptr noundef nonnull %78)
  %100 = sub nsw i64 %99, %85
  %101 = trunc i64 %100 to i32
  br i1 %26, label %102, label %111

102:                                              ; preds = %98
  %103 = and i8 %97, 124
  switch i8 %103, label %111 [
    i8 20, label %104
    i8 24, label %104
  ]

104:                                              ; preds = %102, %102
  %105 = call i32 @read_trust(ptr noundef nonnull %78, ptr noundef nonnull %15) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8, ptr %15, align 1, !tbaa !5
  %109 = and i8 %108, 32
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102, %107, %104, %98
  br label %112

112:                                              ; preds = %96, %107, %111
  %113 = phi i32 [ %87, %111 ], [ %81, %96 ], [ %87, %107 ]
  %114 = phi i64 [ %85, %111 ], [ %82, %96 ], [ %85, %107 ]
  %115 = phi i32 [ %101, %111 ], [ %83, %96 ], [ %101, %107 ]
  %116 = phi i8 [ 0, %111 ], [ %84, %96 ], [ 1, %107 ]
  %117 = icmp eq i8 %116, 0
  %118 = icmp eq i8 %97, -76
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %143

120:                                              ; preds = %112
  br i1 %16, label %141, label %121

121:                                              ; preds = %120
  %122 = icmp eq i32 %113, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %11, i8 0, i64 10, i1 false)
  %124 = call signext i16 @reg2mpi(ptr noundef nonnull %11, ptr noundef %7) #13
  %125 = call signext i16 @reg2mpi(ptr noundef nonnull %11, ptr noundef %7) #13
  %126 = add i16 %125, -6
  br label %127

127:                                              ; preds = %127, %123
  %128 = phi i64 [ 0, %123 ], [ %134, %127 ]
  %129 = phi i16 [ %126, %123 ], [ %130, %127 ]
  %130 = add i16 %129, 1
  %131 = sext i16 %129 to i64
  %132 = getelementptr inbounds [262 x i8], ptr %11, i64 0, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !5
  %134 = add nuw nsw i64 %128, 1
  %135 = getelementptr inbounds i8, ptr %12, i64 %128
  store i8 %133, ptr %135, align 1, !tbaa !5
  %136 = icmp eq i64 %134, 8
  br i1 %136, label %137, label %127, !llvm.loop !10

137:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %11) #13
  %138 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) %12, i64 8)
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %143

141:                                              ; preds = %120
  call void @PascalToC(ptr noundef %6) #13
  %142 = call fastcc zeroext i8 @userid_match(ptr noundef %6, ptr noundef nonnull %14, ptr noundef %7), !range !16
  call void @CToPascal(ptr noundef %6) #13
  br label %143

143:                                              ; preds = %141, %137, %121, %112
  %144 = phi i8 [ %140, %137 ], [ 0, %121 ], [ %142, %141 ], [ 0, %112 ]
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %179, label %146

146:                                              ; preds = %143
  br i1 %28, label %149, label %147

147:                                              ; preds = %146
  %148 = call i32 @show_key(ptr noundef nonnull %78, i64 noundef %114, i32 noundef 0) #13
  br label %149

149:                                              ; preds = %147, %146
  %150 = call i32 @fseek(ptr noundef nonnull %78, i64 noundef %114, i32 noundef 0)
  %151 = icmp eq i32 %113, 0
  %152 = select i1 %30, i1 %151, i1 false
  br i1 %152, label %153, label %181

153:                                              ; preds = %149
  %154 = call i32 @is_compromised(ptr noundef nonnull %78), !range !17
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %181, label %156

156:                                              ; preds = %153
  br i1 %28, label %161, label %157

157:                                              ; preds = %156
  %158 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %159 = call ptr @LANG(ptr noundef nonnull @.str.9) #13
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef %159)
  br label %165

161:                                              ; preds = %156
  call void @PascalToC(ptr noundef %6) #13
  %162 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %163 = call ptr @LANG(ptr noundef nonnull @.str.10) #13
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef %163, ptr noundef %6)
  br label %165

165:                                              ; preds = %161, %157
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  store i8 0, ptr %13, align 1, !tbaa !5
  %166 = call i64 @fread(ptr noundef nonnull %10, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %78)
  %167 = and i64 %166, 4294967295
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %165
  %170 = load i8, ptr %10, align 1
  store i8 %170, ptr %13, align 1, !tbaa !5
  switch i8 %170, label %171 [
    i8 -76, label %173
    i8 -80, label %173
    i8 -103, label %173
    i8 -107, label %173
  ]

171:                                              ; preds = %169
  %172 = and i8 %170, 124
  switch i8 %172, label %178 [
    i8 8, label %173
    i8 56, label %173
  ]

173:                                              ; preds = %171, %171, %169, %169, %169, %169
  %174 = call i64 @getpastlength(i8 noundef zeroext %170, ptr noundef nonnull %78) #13
  %175 = icmp ugt i64 %174, 1591
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = call i32 @fseek(ptr noundef nonnull %78, i64 noundef %174, i32 noundef 1)
  br label %178

178:                                              ; preds = %171, %165, %173, %176
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  br label %179

179:                                              ; preds = %178, %143
  %180 = phi i8 [ 1, %178 ], [ %116, %143 ]
  br label %80, !llvm.loop !18

181:                                              ; preds = %153, %149
  %182 = icmp eq ptr %3, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %181
  store i32 %115, ptr %3, align 4, !tbaa !19
  br label %184

184:                                              ; preds = %183, %181
  %185 = icmp eq ptr %2, null
  br i1 %185, label %225, label %186

186:                                              ; preds = %184
  store i64 %114, ptr %2, align 8, !tbaa !21
  br label %225

187:                                              ; preds = %80
  %188 = call i32 @fclose(ptr noundef nonnull %78)
  br i1 %32, label %189, label %228

189:                                              ; preds = %187
  %190 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %16, label %205, label %191

191:                                              ; preds = %189
  %192 = call ptr @LANG(ptr noundef nonnull @.str.11) #13
  br label %193

193:                                              ; preds = %193, %191
  %194 = phi i64 [ 4, %191 ], [ %201, %193 ]
  %195 = phi ptr [ @keyIDstring.keyIDbuf, %191 ], [ %200, %193 ]
  %196 = getelementptr inbounds i8, ptr %4, i64 %194
  %197 = load i8, ptr %196, align 1, !tbaa !5
  %198 = zext i8 %197 to i32
  %199 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %195, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %198) #13
  %200 = getelementptr inbounds i8, ptr %195, i64 2
  %201 = add nuw nsw i64 %194, 1
  %202 = icmp eq i64 %201, 8
  br i1 %202, label %203, label %193, !llvm.loop !8

203:                                              ; preds = %193
  store i8 0, ptr %200, align 1, !tbaa !5
  %204 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef %192, ptr noundef nonnull @keyIDstring.keyIDbuf, ptr noundef nonnull %1)
  br label %208

205:                                              ; preds = %189
  %206 = call ptr @LANG(ptr noundef nonnull @.str.12) #13
  %207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %190, ptr noundef %206, ptr noundef nonnull %14, ptr noundef nonnull %1)
  br label %208

208:                                              ; preds = %203, %205, %50
  %209 = phi i32 [ %81, %203 ], [ %81, %205 ], [ %42, %50 ]
  %210 = phi i64 [ %82, %203 ], [ %82, %205 ], [ %41, %50 ]
  %211 = phi i32 [ %83, %203 ], [ %83, %205 ], [ %40, %50 ]
  %212 = phi i8 [ %84, %203 ], [ %84, %205 ], [ %39, %50 ]
  %213 = load i8, ptr @filter_mode, align 1, !tbaa !5
  %214 = icmp ne i8 %213, 0
  %215 = load i8, ptr @batchmode, align 1
  %216 = icmp ne i8 %215, 0
  %217 = select i1 %214, i1 true, i1 %216
  br i1 %217, label %228, label %218

218:                                              ; preds = %208
  %219 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %220 = call ptr @LANG(ptr noundef nonnull %37) #13
  %221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef %220)
  %222 = call i32 @getstring(ptr noundef nonnull %1, i32 noundef 59, i32 noundef 1) #13
  %223 = load i8, ptr %1, align 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %228, label %38

225:                                              ; preds = %184, %186, %92
  %226 = phi i32 [ %87, %92 ], [ %113, %186 ], [ %113, %184 ]
  %227 = call i32 @fclose(ptr noundef nonnull %78)
  br label %228

228:                                              ; preds = %218, %49, %77, %187, %208, %225, %20
  %229 = phi i32 [ -1, %20 ], [ %226, %225 ], [ -1, %208 ], [ -1, %187 ], [ -1, %77 ], [ -1, %49 ], [ -1, %218 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #13
  ret i32 %229
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i8 @file_exists(ptr noundef) local_unnamed_addr #6

declare void @default_extension(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @LANG(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @read_trust(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @PascalToC(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @userid_match(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #4 {
  %4 = alloca [262 x i8], align 16
  %5 = alloca [8 x i8], align 1
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #13
  %8 = icmp eq ptr %1, null
  br i1 %8, label %113, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr %1, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %113, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %0, null
  br i1 %13, label %113, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr %0, align 1, !tbaa !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %113, label %17

17:                                               ; preds = %14
  %18 = icmp ne ptr %2, null
  %19 = icmp eq i8 %10, 48
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %1, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = sext i8 %23 to i32
  %25 = tail call i32 @to_lower(i32 noundef %24) #13
  %26 = icmp eq i32 %25, 120
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %4, i8 0, i64 10, i1 false)
  %28 = call signext i16 @reg2mpi(ptr noundef nonnull %4, ptr noundef nonnull %2) #13
  %29 = call signext i16 @reg2mpi(ptr noundef nonnull %4, ptr noundef nonnull %2) #13
  %30 = add i16 %29, -6
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i64 [ 0, %27 ], [ %38, %31 ]
  %33 = phi i16 [ %30, %27 ], [ %34, %31 ]
  %34 = add i16 %33, 1
  %35 = sext i16 %33 to i64
  %36 = getelementptr inbounds [262 x i8], ptr %4, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !5
  %38 = add nuw nsw i64 %32, 1
  %39 = getelementptr inbounds i8, ptr %5, i64 %32
  store i8 %37, ptr %39, align 1, !tbaa !5
  %40 = icmp eq i64 %38, 8
  br i1 %40, label %41, label %31, !llvm.loop !10

41:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %4) #13
  br label %42

42:                                               ; preds = %42, %41
  %43 = phi i64 [ 4, %41 ], [ %50, %42 ]
  %44 = phi ptr [ @keyIDstring.keyIDbuf, %41 ], [ %49, %42 ]
  %45 = getelementptr inbounds i8, ptr %5, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = zext i8 %46 to i32
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %47) #13
  %49 = getelementptr inbounds i8, ptr %44, i64 2
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %42, !llvm.loop !8

52:                                               ; preds = %42
  store i8 0, ptr %49, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %53 = getelementptr inbounds i8, ptr %1, i64 2
  br label %54

54:                                               ; preds = %52, %21, %17
  %55 = phi ptr [ %53, %52 ], [ %1, %21 ], [ %1, %17 ]
  %56 = phi ptr [ @keyIDstring.keyIDbuf, %52 ], [ %0, %21 ], [ %0, %17 ]
  %57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #14
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %54
  %61 = add i64 %57, 1
  %62 = and i64 %61, 4294967295
  br label %63

63:                                               ; preds = %60, %63
  %64 = phi i64 [ 0, %60 ], [ %71, %63 ]
  %65 = getelementptr inbounds i8, ptr %56, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = sext i8 %66 to i32
  %68 = call i32 @to_lower(i32 noundef %67) #13
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %64
  store i8 %69, ptr %70, align 1, !tbaa !5
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %73, label %63, !llvm.loop !23

73:                                               ; preds = %63, %54
  %74 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %55) #14
  %75 = trunc i64 %74 to i32
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = add i64 %74, 1
  %79 = and i64 %78, 4294967295
  br label %80

80:                                               ; preds = %77, %80
  %81 = phi i64 [ 0, %77 ], [ %88, %80 ]
  %82 = getelementptr inbounds i8, ptr %55, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = sext i8 %83 to i32
  %85 = call i32 @to_lower(i32 noundef %84) #13
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [256 x i8], ptr %7, i64 0, i64 %81
  store i8 %86, ptr %87, align 1, !tbaa !5
  %88 = add nuw nsw i64 %81, 1
  %89 = icmp eq i64 %88, %79
  br i1 %89, label %90, label %80, !llvm.loop !24

90:                                               ; preds = %80, %73
  %91 = icmp eq ptr %2, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %7) #14
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i8
  br label %113

96:                                               ; preds = %90
  %97 = icmp sgt i32 %75, %58
  br i1 %97, label %113, label %98

98:                                               ; preds = %96
  %99 = shl i64 %74, 32
  %100 = ashr exact i64 %99, 32
  %101 = load i8, ptr %7, align 16, !tbaa !5
  %102 = sext i8 %101 to i32
  %103 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef %102) #14
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %109

105:                                              ; preds = %109
  %106 = getelementptr inbounds i8, ptr %110, i64 1
  %107 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %106, i32 noundef %102) #14
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109, !llvm.loop !25

109:                                              ; preds = %98, %105
  %110 = phi ptr [ %107, %105 ], [ %103, %98 ]
  %111 = call i32 @strncmp(ptr noundef nonnull %110, ptr noundef nonnull %7, i64 noundef %100) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %105

113:                                              ; preds = %109, %105, %98, %96, %12, %14, %3, %9, %92
  %114 = phi i8 [ %95, %92 ], [ 1, %9 ], [ 1, %3 ], [ 0, %14 ], [ 0, %12 ], [ 0, %96 ], [ 0, %98 ], [ 0, %105 ], [ 1, %109 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #13
  ret i8 %114
}

declare void @CToPascal(ptr noundef) local_unnamed_addr #6

declare i32 @show_key(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @is_compromised(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  %6 = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %5, align 1, !tbaa !5
  %7 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i8, ptr %3, align 1
  store i8 %11, ptr %5, align 1, !tbaa !5
  switch i8 %11, label %12 [
    i8 -76, label %14
    i8 -80, label %14
    i8 -103, label %14
    i8 -107, label %14
  ]

12:                                               ; preds = %10
  %13 = and i8 %11, 124
  switch i8 %13, label %19 [
    i8 8, label %14
    i8 56, label %14
  ]

14:                                               ; preds = %12, %12, %10, %10, %10, %10
  %15 = tail call i64 @getpastlength(i8 noundef zeroext %11, ptr noundef %0) #13
  %16 = icmp ugt i64 %15, 1591
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @fseek(ptr noundef %0, i64 noundef %15, i32 noundef 1)
  br label %19

19:                                               ; preds = %12, %1, %14, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %20 = load i8, ptr %5, align 1, !tbaa !5
  switch i8 %20, label %36 [
    i8 -103, label %21
    i8 -107, label %21
  ]

21:                                               ; preds = %19, %19
  %22 = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %5, align 1, !tbaa !5
  %23 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %24 = and i64 %23, 4294967295
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %2, align 1
  store i8 %27, ptr %5, align 1, !tbaa !5
  switch i8 %27, label %28 [
    i8 -76, label %30
    i8 -80, label %30
    i8 -103, label %30
    i8 -107, label %30
  ]

28:                                               ; preds = %26
  %29 = and i8 %27, 124
  switch i8 %29, label %35 [
    i8 8, label %30
    i8 56, label %30
  ]

30:                                               ; preds = %28, %28, %26, %26, %26, %26
  %31 = tail call i64 @getpastlength(i8 noundef zeroext %27, ptr noundef %0) #13
  %32 = icmp ugt i64 %31, 1591
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @fseek(ptr noundef %0, i64 noundef %31, i32 noundef 1)
  br label %35

35:                                               ; preds = %28, %21, %30, %33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %36

36:                                               ; preds = %19, %35
  %37 = phi i64 [ %22, %35 ], [ %6, %19 ]
  %38 = load i8, ptr %5, align 1, !tbaa !5
  %39 = icmp eq i8 %38, -80
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @fseek(ptr noundef %0, i64 noundef %37, i32 noundef 0)
  br label %42

42:                                               ; preds = %40, %36
  %43 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i8, ptr %5, align 1, !tbaa !5
  %47 = and i8 %46, 124
  %48 = icmp eq i8 %47, 8
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = tail call i64 @getpastlength(i8 noundef zeroext %46, ptr noundef %0) #13
  %51 = trunc i64 %50 to i32
  %52 = icmp sgt i32 %51, 286
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @fseek(ptr noundef %0, i64 noundef 2, i32 noundef 1)
  %55 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef %0)
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8, ptr %4, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 32
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %53, %49, %42, %45, %57
  %62 = phi i32 [ %60, %57 ], [ 0, %45 ], [ -1, %42 ], [ -1, %49 ], [ -1, %53 ]
  %63 = tail call i32 @fseek(ptr noundef %0, i64 noundef %6, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %62
}

declare i32 @getstring(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @getpubuserid(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i8 noundef zeroext %5) local_unnamed_addr #4 {
  %7 = alloca i8, align 1
  %8 = alloca [130 x i16], align 16
  %9 = alloca [130 x i16], align 16
  %10 = alloca i8, align 1
  %11 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #13
  %12 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %6
  %15 = tail call i32 @fseek(ptr noundef nonnull %12, i64 noundef %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %10, align 1, !tbaa !5
  %16 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %12)
  %17 = and i64 %16, 4294967295
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %7, align 1
  store i8 %20, ptr %10, align 1, !tbaa !5
  switch i8 %20, label %21 [
    i8 -76, label %23
    i8 -80, label %23
    i8 -103, label %23
    i8 -107, label %23
  ]

21:                                               ; preds = %19
  %22 = and i8 %20, 124
  switch i8 %22, label %28 [
    i8 8, label %23
    i8 56, label %23
  ]

23:                                               ; preds = %21, %21, %19, %19, %19, %19
  %24 = tail call i64 @getpastlength(i8 noundef zeroext %20, ptr noundef nonnull %12) #13
  %25 = icmp ugt i64 %24, 1591
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @fseek(ptr noundef nonnull %12, i64 noundef %24, i32 noundef 1)
  br label %28

28:                                               ; preds = %21, %14, %23, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  %29 = getelementptr inbounds i8, ptr %2, i64 1
  %30 = icmp eq i8 %5, 0
  %31 = select i1 %30, ptr %8, ptr null
  br label %32

32:                                               ; preds = %38, %28
  %33 = call i64 @ftell(ptr noundef nonnull %12)
  %34 = call signext i16 @readkeypacket(ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !range !15
  %35 = icmp slt i16 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8, ptr %10, align 1, !tbaa !5
  switch i8 %37, label %38 [
    i8 -103, label %39
    i8 -107, label %39
    i8 -76, label %44
  ]

38:                                               ; preds = %36, %50
  br label %32, !llvm.loop !26

39:                                               ; preds = %36, %36, %32
  %40 = call i32 @fclose(ptr noundef nonnull %12)
  %41 = icmp eq i16 %34, 0
  %42 = select i1 %41, i16 -1, i16 %34
  %43 = sext i16 %42 to i32
  br label %58

44:                                               ; preds = %36
  %45 = load i8, ptr %2, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 48
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8, ptr %29, align 1, !tbaa !5
  %49 = icmp eq i8 %48, 120
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %44
  call void @PascalToC(ptr noundef nonnull %11) #13
  %51 = call fastcc zeroext i8 @userid_match(ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %31), !range !16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %38, label %53

53:                                               ; preds = %50, %47
  store i64 %33, ptr %3, align 8, !tbaa !21
  %54 = call i64 @ftell(ptr noundef nonnull %12)
  %55 = sub nsw i64 %54, %33
  %56 = trunc i64 %55 to i32
  store i32 %56, ptr %4, align 4, !tbaa !19
  %57 = call i32 @fclose(ptr noundef nonnull %12)
  br label %58

58:                                               ; preds = %6, %53, %39
  %59 = phi i32 [ %43, %39 ], [ 0, %53 ], [ -1, %6 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #13
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @getpubusersig(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #4 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %10 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @fseek(ptr noundef nonnull %10, i64 noundef %1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %8, align 1, !tbaa !5
  %14 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %10)
  %15 = and i64 %14, 4294967295
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load i8, ptr %7, align 1
  store i8 %18, ptr %8, align 1, !tbaa !5
  switch i8 %18, label %19 [
    i8 -76, label %21
    i8 -80, label %21
    i8 -103, label %21
    i8 -107, label %21
  ]

19:                                               ; preds = %17
  %20 = and i8 %18, 124
  switch i8 %20, label %26 [
    i8 8, label %21
    i8 56, label %21
  ]

21:                                               ; preds = %19, %19, %17, %17, %17, %17
  %22 = tail call i64 @getpastlength(i8 noundef zeroext %18, ptr noundef nonnull %10) #13
  %23 = icmp ugt i64 %22, 1591
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @fseek(ptr noundef nonnull %10, i64 noundef %22, i32 noundef 1)
  br label %26

26:                                               ; preds = %19, %12, %21, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  br label %27

27:                                               ; preds = %39, %26
  %28 = call i64 @ftell(ptr noundef nonnull %10)
  %29 = call signext i16 @readkeypacket(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef null), !range !15
  %30 = icmp slt i16 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load i8, ptr %8, align 1
  switch i8 %32, label %33 [
    i8 -76, label %48
    i8 -103, label %48
    i8 -107, label %48
  ]

33:                                               ; preds = %31
  %34 = and i8 %32, 124
  %35 = icmp eq i8 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %2, ptr noundef nonnull dereferenceable(8) %9, i64 8)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %33
  br label %27, !llvm.loop !27

40:                                               ; preds = %36
  store i64 %28, ptr %4, align 8, !tbaa !21
  %41 = call i64 @ftell(ptr noundef nonnull %10)
  %42 = sub nsw i64 %41, %28
  %43 = trunc i64 %42 to i32
  store i32 %43, ptr %5, align 4, !tbaa !19
  %44 = add nsw i64 %28, 6
  %45 = call i32 @fseek(ptr noundef nonnull %10, i64 noundef %44, i32 noundef 0)
  %46 = call i64 @fread(ptr noundef %3, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %10)
  call void @hiloswap(ptr noundef %3, i16 noundef signext 4) #13
  %47 = call i32 @fclose(ptr noundef nonnull %10)
  br label %53

48:                                               ; preds = %31, %31, %31, %27
  %49 = call i32 @fclose(ptr noundef nonnull %10)
  %50 = icmp eq i16 %29, 0
  %51 = select i1 %50, i16 -1, i16 %29
  %52 = sext i16 %51 to i32
  br label %53

53:                                               ; preds = %6, %48, %40
  %54 = phi i32 [ %52, %48 ], [ 0, %40 ], [ -1, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getsecretkey(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #4 {
  %14 = alloca [262 x i8], align 16
  %15 = alloca [8 x i8], align 1
  %16 = alloca i8, align 1
  %17 = alloca [256 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca [16 x i8], align 16
  %20 = alloca %struct.IdeaCfbContext, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %20) #13
  %21 = icmp eq ptr %1, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @globalSecringName) #13
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi ptr [ %17, %22 ], [ %1, %13 ]
  %26 = or i32 %0, 32
  %27 = call i32 @getpublickey(i32 noundef %26, ptr noundef nonnull %25, ptr noundef nonnull %18, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8), !range !28
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %207, label %29

29:                                               ; preds = %24
  %30 = call noalias ptr @fopen(ptr noundef nonnull %25, ptr noundef nonnull @.str.7)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %207, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr %18, align 8, !tbaa !21
  %34 = call i32 @fseek(ptr noundef nonnull %30, i64 noundef %33, i32 noundef 0)
  %35 = call signext i16 @readkeypacket(ptr noundef nonnull %30, ptr noundef null, ptr noundef nonnull %16, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null), !range !15
  %36 = sext i16 %35 to i32
  %37 = icmp eq i16 %35, -5
  br i1 %37, label %38, label %169

38:                                               ; preds = %32
  %39 = and i32 %0, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %38, %45
  %42 = phi ptr [ %43, %45 ], [ @keypasswds, %38 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hashedpw, ptr %43, i64 0, i32 1
  call void @ideaCfbInit(ptr noundef nonnull %20, ptr noundef nonnull %46) #13
  %47 = load i64, ptr %18, align 8, !tbaa !21
  %48 = call i32 @fseek(ptr noundef nonnull %30, i64 noundef %47, i32 noundef 0)
  %49 = call signext i16 @readkeypacket(ptr noundef nonnull %30, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null), !range !15
  call void @ideaCfbDestroy(ptr noundef nonnull %20) #13
  %50 = icmp eq i16 %49, -5
  br i1 %50, label %41, label %51, !llvm.loop !29

51:                                               ; preds = %45
  %52 = sext i16 %49 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false)
  br label %169

53:                                               ; preds = %41, %66
  %54 = phi ptr [ %55, %66 ], [ @passwds, %41 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hashedpw, ptr %55, i64 0, i32 1
  call void @ideaCfbInit(ptr noundef nonnull %20, ptr noundef nonnull %58) #13
  %59 = load i64, ptr %18, align 8, !tbaa !21
  %60 = call i32 @fseek(ptr noundef nonnull %30, i64 noundef %59, i32 noundef 0)
  %61 = call signext i16 @readkeypacket(ptr noundef nonnull %30, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null), !range !15
  call void @ideaCfbDestroy(ptr noundef nonnull %20) #13
  %62 = icmp sgt i16 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false)
  %64 = load ptr, ptr %55, align 8, !tbaa !30
  store ptr %64, ptr %54, align 8, !tbaa !13
  %65 = load ptr, ptr @keypasswds, align 8, !tbaa !13
  store ptr %65, ptr %55, align 8, !tbaa !30
  store ptr %55, ptr @keypasswds, align 8, !tbaa !13
  br label %66

66:                                               ; preds = %63, %57
  %67 = icmp eq i16 %61, -5
  br i1 %67, label %53, label %167, !llvm.loop !32

68:                                               ; preds = %53, %38
  %69 = load i8, ptr @batchmode, align 1, !tbaa !5
  %70 = icmp eq i8 %69, 0
  %71 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %70, label %76, label %72

72:                                               ; preds = %68
  %73 = call ptr @LANG(ptr noundef nonnull @.str.15) #13
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef %73)
  %75 = call i32 @fclose(ptr noundef nonnull %30)
  br label %207

76:                                               ; preds = %68
  %77 = call ptr @LANG(ptr noundef nonnull @.str.16) #13
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef %77)
  %79 = and i32 %0, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %76
  call void @PascalToC(ptr noundef %6) #13
  %82 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %83 = call ptr @LANG(ptr noundef nonnull @.str.17) #13
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef %83, ptr noundef %6)
  %85 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %86 = call ptr @LANG(ptr noundef nonnull @.str.18) #13
  %87 = call i32 @countbits(ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %14) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %14, i8 0, i64 10, i1 false)
  %88 = call signext i16 @reg2mpi(ptr noundef nonnull %14, ptr noundef %7) #13
  %89 = call signext i16 @reg2mpi(ptr noundef nonnull %14, ptr noundef %7) #13
  %90 = add i16 %89, -6
  br label %91

91:                                               ; preds = %91, %81
  %92 = phi i64 [ 0, %81 ], [ %98, %91 ]
  %93 = phi i16 [ %90, %81 ], [ %94, %91 ]
  %94 = add i16 %93, 1
  %95 = sext i16 %93 to i64
  %96 = getelementptr inbounds [262 x i8], ptr %14, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !5
  %98 = add nuw nsw i64 %92, 1
  %99 = getelementptr inbounds i8, ptr %15, i64 %92
  store i8 %97, ptr %99, align 1, !tbaa !5
  %100 = icmp eq i64 %98, 8
  br i1 %100, label %101, label %91, !llvm.loop !10

101:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %14) #13
  br label %102

102:                                              ; preds = %102, %101
  %103 = phi i64 [ 4, %101 ], [ %110, %102 ]
  %104 = phi ptr [ @keyIDstring.keyIDbuf, %101 ], [ %109, %102 ]
  %105 = getelementptr inbounds i8, ptr %15, i64 %103
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = zext i8 %106 to i32
  %108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %107) #13
  %109 = getelementptr inbounds i8, ptr %104, i64 2
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, 8
  br i1 %111, label %112, label %102, !llvm.loop !8

112:                                              ; preds = %102
  store i8 0, ptr %109, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  %113 = call ptr @cdate(ptr noundef %3) #13
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef %86, i32 noundef %87, ptr noundef nonnull @keyIDstring.keyIDbuf, ptr noundef %113)
  call void @CToPascal(ptr noundef %6) #13
  br label %115

115:                                              ; preds = %112, %76
  br label %116

116:                                              ; preds = %115, %161
  %117 = phi i32 [ %118, %161 ], [ 0, %115 ]
  %118 = add nuw nsw i32 %117, 1
  %119 = icmp ugt i32 %117, 2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = call i32 @GetHashedPassPhrase(ptr noundef nonnull %19, i8 noundef zeroext 1) #13
  %122 = icmp sgt i32 %121, 0
  %123 = zext i1 %122 to i8
  br label %124

124:                                              ; preds = %116, %120
  %125 = phi i8 [ %123, %120 ], [ 0, %116 ]
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = call ptr @LANG(ptr noundef nonnull @.str.19) #13
  %129 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %130 = call i32 @fputs(ptr noundef %128, ptr noundef %129)
  br label %169

131:                                              ; preds = %124
  call void @ideaCfbInit(ptr noundef nonnull %20, ptr noundef nonnull %19) #13
  %132 = load i64, ptr %18, align 8, !tbaa !21
  %133 = call i32 @fseek(ptr noundef nonnull %30, i64 noundef %132, i32 noundef 0)
  %134 = call signext i16 @readkeypacket(ptr noundef nonnull %30, ptr noundef nonnull %20, ptr noundef nonnull %16, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef null, ptr noundef null), !range !15
  call void @ideaCfbDestroy(ptr noundef nonnull %20) #13
  %135 = icmp sgt i16 %134, -1
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  br i1 %40, label %153, label %137

137:                                              ; preds = %136, %141
  %138 = phi ptr [ %139, %141 ], [ @passwds, %136 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.hashedpw, ptr %139, i64 0, i32 1
  %143 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %142, ptr noundef nonnull dereferenceable(16) %19, i64 16)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %169, label %137, !llvm.loop !33

145:                                              ; preds = %137, %149
  %146 = phi ptr [ %147, %149 ], [ @keypasswds, %137 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !13
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.hashedpw, ptr %147, i64 0, i32 1
  %151 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %150, ptr noundef nonnull dereferenceable(16) %19, i64 16)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %169, label %145, !llvm.loop !34

153:                                              ; preds = %145, %136
  %154 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.hashedpw, ptr %154, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %157, ptr noundef nonnull align 16 dereferenceable(16) %19, i64 16, i1 false)
  %158 = load ptr, ptr @keypasswds, align 8, !tbaa !13
  store ptr %158, ptr %154, align 8, !tbaa !30
  store ptr %154, ptr @keypasswds, align 8, !tbaa !13
  br label %159

159:                                              ; preds = %153, %156, %131
  %160 = icmp eq i16 %134, -5
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  %162 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %163 = call ptr @LANG(ptr noundef nonnull @.str.15) #13
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef %163)
  br label %116, !llvm.loop !35

165:                                              ; preds = %159
  %166 = sext i16 %134 to i32
  br label %169

167:                                              ; preds = %66
  %168 = sext i16 %61 to i32
  br label %169

169:                                              ; preds = %141, %149, %127, %167, %165, %32, %51
  %170 = phi i32 [ %36, %32 ], [ %52, %51 ], [ %166, %165 ], [ %168, %167 ], [ -5, %127 ], [ 0, %149 ], [ 0, %141 ]
  %171 = phi ptr [ @.str.20, %32 ], [ @.str.21, %51 ], [ @.str.21, %165 ], [ @.str.21, %167 ], [ @.str.20, %127 ], [ @.str.21, %149 ], [ @.str.21, %141 ]
  %172 = phi i8 [ 0, %32 ], [ 1, %51 ], [ 1, %165 ], [ 1, %167 ], [ 0, %127 ], [ 1, %149 ], [ 1, %141 ]
  %173 = call i32 @fclose(ptr noundef nonnull %30)
  %174 = icmp eq ptr %5, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  store i8 %172, ptr %5, align 1, !tbaa !5
  br label %176

176:                                              ; preds = %175, %169
  %177 = icmp eq i32 %170, -5
  br i1 %177, label %207, label %178

178:                                              ; preds = %176
  %179 = icmp slt i32 %170, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %178
  %181 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %182 = call ptr @LANG(ptr noundef nonnull @.str.8) #13
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef %182, ptr noundef nonnull %25)
  %184 = call i32 @fclose(ptr noundef nonnull %30)
  br label %207

185:                                              ; preds = %178
  %186 = icmp eq ptr %4, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %19, i64 16, i1 false)
  br label %188

188:                                              ; preds = %187, %185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %189 = icmp eq ptr %9, null
  br i1 %189, label %207, label %190

190:                                              ; preds = %188
  %191 = load i8, ptr @quietmode, align 1, !tbaa !5
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %195 = call ptr @LANG(ptr noundef nonnull %171) #13
  %196 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i16, ptr %9, align 2, !tbaa !11
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = call signext i16 @significance(ptr noundef nonnull %9) #13
  %202 = icmp slt i16 %201, 2
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %205 = call ptr @LANG(ptr noundef nonnull @.str.22) #13
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef %205, ptr noundef nonnull %25)
  br label %207

207:                                              ; preds = %188, %200, %197, %176, %29, %24, %203, %180, %72
  %208 = phi i32 [ -1, %180 ], [ -1, %203 ], [ -1, %72 ], [ %27, %24 ], [ -1, %29 ], [ -5, %176 ], [ 0, %197 ], [ 0, %200 ], [ 0, %188 ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #13
  ret i32 %208
}

declare void @ideaCfbInit(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @ideaCfbDestroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare ptr @cdate(ptr noundef) local_unnamed_addr #6

declare i32 @GetHashedPassPhrase(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare signext i16 @significance(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @getKeyHash(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.MD5Context, align 8
  %5 = alloca [262 x i8], align 16
  %6 = alloca [520 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %6) #13
  %7 = call signext i16 @reg2mpi(ptr noundef nonnull %5, ptr noundef %1) #13
  %8 = icmp sgt i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %5, i64 2
  %11 = zext nneg i16 %7 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 2 %10, i64 %11, i1 false), !tbaa !5
  %12 = zext nneg i16 %7 to i32
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %3 ], [ %12, %9 ]
  %15 = call signext i16 @reg2mpi(ptr noundef nonnull %5, ptr noundef %2) #13
  %16 = icmp sgt i16 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = zext nneg i32 %14 to i64
  %19 = getelementptr i8, ptr %6, i64 %18
  %20 = getelementptr inbounds i8, ptr %5, i64 2
  %21 = zext nneg i16 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr nonnull align 2 %20, i64 %21, i1 false), !tbaa !5
  %22 = zext nneg i16 %15 to i32
  %23 = add nuw nsw i32 %14, %22
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i32 [ %14, %13 ], [ %23, %17 ]
  call void @MD5Init(ptr noundef nonnull %4) #13
  call void @MD5Update(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef %25) #13
  call void @MD5Final(ptr noundef %0, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #13
  ret void
}

declare void @MD5Init(ptr noundef) local_unnamed_addr #6

declare void @MD5Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @MD5Final(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @printKeyHash(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %4 = icmp eq i8 %1, 0
  %5 = select i1 %4, i32 1, i32 29
  %6 = tail call ptr @LANG(ptr noundef nonnull @.str.24) #13
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, ptr noundef %6)
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ 0, %2 ], [ %15, %8 ]
  %10 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %11 = getelementptr inbounds i8, ptr %0, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.25, i32 noundef %13)
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %8, !llvm.loop !36

17:                                               ; preds = %8
  %18 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %19 = tail call i32 @putc(i32 noundef 32, ptr noundef %18)
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 8, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %23 = getelementptr inbounds i8, ptr %0, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = zext i8 %24 to i32
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef %25)
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, 16
  br i1 %28, label %29, label %20, !llvm.loop !37

29:                                               ; preds = %20
  %30 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %31 = tail call i32 @putc(i32 noundef 10, ptr noundef %30)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @showKeyHash(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @getKeyHash(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1)
  call void @printKeyHash(ptr noundef nonnull %3, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @view_keyring(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !tbaa !19
  %7 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @globalPubringName) #13
  %8 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %12 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef %12, ptr noundef %1)
  br label %75

14:                                               ; preds = %4
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = call i32 @setkrent(ptr noundef %1) #13
  %18 = call i32 @setkrent(ptr noundef nonnull %5) #13
  %19 = call i32 @init_userhash() #13
  br label %20

20:                                               ; preds = %16, %14
  %21 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %22 = load ptr, ptr @stdout, align 8, !tbaa !13
  store ptr %22, ptr @pgpout, align 8, !tbaa !13
  %23 = load i8, ptr @moreflag, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @open_more() #13
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i8, ptr @quietmode, align 1, !tbaa !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %32 = call ptr @LANG(ptr noundef nonnull @.str.27) #13
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef %32, ptr noundef %1)
  %34 = icmp eq ptr %0, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i8, ptr %0, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %40 = call ptr @LANG(ptr noundef nonnull @.str.28) #13
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef %40, ptr noundef nonnull %0)
  br label %42

42:                                               ; preds = %30, %35, %38, %27
  %43 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %44 = call i32 @fputc(i32 10, ptr %43)
  %45 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %46 = call ptr @LANG(ptr noundef nonnull @.str.132) #13
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef %46)
  %48 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %49 = call i32 @kvformat_keypacket(ptr noundef nonnull %8, ptr noundef %48, i8 zeroext poison, ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %6), !range !38
  %50 = call i32 @fclose(ptr noundef nonnull %8)
  br i1 %15, label %52, label %51

51:                                               ; preds = %42
  call void @endkrent() #13
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, ptr %6, align 4, !tbaa !19
  %54 = icmp eq i32 %53, 1
  %55 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %54, label %56, label %59

56:                                               ; preds = %52
  %57 = call ptr @LANG(ptr noundef nonnull @.str.29) #13
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef %57)
  br label %62

59:                                               ; preds = %52
  %60 = call ptr @LANG(ptr noundef nonnull @.str.30) #13
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef %60, i32 noundef %53)
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 @close_more() #13
  store ptr %21, ptr @pgpout, align 8, !tbaa !13
  %64 = icmp slt i32 %49, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = icmp eq ptr %0, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = load i8, ptr %0, align 1, !tbaa !5
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = icmp eq i32 %53, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = icmp sgt i32 %53, 1
  br i1 %73, label %75, label %74

74:                                               ; preds = %72, %67, %65
  br label %75

75:                                               ; preds = %72, %70, %62, %74, %10
  %76 = phi i32 [ -1, %10 ], [ 0, %74 ], [ %49, %62 ], [ 67, %70 ], [ 1, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #13
  ret i32 %76
}

declare i32 @setkrent(ptr noundef) local_unnamed_addr #6

declare i32 @init_userhash() local_unnamed_addr #6

declare i32 @open_more() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @kv_title(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = tail call ptr @LANG(ptr noundef nonnull @.str.132) #13
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @kvformat_keypacket(ptr noundef %0, ptr nocapture noundef %1, i8 zeroext %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef %7) local_unnamed_addr #4 {
  %9 = alloca [16 x i8], align 16
  %10 = alloca [262 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca [130 x i16], align 16
  %13 = alloca [130 x i16], align 16
  %14 = alloca [8 x i8], align 8
  %15 = alloca [8 x i8], align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %19 = icmp eq i8 %5, 0
  %20 = icmp eq i8 %6, 0
  br label %21

21:                                               ; preds = %141, %8
  %22 = phi i32 [ 0, %8 ], [ %142, %141 ]
  %23 = phi i32 [ 0, %8 ], [ %77, %141 ]
  %24 = phi i8 [ 0, %8 ], [ %143, %141 ]
  %25 = phi i8 [ 0, %8 ], [ %79, %141 ]
  %26 = phi i8 [ 0, %8 ], [ %90, %141 ]
  %27 = phi i8 [ 0, %8 ], [ %80, %141 ]
  %28 = phi i8 [ 0, %8 ], [ %81, %141 ]
  br label %29

29:                                               ; preds = %21, %75
  %30 = phi i32 [ %76, %75 ], [ %22, %21 ]
  %31 = phi i32 [ %77, %75 ], [ %23, %21 ]
  %32 = phi i8 [ %78, %75 ], [ %24, %21 ]
  %33 = phi i8 [ %79, %75 ], [ %25, %21 ]
  %34 = phi i8 [ %80, %75 ], [ %27, %21 ]
  %35 = phi i8 [ %81, %75 ], [ %28, %21 ]
  %36 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %17, ptr noundef nonnull %16, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %15, ptr noundef null), !range !15
  switch i16 %36, label %38 [
    i16 -1, label %175
    i16 -4, label %37
    i16 -6, label %37
  ]

37:                                               ; preds = %29, %29
  store i64 0, ptr %15, align 8
  store i64 0, ptr %17, align 8, !tbaa !21
  br label %44

38:                                               ; preds = %29
  %39 = icmp slt i16 %36, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = sext i16 %36 to i32
  %42 = call ptr @LANG(ptr noundef nonnull @.str.8) #13
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %42, ptr noundef %4)
  br label %175

44:                                               ; preds = %38, %37
  %45 = load i8, ptr %11, align 1, !tbaa !5
  switch i8 %45, label %75 [
    i8 -103, label %46
    i8 -107, label %46
  ]

46:                                               ; preds = %44, %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #13
  %47 = call i32 @is_compromised(ptr noundef %0), !range !17
  %48 = icmp slt i16 %36, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i64 0, ptr %14, align 8
  br label %72

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %10) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %10, i8 0, i64 10, i1 false)
  %51 = call signext i16 @reg2mpi(ptr noundef nonnull %10, ptr noundef nonnull %12) #13
  %52 = call signext i16 @reg2mpi(ptr noundef nonnull %10, ptr noundef nonnull %12) #13
  %53 = add i16 %52, -6
  br label %54

54:                                               ; preds = %54, %50
  %55 = phi i64 [ 0, %50 ], [ %61, %54 ]
  %56 = phi i16 [ %53, %50 ], [ %57, %54 ]
  %57 = add i16 %56, 1
  %58 = sext i16 %56 to i64
  %59 = getelementptr inbounds [262 x i8], ptr %10, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = add nuw nsw i64 %55, 1
  %62 = getelementptr inbounds i8, ptr %14, i64 %55
  store i8 %60, ptr %62, align 1, !tbaa !5
  %63 = icmp eq i64 %61, 8
  br i1 %63, label %64, label %54, !llvm.loop !10

64:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %10) #13
  %65 = call i32 @read_trust(ptr noundef %0, ptr noundef nonnull %18) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8, ptr %18, align 1, !tbaa !5
  %69 = and i8 %68, 32
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %67, %71, %49
  %73 = phi i8 [ 1, %49 ], [ 0, %71 ], [ 0, %67 ]
  %74 = phi i8 [ %34, %49 ], [ 0, %71 ], [ 1, %67 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #13
  br label %75

75:                                               ; preds = %44, %72
  %76 = phi i32 [ 1, %72 ], [ %30, %44 ]
  %77 = phi i32 [ %47, %72 ], [ %31, %44 ]
  %78 = phi i8 [ 0, %72 ], [ %32, %44 ]
  %79 = phi i8 [ %73, %72 ], [ %33, %44 ]
  %80 = phi i8 [ %74, %72 ], [ %34, %44 ]
  %81 = phi i8 [ %45, %72 ], [ %35, %44 ]
  %82 = icmp eq i8 %45, -76
  %83 = and i8 %45, 124
  %84 = icmp eq i8 %83, 8
  %85 = or i1 %82, %84
  br i1 %85, label %86, label %29, !llvm.loop !39

86:                                               ; preds = %75
  br i1 %82, label %87, label %89

87:                                               ; preds = %86
  call void @PascalToC(ptr noundef nonnull %16) #13
  %88 = call fastcc zeroext i8 @userid_match(ptr noundef nonnull %16, ptr noundef %3, ptr noundef nonnull %12), !range !16
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i8 [ %88, %87 ], [ %26, %86 ]
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %141, label %92

92:                                               ; preds = %89
  br i1 %82, label %93, label %144

93:                                               ; preds = %92
  %94 = icmp ne i32 %76, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %93
  %96 = load i32, ptr %7, align 4, !tbaa !19
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %7, align 4, !tbaa !19
  %98 = and i8 %81, 124
  switch i8 %98, label %105 [
    i8 24, label %99
    i8 20, label %102
  ]

99:                                               ; preds = %95
  %100 = call ptr @LANG(ptr noundef nonnull @.str.33) #13
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %100)
  br label %107

102:                                              ; preds = %95
  %103 = call ptr @LANG(ptr noundef nonnull @.str.34) #13
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %103)
  br label %107

105:                                              ; preds = %95
  %106 = call i64 @fwrite(ptr nonnull @.str.35, i64 3, i64 1, ptr %1)
  br label %107

107:                                              ; preds = %102, %105, %99
  %108 = icmp eq i8 %79, 0
  %109 = icmp eq i8 %80, 0
  %110 = select i1 %109, ptr @.str.37, ptr @.str.133
  %111 = select i1 %108, ptr %110, ptr @.str.36
  %112 = call i64 @fwrite(ptr nonnull %111, i64 2, i64 1, ptr %1)
  %113 = call i32 @countbits(ptr noundef nonnull %12) #13
  br label %114

114:                                              ; preds = %114, %107
  %115 = phi i64 [ 4, %107 ], [ %122, %114 ]
  %116 = phi ptr [ @keyIDstring.keyIDbuf, %107 ], [ %121, %114 ]
  %117 = getelementptr inbounds i8, ptr %14, i64 %115
  %118 = load i8, ptr %117, align 1, !tbaa !5
  %119 = zext i8 %118 to i32
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %116, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %119) #13
  %121 = getelementptr inbounds i8, ptr %116, i64 2
  %122 = add nuw nsw i64 %115, 1
  %123 = icmp eq i64 %122, 8
  br i1 %123, label %124, label %114, !llvm.loop !8

124:                                              ; preds = %114
  store i8 0, ptr %121, align 1, !tbaa !5
  %125 = call ptr @cdate(ptr noundef nonnull %17) #13
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %113, ptr noundef nonnull @keyIDstring.keyIDbuf, ptr noundef %125)
  br label %129

127:                                              ; preds = %93
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef nonnull @blankkeyID)
  br label %129

129:                                              ; preds = %127, %124
  %130 = icmp ne i32 %77, 0
  %131 = and i1 %94, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = call ptr @LANG(ptr noundef nonnull @.str.40) #13
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %133)
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef nonnull @blankkeyID)
  br label %136

136:                                              ; preds = %132, %129
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %16)
  %138 = icmp ne i8 %78, 0
  %139 = select i1 %20, i1 true, i1 %138
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @getKeyHash(ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef nonnull %13)
  call void @printKeyHash(ptr noundef nonnull %9, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  br label %141

141:                                              ; preds = %140, %136, %170, %173, %145, %144, %89
  %142 = phi i32 [ 0, %136 ], [ 0, %140 ], [ 1, %145 ], [ %76, %170 ], [ %76, %173 ], [ %76, %144 ], [ %76, %89 ]
  %143 = phi i8 [ %78, %136 ], [ 1, %140 ], [ %78, %145 ], [ %78, %170 ], [ %78, %173 ], [ %78, %144 ], [ %78, %89 ]
  br label %21, !llvm.loop !39

144:                                              ; preds = %92
  br i1 %19, label %141, label %145

145:                                              ; preds = %144
  %146 = icmp ne i32 %76, 0
  %147 = icmp ne i32 %77, 0
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %141, label %149

149:                                              ; preds = %145
  %150 = call ptr @LANG(ptr noundef nonnull @.str.44) #13
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %150)
  %152 = icmp slt i16 %36, 0
  %153 = select i1 %152, i32 63, i32 32
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.135, i32 noundef %153)
  br label %155

155:                                              ; preds = %155, %149
  %156 = phi i64 [ 4, %149 ], [ %163, %155 ]
  %157 = phi ptr [ @keyIDstring.keyIDbuf, %149 ], [ %162, %155 ]
  %158 = getelementptr inbounds i8, ptr %15, i64 %156
  %159 = load i8, ptr %158, align 1, !tbaa !5
  %160 = zext i8 %159 to i32
  %161 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %157, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %160) #13
  %162 = getelementptr inbounds i8, ptr %157, i64 2
  %163 = add nuw nsw i64 %156, 1
  %164 = icmp eq i64 %163, 8
  br i1 %164, label %165, label %155, !llvm.loop !8

165:                                              ; preds = %155
  store i8 0, ptr %162, align 1, !tbaa !5
  %166 = call i32 @fputs(ptr nonnull @keyIDstring.keyIDbuf, ptr %1)
  %167 = call i64 @fwrite(ptr nonnull @.str.51, i64 13, i64 1, ptr %1)
  %168 = call ptr @user_from_keyID(ptr noundef nonnull %15) #13
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = call ptr @LANG(ptr noundef nonnull @.str.70) #13
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef %171)
  br label %141

173:                                              ; preds = %165
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull %168)
  br label %141

175:                                              ; preds = %29, %40
  %176 = phi i32 [ %41, %40 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #13
  ret i32 %176
}

declare void @endkrent() local_unnamed_addr #6

declare i32 @close_more() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @dokeycheck(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca i8, align 1
  %5 = alloca [262 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca [8 x i8], align 8
  %10 = alloca [8 x i8], align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #13
  %18 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @globalPubringName) #13
  %19 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.31)
  %20 = icmp eq ptr %19, null
  %21 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %20, label %22, label %25

22:                                               ; preds = %3
  %23 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef %23, ptr noundef %1)
  br label %424

25:                                               ; preds = %3
  %26 = load ptr, ptr @stdout, align 8, !tbaa !13
  store ptr %26, ptr @pgpout, align 8, !tbaa !13
  %27 = and i32 %2, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i8, ptr @moreflag, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 @open_more() #13
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8, ptr @quietmode, align 1, !tbaa !5
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %39 = call ptr @LANG(ptr noundef nonnull @.str.27) #13
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef %39, ptr noundef %1)
  %41 = icmp eq ptr %0, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i8, ptr %0, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %47 = call ptr @LANG(ptr noundef nonnull @.str.28) #13
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef %47, ptr noundef nonnull %0)
  br label %49

49:                                               ; preds = %37, %42, %45, %34
  %50 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %51 = call i32 @fputc(i32 10, ptr %50)
  %52 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %25, %49
  %54 = phi ptr [ @.str.132, %49 ], [ @.str.32, %25 ]
  %55 = phi ptr [ %52, %49 ], [ %26, %25 ]
  %56 = call ptr @LANG(ptr noundef nonnull %54) #13
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef %56)
  br label %58

58:                                               ; preds = %390, %53
  %59 = phi i64 [ 0, %53 ], [ %374, %390 ]
  %60 = phi i64 [ 0, %53 ], [ %375, %390 ]
  %61 = phi i32 [ 0, %53 ], [ %377, %390 ]
  %62 = phi i32 [ 0, %53 ], [ %378, %390 ]
  %63 = phi ptr [ null, %53 ], [ %379, %390 ]
  %64 = phi i64 [ 0, %53 ], [ %380, %390 ]
  %65 = phi i8 [ 0, %53 ], [ %381, %390 ]
  %66 = phi i32 [ 0, %53 ], [ %382, %390 ]
  %67 = phi i32 [ 0, %53 ], [ %383, %390 ]
  %68 = phi i8 [ 0, %53 ], [ %384, %390 ]
  %69 = phi i8 [ 0, %53 ], [ %385, %390 ]
  %70 = phi i8 [ 0, %53 ], [ %386, %390 ]
  %71 = phi ptr [ null, %53 ], [ %387, %390 ]
  %72 = phi i32 [ undef, %53 ], [ %389, %390 ]
  %73 = call i64 @ftell(ptr noundef %19)
  %74 = call signext i16 @readkeypacket(ptr noundef %19, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef null), !range !15
  %75 = sext i16 %74 to i32
  switch i16 %74, label %77 [
    i16 -1, label %373
    i16 -4, label %76
    i16 -6, label %76
  ]

76:                                               ; preds = %58, %58
  store i64 0, ptr %10, align 8
  store i64 0, ptr %14, align 8, !tbaa !21
  br label %84

77:                                               ; preds = %58
  %78 = icmp slt i16 %74, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %81 = call ptr @LANG(ptr noundef nonnull @.str.8) #13
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef %81, ptr noundef %1)
  %83 = call i32 @fclose(ptr noundef %19)
  br label %373

84:                                               ; preds = %77, %76
  %85 = load i8, ptr %6, align 1, !tbaa !5
  switch i8 %85, label %111 [
    i8 -103, label %86
    i8 -107, label %86
  ]

86:                                               ; preds = %84, %84
  %87 = call i64 @ftell(ptr noundef %19)
  %88 = sub nsw i64 %87, %73
  %89 = trunc i64 %88 to i32
  %90 = call i32 @is_compromised(ptr noundef %19), !range !17
  %91 = icmp slt i16 %74, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i64 0, ptr %9, align 8
  br label %108

93:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %5, i8 0, i64 10, i1 false)
  %94 = call signext i16 @reg2mpi(ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %95 = call signext i16 @reg2mpi(ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %96 = add i16 %95, -6
  br label %97

97:                                               ; preds = %97, %93
  %98 = phi i64 [ 0, %93 ], [ %104, %97 ]
  %99 = phi i16 [ %96, %93 ], [ %100, %97 ]
  %100 = add i16 %99, 1
  %101 = sext i16 %99 to i64
  %102 = getelementptr inbounds [262 x i8], ptr %5, i64 0, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !5
  %104 = add nuw nsw i64 %98, 1
  %105 = getelementptr inbounds i8, ptr %9, i64 %98
  store i8 %103, ptr %105, align 1, !tbaa !5
  %106 = icmp eq i64 %104, 8
  br i1 %106, label %107, label %97, !llvm.loop !10

107:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %5) #13
  br label %108

108:                                              ; preds = %107, %92
  %109 = phi i8 [ 1, %92 ], [ 0, %107 ]
  %110 = select i1 %28, i8 %70, i8 1
  br label %111

111:                                              ; preds = %84, %108
  %112 = phi i64 [ %59, %84 ], [ %73, %108 ]
  %113 = phi i32 [ %61, %84 ], [ %89, %108 ]
  %114 = phi i8 [ %65, %84 ], [ %85, %108 ]
  %115 = phi i32 [ %66, %84 ], [ 1, %108 ]
  %116 = phi i32 [ %67, %84 ], [ %90, %108 ]
  %117 = phi i8 [ %68, %84 ], [ %109, %108 ]
  %118 = phi i8 [ %70, %84 ], [ %110, %108 ]
  %119 = icmp eq i8 %85, -76
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  call void @PascalToC(ptr noundef nonnull %11) #13
  br label %128

121:                                              ; preds = %111
  %122 = and i8 %85, 124
  %123 = icmp eq i8 %122, 8
  br i1 %123, label %124, label %373, !llvm.loop !40

124:                                              ; preds = %121
  %125 = call i64 @ftell(ptr noundef %19)
  %126 = sub nsw i64 %125, %73
  %127 = trunc i64 %126 to i32
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i32 [ %62, %120 ], [ %127, %124 ]
  %130 = phi i64 [ %64, %120 ], [ %73, %124 ]
  %131 = call i64 @ftell(ptr noundef %19)
  %132 = call i32 @read_trust(ptr noundef %19, ptr noundef nonnull %17) #13
  switch i32 %132, label %134 [
    i32 -1, label %373
    i32 -7, label %133
  ]

133:                                              ; preds = %128
  br label %373, !llvm.loop !40

134:                                              ; preds = %128
  %135 = icmp slt i32 %132, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %134
  %137 = call i32 @fclose(ptr noundef %19)
  br label %373

138:                                              ; preds = %134
  br i1 %28, label %149, label %139

139:                                              ; preds = %138
  %140 = and i8 %85, 124
  %141 = icmp eq i8 %140, 8
  br i1 %141, label %142, label %373, !llvm.loop !40

142:                                              ; preds = %139
  %143 = load i8, ptr %17, align 1, !tbaa !5
  %144 = and i8 %143, 64
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %373, !llvm.loop !40

146:                                              ; preds = %142
  %147 = call ptr @user_from_keyID(ptr noundef nonnull %10) #13
  %148 = icmp eq ptr %147, null
  br i1 %148, label %373, label %152, !llvm.loop !40

149:                                              ; preds = %138
  %150 = call fastcc zeroext i8 @userid_match(ptr noundef nonnull %11, ptr noundef %0, ptr noundef nonnull %7), !range !16
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %373, label %152, !llvm.loop !40

152:                                              ; preds = %146, %149
  %153 = icmp ne i8 %118, 0
  %154 = select i1 %119, i1 true, i1 %153
  br i1 %154, label %155, label %203

155:                                              ; preds = %152
  %156 = icmp ne i32 %115, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %155
  %158 = and i8 %114, 124
  %159 = load ptr, ptr @pgpout, align 8, !tbaa !13
  switch i8 %158, label %166 [
    i8 24, label %160
    i8 20, label %163
  ]

160:                                              ; preds = %157
  %161 = call ptr @LANG(ptr noundef nonnull @.str.33) #13
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef %161)
  br label %168

163:                                              ; preds = %157
  %164 = call ptr @LANG(ptr noundef nonnull @.str.34) #13
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef %164)
  br label %168

166:                                              ; preds = %157
  %167 = call i64 @fwrite(ptr nonnull @.str.35, i64 3, i64 1, ptr %159)
  br label %168

168:                                              ; preds = %163, %166, %160
  %169 = icmp eq i8 %117, 0
  %170 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %171 = select i1 %169, ptr @.str.37, ptr @.str.36
  %172 = call i64 @fwrite(ptr nonnull %171, i64 2, i64 1, ptr %170)
  %173 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %174 = call i32 @countbits(ptr noundef nonnull %7) #13
  br label %175

175:                                              ; preds = %175, %168
  %176 = phi i64 [ 4, %168 ], [ %183, %175 ]
  %177 = phi ptr [ @keyIDstring.keyIDbuf, %168 ], [ %182, %175 ]
  %178 = getelementptr inbounds i8, ptr %9, i64 %176
  %179 = load i8, ptr %178, align 1, !tbaa !5
  %180 = zext i8 %179 to i32
  %181 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %177, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %180) #13
  %182 = getelementptr inbounds i8, ptr %177, i64 2
  %183 = add nuw nsw i64 %176, 1
  %184 = icmp eq i64 %183, 8
  br i1 %184, label %185, label %175, !llvm.loop !8

185:                                              ; preds = %175
  store i8 0, ptr %182, align 1, !tbaa !5
  %186 = call ptr @cdate(ptr noundef nonnull %14) #13
  %187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef nonnull @.str.38, i32 noundef %174, ptr noundef nonnull @keyIDstring.keyIDbuf, ptr noundef %186)
  br label %191

188:                                              ; preds = %155
  %189 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef nonnull @.str.39, ptr noundef nonnull @blankkeyID)
  br label %191

191:                                              ; preds = %188, %185
  %192 = icmp ne i32 %116, 0
  %193 = and i1 %156, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %196 = call ptr @LANG(ptr noundef nonnull @.str.40) #13
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef %196)
  %198 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %199 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.41, ptr noundef nonnull @blankkeyID)
  br label %200

200:                                              ; preds = %194, %191
  %201 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.42, ptr noundef nonnull %11)
  br label %203

203:                                              ; preds = %152, %200
  %204 = phi i32 [ 0, %200 ], [ %115, %152 ]
  %205 = phi i8 [ 0, %200 ], [ %118, %152 ]
  %206 = and i8 %85, 124
  %207 = icmp eq i8 %206, 8
  br i1 %207, label %208, label %373, !llvm.loop !40

208:                                              ; preds = %203
  call void @CToPascal(ptr noundef nonnull %11) #13
  %209 = call i32 @check_key_sig(ptr noundef %19, i64 noundef %112, i32 noundef %113, ptr noundef nonnull %11, ptr noundef %19, i64 noundef %130, ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16) #13
  %210 = icmp eq i32 %209, -2
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #14
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = call i32 @check_key_sig(ptr noundef %19, i64 noundef %112, i32 noundef %113, ptr noundef nonnull %11, ptr noundef %19, i64 noundef %130, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16) #13
  br label %216

216:                                              ; preds = %214, %211, %208
  %217 = phi i32 [ %215, %214 ], [ -2, %211 ], [ %209, %208 ]
  call void @PascalToC(ptr noundef nonnull %11) #13
  %218 = sext i32 %129 to i64
  %219 = add nsw i64 %130, %218
  %220 = call i32 @fseek(ptr noundef %19, i64 noundef %219, i32 noundef 0)
  %221 = load i8, ptr %16, align 1, !tbaa !5
  %222 = icmp eq i8 %221, 32
  %223 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %224 = select i1 %222, ptr @.str.43, ptr @.str.44
  %225 = call ptr @LANG(ptr noundef nonnull %224) #13
  %226 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef %225)
  %227 = icmp sgt i32 %217, -1
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %230 = call i64 @fwrite(ptr nonnull @.str.45, i64 7, i64 1, ptr %229)
  br label %244

231:                                              ; preds = %216
  %232 = add nsw i32 %217, 3
  %233 = icmp ult i32 %232, 2
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %236 = call i64 @fwrite(ptr nonnull @.str.46, i64 7, i64 1, ptr %235)
  br label %244

237:                                              ; preds = %231
  %238 = icmp eq i32 %217, -20
  %239 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %238, label %242, label %240

240:                                              ; preds = %237
  %241 = call i64 @fwrite(ptr nonnull @.str.47, i64 7, i64 1, ptr %239)
  br label %244

242:                                              ; preds = %237
  %243 = call i64 @fwrite(ptr nonnull @.str.48, i64 7, i64 1, ptr %239)
  br label %244

244:                                              ; preds = %234, %242, %240, %228
  %245 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br label %246

246:                                              ; preds = %246, %244
  %247 = phi i64 [ 4, %244 ], [ %254, %246 ]
  %248 = phi ptr [ @keyIDstring.keyIDbuf, %244 ], [ %253, %246 ]
  %249 = getelementptr inbounds i8, ptr %10, i64 %247
  %250 = load i8, ptr %249, align 1, !tbaa !5
  %251 = zext i8 %250 to i32
  %252 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %248, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %251) #13
  %253 = getelementptr inbounds i8, ptr %248, i64 2
  %254 = add nuw nsw i64 %247, 1
  %255 = icmp eq i64 %254, 8
  br i1 %255, label %256, label %246, !llvm.loop !8

256:                                              ; preds = %246
  store i8 0, ptr %253, align 1, !tbaa !5
  %257 = call i32 @fputs(ptr nonnull @keyIDstring.keyIDbuf, ptr %245)
  %258 = icmp eq i32 %217, -3
  %259 = or i1 %227, %258
  br i1 %259, label %261, label %260

260:                                              ; preds = %256
  switch i32 %217, label %279 [
    i32 -5, label %261
    i32 -6, label %261
    i32 -7, label %261
    i32 -8, label %261
    i32 -9, label %261
    i32 -20, label %261
  ]

261:                                              ; preds = %260, %260, %260, %260, %260, %260, %256
  call void @PascalToC(ptr noundef nonnull %12) #13
  %262 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %263 = call ptr @cdate(ptr noundef nonnull %15) #13
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.49, ptr noundef %263)
  %265 = load i8, ptr %16, align 1, !tbaa !5
  %266 = icmp eq i8 %265, 32
  br i1 %266, label %270, label %267

267:                                              ; preds = %261
  %268 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %269 = call i32 @putc(i32 noundef 32, ptr noundef %268)
  br label %270

270:                                              ; preds = %267, %261
  %271 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %272 = call i32 @fputs(ptr noundef nonnull %12, ptr noundef %271)
  %273 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %274 = call i32 @putc(i32 noundef 10, ptr noundef %273)
  %275 = icmp slt i32 %217, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %270
  %277 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.50, ptr noundef nonnull @blankkeyID)
  br label %282

279:                                              ; preds = %260
  %280 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %281 = call i64 @fwrite(ptr nonnull @.str.51, i64 13, i64 1, ptr %280)
  br label %282

282:                                              ; preds = %270, %276, %279
  %283 = load i8, ptr %17, align 1
  br i1 %227, label %284, label %286

284:                                              ; preds = %282
  %285 = or i8 %283, 64
  br label %293

286:                                              ; preds = %282
  %287 = icmp eq i32 %217, -2
  %288 = and i8 %283, -72
  br i1 %287, label %289, label %291

289:                                              ; preds = %286
  %290 = or disjoint i8 %288, 64
  br label %293

291:                                              ; preds = %286
  %292 = or disjoint i8 %288, 2
  br label %293

293:                                              ; preds = %289, %291, %284
  %294 = phi i8 [ %285, %284 ], [ %290, %289 ], [ %292, %291 ]
  %295 = icmp slt i64 %131, 1
  %296 = icmp eq i8 %294, %283
  %297 = select i1 %295, i1 true, i1 %296
  br i1 %297, label %299, label %298

298:                                              ; preds = %293
  call void @write_trust_pos(ptr noundef %19, i8 noundef zeroext %294, i64 noundef %131) #13
  br label %299

299:                                              ; preds = %298, %293
  br i1 %227, label %373, label %300, !llvm.loop !40

300:                                              ; preds = %299
  %301 = icmp eq i32 %217, -2
  %302 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %301, label %303, label %306

303:                                              ; preds = %300
  %304 = call ptr @LANG(ptr noundef nonnull @.str.52) #13
  %305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %304)
  br label %334

306:                                              ; preds = %300
  br i1 %258, label %307, label %310

307:                                              ; preds = %306
  %308 = call ptr @LANG(ptr noundef nonnull @.str.53) #13
  %309 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %308)
  br label %334

310:                                              ; preds = %306
  switch i32 %217, label %332 [
    i32 -5, label %311
    i32 -6, label %314
    i32 -7, label %317
    i32 -8, label %320
    i32 -9, label %323
    i32 -10, label %326
    i32 -20, label %329
  ]

311:                                              ; preds = %310
  %312 = call ptr @LANG(ptr noundef nonnull @.str.54) #13
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %312)
  br label %334

314:                                              ; preds = %310
  %315 = call ptr @LANG(ptr noundef nonnull @.str.55) #13
  %316 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %315)
  br label %334

317:                                              ; preds = %310
  %318 = call ptr @LANG(ptr noundef nonnull @.str.56) #13
  %319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %318)
  br label %334

320:                                              ; preds = %310
  %321 = call ptr @LANG(ptr noundef nonnull @.str.57) #13
  %322 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %321)
  br label %334

323:                                              ; preds = %310
  %324 = call ptr @LANG(ptr noundef nonnull @.str.58) #13
  %325 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %324)
  br label %334

326:                                              ; preds = %310
  %327 = call ptr @LANG(ptr noundef nonnull @.str.59) #13
  %328 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %327)
  br label %334

329:                                              ; preds = %310
  %330 = call ptr @LANG(ptr noundef nonnull @.str.60) #13
  %331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %330)
  br label %334

332:                                              ; preds = %310
  %333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef nonnull @.str.61, i32 noundef %217)
  br label %334

334:                                              ; preds = %307, %314, %320, %326, %332, %329, %323, %317, %311, %303
  %335 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %336 = call i32 @putc(i32 noundef 10, ptr noundef %335)
  %337 = add nsw i32 %217, 3
  %338 = icmp ult i32 %337, 2
  br i1 %338, label %373, label %339, !llvm.loop !40

339:                                              ; preds = %334
  %340 = icmp eq i8 %69, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %339
  %342 = call ptr @tempfile(i32 noundef 4) #13
  %343 = call noalias ptr @fopen(ptr noundef %342, ptr noundef nonnull @.str.62)
  br label %344

344:                                              ; preds = %341, %339
  %345 = phi ptr [ %63, %339 ], [ %342, %341 ]
  %346 = phi ptr [ %71, %339 ], [ %343, %341 ]
  %347 = icmp eq ptr %346, null
  br i1 %347, label %373, label %348

348:                                              ; preds = %344
  %349 = sub nsw i64 %130, %60
  %350 = call i32 @copyfilepos(ptr noundef %19, ptr noundef nonnull %346, i64 noundef %349, i64 noundef %60) #13
  %351 = call i32 @fseek(ptr noundef %19, i64 noundef %219, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %6, align 1, !tbaa !5
  %352 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef %19)
  %353 = and i64 %352, 4294967295
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %364, label %355

355:                                              ; preds = %348
  %356 = load i8, ptr %4, align 1
  store i8 %356, ptr %6, align 1, !tbaa !5
  switch i8 %356, label %357 [
    i8 -76, label %359
    i8 -80, label %359
    i8 -103, label %359
    i8 -107, label %359
  ]

357:                                              ; preds = %355
  %358 = and i8 %356, 124
  switch i8 %358, label %364 [
    i8 8, label %359
    i8 56, label %359
  ]

359:                                              ; preds = %357, %357, %355, %355, %355, %355
  %360 = call i64 @getpastlength(i8 noundef zeroext %356, ptr noundef %19) #13
  %361 = icmp ugt i64 %360, 1591
  br i1 %361, label %364, label %362

362:                                              ; preds = %359
  %363 = call i32 @fseek(ptr noundef %19, i64 noundef %360, i32 noundef 1)
  br label %364

364:                                              ; preds = %357, %348, %359, %362
  %365 = phi i1 [ false, %362 ], [ true, %348 ], [ true, %359 ], [ true, %357 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  %366 = load i8, ptr %6, align 1
  %367 = icmp ne i8 %366, -80
  %368 = select i1 %365, i1 true, i1 %367
  br i1 %368, label %369, label %371

369:                                              ; preds = %364
  %370 = call i32 @fseek(ptr noundef %19, i64 noundef %219, i32 noundef 0)
  br label %371

371:                                              ; preds = %364, %369
  %372 = call i64 @ftell(ptr noundef %19)
  br label %373

373:                                              ; preds = %58, %344, %371, %334, %299, %203, %149, %146, %142, %139, %128, %121, %136, %133, %79
  %374 = phi i64 [ %112, %133 ], [ %112, %136 ], [ %59, %79 ], [ %59, %58 ], [ %112, %121 ], [ %112, %128 ], [ %112, %139 ], [ %112, %142 ], [ %112, %146 ], [ %112, %149 ], [ %112, %203 ], [ %112, %299 ], [ %112, %334 ], [ %112, %371 ], [ %112, %344 ]
  %375 = phi i64 [ %60, %133 ], [ %60, %136 ], [ %60, %79 ], [ %60, %58 ], [ %60, %121 ], [ %60, %128 ], [ %60, %139 ], [ %60, %142 ], [ %60, %146 ], [ %60, %149 ], [ %60, %203 ], [ %60, %299 ], [ %60, %334 ], [ %372, %371 ], [ %60, %344 ]
  %376 = phi i32 [ -7, %133 ], [ %132, %136 ], [ %75, %79 ], [ -1, %58 ], [ %75, %121 ], [ %132, %128 ], [ %132, %139 ], [ %132, %142 ], [ %132, %146 ], [ %132, %149 ], [ %132, %203 ], [ %132, %299 ], [ %132, %334 ], [ %132, %371 ], [ %132, %344 ]
  %377 = phi i32 [ %113, %133 ], [ %113, %136 ], [ %61, %79 ], [ %61, %58 ], [ %113, %121 ], [ %113, %128 ], [ %113, %139 ], [ %113, %142 ], [ %113, %146 ], [ %113, %149 ], [ %113, %203 ], [ %113, %299 ], [ %113, %334 ], [ %113, %371 ], [ %113, %344 ]
  %378 = phi i32 [ %129, %133 ], [ %129, %136 ], [ %62, %79 ], [ %62, %58 ], [ %62, %121 ], [ %129, %128 ], [ %129, %139 ], [ %129, %142 ], [ %129, %146 ], [ %129, %149 ], [ %129, %203 ], [ %129, %299 ], [ %129, %334 ], [ %129, %371 ], [ %129, %344 ]
  %379 = phi ptr [ %63, %133 ], [ %63, %136 ], [ %63, %79 ], [ %63, %58 ], [ %63, %121 ], [ %63, %128 ], [ %63, %139 ], [ %63, %142 ], [ %63, %146 ], [ %63, %149 ], [ %63, %203 ], [ %63, %299 ], [ %63, %334 ], [ %345, %371 ], [ %345, %344 ]
  %380 = phi i64 [ %130, %133 ], [ %130, %136 ], [ %64, %79 ], [ %64, %58 ], [ %64, %121 ], [ %130, %128 ], [ %130, %139 ], [ %130, %142 ], [ %130, %146 ], [ %130, %149 ], [ %130, %203 ], [ %130, %299 ], [ %130, %334 ], [ %130, %371 ], [ %130, %344 ]
  %381 = phi i8 [ %114, %133 ], [ %114, %136 ], [ %65, %79 ], [ %65, %58 ], [ %114, %121 ], [ %114, %128 ], [ %114, %139 ], [ %114, %142 ], [ %114, %146 ], [ %114, %149 ], [ %114, %203 ], [ %114, %299 ], [ %114, %334 ], [ %114, %371 ], [ %114, %344 ]
  %382 = phi i32 [ %115, %133 ], [ %115, %136 ], [ %66, %79 ], [ %66, %58 ], [ %115, %121 ], [ %115, %128 ], [ %115, %139 ], [ %115, %142 ], [ %115, %146 ], [ %115, %149 ], [ %204, %203 ], [ %204, %299 ], [ %204, %334 ], [ %204, %371 ], [ %204, %344 ]
  %383 = phi i32 [ %116, %133 ], [ %116, %136 ], [ %67, %79 ], [ %67, %58 ], [ %116, %121 ], [ %116, %128 ], [ %116, %139 ], [ %116, %142 ], [ %116, %146 ], [ %116, %149 ], [ %116, %203 ], [ %116, %299 ], [ %116, %334 ], [ %116, %371 ], [ %116, %344 ]
  %384 = phi i8 [ %117, %133 ], [ %117, %136 ], [ %68, %79 ], [ %68, %58 ], [ %117, %121 ], [ %117, %128 ], [ %117, %139 ], [ %117, %142 ], [ %117, %146 ], [ %117, %149 ], [ %117, %203 ], [ %117, %299 ], [ %117, %334 ], [ %117, %371 ], [ %117, %344 ]
  %385 = phi i8 [ %69, %133 ], [ %69, %136 ], [ %69, %79 ], [ %69, %58 ], [ %69, %121 ], [ %69, %128 ], [ %69, %139 ], [ %69, %142 ], [ %69, %146 ], [ %69, %149 ], [ %69, %203 ], [ %69, %299 ], [ %69, %334 ], [ 1, %371 ], [ 1, %344 ]
  %386 = phi i8 [ %118, %133 ], [ %118, %136 ], [ %70, %79 ], [ %70, %58 ], [ %118, %121 ], [ %118, %128 ], [ %118, %139 ], [ %118, %142 ], [ %118, %146 ], [ %118, %149 ], [ %205, %203 ], [ %205, %299 ], [ %205, %334 ], [ %205, %371 ], [ %205, %344 ]
  %387 = phi ptr [ %71, %133 ], [ %71, %136 ], [ %71, %79 ], [ %71, %58 ], [ %71, %121 ], [ %71, %128 ], [ %71, %139 ], [ %71, %142 ], [ %71, %146 ], [ %71, %149 ], [ %71, %203 ], [ %71, %299 ], [ %71, %334 ], [ %346, %371 ], [ %346, %344 ]
  %388 = phi i32 [ 3, %133 ], [ 1, %136 ], [ 1, %79 ], [ 2, %58 ], [ 3, %121 ], [ 2, %128 ], [ 3, %139 ], [ 3, %142 ], [ 3, %146 ], [ 3, %149 ], [ 3, %203 ], [ 3, %299 ], [ 3, %334 ], [ 0, %371 ], [ 0, %344 ]
  %389 = phi i32 [ %72, %133 ], [ %132, %136 ], [ -1, %79 ], [ %72, %58 ], [ %72, %121 ], [ %72, %128 ], [ %72, %139 ], [ %72, %142 ], [ %72, %146 ], [ %72, %149 ], [ %72, %203 ], [ %72, %299 ], [ %72, %334 ], [ %72, %371 ], [ %72, %344 ]
  switch i32 %388, label %424 [
    i32 0, label %390
    i32 2, label %391
    i32 3, label %390
  ]

390:                                              ; preds = %373, %373
  br label %58, !llvm.loop !40

391:                                              ; preds = %373
  %392 = call i32 @close_more() #13
  store ptr %21, ptr @pgpout, align 8, !tbaa !13
  %393 = icmp slt i32 %376, -1
  br i1 %393, label %394, label %396

394:                                              ; preds = %391
  %395 = call i32 @fclose(ptr noundef %19)
  br label %424

396:                                              ; preds = %391
  %397 = call i32 @fputc(i32 noundef 10, ptr noundef %21)
  %398 = icmp ne i8 %385, 0
  %399 = icmp ne ptr %387, null
  %400 = select i1 %398, i1 %399, i1 false
  br i1 %400, label %401, label %422

401:                                              ; preds = %396
  %402 = call i32 @copyfilepos(ptr noundef %19, ptr noundef nonnull %387, i64 noundef -1, i64 noundef %375) #13
  %403 = call i32 @fclose(ptr noundef %19)
  %404 = call i32 @write_error(ptr noundef nonnull %387) #13
  %405 = icmp eq i32 %404, 0
  %406 = call i32 @fclose(ptr noundef nonnull %387)
  br i1 %405, label %407, label %424

407:                                              ; preds = %401
  %408 = load i8, ptr @batchmode, align 1, !tbaa !5
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %407
  %411 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %412 = call ptr @LANG(ptr noundef nonnull @.str.63) #13
  %413 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %411, ptr noundef %412)
  br label %414

414:                                              ; preds = %410, %407
  %415 = load i8, ptr @batchmode, align 1, !tbaa !5
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = call zeroext i8 @getyesno(i8 noundef signext 121) #13
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %417, %414
  %421 = call i32 @savetempbak(ptr noundef %379, ptr noundef %1) #13
  br label %424

422:                                              ; preds = %396
  %423 = call i32 @fclose(ptr noundef %19)
  br label %424

424:                                              ; preds = %373, %401, %422, %420, %417, %394, %22
  %425 = phi i32 [ -1, %22 ], [ %376, %394 ], [ 0, %417 ], [ 0, %420 ], [ 0, %422 ], [ -1, %401 ], [ %389, %373 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  ret i32 %425
}

declare ptr @user_from_keyID(ptr noundef) local_unnamed_addr #6

declare i32 @check_key_sig(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare void @write_trust_pos(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #6

declare ptr @tempfile(i32 noundef) local_unnamed_addr #6

declare i32 @copyfilepos(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @write_error(ptr noundef) local_unnamed_addr #6

declare zeroext i8 @getyesno(i8 noundef signext) local_unnamed_addr #6

declare i32 @savetempbak(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @backup_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #13
  %4 = tail call zeroext i8 @is_tempfile(ptr noundef %1) #13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @remove(ptr noundef %1) #13
  br label %15

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @file_exists(ptr noundef %1) #13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #13
  call void @force_extension(ptr noundef nonnull %3, ptr noundef nonnull @BAK_EXTENSION) #13
  %13 = call i32 @remove(ptr noundef nonnull %3) #13
  %14 = call i32 @rename(ptr noundef %1, ptr noundef nonnull %3) #13
  br label %15

15:                                               ; preds = %8, %11, %6
  %16 = call i32 @rename2(ptr noundef %0, ptr noundef %1) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #13
  ret i32 %16
}

declare zeroext i8 @is_tempfile(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #3

declare void @force_extension(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @rename2(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @remove_sigs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [130 x i16], align 16
  %9 = alloca [130 x i16], align 16
  %10 = alloca [8 x i8], align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @globalPubringName) #13
  %15 = icmp eq ptr %0, null
  br i1 %15, label %187, label %16

16:                                               ; preds = %2
  %17 = load i8, ptr %0, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %187, label %19

19:                                               ; preds = %16
  call void @setoutdir(ptr noundef %1) #13
  %20 = call ptr @tempfile(i32 noundef 0) #13
  %21 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #13
  %22 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %23 = call ptr @LANG(ptr noundef nonnull @.str.64) #13
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %0, ptr noundef %1)
  %25 = call i32 @getpublickey(i32 noundef 3, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !28
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %29 = call ptr @LANG(ptr noundef nonnull @.str.65) #13
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef %29, ptr noundef %1)
  br label %187

31:                                               ; preds = %19
  %32 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #13
  %33 = load i64, ptr %5, align 8, !tbaa !21
  %34 = call i32 @getpubuserid(ptr noundef %1, i64 noundef %33, ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0), !range !28
  %35 = load i64, ptr %6, align 8, !tbaa !21
  %36 = load i64, ptr %5, align 8, !tbaa !21
  %37 = sub nsw i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr %7, align 4, !tbaa !19
  %40 = add nsw i32 %39, %38
  store i32 %40, ptr %7, align 4, !tbaa !19
  %41 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %45 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef %45, ptr noundef %1)
  br label %187

47:                                               ; preds = %31
  %48 = load i64, ptr %5, align 8, !tbaa !21
  %49 = load i32, ptr %7, align 4, !tbaa !19
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @fseek(ptr noundef nonnull %41, i64 noundef %51, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %53 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %41)
  %54 = and i64 %53, 4294967295
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %47, %69
  %57 = phi i32 [ %73, %69 ], [ 0, %47 ]
  %58 = load i8, ptr %3, align 1
  switch i8 %58, label %59 [
    i8 -76, label %61
    i8 -80, label %61
    i8 -103, label %61
    i8 -107, label %61
  ]

59:                                               ; preds = %56
  %60 = and i8 %58, 124
  switch i8 %60, label %66 [
    i8 8, label %61
    i8 56, label %61
  ]

61:                                               ; preds = %59, %59, %56, %56, %56, %56
  %62 = call i64 @getpastlength(i8 noundef zeroext %58, ptr noundef nonnull %41) #13
  %63 = icmp ugt i64 %62, 1591
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 @fseek(ptr noundef nonnull %41, i64 noundef %62, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  switch i8 %58, label %69 [
    i8 -76, label %77
    i8 -103, label %77
    i8 -107, label %77
  ]

66:                                               ; preds = %61, %69, %59, %47
  %67 = phi i8 [ 0, %47 ], [ %58, %61 ], [ 0, %69 ], [ %58, %59 ]
  %68 = phi i32 [ 0, %47 ], [ %57, %61 ], [ %73, %69 ], [ %57, %59 ]
  store i8 %67, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  br label %78

69:                                               ; preds = %64
  %70 = and i8 %58, 124
  %71 = icmp eq i8 %70, 8
  %72 = zext i1 %71 to i32
  %73 = add nuw nsw i32 %57, %72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %74 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %41)
  %75 = and i64 %74, 4294967295
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %66, label %56, !llvm.loop !41

77:                                               ; preds = %64, %64, %64
  store i8 %58, ptr %4, align 1
  br label %78

78:                                               ; preds = %77, %66
  %79 = phi i32 [ %57, %77 ], [ %68, %66 ]
  call void @rewind(ptr noundef nonnull %41)
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %80, label %82, label %86

82:                                               ; preds = %78
  %83 = call ptr @LANG(ptr noundef nonnull @.str.66) #13
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef %83)
  %85 = call i32 @fclose(ptr noundef nonnull %41)
  br label %187

86:                                               ; preds = %78
  %87 = call ptr @LANG(ptr noundef nonnull @.str.67) #13
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef %87, i32 noundef %79)
  %89 = call noalias ptr @fopen(ptr noundef %20, ptr noundef nonnull @.str.62)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = call i32 @fclose(ptr noundef nonnull %41)
  br label %187

93:                                               ; preds = %86
  %94 = load i64, ptr %5, align 8, !tbaa !21
  %95 = load i32, ptr %7, align 4, !tbaa !19
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = call i32 @copyfile(ptr noundef nonnull %41, ptr noundef nonnull %89, i64 noundef %97) #13
  br label %99

99:                                               ; preds = %170, %93
  %100 = phi i32 [ 0, %93 ], [ %162, %170 ]
  %101 = phi i32 [ 1, %93 ], [ %163, %170 ]
  %102 = call i64 @ftell(ptr noundef nonnull %41)
  store i64 %102, ptr %5, align 8, !tbaa !21
  %103 = call signext i16 @readkeypacket(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef null), !range !15
  %104 = call i64 @ftell(ptr noundef nonnull %41)
  %105 = load i64, ptr %5, align 8, !tbaa !21
  %106 = sub nsw i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, ptr %7, align 4, !tbaa !19
  %108 = icmp slt i16 %103, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  switch i16 %103, label %171 [
    i16 -4, label %110
    i16 -6, label %110
  ]

110:                                              ; preds = %109, %109, %99
  %111 = load i8, ptr %4, align 1
  switch i8 %111, label %112 [
    i8 -76, label %171
    i8 -103, label %171
    i8 -107, label %171
  ]

112:                                              ; preds = %110
  %113 = and i8 %111, 124
  %114 = icmp eq i8 %113, 8
  br i1 %114, label %115, label %161

115:                                              ; preds = %112
  %116 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %117 = call ptr @LANG(ptr noundef nonnull @.str.44) #13
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef %117)
  %119 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %120 = select i1 %108, i32 63, i32 32
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.68, i32 noundef %120)
  br i1 %108, label %122, label %123

122:                                              ; preds = %115
  store i64 0, ptr %10, align 8
  br label %123

123:                                              ; preds = %122, %115
  %124 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi i64 [ 4, %123 ], [ %133, %125 ]
  %127 = phi ptr [ @keyIDstring.keyIDbuf, %123 ], [ %132, %125 ]
  %128 = getelementptr inbounds i8, ptr %10, i64 %126
  %129 = load i8, ptr %128, align 1, !tbaa !5
  %130 = zext i8 %129 to i32
  %131 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %127, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %130) #13
  %132 = getelementptr inbounds i8, ptr %127, i64 2
  %133 = add nuw nsw i64 %126, 1
  %134 = icmp eq i64 %133, 8
  br i1 %134, label %135, label %125, !llvm.loop !8

135:                                              ; preds = %125
  store i8 0, ptr %132, align 1, !tbaa !5
  %136 = call i32 @fputs(ptr nonnull @keyIDstring.keyIDbuf, ptr %124)
  %137 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %138 = call i64 @fwrite(ptr nonnull @.str.69, i64 15, i64 1, ptr %137)
  %139 = call i32 @getpublickey(i32 noundef 1, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !28
  %140 = icmp sgt i32 %139, -1
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = call i32 @getpublickey(i32 noundef 1, ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %9), !range !28
  %143 = icmp sgt i32 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141, %135
  call void @PascalToC(ptr noundef nonnull %11) #13
  %145 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.42, ptr noundef nonnull %11)
  br label %151

147:                                              ; preds = %141
  %148 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %149 = call ptr @LANG(ptr noundef nonnull @.str.70) #13
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %153 = call ptr @LANG(ptr noundef nonnull @.str.71) #13
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef %153)
  %155 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %156 = icmp eq i8 %155, 0
  %157 = zext i1 %156 to i32
  %158 = xor i1 %156, true
  %159 = zext i1 %158 to i32
  %160 = add nsw i32 %100, %159
  br label %161

161:                                              ; preds = %151, %112
  %162 = phi i32 [ %100, %112 ], [ %160, %151 ]
  %163 = phi i32 [ %101, %112 ], [ %157, %151 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %7, align 4, !tbaa !19
  %167 = sext i32 %166 to i64
  %168 = load i64, ptr %5, align 8, !tbaa !21
  %169 = call i32 @copyfilepos(ptr noundef nonnull %41, ptr noundef nonnull %89, i64 noundef %167, i64 noundef %168) #13
  br label %170

170:                                              ; preds = %165, %161
  br label %99, !llvm.loop !42

171:                                              ; preds = %110, %110, %110, %109
  %172 = call i32 @copyfilepos(ptr noundef nonnull %41, ptr noundef nonnull %89, i64 noundef -1, i64 noundef %105) #13
  %173 = call i32 @fclose(ptr noundef nonnull %41)
  %174 = call i32 @write_error(ptr noundef nonnull %89) #13
  %175 = icmp eq i32 %174, 0
  %176 = call i32 @fclose(ptr noundef nonnull %89)
  br i1 %175, label %177, label %187

177:                                              ; preds = %171
  %178 = call i32 @savetempbak(ptr noundef %20, ptr noundef %1) #13
  %179 = icmp eq i32 %100, 0
  %180 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %179, label %181, label %184

181:                                              ; preds = %177
  %182 = call ptr @LANG(ptr noundef nonnull @.str.72) #13
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef %182)
  br label %187

184:                                              ; preds = %177
  %185 = call ptr @LANG(ptr noundef nonnull @.str.73) #13
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef %185, i32 noundef %100)
  br label %187

187:                                              ; preds = %171, %181, %184, %2, %16, %91, %82, %43, %27
  %188 = phi i32 [ 0, %27 ], [ -1, %43 ], [ 0, %82 ], [ -1, %91 ], [ -1, %16 ], [ -1, %2 ], [ 0, %184 ], [ 0, %181 ], [ -1, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %188
}

declare void @setoutdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @copyfile(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @remove_from_keyring(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  tail call void @default_extension(ptr noundef %2, ptr noundef nonnull @PGP_EXTENSION) #13
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = icmp eq ptr %1, null
  br i1 %16, label %224, label %17

17:                                               ; preds = %15
  %18 = load i8, ptr %1, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %224, label %20

20:                                               ; preds = %17, %4
  %21 = icmp eq ptr %1, null
  %22 = icmp eq i8 %3, 0
  br label %23

23:                                               ; preds = %211, %20
  %24 = phi i1 [ %22, %20 ], [ true, %211 ]
  %25 = phi i8 [ 0, %20 ], [ %169, %211 ]
  %26 = phi i32 [ 3, %20 ], [ 35, %211 ]
  br i1 %21, label %38, label %27

27:                                               ; preds = %23
  %28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #13
  %29 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %30 = call ptr @LANG(ptr noundef nonnull @.str.74) #13
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef %30, ptr noundef %2)
  %32 = load i8, ptr %1, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %36 = call ptr @LANG(ptr noundef nonnull @.str.75) #13
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef %36, ptr noundef nonnull %1)
  br label %42

38:                                               ; preds = %23
  %39 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %40 = call ptr @LANG(ptr noundef nonnull @.str.74) #13
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef %40, ptr noundef %2)
  br label %42

42:                                               ; preds = %38, %34, %27
  %43 = call i32 @getpublickey(i32 noundef %26, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !28
  %44 = freeze i32 %43
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  switch i32 %44, label %47 [
    i32 -4, label %51
    i32 -6, label %51
  ]

47:                                               ; preds = %46
  %48 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %49 = call ptr @LANG(ptr noundef nonnull @.str.65) #13
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef %49, ptr noundef %2)
  br label %224

51:                                               ; preds = %46, %46, %42
  %52 = call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.7)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %56 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef %56, ptr noundef %2)
  br label %224

58:                                               ; preds = %51
  %59 = load i64, ptr %7, align 8, !tbaa !21
  %60 = load i32, ptr %8, align 4, !tbaa !19
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @fseek(ptr noundef nonnull %52, i64 noundef %62, i32 noundef 0)
  br label %64

64:                                               ; preds = %90, %58
  %65 = phi i32 [ 0, %58 ], [ %89, %90 ]
  %66 = call i64 @ftell(ptr noundef nonnull %52)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %9, align 1, !tbaa !5
  %67 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %52)
  %68 = and i64 %67, 4294967295
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load i8, ptr %6, align 1
  store i8 %71, ptr %9, align 1, !tbaa !5
  switch i8 %71, label %72 [
    i8 -76, label %77
    i8 -80, label %77
    i8 -103, label %77
    i8 -107, label %77
  ]

72:                                               ; preds = %70
  %73 = and i8 %71, 124
  switch i8 %73, label %74 [
    i8 8, label %77
    i8 56, label %77
  ]

74:                                               ; preds = %72
  %75 = icmp eq i8 %71, 26
  %76 = select i1 %75, i16 -1, i16 -2
  br label %82

77:                                               ; preds = %72, %72, %70, %70, %70, %70
  %78 = call i64 @getpastlength(i8 noundef zeroext %71, ptr noundef nonnull %52) #13
  %79 = icmp ugt i64 %78, 1591
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = call i32 @fseek(ptr noundef nonnull %52, i64 noundef %78, i32 noundef 1)
  br label %82

82:                                               ; preds = %64, %74, %77, %80
  %83 = phi i16 [ 0, %80 ], [ %76, %74 ], [ -1, %64 ], [ -3, %77 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  %84 = icmp eq i16 %83, 0
  %85 = load i8, ptr %9, align 1
  %86 = icmp eq i8 %85, -76
  %87 = select i1 %84, i1 %86, i1 false
  %88 = zext i1 %87 to i32
  %89 = add nuw nsw i32 %65, %88
  br i1 %84, label %90, label %91

90:                                               ; preds = %82
  switch i8 %85, label %64 [
    i8 -103, label %91
    i8 -107, label %91
  ]

91:                                               ; preds = %90, %90, %82
  %92 = icmp slt i16 %83, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = call i32 @fclose(ptr noundef nonnull %52)
  br label %224

95:                                               ; preds = %91
  br i1 %14, label %96, label %167

96:                                               ; preds = %95
  %97 = icmp ugt i32 %89, 1
  br i1 %97, label %98, label %156

98:                                               ; preds = %96
  %99 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %100 = call ptr @LANG(ptr noundef nonnull @.str.76) #13
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef %100)
  %102 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %167

104:                                              ; preds = %98
  %105 = load i64, ptr %7, align 8, !tbaa !21
  %106 = load i32, ptr %8, align 4, !tbaa !19
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = call i32 @fseek(ptr noundef nonnull %52, i64 noundef %108, i32 noundef 0)
  br label %110

110:                                              ; preds = %118, %104
  %111 = call i64 @ftell(ptr noundef nonnull %52)
  store i64 %111, ptr %7, align 8, !tbaa !21
  %112 = call i32 @readkpacket(ptr noundef nonnull %52, ptr noundef nonnull %9, ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #13
  %113 = freeze i32 %112
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  switch i32 %113, label %119 [
    i32 -4, label %116
    i32 -6, label %116
  ]

116:                                              ; preds = %115, %115, %110
  %117 = load i8, ptr %9, align 1, !tbaa !5
  switch i8 %117, label %118 [
    i8 -103, label %119
    i8 -107, label %119
    i8 -76, label %124
  ]

118:                                              ; preds = %116, %124
  br label %110, !llvm.loop !43

119:                                              ; preds = %116, %116, %115
  %120 = call i32 @fclose(ptr noundef nonnull %52)
  %121 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %122 = call ptr @LANG(ptr noundef nonnull @.str.77) #13
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef %122)
  br label %224

124:                                              ; preds = %116
  %125 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %126 = call ptr @LANG(ptr noundef nonnull @.str.78) #13
  %127 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef %126, ptr noundef nonnull %12)
  %128 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %118, label %130

130:                                              ; preds = %124, %150
  %131 = call i64 @ftell(ptr noundef nonnull %52)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %9, align 1, !tbaa !5
  %132 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 1, ptr noundef nonnull %52)
  %133 = and i64 %132, 4294967295
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %130
  %136 = load i8, ptr %5, align 1
  store i8 %136, ptr %9, align 1, !tbaa !5
  switch i8 %136, label %137 [
    i8 -76, label %142
    i8 -80, label %142
    i8 -103, label %142
    i8 -107, label %142
  ]

137:                                              ; preds = %135
  %138 = and i8 %136, 124
  switch i8 %138, label %139 [
    i8 8, label %142
    i8 56, label %142
  ]

139:                                              ; preds = %137
  %140 = icmp eq i8 %136, 26
  %141 = select i1 %140, i16 -1, i16 -2
  br label %147

142:                                              ; preds = %137, %137, %135, %135, %135, %135
  %143 = call i64 @getpastlength(i8 noundef zeroext %136, ptr noundef nonnull %52) #13
  %144 = icmp ugt i64 %143, 1591
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = call i32 @fseek(ptr noundef nonnull %52, i64 noundef %143, i32 noundef 1)
  br label %147

147:                                              ; preds = %130, %139, %142, %145
  %148 = phi i16 [ 0, %145 ], [ %141, %139 ], [ -1, %130 ], [ -3, %142 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i8, ptr %9, align 1
  switch i8 %151, label %130 [
    i8 -76, label %152
    i8 -103, label %152
    i8 -107, label %152
  ]

152:                                              ; preds = %150, %150, %150, %147
  %153 = icmp slt i16 %148, -1
  br i1 %153, label %154, label %167

154:                                              ; preds = %152
  %155 = call i32 @fclose(ptr noundef nonnull %52)
  br label %224

156:                                              ; preds = %96
  %157 = load i8, ptr @force_flag, align 1, !tbaa !5
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %161 = call ptr @LANG(ptr noundef nonnull @.str.79) #13
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef %161)
  %163 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 @fclose(ptr noundef nonnull %52)
  br label %224

167:                                              ; preds = %152, %98, %159, %156, %95
  %168 = phi i64 [ %66, %98 ], [ %131, %152 ], [ %66, %156 ], [ %66, %159 ], [ %66, %95 ]
  %169 = phi i8 [ %25, %98 ], [ 1, %152 ], [ %25, %156 ], [ %25, %159 ], [ %25, %95 ]
  %170 = call i32 @fclose(ptr noundef nonnull %52)
  %171 = load i64, ptr %7, align 8, !tbaa !21
  %172 = sub nsw i64 %168, %171
  %173 = trunc i64 %172 to i32
  store i32 %173, ptr %8, align 4, !tbaa !19
  %174 = call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.7)
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %178 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef %178, ptr noundef %2)
  br label %224

180:                                              ; preds = %167
  call void @setoutdir(ptr noundef %2) #13
  %181 = call ptr @tempfile(i32 noundef 0) #13
  %182 = call noalias ptr @fopen(ptr noundef %181, ptr noundef nonnull @.str.62)
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = call i32 @fclose(ptr noundef nonnull %174)
  br label %224

186:                                              ; preds = %180
  %187 = load i64, ptr %7, align 8, !tbaa !21
  %188 = call i32 @copyfilepos(ptr noundef nonnull %174, ptr noundef nonnull %182, i64 noundef %187, i64 noundef 0) #13
  %189 = load i64, ptr %7, align 8, !tbaa !21
  %190 = load i32, ptr %8, align 4, !tbaa !19
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = call i32 @copyfilepos(ptr noundef nonnull %174, ptr noundef nonnull %182, i64 noundef -1, i64 noundef %192) #13
  %194 = call i32 @fclose(ptr noundef nonnull %174)
  %195 = call i32 @write_error(ptr noundef nonnull %182) #13
  %196 = icmp eq i32 %195, 0
  %197 = call i32 @fclose(ptr noundef nonnull %182)
  br i1 %196, label %198, label %224

198:                                              ; preds = %186
  br i1 %24, label %217, label %199

199:                                              ; preds = %198
  %200 = call i32 @maint_update(ptr noundef %181, ptr noundef null) #13
  %201 = call i32 @savetempbak(ptr noundef %181, ptr noundef %2) #13
  %202 = icmp eq i8 %169, 0
  %203 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %204 = select i1 %202, ptr @.str.81, ptr @.str.80
  %205 = call ptr @LANG(ptr noundef nonnull %204) #13
  %206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef %205)
  %207 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @globalSecringName) #13
  %208 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %1) #13
  %209 = call i32 @getpublickey(i32 noundef 33, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !28
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %199
  %212 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %213 = call ptr @LANG(ptr noundef nonnull @.str.82) #13
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef %213)
  %215 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %224, label %23

217:                                              ; preds = %198
  %218 = call i32 @savetempbak(ptr noundef %181, ptr noundef %2) #13
  %219 = icmp eq i8 %169, 0
  %220 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %221 = select i1 %219, ptr @.str.81, ptr @.str.80
  %222 = call ptr @LANG(ptr noundef nonnull %221) #13
  %223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef %222)
  br label %224

224:                                              ; preds = %211, %199, %186, %217, %15, %17, %184, %176, %165, %154, %119, %93, %54, %47
  %225 = phi i32 [ 0, %47 ], [ -1, %54 ], [ -1, %93 ], [ -1, %176 ], [ -1, %184 ], [ -1, %119 ], [ -1, %154 ], [ -1, %165 ], [ -1, %17 ], [ -1, %15 ], [ 0, %217 ], [ 0, %211 ], [ 0, %199 ], [ -1, %186 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i32 %225
}

declare i32 @readkpacket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @maint_update(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @extract_from_keyring(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [262 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca [130 x i16], align 16
  %13 = alloca [130 x i16], align 16
  %14 = alloca [8 x i8], align 1
  %15 = alloca [256 x i8], align 16
  %16 = alloca [256 x i8], align 16
  %17 = alloca [256 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  tail call void @default_extension(ptr noundef %2, ptr noundef nonnull @PGP_EXTENSION) #13
  %20 = icmp eq ptr %0, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load i8, ptr %0, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.83) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i1 [ true, %27 ], [ false, %24 ]
  %30 = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.7)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %34 = tail call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef %34, ptr noundef %2)
  br label %309

36:                                               ; preds = %28
  br i1 %29, label %69, label %37

37:                                               ; preds = %36
  %38 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %0) #13
  %39 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %40 = call ptr @LANG(ptr noundef nonnull @.str.84) #13
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef %40, ptr noundef %2)
  %42 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %43 = call ptr @LANG(ptr noundef nonnull @.str.75) #13
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef %43, ptr noundef %0)
  %45 = call i32 @getpublickey(i32 noundef 3, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %19, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13), !range !28
  %46 = freeze i32 %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  switch i32 %46, label %49 [
    i32 -4, label %54
    i32 -6, label %54
  ]

49:                                               ; preds = %48
  %50 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %51 = call ptr @LANG(ptr noundef nonnull @.str.65) #13
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef %51, ptr noundef %2)
  %53 = call i32 @fclose(ptr noundef nonnull %30)
  br label %309

54:                                               ; preds = %48, %48, %37
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %8, i8 0, i64 10, i1 false)
  %55 = call signext i16 @reg2mpi(ptr noundef nonnull %8, ptr noundef nonnull %12) #13
  %56 = call signext i16 @reg2mpi(ptr noundef nonnull %8, ptr noundef nonnull %12) #13
  %57 = add i16 %56, -6
  br label %58

58:                                               ; preds = %58, %54
  %59 = phi i64 [ 0, %54 ], [ %65, %58 ]
  %60 = phi i16 [ %57, %54 ], [ %61, %58 ]
  %61 = add i16 %60, 1
  %62 = sext i16 %60 to i64
  %63 = getelementptr inbounds [262 x i8], ptr %8, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !5
  %65 = add nuw nsw i64 %59, 1
  %66 = getelementptr inbounds i8, ptr %14, i64 %59
  store i8 %64, ptr %66, align 1, !tbaa !5
  %67 = icmp eq i64 %65, 8
  br i1 %67, label %68, label %58, !llvm.loop !10

68:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %8) #13
  br label %100

69:                                               ; preds = %36, %90
  %70 = tail call i64 @ftell(ptr noundef nonnull %30)
  store i64 %70, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  %71 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 1, ptr noundef %30)
  %72 = and i64 %71, 4294967295
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %69
  %75 = load i8, ptr %7, align 1
  switch i8 %75, label %76 [
    i8 -76, label %81
    i8 -80, label %81
    i8 -103, label %81
    i8 -107, label %81
  ]

76:                                               ; preds = %74
  %77 = and i8 %75, 124
  switch i8 %77, label %78 [
    i8 8, label %81
    i8 56, label %81
  ]

78:                                               ; preds = %76
  %79 = icmp eq i8 %75, 26
  %80 = select i1 %79, i16 -1, i16 -2
  br label %86

81:                                               ; preds = %76, %76, %74, %74, %74, %74
  %82 = tail call i64 @getpastlength(i8 noundef zeroext %75, ptr noundef %30) #13
  %83 = icmp ugt i64 %82, 1591
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i32 @fseek(ptr noundef %30, i64 noundef %82, i32 noundef 1)
  br label %86

86:                                               ; preds = %69, %78, %81, %84
  %87 = phi i8 [ 0, %69 ], [ %75, %78 ], [ %75, %81 ], [ %75, %84 ]
  %88 = phi i16 [ -1, %69 ], [ %80, %78 ], [ -3, %81 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  %89 = icmp sgt i16 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  switch i8 %87, label %69 [
    i8 -103, label %91
    i8 -107, label %91
  ]

91:                                               ; preds = %90, %90, %86
  %92 = icmp slt i16 %88, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = tail call i32 @fclose(ptr noundef nonnull %30)
  br label %309

95:                                               ; preds = %91
  %96 = tail call i64 @ftell(ptr noundef nonnull %30)
  %97 = load i64, ptr %9, align 8, !tbaa !21
  %98 = sub nsw i64 %96, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, ptr %10, align 4, !tbaa !19
  br label %100

100:                                              ; preds = %95, %68
  %101 = phi i32 [ 0, %95 ], [ %46, %68 ]
  %102 = icmp eq ptr %1, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i8, ptr %1, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %108 = call i32 @fputc(i32 10, ptr %107)
  %109 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %110 = call ptr @LANG(ptr noundef nonnull @.str.85) #13
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef %110)
  %112 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %113 = call i32 @fputc(i32 32, ptr %112)
  %114 = load i8, ptr @batchmode, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %309

116:                                              ; preds = %106
  %117 = call i32 @getstring(ptr noundef nonnull %16, i32 noundef 252, i32 noundef 1) #13
  %118 = load i8, ptr %16, align 16, !tbaa !5
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %309, label %122

120:                                              ; preds = %103
  %121 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #13
  br label %122

122:                                              ; preds = %116, %120
  call void @default_extension(ptr noundef nonnull %16, ptr noundef nonnull @PGP_EXTENSION) #13
  %123 = icmp ne i8 %3, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %122
  %125 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %16) #13
  %126 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %16) #13
  call void @force_extension(ptr noundef nonnull %17, ptr noundef nonnull @ASC_EXTENSION) #13
  %127 = call ptr @tempfile(i32 noundef 5) #13
  %128 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %127) #13
  br label %129

129:                                              ; preds = %124, %122
  %130 = phi ptr [ %17, %124 ], [ %16, %122 ]
  %131 = phi ptr [ %127, %124 ], [ null, %122 ]
  %132 = call zeroext i8 @file_exists(ptr noundef nonnull %130) #13
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %176, label %134

134:                                              ; preds = %129
  %135 = or i1 %123, %29
  br i1 %135, label %157, label %136

136:                                              ; preds = %134
  %137 = call i32 @getpublickey(i32 noundef 1, ptr noundef nonnull %16, ptr noundef null, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %19, ptr noundef nonnull %15, ptr noundef nonnull %12, ptr noundef nonnull %13), !range !28
  %138 = freeze i32 %137
  %139 = icmp sgt i32 %138, -1
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  switch i32 %138, label %157 [
    i32 -4, label %141
    i32 -6, label %141
  ]

141:                                              ; preds = %140, %140, %136
  %142 = call i32 @fclose(ptr noundef nonnull %30)
  %143 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %144 = call ptr @LANG(ptr noundef nonnull @.str.87) #13
  br label %145

145:                                              ; preds = %145, %141
  %146 = phi i64 [ 4, %141 ], [ %153, %145 ]
  %147 = phi ptr [ @keyIDstring.keyIDbuf, %141 ], [ %152, %145 ]
  %148 = getelementptr inbounds i8, ptr %14, i64 %146
  %149 = load i8, ptr %148, align 1, !tbaa !5
  %150 = zext i8 %149 to i32
  %151 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %147, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %150) #13
  %152 = getelementptr inbounds i8, ptr %147, i64 2
  %153 = add nuw nsw i64 %146, 1
  %154 = icmp eq i64 %153, 8
  br i1 %154, label %155, label %145, !llvm.loop !8

155:                                              ; preds = %145
  store i8 0, ptr %152, align 1, !tbaa !5
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef %144, ptr noundef nonnull @keyIDstring.keyIDbuf, ptr noundef nonnull %16)
  br label %309

157:                                              ; preds = %140, %134
  %158 = phi i32 [ %101, %134 ], [ %138, %140 ]
  %159 = icmp slt i32 %158, -1
  %160 = or i1 %123, %159
  %161 = or i1 %29, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = call zeroext i8 @is_tempfile(ptr noundef nonnull %16) #13
  %164 = icmp ne i8 %163, 0
  %165 = load i8, ptr @force_flag, align 1
  %166 = icmp ne i8 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %176, label %168

168:                                              ; preds = %162
  %169 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %170 = call ptr @LANG(ptr noundef nonnull @.str.88) #13
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef %170, ptr noundef nonnull %130)
  %172 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = call i32 @fclose(ptr noundef nonnull %30)
  br label %309

176:                                              ; preds = %157, %168, %162, %129
  %177 = phi i1 [ true, %162 ], [ true, %168 ], [ true, %129 ], [ false, %157 ]
  %178 = select i1 %177, ptr @.str.62, ptr @.str.31
  %179 = call noalias ptr @fopen(ptr noundef nonnull %16, ptr noundef nonnull %178)
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %177, label %186, label %183

183:                                              ; preds = %181
  %184 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef %184, ptr noundef %2)
  br label %189

186:                                              ; preds = %181
  %187 = call ptr @LANG(ptr noundef nonnull @.str.89) #13
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef %187, ptr noundef nonnull %16)
  br label %189

189:                                              ; preds = %186, %183
  %190 = call i32 @fclose(ptr noundef nonnull %30)
  br label %309

191:                                              ; preds = %176
  br i1 %177, label %194, label %192

192:                                              ; preds = %191
  %193 = call i32 @fseek(ptr noundef nonnull %179, i64 noundef 0, i32 noundef 2)
  br label %194

194:                                              ; preds = %192, %191
  br label %195

195:                                              ; preds = %194, %276
  br i1 %29, label %196, label %229

196:                                              ; preds = %195
  %197 = call i32 @read_trust(ptr noundef nonnull %30, ptr noundef nonnull %11) #13
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %196
  %200 = load i8, ptr %11, align 1, !tbaa !5
  %201 = and i8 %200, 32
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %229, label %203

203:                                              ; preds = %199, %228
  %204 = call i64 @ftell(ptr noundef nonnull %30)
  store i64 %204, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  %205 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 1, i64 noundef 1, ptr noundef %30)
  %206 = and i64 %205, 4294967295
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %203
  %209 = load i8, ptr %6, align 1
  switch i8 %209, label %210 [
    i8 -76, label %215
    i8 -80, label %215
    i8 -103, label %215
    i8 -107, label %215
  ]

210:                                              ; preds = %208
  %211 = and i8 %209, 124
  switch i8 %211, label %212 [
    i8 8, label %215
    i8 56, label %215
  ]

212:                                              ; preds = %210
  %213 = icmp eq i8 %209, 26
  %214 = select i1 %213, i16 -1, i16 -2
  br label %220

215:                                              ; preds = %210, %210, %208, %208, %208, %208
  %216 = call i64 @getpastlength(i8 noundef zeroext %209, ptr noundef %30) #13
  %217 = icmp ugt i64 %216, 1591
  br i1 %217, label %220, label %218

218:                                              ; preds = %215
  %219 = call i32 @fseek(ptr noundef %30, i64 noundef %216, i32 noundef 1)
  br label %220

220:                                              ; preds = %203, %212, %215, %218
  %221 = phi i8 [ 0, %203 ], [ %209, %212 ], [ %209, %215 ], [ %209, %218 ]
  %222 = phi i16 [ -1, %203 ], [ %214, %212 ], [ -3, %215 ], [ 0, %218 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  %223 = call i64 @ftell(ptr noundef nonnull %30)
  %224 = load i64, ptr %9, align 8, !tbaa !21
  %225 = sub nsw i64 %223, %224
  %226 = trunc i64 %225 to i32
  store i32 %226, ptr %10, align 4, !tbaa !19
  %227 = icmp sgt i16 %222, -1
  br i1 %227, label %228, label %274

228:                                              ; preds = %220
  switch i8 %221, label %203 [
    i8 -103, label %274
    i8 -107, label %274
  ]

229:                                              ; preds = %199, %196, %195
  %230 = load i32, ptr %10, align 4, !tbaa !19
  %231 = sext i32 %230 to i64
  %232 = load i64, ptr %9, align 8, !tbaa !21
  %233 = call i32 @copyfilepos(ptr noundef nonnull %30, ptr noundef nonnull %179, i64 noundef %231, i64 noundef %232) #13
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %280, label %235

235:                                              ; preds = %229, %266
  %236 = call i64 @ftell(ptr noundef nonnull %30)
  store i64 %236, ptr %9, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  %237 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 1, ptr noundef %30)
  %238 = and i64 %237, 4294967295
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %252, label %240

240:                                              ; preds = %235
  %241 = load i8, ptr %5, align 1
  switch i8 %241, label %242 [
    i8 -76, label %247
    i8 -80, label %247
    i8 -103, label %247
    i8 -107, label %247
  ]

242:                                              ; preds = %240
  %243 = and i8 %241, 124
  switch i8 %243, label %244 [
    i8 8, label %247
    i8 56, label %247
  ]

244:                                              ; preds = %242
  %245 = icmp eq i8 %241, 26
  %246 = select i1 %245, i16 -1, i16 -2
  br label %252

247:                                              ; preds = %242, %242, %240, %240, %240, %240
  %248 = call i64 @getpastlength(i8 noundef zeroext %241, ptr noundef %30) #13
  %249 = icmp ugt i64 %248, 1591
  br i1 %249, label %252, label %250

250:                                              ; preds = %247
  %251 = call i32 @fseek(ptr noundef %30, i64 noundef %248, i32 noundef 1)
  br label %252

252:                                              ; preds = %235, %244, %247, %250
  %253 = phi i8 [ 0, %235 ], [ %241, %244 ], [ %241, %247 ], [ %241, %250 ]
  %254 = phi i16 [ -1, %235 ], [ %246, %244 ], [ -3, %247 ], [ 0, %250 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %255 = call i64 @ftell(ptr noundef nonnull %30)
  %256 = load i64, ptr %9, align 8, !tbaa !21
  %257 = sub nsw i64 %255, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, ptr %10, align 4, !tbaa !19
  %259 = icmp slt i16 %254, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %252
  switch i8 %253, label %261 [
    i8 -103, label %276
    i8 -107, label %276
  ]

261:                                              ; preds = %260
  %262 = icmp eq i8 %253, -76
  %263 = and i8 %253, 124
  %264 = icmp eq i8 %263, 8
  %265 = or i1 %262, %264
  br i1 %265, label %267, label %266

266:                                              ; preds = %261, %267
  br label %235, !llvm.loop !44

267:                                              ; preds = %261
  %268 = shl i64 %257, 32
  %269 = ashr exact i64 %268, 32
  %270 = call i32 @copyfilepos(ptr noundef nonnull %30, ptr noundef nonnull %179, i64 noundef %269, i64 noundef %256) #13
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %276, label %266

272:                                              ; preds = %252
  %273 = sext i16 %254 to i32
  br label %276

274:                                              ; preds = %220, %228, %228
  %275 = sext i16 %222 to i32
  br label %276

276:                                              ; preds = %267, %260, %260, %272, %274
  %277 = phi i32 [ %275, %274 ], [ %273, %272 ], [ 0, %260 ], [ 0, %260 ], [ -2, %267 ]
  %278 = icmp sgt i32 %277, -1
  %279 = and i1 %29, %278
  br i1 %279, label %195, label %280, !llvm.loop !45

280:                                              ; preds = %229, %276
  %281 = phi i32 [ %277, %276 ], [ -2, %229 ]
  %282 = call i32 @fclose(ptr noundef nonnull %30)
  %283 = icmp slt i32 %281, -1
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = call i32 @write_error(ptr noundef nonnull %179) #13
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %284, %280
  %288 = call i32 @fclose(ptr noundef nonnull %179)
  br label %309

289:                                              ; preds = %284
  %290 = call i32 @fclose(ptr noundef nonnull %179)
  br i1 %123, label %291, label %305

291:                                              ; preds = %289, %298
  call void @force_extension(ptr noundef nonnull %17, ptr noundef nonnull @ASC_EXTENSION) #13
  %292 = call zeroext i8 @file_exists(ptr noundef nonnull %17) #13
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = call ptr @ck_dup_output(ptr noundef nonnull %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  call void @user_error() #13
  br label %298

298:                                              ; preds = %297, %294
  %299 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %295) #13
  br i1 %293, label %300, label %291

300:                                              ; preds = %291, %298
  %301 = xor i1 %29, true
  %302 = zext i1 %301 to i8
  %303 = call i32 @armor_file(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef null, i8 noundef zeroext %302) #13
  call void @rmtemp(ptr noundef %131) #13
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %300, %289
  %306 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %307 = call ptr @LANG(ptr noundef nonnull @.str.90) #13
  %308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef %307, ptr noundef nonnull %130)
  br label %309

309:                                              ; preds = %300, %116, %106, %305, %287, %189, %174, %155, %93, %49, %32
  %310 = phi i32 [ -1, %32 ], [ -1, %93 ], [ -1, %189 ], [ -1, %287 ], [ 0, %305 ], [ -1, %174 ], [ -1, %155 ], [ 1, %49 ], [ -1, %106 ], [ -1, %116 ], [ -1, %300 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  ret i32 %310
}

declare ptr @ck_dup_output(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare void @user_error() local_unnamed_addr #6

declare i32 @armor_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @rmtemp(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dokeyedit(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [130 x i16], align 16
  %4 = alloca [130 x i16], align 16
  %5 = alloca [130 x i16], align 16
  %6 = alloca [130 x i16], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca [8 x i8], align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [16 x i8], align 16
  %21 = alloca i8, align 1
  %22 = alloca %struct.IdeaCfbContext, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  store i32 0, ptr %18, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #13
  store i32 0, ptr %19, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %22) #13
  %25 = icmp eq ptr %1, null
  br i1 %25, label %305, label %26

26:                                               ; preds = %2
  %27 = load i8, ptr %1, align 1
  %28 = icmp ne i8 %27, 0
  %29 = icmp ne ptr %0, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %305

31:                                               ; preds = %26
  %32 = load i8, ptr %0, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %305, label %34

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @file_exists(ptr noundef nonnull %1) #13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @force_extension(ptr noundef nonnull %1, ptr noundef nonnull @PGP_EXTENSION) #13
  br label %38

38:                                               ; preds = %37, %34
  %39 = tail call ptr @file_tail(ptr noundef nonnull %1) #13
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(12) @.str.91) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @file_tail(ptr noundef nonnull %1) #13
  %44 = tail call ptr @file_tail(ptr noundef nonnull @globalSecringName) #13
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %44) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42, %38
  %48 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %49 = tail call ptr @LANG(ptr noundef nonnull @.str.92) #13
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef %49)
  %51 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @globalPubringName) #13
  br label %52

52:                                               ; preds = %47, %42
  %53 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %0) #13
  %54 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %55 = call ptr @LANG(ptr noundef nonnull @.str.93) #13
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef %55, ptr noundef nonnull %10, ptr noundef nonnull %1)
  %57 = call zeroext i8 @file_exists(ptr noundef nonnull %1) #13
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %61 = call ptr @LANG(ptr noundef nonnull @.str.94) #13
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef %61, ptr noundef nonnull %1)
  br label %305

63:                                               ; preds = %52
  %64 = call i32 @getpublickey(i32 noundef 3, ptr noundef nonnull %1, ptr noundef nonnull %16, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !28
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %68 = call ptr @LANG(ptr noundef nonnull @.str.65) #13
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef %68, ptr noundef nonnull %1)
  br label %305

70:                                               ; preds = %63
  %71 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.31)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %75 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef %75, ptr noundef nonnull %1)
  br label %305

77:                                               ; preds = %70
  %78 = call i64 @fread(ptr noundef nonnull %15, i64 noundef 1, i64 noundef 1, ptr noundef %71)
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8, ptr %15, align 1, !tbaa !5
  %82 = and i8 %81, 124
  %83 = icmp eq i8 %82, 24
  br i1 %83, label %89, label %84

84:                                               ; preds = %80, %77
  %85 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %86 = call ptr @LANG(ptr noundef nonnull @.str.95) #13
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef %86, ptr noundef nonnull %1)
  %88 = call i32 @fclose(ptr noundef %71)
  br label %305

89:                                               ; preds = %80
  %90 = load i64, ptr %16, align 8, !tbaa !21
  %91 = call i32 @fseek(ptr noundef %71, i64 noundef %90, i32 noundef 0)
  %92 = call i32 @is_compromised(ptr noundef %71), !range !17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %96 = call ptr @LANG(ptr noundef nonnull @.str.96) #13
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef %96)
  %98 = call i32 @fclose(ptr noundef %71)
  br label %305

99:                                               ; preds = %89
  %100 = load i64, ptr %16, align 8, !tbaa !21
  %101 = load i32, ptr %18, align 4, !tbaa !19
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @fseek(ptr noundef %71, i64 noundef %103, i32 noundef 0)
  %105 = call i32 @read_trust(ptr noundef %71, ptr noundef nonnull %21) #13
  %106 = icmp slt i32 %105, 0
  %107 = select i1 %106, i64 -1, i64 %103
  call void @extract_keyID(ptr noundef nonnull %13, ptr noundef nonnull %3)
  %108 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @globalSecringName) #13
  %109 = call zeroext i8 @file_exists(ptr noundef nonnull %9) #13
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %99
  %112 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %113 = call ptr @LANG(ptr noundef nonnull @.str.97) #13
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef %113, ptr noundef nonnull %9)
  %115 = call i32 @fclose(ptr noundef %71)
  br label %305

116:                                              ; preds = %99
  %117 = call i32 @getpublickey(i32 noundef 33, ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !28
  %118 = call i32 @getsecretkey(i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %20, ptr noundef nonnull %14, ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %116
  %121 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %122 = call ptr @LANG(ptr noundef nonnull @.str.98) #13
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef %122)
  %124 = icmp slt i64 %107, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %127 = call ptr @LANG(ptr noundef nonnull @.str.95) #13
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef %127, ptr noundef nonnull %1)
  %129 = call i32 @fclose(ptr noundef %71)
  br label %305

130:                                              ; preds = %120
  %131 = load i64, ptr %16, align 8, !tbaa !21
  %132 = call i32 @show_key(ptr noundef %71, i64 noundef %131, i32 noundef 3) #13
  call void @init_trust_lst() #13
  %133 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %134 = call ptr @LANG(ptr noundef nonnull @.str.99) #13
  %135 = load i8, ptr %21, align 1, !tbaa !5
  %136 = and i8 %135, 7
  %137 = zext nneg i8 %136 to i64
  %138 = getelementptr inbounds [8 x [16 x i8]], ptr @trust_lst, i64 0, i64 %137
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef %134, ptr noundef nonnull %138)
  call void @PascalToC(ptr noundef nonnull %10) #13
  %140 = load i8, ptr %21, align 1, !tbaa !5
  %141 = call i32 @ask_owntrust(ptr noundef nonnull %10, i8 noundef zeroext %140) #13
  %142 = load i8, ptr %21, align 1, !tbaa !5
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 7
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %130
  %147 = call i32 @fclose(ptr noundef %71)
  br label %305

148:                                              ; preds = %130
  %149 = icmp ugt i32 %141, 6
  br i1 %149, label %150, label %152

150:                                              ; preds = %148
  %151 = call i32 @fclose(ptr noundef %71)
  br label %305

152:                                              ; preds = %148
  %153 = and i32 %143, 248
  %154 = or disjoint i32 %153, %141
  %155 = trunc i32 %154 to i8
  store i8 %155, ptr %21, align 1, !tbaa !5
  %156 = call i32 @fseek(ptr noundef %71, i64 noundef %107, i32 noundef 0)
  %157 = load i8, ptr %21, align 1, !tbaa !5
  call void @write_trust(ptr noundef %71, i8 noundef zeroext %157)
  %158 = call i32 @fclose(ptr noundef %71)
  %159 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %160 = call ptr @LANG(ptr noundef nonnull @.str.100) #13
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef %160)
  br label %305

162:                                              ; preds = %116
  %163 = icmp sgt i64 %107, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %162
  %165 = load i8, ptr %21, align 1, !tbaa !5
  %166 = and i8 %165, -121
  %167 = icmp eq i8 %166, -121
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %170 = call ptr @LANG(ptr noundef nonnull @.str.101) #13
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef %170, ptr noundef nonnull %10)
  %172 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %168
  %175 = call i32 @fseek(ptr noundef %71, i64 noundef %107, i32 noundef 0)
  store i8 -121, ptr %21, align 1, !tbaa !5
  call void @write_trust(ptr noundef %71, i8 noundef zeroext -121)
  br label %176

176:                                              ; preds = %168, %174, %164, %162
  call void @PascalToC(ptr noundef nonnull %10) #13
  %177 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %178 = call ptr @LANG(ptr noundef nonnull @.str.102) #13
  %179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef %178, ptr noundef nonnull %10)
  call void @CToPascal(ptr noundef nonnull %10) #13
  %180 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %181 = call ptr @LANG(ptr noundef nonnull @.str.103) #13
  %182 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef %181)
  %183 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %225, label %185

185:                                              ; preds = %176
  %186 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %187 = call ptr @LANG(ptr noundef nonnull @.str.104) #13
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef %187)
  %189 = call i32 @getstring(ptr noundef nonnull %10, i32 noundef 255, i32 noundef 1) #13
  %190 = load i8, ptr %10, align 16, !tbaa !5
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = call i32 @fclose(ptr noundef %71)
  br label %305

194:                                              ; preds = %185
  %195 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %196 = call ptr @LANG(ptr noundef nonnull @.str.105) #13
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef %196)
  %198 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  %201 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #13
  %202 = load i64, ptr %16, align 8, !tbaa !21
  %203 = call i32 @getpubuserid(ptr noundef nonnull %1, i64 noundef %202, ptr noundef nonnull %11, ptr noundef nonnull %24, ptr noundef nonnull %23, i8 noundef zeroext 0), !range !28
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  %206 = call i32 @fclose(ptr noundef %71)
  br label %210

207:                                              ; preds = %200
  %208 = load i64, ptr %24, align 8, !tbaa !21
  %209 = call i32 @fseek(ptr noundef %71, i64 noundef %208, i32 noundef 0)
  br label %210

210:                                              ; preds = %207, %205
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #13
  br i1 %204, label %214, label %305

211:                                              ; preds = %194
  %212 = load i64, ptr %16, align 8, !tbaa !21
  %213 = call i32 @fseek(ptr noundef %71, i64 noundef %212, i32 noundef 0)
  br label %214

214:                                              ; preds = %210, %211
  %215 = call signext i16 @nextkeypacket(ptr noundef %71, ptr noundef nonnull %15), !range !46
  br label %216

216:                                              ; preds = %223, %214
  %217 = call i64 @ftell(ptr noundef %71)
  %218 = call signext i16 @nextkeypacket(ptr noundef %71, ptr noundef nonnull %15), !range !46
  %219 = icmp sgt i16 %218, -1
  %220 = load i8, ptr %15, align 1
  %221 = icmp ne i8 %220, -76
  %222 = select i1 %219, i1 %221, i1 false
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  switch i8 %220, label %216 [
    i8 -103, label %224
    i8 -107, label %224
  ]

224:                                              ; preds = %223, %223, %216
  call void @CToPascal(ptr noundef nonnull %10) #13
  br label %225

225:                                              ; preds = %224, %176
  %226 = phi i8 [ 1, %224 ], [ 0, %176 ]
  %227 = phi i64 [ %217, %224 ], [ undef, %176 ]
  %228 = call i32 @fclose(ptr noundef %71)
  %229 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %230 = call ptr @LANG(ptr noundef nonnull @.str.106) #13
  %231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef %230)
  %232 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %225
  %235 = call i32 @GetHashedPassPhrase(ptr noundef nonnull %20, i8 noundef zeroext 2) #13
  %236 = icmp sgt i32 %235, 0
  %237 = zext i1 %236 to i8
  store i8 %237, ptr %14, align 1, !tbaa !5
  br label %238

238:                                              ; preds = %234, %225
  %239 = phi i8 [ 1, %234 ], [ %226, %225 ]
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %243 = call ptr @LANG(ptr noundef nonnull @.str.107) #13
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef %243)
  %245 = load i8, ptr %14, align 1, !tbaa !5
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %298, label %247

247:                                              ; preds = %241
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %298

248:                                              ; preds = %238
  %249 = load i8, ptr %14, align 1, !tbaa !5
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %248
  call void @ideaCfbInit(ptr noundef nonnull %22, ptr noundef nonnull %20) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %252

252:                                              ; preds = %251, %248
  %253 = call ptr @tempfile(i32 noundef 5) #13
  %254 = load i8, ptr %14, align 1, !tbaa !5
  %255 = icmp eq i8 %254, 0
  %256 = select i1 %255, ptr null, ptr %22
  %257 = load i64, ptr %12, align 8, !tbaa !21
  call fastcc void @writekeyfile(ptr noundef %253, ptr noundef %256, i64 noundef %257, ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %258 = load i8, ptr %14, align 1, !tbaa !5
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %252
  call void @ideaCfbDestroy(ptr noundef nonnull %22) #13
  br label %261

261:                                              ; preds = %260, %252
  br i1 %184, label %262, label %269

262:                                              ; preds = %261
  %263 = call noalias ptr @fopen(ptr noundef %253, ptr noundef nonnull @.str.7)
  %264 = icmp eq ptr %263, null
  br i1 %264, label %304, label %265

265:                                              ; preds = %262
  %266 = call signext i16 @nextkeypacket(ptr noundef nonnull %263, ptr noundef nonnull %15), !range !46
  %267 = call i64 @ftell(ptr noundef nonnull %263)
  %268 = call i32 @fclose(ptr noundef nonnull %263)
  br label %269

269:                                              ; preds = %261, %265
  %270 = phi i64 [ %267, %265 ], [ -1, %261 ]
  %271 = load i64, ptr %17, align 8, !tbaa !21
  %272 = load i32, ptr %19, align 4, !tbaa !19
  %273 = call fastcc i32 @merge_key_to_ringfile(ptr noundef %253, ptr noundef nonnull %9, i64 noundef %271, i32 noundef %272, i64 noundef %270), !range !47
  %274 = icmp slt i32 %273, 0
  %275 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %274, label %299, label %276

276:                                              ; preds = %269
  %277 = call ptr @LANG(ptr noundef nonnull @.str.109) #13
  %278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef %277)
  br i1 %184, label %293, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @insert_userid(ptr noundef nonnull %1, ptr noundef nonnull %10, i64 noundef %227)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br label %299

284:                                              ; preds = %279
  %285 = load i8, ptr @sign_new_userids, align 1, !tbaa !5
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %284
  call void @PascalToC(ptr noundef nonnull %10) #13
  %288 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %10) #13
  %289 = load i64, ptr %16, align 8, !tbaa !21
  %290 = load i32, ptr %18, align 4, !tbaa !19
  %291 = call i32 @do_sign(ptr noundef nonnull %1, i64 noundef %289, i32 noundef %290, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %11, i8 noundef zeroext 1) #13
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %276, %284, %287
  %294 = phi ptr [ @.str.100, %287 ], [ @.str.100, %284 ], [ @.str.111, %276 ]
  %295 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %296 = call ptr @LANG(ptr noundef nonnull %294) #13
  %297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef %296)
  call void @rmtemp(ptr noundef %253) #13
  br label %298

298:                                              ; preds = %241, %247, %293
  call void @mp_init(ptr noundef nonnull %5, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %6, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %7, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %8, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %4, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %3, i16 noundef zeroext 0) #13
  br label %305

299:                                              ; preds = %269, %282
  %300 = phi ptr [ @.str.110, %282 ], [ @.str.108, %269 ]
  %301 = phi ptr [ %283, %282 ], [ %275, %269 ]
  %302 = call ptr @LANG(ptr noundef nonnull %300) #13
  %303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef %302)
  br label %304

304:                                              ; preds = %299, %262
  call void @mp_init(ptr noundef nonnull %5, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %6, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %7, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %8, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %4, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %3, i16 noundef zeroext 0) #13
  call void @rmtemp(ptr noundef %253) #13
  br label %305

305:                                              ; preds = %287, %125, %146, %150, %152, %2, %26, %31, %210, %304, %298, %192, %111, %94, %84, %73, %66, %59
  %306 = phi i32 [ -1, %66 ], [ -1, %73 ], [ -1, %84 ], [ -1, %94 ], [ -1, %192 ], [ -1, %304 ], [ 0, %298 ], [ -1, %210 ], [ -1, %111 ], [ -1, %59 ], [ -1, %31 ], [ -1, %26 ], [ -1, %2 ], [ -1, %125 ], [ 0, %146 ], [ -1, %150 ], [ 0, %152 ], [ -1, %287 ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #13
  ret i32 %306
}

declare ptr @file_tail(ptr noundef) local_unnamed_addr #6

declare void @init_trust_lst() local_unnamed_addr #6

declare i32 @ask_owntrust(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @writekeyfile(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #4 {
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca [8 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %14 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.62)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %18 = tail call ptr @LANG(ptr noundef nonnull @.str.89) #13
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef %18, ptr noundef %0)
  br label %112

20:                                               ; preds = %10
  %21 = icmp eq ptr %6, null
  %22 = tail call i32 @countbits(ptr noundef %4) #13
  %23 = add nsw i32 %22, 7
  %24 = tail call i32 @countbits(ptr noundef %5) #13
  %25 = add nsw i32 %24, 7
  br i1 %21, label %26, label %30

26:                                               ; preds = %20
  %27 = lshr i32 %23, 3
  %28 = lshr i32 %25, 3
  %29 = add nuw nsw i32 %28, %27
  br label %53

30:                                               ; preds = %20
  %31 = ashr i32 %23, 3
  %32 = ashr i32 %25, 3
  %33 = icmp eq ptr %1, null
  %34 = tail call i32 @countbits(ptr noundef nonnull %6) #13
  %35 = add nsw i32 %34, 7
  %36 = lshr i32 %35, 3
  %37 = tail call i32 @countbits(ptr noundef %7) #13
  %38 = add nsw i32 %37, 7
  %39 = lshr i32 %38, 3
  %40 = tail call i32 @countbits(ptr noundef %8) #13
  %41 = add nsw i32 %40, 7
  %42 = lshr i32 %41, 3
  %43 = tail call i32 @countbits(ptr noundef %9) #13
  %44 = add nsw i32 %43, 7
  %45 = lshr i32 %44, 3
  %46 = select i1 %33, i32 21, i32 29
  %47 = add nsw i32 %46, %31
  %48 = add nsw i32 %47, %32
  %49 = add nsw i32 %48, %36
  %50 = add nsw i32 %49, %39
  %51 = add i32 %50, %42
  %52 = add i32 %51, %45
  br label %53

53:                                               ; preds = %30, %26
  %54 = phi i32 [ %52, %30 ], [ %29, %26 ]
  %55 = phi i16 [ 2, %30 ], [ 12, %26 ]
  %56 = phi i8 [ -107, %30 ], [ -103, %26 ]
  %57 = trunc i32 %54 to i16
  %58 = add i16 %55, %57
  store i16 %58, ptr %12, align 2, !tbaa !11
  %59 = sext i8 %56 to i32
  %60 = tail call i32 @fputc(i32 %59, ptr %14)
  call void @hiloswap(ptr noundef nonnull %12, i16 noundef signext 2) #13
  %61 = call i64 @fwrite(ptr noundef nonnull %12, i64 noundef 1, i64 noundef 2, ptr noundef %14)
  %62 = load i32, ptr @version_byte, align 4, !tbaa !19
  %63 = shl i32 %62, 24
  %64 = ashr exact i32 %63, 24
  %65 = call i32 @fputc(i32 %64, ptr %14)
  %66 = trunc i64 %2 to i32
  store i32 %66, ptr %13, align 4
  call void @hiloswap(ptr noundef nonnull %13, i16 noundef signext 4) #13
  %67 = call i64 @fwrite(ptr noundef nonnull %13, i64 noundef 1, i64 noundef 4, ptr noundef %14)
  store i16 0, ptr %11, align 2, !tbaa !11
  %68 = call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 1, i64 noundef 2, ptr noundef %14)
  %69 = call i32 @fputc(i32 1, ptr %14)
  call void @write_mpi(ptr noundef %4, ptr noundef %14, ptr noundef null) #13
  call void @write_mpi(ptr noundef %5, ptr noundef %14, ptr noundef null) #13
  %70 = and i8 %56, 28
  %71 = icmp eq i8 %70, 20
  br i1 %71, label %72, label %87

72:                                               ; preds = %53
  %73 = icmp ne ptr %1, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @putc(i32 noundef %74, ptr noundef %14)
  br i1 %73, label %76, label %85

76:                                               ; preds = %72, %76
  %77 = phi i64 [ %81, %76 ], [ 0, %72 ]
  %78 = call i32 @trueRandByte() #13
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 %77
  store i8 %79, ptr %80, align 1, !tbaa !5
  %81 = add nuw nsw i64 %77, 1
  %82 = icmp eq i64 %81, 8
  br i1 %82, label %83, label %76, !llvm.loop !48

83:                                               ; preds = %76
  call void @ideaCfbEncrypt(ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef nonnull %13, i32 noundef 8) #13
  %84 = call i64 @fwrite(ptr noundef nonnull %13, i64 noundef 1, i64 noundef 8, ptr noundef %14)
  br label %85

85:                                               ; preds = %83, %72
  store i16 0, ptr @mpi_checksum, align 2, !tbaa !11
  call void @write_mpi(ptr noundef %6, ptr noundef %14, ptr noundef %1) #13
  call void @write_mpi(ptr noundef %7, ptr noundef %14, ptr noundef %1) #13
  call void @write_mpi(ptr noundef %8, ptr noundef %14, ptr noundef %1) #13
  call void @write_mpi(ptr noundef %9, ptr noundef %14, ptr noundef %1) #13
  call void @hiloswap(ptr noundef nonnull @mpi_checksum, i16 noundef signext 2) #13
  %86 = call i64 @fwrite(ptr noundef nonnull @mpi_checksum, i64 noundef 1, i64 noundef 2, ptr noundef %14)
  br label %91

87:                                               ; preds = %53
  %88 = call i32 @putc(i32 noundef 176, ptr noundef %14)
  %89 = call i32 @putc(i32 noundef 1, ptr noundef %14)
  %90 = call i32 @putc(i32 noundef 135, ptr noundef %14)
  br label %91

91:                                               ; preds = %87, %85
  %92 = call i32 @fputc(i32 -76, ptr %14)
  %93 = load i8, ptr %3, align 1, !tbaa !5
  %94 = zext i8 %93 to i64
  %95 = add nuw nsw i64 %94, 1
  %96 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef %95, ptr noundef %14)
  br i1 %21, label %97, label %101

97:                                               ; preds = %91
  %98 = call i32 @putc(i32 noundef 176, ptr noundef %14)
  %99 = call i32 @putc(i32 noundef 1, ptr noundef %14)
  %100 = call i32 @putc(i32 noundef 3, ptr noundef %14)
  br label %101

101:                                              ; preds = %97, %91
  %102 = call i32 @write_error(ptr noundef %14) #13
  %103 = icmp ne i32 %102, 0
  %104 = call i32 @fclose(ptr noundef %14)
  %105 = load i8, ptr @verbose, align 1
  %106 = icmp eq i8 %105, 0
  %107 = select i1 %103, i1 true, i1 %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %110 = call i32 @countbits(ptr noundef %4) #13
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.137, i32 noundef %110, ptr noundef nonnull @.str.139, ptr noundef %0)
  br label %112

112:                                              ; preds = %101, %108, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @merge_key_to_ringfile(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #4 {
  tail call void @setoutdir(ptr noundef %1) #13
  %6 = tail call ptr @tempfile(i32 noundef 1) #13
  %7 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.7)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = tail call noalias ptr @fopen(ptr noundef %6, ptr noundef nonnull @.str.62)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @fclose(ptr noundef nonnull %7)
  br label %35

14:                                               ; preds = %9
  %15 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call i32 @fclose(ptr noundef nonnull %7)
  %19 = tail call i32 @fclose(ptr noundef nonnull %10)
  br label %35

20:                                               ; preds = %14
  %21 = tail call i32 @copyfile(ptr noundef nonnull %7, ptr noundef nonnull %10, i64 noundef %2) #13
  %22 = tail call i32 @copyfile(ptr noundef nonnull %15, ptr noundef nonnull %10, i64 noundef %4) #13
  %23 = sext i32 %3 to i64
  %24 = add nsw i64 %23, %2
  %25 = tail call i32 @copyfilepos(ptr noundef nonnull %7, ptr noundef nonnull %10, i64 noundef -1, i64 noundef %24) #13
  %26 = tail call i32 @fclose(ptr noundef nonnull %7)
  %27 = tail call i32 @write_error(ptr noundef nonnull %10) #13
  %28 = tail call i32 @fclose(ptr noundef nonnull %10)
  %29 = tail call i32 @fclose(ptr noundef nonnull %15)
  %30 = icmp ne i32 %27, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = tail call i32 @savetempbak(ptr noundef %6, ptr noundef %1) #13
  br label %33

33:                                               ; preds = %31, %20
  %34 = sext i1 %30 to i32
  br label %35

35:                                               ; preds = %5, %33, %17, %12
  %36 = phi i32 [ -1, %12 ], [ -1, %17 ], [ %34, %33 ], [ -1, %5 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insert_userid(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #4 {
  %4 = tail call ptr @tempfile(i32 noundef 4) #13
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = tail call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.62)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @fclose(ptr noundef nonnull %5)
  br label %29

12:                                               ; preds = %7
  %13 = tail call i32 @copyfile(ptr noundef nonnull %5, ptr noundef nonnull %8, i64 noundef %2) #13
  %14 = tail call i32 @putc(i32 noundef 180, ptr noundef nonnull %8)
  %15 = load i8, ptr %1, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = tail call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 1, i64 noundef %17, ptr noundef nonnull %8)
  %19 = tail call i32 @putc(i32 noundef 176, ptr noundef nonnull %8)
  %20 = tail call i32 @putc(i32 noundef 1, ptr noundef nonnull %8)
  %21 = tail call i32 @putc(i32 noundef 3, ptr noundef nonnull %8)
  %22 = tail call i32 @copyfile(ptr noundef nonnull %5, ptr noundef nonnull %8, i64 noundef -1) #13
  %23 = tail call i32 @fclose(ptr noundef nonnull %5)
  %24 = tail call i32 @write_error(ptr noundef nonnull %8) #13
  %25 = icmp eq i32 %24, 0
  %26 = tail call i32 @fclose(ptr noundef nonnull %8)
  br i1 %25, label %27, label %29

27:                                               ; preds = %12
  %28 = tail call i32 @savetempbak(ptr noundef %4, ptr noundef %0) #13
  br label %29

29:                                               ; preds = %12, %3, %27, %10
  %30 = phi i32 [ -1, %10 ], [ %28, %27 ], [ -1, %3 ], [ -1, %12 ]
  ret i32 %30
}

declare i32 @do_sign(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @disable_key(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [262 x i8], align 16
  %4 = alloca i8, align 1
  %5 = alloca [8 x i8], align 1
  %6 = alloca [256 x i8], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #13
  %12 = call i32 @getpublickey(i32 noundef 10, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8), !range !28
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %90, label %14

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %15 = call signext i16 @reg2mpi(ptr noundef nonnull %3, ptr noundef nonnull %7) #13
  %16 = call signext i16 @reg2mpi(ptr noundef nonnull %3, ptr noundef nonnull %7) #13
  %17 = add i16 %16, -6
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i64 [ 0, %14 ], [ %25, %18 ]
  %20 = phi i16 [ %17, %14 ], [ %21, %18 ]
  %21 = add i16 %20, 1
  %22 = sext i16 %20 to i64
  %23 = getelementptr inbounds [262 x i8], ptr %3, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = add nuw nsw i64 %19, 1
  %26 = getelementptr inbounds i8, ptr %5, i64 %19
  store i8 %24, ptr %26, align 1, !tbaa !5
  %27 = icmp eq i64 %25, 8
  br i1 %27, label %28, label %18, !llvm.loop !10

28:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %3) #13
  %29 = call i32 @getsecretkey(i32 noundef 1, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  call void @PascalToC(ptr noundef nonnull %6) #13
  %32 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %33 = call ptr @LANG(ptr noundef nonnull @.str.112) #13
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef %33, ptr noundef nonnull %6)
  %35 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 @compromise(ptr noundef nonnull %5, ptr noundef %1) #13
  br label %90

39:                                               ; preds = %31, %28
  %40 = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.31)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %44 = call ptr @LANG(ptr noundef nonnull @.str.26) #13
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef %44, ptr noundef %1)
  br label %90

46:                                               ; preds = %39
  %47 = load i64, ptr %9, align 8, !tbaa !21
  %48 = load i32, ptr %10, align 4, !tbaa !19
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @fseek(ptr noundef nonnull %40, i64 noundef %50, i32 noundef 0)
  %52 = call i32 @read_trust(ptr noundef nonnull %40, ptr noundef nonnull %4) #13
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %56 = call ptr @LANG(ptr noundef nonnull @.str.95) #13
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef %56, ptr noundef %1)
  %58 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %59 = call ptr @LANG(ptr noundef nonnull @.str.113) #13
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef %59)
  %61 = call i32 @fclose(ptr noundef nonnull %40)
  br label %90

62:                                               ; preds = %46
  %63 = load i8, ptr %4, align 1, !tbaa !5
  %64 = and i8 %63, 32
  %65 = icmp eq i8 %64, 0
  %66 = load ptr, ptr @pgpout, align 8, !tbaa !13
  br i1 %65, label %72, label %67

67:                                               ; preds = %62
  %68 = call ptr @LANG(ptr noundef nonnull @.str.114) #13
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef %68)
  %70 = load i8, ptr %4, align 1, !tbaa !5
  %71 = and i8 %70, -33
  br label %77

72:                                               ; preds = %62
  %73 = call ptr @LANG(ptr noundef nonnull @.str.115) #13
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef %73)
  %75 = load i8, ptr %4, align 1, !tbaa !5
  %76 = or i8 %75, 32
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i8 [ %76, %72 ], [ %71, %67 ]
  store i8 %78, ptr %4, align 1, !tbaa !5
  %79 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @fclose(ptr noundef nonnull %40)
  br label %90

83:                                               ; preds = %77
  %84 = load i8, ptr %4, align 1, !tbaa !5
  %85 = load i64, ptr %9, align 8, !tbaa !21
  %86 = load i32, ptr %10, align 4, !tbaa !19
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  call void @write_trust_pos(ptr noundef nonnull %40, i8 noundef zeroext %84, i64 noundef %88) #13
  %89 = call i32 @fclose(ptr noundef nonnull %40)
  br label %90

90:                                               ; preds = %2, %83, %81, %54, %42, %37
  %91 = phi i32 [ %38, %37 ], [ -1, %42 ], [ -1, %54 ], [ 0, %83 ], [ -1, %81 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %91
}

declare i32 @compromise(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dokeygen(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #4 {
  %4 = alloca [262 x i8], align 16
  %5 = alloca [262 x i8], align 16
  %6 = alloca [8 x i8], align 1
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca [130 x i16], align 16
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  %12 = alloca [130 x i16], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca %struct.IdeaCfbContext, align 4
  %16 = alloca [8 x i8], align 1
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %21 = icmp eq ptr %0, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i8, ptr %0, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22, %3
  %26 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %27 = tail call i32 @fputc(i32 10, ptr %26)
  %28 = tail call ptr @LANG(ptr noundef nonnull @.str.116) #13
  %29 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %30 = tail call i32 @fputs(ptr noundef %28, ptr noundef %29)
  %31 = call i32 @getstring(ptr noundef nonnull %13, i32 noundef 5, i32 noundef 1) #13
  br label %32

32:                                               ; preds = %25, %22
  %33 = phi ptr [ %13, %25 ], [ %0, %22 ]
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = add i8 %34, -48
  %36 = icmp ult i8 %35, 10
  br i1 %36, label %37, label %49

37:                                               ; preds = %32, %37
  %38 = phi i8 [ %46, %37 ], [ %34, %32 ]
  %39 = phi ptr [ %42, %37 ], [ %33, %32 ]
  %40 = phi i16 [ %45, %37 ], [ 0, %32 ]
  %41 = mul i16 %40, 10
  %42 = getelementptr inbounds i8, ptr %39, i64 1
  %43 = add nsw i8 %38, -48
  %44 = zext nneg i8 %43 to i16
  %45 = add i16 %41, %44
  %46 = load i8, ptr %42, align 1, !tbaa !5
  %47 = add i8 %46, -48
  %48 = icmp ult i8 %47, 10
  br i1 %48, label %37, label %49, !llvm.loop !49

49:                                               ; preds = %37, %32
  %50 = phi i16 [ 0, %32 ], [ %45, %37 ]
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %237, label %52

52:                                               ; preds = %49
  %53 = icmp eq i16 %50, 1
  %54 = select i1 %53, i16 512, i16 %50
  %55 = icmp eq i16 %54, 2
  %56 = select i1 %55, i16 768, i16 %54
  %57 = icmp eq i16 %56, 3
  %58 = call i16 @llvm.smax.i16(i16 %56, i16 384)
  %59 = call i16 @llvm.umin.i16(i16 %58, i16 2048)
  %60 = select i1 %57, i16 1024, i16 %59
  %61 = load i8, ptr %1, align 1, !tbaa !5
  %62 = add i8 %61, -48
  %63 = icmp ult i8 %62, 10
  br i1 %63, label %64, label %76

64:                                               ; preds = %52, %64
  %65 = phi i8 [ %73, %64 ], [ %61, %52 ]
  %66 = phi ptr [ %69, %64 ], [ %1, %52 ]
  %67 = phi i16 [ %72, %64 ], [ 0, %52 ]
  %68 = mul i16 %67, 10
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  %70 = add nsw i8 %65, -48
  %71 = zext nneg i8 %70 to i16
  %72 = add i16 %68, %71
  %73 = load i8, ptr %69, align 1, !tbaa !5
  %74 = add i8 %73, -48
  %75 = icmp ult i8 %74, 10
  br i1 %75, label %64, label %76, !llvm.loop !50

76:                                               ; preds = %64, %52
  %77 = phi i16 [ 0, %52 ], [ %72, %64 ]
  %78 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %79 = call i32 @fputc(i32 10, ptr %78)
  %80 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %81 = call ptr @LANG(ptr noundef nonnull @.str.117) #13
  %82 = zext nneg i16 %60 to i32
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef %81, i32 noundef %82)
  %84 = icmp eq ptr %2, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i8, ptr %2, align 1, !tbaa !5
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85, %76
  %89 = call ptr @LANG(ptr noundef nonnull @.str.118) #13
  %90 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %91 = call i32 @fputs(ptr noundef %89, ptr noundef %90)
  %92 = call i32 @getstring(ptr noundef nonnull %13, i32 noundef 255, i32 noundef 1) #13
  %93 = load i8, ptr %13, align 16, !tbaa !5
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %237, label %99

95:                                               ; preds = %85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) %13, ptr noundef nonnull align 1 dereferenceable(255) %2, i64 255, i1 false)
  %96 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %97 = call ptr @LANG(ptr noundef nonnull @.str.119) #13
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef %97, ptr noundef nonnull %13)
  br label %99

99:                                               ; preds = %88, %95
  call void @CToPascal(ptr noundef nonnull %13) #13
  %100 = call ptr @LANG(ptr noundef nonnull @.str.120) #13
  %101 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %102 = call i32 @fputs(ptr noundef %100, ptr noundef %101)
  %103 = call i32 @GetHashedPassPhrase(ptr noundef nonnull %14, i8 noundef zeroext 2) #13
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #15
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.hashedpw, ptr %106, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 16 dereferenceable(16) %14, i64 16, i1 false)
  %110 = load ptr, ptr @keypasswds, align 8, !tbaa !13
  store ptr %110, ptr %106, align 8, !tbaa !30
  store ptr %106, ptr @keypasswds, align 8, !tbaa !13
  br label %111

111:                                              ; preds = %108, %105
  call void @ideaCfbInit(ptr noundef nonnull %15, ptr noundef nonnull %14) #13
  call void @trueRandAccumLater(i32 noundef 64) #13
  br label %112

112:                                              ; preds = %111, %99
  %113 = call i32 @cryptRandOpen(ptr noundef null) #13
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @trueRandAccumLater(i32 noundef 192) #13
  br label %116

116:                                              ; preds = %115, %112
  %117 = call ptr @LANG(ptr noundef nonnull @.str.121) #13
  %118 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %119 = call i32 @fputs(ptr noundef %117, ptr noundef %118)
  %120 = call i32 @rsa_keygen(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i16 noundef signext %60, i16 noundef signext %77) #13
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = call ptr @LANG(ptr noundef nonnull @.str.122) #13
  %124 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %125 = call i32 @fputs(ptr noundef %123, ptr noundef %124)
  br label %237

126:                                              ; preds = %116
  %127 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %128 = call i32 @putc(i32 noundef 10, ptr noundef %127)
  %129 = load i8, ptr @verbose, align 1, !tbaa !5
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %166, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %133 = call ptr @LANG(ptr noundef nonnull @.str.123) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %5, i8 0, i64 10, i1 false)
  %134 = call signext i16 @reg2mpi(ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %135 = call signext i16 @reg2mpi(ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  %136 = add i16 %135, -6
  br label %137

137:                                              ; preds = %137, %131
  %138 = phi i64 [ 0, %131 ], [ %144, %137 ]
  %139 = phi i16 [ %136, %131 ], [ %140, %137 ]
  %140 = add i16 %139, 1
  %141 = sext i16 %139 to i64
  %142 = getelementptr inbounds [262 x i8], ptr %5, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !5
  %144 = add nuw nsw i64 %138, 1
  %145 = getelementptr inbounds i8, ptr %6, i64 %138
  store i8 %143, ptr %145, align 1, !tbaa !5
  %146 = icmp eq i64 %144, 8
  br i1 %146, label %147, label %137, !llvm.loop !10

147:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %5) #13
  br label %148

148:                                              ; preds = %148, %147
  %149 = phi i64 [ 4, %147 ], [ %156, %148 ]
  %150 = phi ptr [ @keyIDstring.keyIDbuf, %147 ], [ %155, %148 ]
  %151 = getelementptr inbounds i8, ptr %6, i64 %149
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = zext i8 %152 to i32
  %154 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %150, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %153) #13
  %155 = getelementptr inbounds i8, ptr %150, i64 2
  %156 = add nuw nsw i64 %149, 1
  %157 = icmp eq i64 %156, 8
  br i1 %157, label %158, label %148, !llvm.loop !8

158:                                              ; preds = %148
  store i8 0, ptr %155, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef %133, ptr noundef nonnull @keyIDstring.keyIDbuf)
  call void @mp_display(ptr noundef nonnull @.str.124, ptr noundef nonnull %7) #13
  call void @mp_display(ptr noundef nonnull @.str.125, ptr noundef nonnull %8) #13
  %160 = call ptr @LANG(ptr noundef nonnull @.str.126) #13
  %161 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %162 = call i32 @fputs(ptr noundef %160, ptr noundef %161)
  %163 = call zeroext i8 @getyesno(i8 noundef signext 110) #13
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %158
  call void @mp_display(ptr noundef nonnull @.str.127, ptr noundef nonnull %9) #13
  call void @mp_display(ptr noundef nonnull @.str.128, ptr noundef nonnull %10) #13
  call void @mp_display(ptr noundef nonnull @.str.129, ptr noundef nonnull %11) #13
  call void @mp_display(ptr noundef nonnull @.str.130, ptr noundef nonnull %12) #13
  br label %166

166:                                              ; preds = %158, %165, %126
  %167 = call i64 @get_timestamp(ptr noundef null) #13
  %168 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %169 = call i32 @fputc(i32 noundef 7, ptr noundef %168)
  %170 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %171 = call i32 @fflush(ptr noundef %170)
  %172 = call ptr @tempfile(i32 noundef 5) #13
  %173 = select i1 %104, ptr %15, ptr null
  call fastcc void @writekeyfile(ptr noundef %172, ptr noundef %173, i64 noundef %167, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
  call void @mp_init(ptr noundef nonnull %9, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %10, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %11, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %12, i16 noundef zeroext 0) #13
  br i1 %104, label %174, label %175

174:                                              ; preds = %166
  call void @ideaCfbDestroy(ptr noundef nonnull %15) #13
  br label %175

175:                                              ; preds = %174, %166
  %176 = call zeroext i8 @file_exists(ptr noundef nonnull @globalSecringName) #13
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %175
  %179 = call fastcc i32 @merge_key_to_ringfile(ptr noundef %172, ptr noundef nonnull @globalSecringName, i64 noundef 0, i32 noundef 0, i64 noundef -1), !range !47
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %183 = call ptr @LANG(ptr noundef nonnull @.str.108) #13
  %184 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef %183)
  br label %185

185:                                              ; preds = %181, %178
  call void @rmtemp(ptr noundef %172) #13
  br label %189

186:                                              ; preds = %175
  %187 = call ptr @savetemp(ptr noundef %172, ptr noundef nonnull @globalSecringName) #13
  %188 = icmp ne ptr %187, null
  br label %189

189:                                              ; preds = %186, %185
  %190 = phi i1 [ %180, %185 ], [ %188, %186 ]
  br i1 %190, label %191, label %206

191:                                              ; preds = %189
  %192 = call ptr @tempfile(i32 noundef 5) #13
  call fastcc void @writekeyfile(ptr noundef %192, ptr noundef null, i64 noundef %167, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %193 = call zeroext i8 @file_exists(ptr noundef nonnull @globalPubringName) #13
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = call fastcc i32 @merge_key_to_ringfile(ptr noundef %192, ptr noundef nonnull @globalPubringName, i64 noundef 0, i32 noundef 0, i64 noundef -1), !range !47
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %200 = call ptr @LANG(ptr noundef nonnull @.str.110) #13
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %199, ptr noundef %200)
  br label %202

202:                                              ; preds = %198, %195
  call void @rmtemp(ptr noundef %192) #13
  br label %206

203:                                              ; preds = %191
  %204 = call ptr @savetemp(ptr noundef %192, ptr noundef nonnull @globalPubringName) #13
  %205 = icmp ne ptr %204, null
  br label %206

206:                                              ; preds = %202, %203, %189
  %207 = phi i1 [ %197, %202 ], [ %205, %203 ], [ false, %189 ]
  %208 = load i8, ptr @sign_new_userids, align 1
  %209 = icmp ne i8 %208, 0
  %210 = select i1 %207, i1 %209, i1 false
  br i1 %210, label %211, label %231

211:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #13
  call void @PascalToC(ptr noundef nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 262, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %4, i8 0, i64 10, i1 false)
  %212 = call signext i16 @reg2mpi(ptr noundef nonnull %4, ptr noundef nonnull %7) #13
  %213 = call signext i16 @reg2mpi(ptr noundef nonnull %4, ptr noundef nonnull %7) #13
  %214 = add i16 %213, -6
  br label %215

215:                                              ; preds = %215, %211
  %216 = phi i64 [ 0, %211 ], [ %222, %215 ]
  %217 = phi i16 [ %214, %211 ], [ %218, %215 ]
  %218 = add i16 %217, 1
  %219 = sext i16 %217 to i64
  %220 = getelementptr inbounds [262 x i8], ptr %4, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !5
  %222 = add nuw nsw i64 %216, 1
  %223 = getelementptr inbounds i8, ptr %16, i64 %216
  store i8 %221, ptr %223, align 1, !tbaa !5
  %224 = icmp eq i64 %222, 8
  br i1 %224, label %225, label %215, !llvm.loop !10

225:                                              ; preds = %215
  call void @llvm.lifetime.end.p0(i64 262, ptr nonnull %4) #13
  %226 = call i32 @getpublickey(i32 noundef 1, ptr noundef nonnull @globalPubringName, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %8), !range !28
  call void @PascalToC(ptr noundef nonnull %13) #13
  %227 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %13) #13
  %228 = load i64, ptr %17, align 8, !tbaa !21
  %229 = load i32, ptr %18, align 4, !tbaa !19
  %230 = call i32 @do_sign(ptr noundef nonnull @globalPubringName, i64 noundef %228, i32 noundef %229, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %20, i8 noundef zeroext 1) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  br label %231

231:                                              ; preds = %225, %206
  call void @mp_init(ptr noundef nonnull %8, i16 noundef zeroext 0) #13
  call void @mp_init(ptr noundef nonnull %7, i16 noundef zeroext 0) #13
  br i1 %207, label %232, label %237

232:                                              ; preds = %231
  %233 = call ptr @LANG(ptr noundef nonnull @.str.131) #13
  %234 = load ptr, ptr @pgpout, align 8, !tbaa !13
  %235 = call i32 @fputs(ptr noundef %233, ptr noundef %234)
  br i1 %114, label %237, label %236

236:                                              ; preds = %232
  call void @trueRandConsume(i32 noundef 192) #13
  call void @cryptRandInit(ptr noundef null) #13
  br label %237

237:                                              ; preds = %232, %236, %231, %88, %49, %122
  %238 = phi i32 [ -1, %122 ], [ -1, %49 ], [ -1, %88 ], [ -1, %231 ], [ 0, %236 ], [ 0, %232 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #13
  ret i32 %238
}

declare void @trueRandAccumLater(i32 noundef) local_unnamed_addr #6

declare i32 @cryptRandOpen(ptr noundef) local_unnamed_addr #6

declare i32 @rsa_keygen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #6

declare void @mp_display(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @get_timestamp(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

declare ptr @savetemp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @trueRandConsume(i32 noundef) local_unnamed_addr #6

declare void @cryptRandInit(ptr noundef) local_unnamed_addr #6

declare i32 @to_lower(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare void @write_mpi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @trueRandByte() local_unnamed_addr #6

declare void @ideaCfbEncrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

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
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{i16 -6, i16 1}
!16 = !{i8 0, i8 2}
!17 = !{i32 -1, i32 2}
!18 = distinct !{!18, !9}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = !{i32 -6, i32 1}
!29 = distinct !{!29, !9}
!30 = !{!31, !14, i64 0}
!31 = !{!"hashedpw", !14, i64 0, !6, i64 8}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = !{i32 -5, i32 1}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = !{i16 -3, i16 1}
!47 = !{i32 -1, i32 1}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
