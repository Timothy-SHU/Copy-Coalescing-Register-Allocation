; ModuleID = 'src/keymaint.c'
source_filename = "src/keymaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.newkey = type { [8 x i8], ptr }
%struct.bufpool = type { ptr, [1 x i8] }
%struct.pubkey = type { ptr, ptr, ptr, ptr, [8 x i8], i8, i8 }
%struct.userid = type { ptr, ptr, ptr, ptr, i8 }
%struct.signature = type { ptr, ptr, ptr, ptr, i8 }
%struct.hashent = type { ptr, [8 x i8], ptr }

@marg_min = dso_local local_unnamed_addr global i32 2, align 4
@compl_min = dso_local local_unnamed_addr global i32 1, align 4
@trust_lst = dso_local global [8 x [16 x i8]] [[16 x i8] c"undefined\00\00\00\00\00\00\00", [16 x i8] c"unknown\00\00\00\00\00\00\00\00\00", [16 x i8] c"untrusted\00\00\00\00\00\00\00", [16 x i8] c"<3>\00\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"<4>\00\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"marginal\00\00\00\00\00\00\00\00", [16 x i8] c"complete\00\00\00\00\00\00\00\00", [16 x i8] c"ultimate\00\00\00\00\00\00\00\00"], align 16
@legit_lst = dso_local global [4 x [16 x i8]] [[16 x i8] c"undefined\00\00\00\00\00\00\00", [16 x i8] c"untrusted\00\00\00\00\00\00\00", [16 x i8] c"marginal\00\00\00\00\00\00\00\00", [16 x i8] c"complete\00\00\00\00\00\00\00\00"], align 16
@floppyring = dso_local global [256 x i8] zeroinitializer, align 16
@max_cert_depth = dso_local local_unnamed_addr global i32 4, align 4
@mverbose = internal unnamed_addr global i8 0, align 1
@check_only = internal unnamed_addr global i1 false, align 1
@moreflag = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@floppy_fp = internal unnamed_addr global ptr null, align 8
@pgpout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"\0ACan't open backup key ring file '%s'\0A\00", align 1
@undefined_trust = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\0A%d \22trust parameter(s)\22 need to be changed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Continue with '%s' (Y/n)? \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\0A%d \22trust parameter(s)\22 changed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Update public keyring '%s' (Y/n)? \00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\0A\07Can't open key ring file '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"  KeyID    Trust     Validity  User ID\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%c %s \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1
@trustlst_len = internal unnamed_addr global i32 9, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"  %s %*s \00", align 1
@blankkeyID = external constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@legitlst_len = internal unnamed_addr global i32 9, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%*s  \00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"(KeyID: %s)\0A\00", align 1
@init_trust_lst.initialized = internal unnamed_addr global i1 false, align 4
@filter_mode = external local_unnamed_addr global i8, align 1
@batchmode = external local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [290 x i8] c"\0AMake a determination in your own mind whether this key actually\0Abelongs to the person whom you think it belongs to, based on available\0Aevidence.  If you think it does, then based on your estimate of\0Athat person's integrity and competence in key management, answer\0Athe following question:\0A\00", align 1
@.str.16 = private unnamed_addr constant [146 x i8] c"\0AWould you trust \22%s\22\0Ato act as an introducer and certify other people's public keys to you?\0A(1=I don't know. 2=No. 3=Usually. 4=Yes, always.) ? \00", align 1
@global_precision = external local_unnamed_addr global i16, align 2
@.str.17 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"? \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"%4d/%s %s  \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\0AKey for user ID: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"%d-bit key, key ID %s, created %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Bad key format.\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Unrecognized version.\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Key has been revoked.\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Key is disabled.\0A\00", align 1
@owntrust_msg = internal unnamed_addr constant [8 x ptr] [ptr @.str.11, ptr @.str.11, ptr @.str.71, ptr @.str.11, ptr @.str.11, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 16
@.str.32 = private unnamed_addr constant [19 x i8] c"Also known as: %s\0A\00", align 1
@reltable.show_key = internal unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.show_key to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.show_key to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.show_key to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.77 to i64), i64 ptrtoint (ptr @reltable.show_key to i64)) to i32)], align 4
@reltable.show_key.84 = internal unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.78 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.78 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.79 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.80 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.81 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.82 to i64), i64 ptrtoint (ptr @reltable.show_key.84 to i64)) to i32)], align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"  Certified by: \00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"\0AWarning: keyid %4d/%s %s  has no user id!\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Updated keyID: 0x%s\0A\00", align 1
@hashtbl = internal unnamed_addr global ptr null, align 8
@nkr = internal unnamed_addr global i32 0, align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"nkr < MAXKR\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"src/keymaint.c\00", align 1
@__PRETTY_FUNCTION__.setkrent = private unnamed_addr constant [21 x i8] c"int setkrent(char *)\00", align 1
@globalPubringName = external global [256 x i8], align 16
@krnames = internal unnamed_addr global [8 x ptr] zeroinitializer, align 16
@strleft = internal unnamed_addr global i32 0, align 4
@hashleft = internal unnamed_addr global i32 0, align 4
@hashptr = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [28 x i8] c"store_str: string too long\0A\00", align 1
@strptr = internal unnamed_addr global ptr null, align 8
@totalsize = dso_local local_unnamed_addr global i64 0, align 8
@globalSecringName = external global [256 x i8], align 16
@sec_fp = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [39 x i8] c"\0ACan't open secret key ring file '%s'\0A\00", align 1
@verbose = external local_unnamed_addr global i8, align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"\0APass 1: Looking for the \22ultimately-trusted\22 keys...\0A\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"\0APass 2: Tracing signature chains...\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"\0APass 3: %s keyring...\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"Checking with\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Updating\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"maintenance pass: error exit = %d\0A\00", align 1
@trust_tbl = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@complete_min = internal unnamed_addr global i32 0, align 4
@marginal_min = internal unnamed_addr global i32 0, align 4
@pkhash = internal unnamed_addr global ptr null, align 8
@pklist = internal unnamed_addr global ptr null, align 8
@.str.46 = private unnamed_addr constant [36 x i8] c"Keyring contains duplicate key: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"* %s\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c". %s\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"No ultimately-trusted keys.\0A\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"\0A\07Cannot read from secret keyring.\0A\00", align 1
@.str.53 = private unnamed_addr constant [101 x i8] c"\0A\07WARNING: Public key for user ID: \22%s\22\0Adoes not match the corresponding key in the secret keyring.\0A\00", align 1
@.str.54 = private unnamed_addr constant [69 x i8] c"This is a serious condition, indicating possible keyring tampering.\0A\00", align 1
@.str.55 = private unnamed_addr constant [59 x i8] c"\0AKey for user ID \22%s\22\0Aalso appears in the secret key ring.\00", align 1
@.str.56 = private unnamed_addr constant [58 x i8] c"\0AUse this key as an ultimately-trusted introducer (y/N)? \00", align 1
@.str.57 = private unnamed_addr constant [65 x i8] c"Public key for: \22%s\22\0Ais not present in the backup keyring '%s'.\0A\00", align 1
@.str.58 = private unnamed_addr constant [84 x i8] c"\0A\07WARNING: Secret key for: \22%s\22\0Adoes not match the key in the backup keyring '%s'.\0A\00", align 1
@allocn.ptr = internal unnamed_addr global ptr null, align 8
@nleft = internal unnamed_addr global i32 0, align 4
@.str.60 = private unnamed_addr constant [6 x i8] c"* %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"depth <= max_cert_depth\00", align 1
@__PRETTY_FUNCTION__.trace_sig_chain = private unnamed_addr constant [42 x i8] c"int trace_sig_chain(struct pubkey *, int)\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"%*s  > %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"%*s  X %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"pk && !memcmp(pk->pk_keyid, keyID, KEYFRAGSIZE)\00", align 1
@__PRETTY_FUNCTION__.maint_final = private unnamed_addr constant [24 x i8] c"int maint_final(char *)\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"!sig && !id\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"id && !sig\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"!memcmp(sig->sig_from->pk_keyid, sigkeyID, KEYFRAGSIZE)\00", align 1
@.str.70 = private unnamed_addr constant [29 x i8] c"maint_final: internal error\0A\00", align 1
@.str.71 = private unnamed_addr constant [47 x i8] c"This user is untrusted to certify other keys.\0A\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"This user is generally trusted to certify other keys.\0A\00", align 1
@.str.73 = private unnamed_addr constant [56 x i8] c"This user is completely trusted to certify other keys.\0A\00", align 1
@.str.74 = private unnamed_addr constant [65 x i8] c"This axiomatic key is ultimately trusted to certify other keys.\0A\00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"This key/userID association is not certified.\0A\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"This key/userID association is marginally certified.\0A\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"This key/userID association is fully certified.\0A\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"  Questionable certification from:\0A  \00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"  Untrusted certification from:\0A  \00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"  Generally trusted certification from:\0A  \00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"  Completely trusted certification from:\0A  \00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"  Axiomatically trusted certification from:\0A  \00", align 1
@_user_from_keyID.userid = internal global [256 x i8] zeroinitializer, align 16
@bufpool = internal unnamed_addr global ptr null, align 8
@.str.83 = private unnamed_addr constant [20 x i8] c"\0AMemory used: %ldk\0A\00", align 1
@switch.table.ask_owntrust = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 5, i32 6], align 4

; Function Attrs: nounwind uwtable
define dso_local void @free_newkeys(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.newkey, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  tail call void @free(ptr noundef %4) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !10

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ismember_newkeys(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %8
  %5 = phi ptr [ %10, %8 ], [ %1, %2 ]
  %6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %0, ptr noundef nonnull dereferenceable(8) %5, i64 8)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.newkey, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4, !llvm.loop !12

12:                                               ; preds = %4, %8, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @maint_update(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i8 0, ptr @mverbose, align 1, !tbaa !13
  store i1 false, ptr @check_only, align 1
  %3 = tail call fastcc i32 @maintenance(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @maintenance(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [130 x i16], align 16
  %5 = alloca [130 x i16], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca [130 x i16], align 16
  %11 = alloca [130 x i16], align 16
  %12 = alloca [130 x i16], align 16
  %13 = alloca [130 x i16], align 16
  %14 = alloca [130 x i16], align 16
  %15 = alloca [130 x i16], align 16
  %16 = alloca [256 x i8], align 16
  %17 = alloca [8 x i8], align 1
  %18 = alloca i8, align 1
  %19 = alloca [3 x i8], align 1
  %20 = alloca [130 x i16], align 16
  %21 = alloca [130 x i16], align 16
  %22 = alloca [256 x i8], align 16
  %23 = alloca [8 x i8], align 8
  %24 = alloca [8 x i8], align 8
  %25 = alloca i8, align 1
  store i32 0, ptr @undefined_trust, align 4, !tbaa !14
  %26 = load i32, ptr @max_cert_depth, align 4, !tbaa !14
  %27 = icmp sgt i32 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 8, ptr @max_cert_depth, align 4, !tbaa !14
  br label %29

29:                                               ; preds = %28, %2
  %30 = tail call noalias ptr @fopen(ptr noundef nonnull @globalSecringName, ptr noundef nonnull @.str)
  store ptr %30, ptr @sec_fp, align 8, !tbaa !16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %34 = tail call ptr @LANG(ptr noundef nonnull @.str.39) #15
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef %34, ptr noundef nonnull @globalSecringName)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, ptr @nkr, align 4, !tbaa !14
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 1473, ptr noundef nonnull @__PRETTY_FUNCTION__.setkrent) #16
  unreachable

40:                                               ; preds = %36
  %41 = icmp eq ptr %0, null
  %42 = select i1 %41, ptr @globalPubringName, ptr %0
  %43 = icmp sgt i32 %37, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = zext nneg i32 %37 to i64
  br label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, %45
  br i1 %48, label %55, label %49, !llvm.loop !17

49:                                               ; preds = %46, %44
  %50 = phi i64 [ 0, %44 ], [ %47, %46 ]
  %51 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !16
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %52) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %46

55:                                               ; preds = %46, %40
  %56 = tail call ptr @store_str(ptr noundef nonnull %42)
  %57 = load i32, ptr @nkr, align 4, !tbaa !14
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr @nkr, align 4, !tbaa !14
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %59
  store ptr %56, ptr %60, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %49, %55
  %62 = load i32, ptr @marg_min, align 4, !tbaa !14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds ([8 x i32], ptr @trust_tbl, i64 0, i64 5), align 4, !tbaa !14
  store i32 1, ptr getelementptr inbounds ([8 x i32], ptr @trust_tbl, i64 0, i64 6), align 8, !tbaa !14
  %65 = load i32, ptr @compl_min, align 4, !tbaa !14
  br label %73

66:                                               ; preds = %61
  %67 = load i32, ptr @compl_min, align 4, !tbaa !14
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 %67, ptr @marg_min, align 4, !tbaa !14
  br label %70

70:                                               ; preds = %69, %66
  store i32 %67, ptr getelementptr inbounds ([8 x i32], ptr @trust_tbl, i64 0, i64 5), align 4, !tbaa !14
  %71 = load i32, ptr @marg_min, align 4, !tbaa !14
  store i32 %71, ptr getelementptr inbounds ([8 x i32], ptr @trust_tbl, i64 0, i64 6), align 8, !tbaa !14
  %72 = mul nsw i32 %71, %67
  br label %73

73:                                               ; preds = %64, %70
  %74 = phi i32 [ %72, %70 ], [ %65, %64 ]
  store i32 %74, ptr @complete_min, align 4, !tbaa !14
  store i32 %74, ptr getelementptr inbounds ([8 x i32], ptr @trust_tbl, i64 0, i64 7), align 4, !tbaa !14
  %75 = sdiv i32 %74, 2
  store i32 %75, ptr @marginal_min, align 4, !tbaa !14
  %76 = tail call ptr @xmalloc(i32 noundef 2056) #15
  %77 = load i64, ptr @totalsize, align 8, !tbaa !18
  %78 = add nsw i64 %77, 2048
  store i64 %78, ptr @totalsize, align 8, !tbaa !18
  %79 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %79, ptr %76, align 8, !tbaa !20
  store ptr %76, ptr @bufpool, align 8, !tbaa !16
  %80 = getelementptr inbounds %struct.bufpool, ptr %76, i64 0, i32 1
  store ptr %80, ptr @pkhash, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %80, i8 0, i64 2048, i1 false)
  %81 = load i8, ptr @mverbose, align 1, !tbaa !13
  %82 = icmp ne i8 %81, 0
  %83 = load i8, ptr @verbose, align 1
  %84 = icmp ne i8 %83, 0
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %88 = tail call ptr @LANG(ptr noundef nonnull @.str.40) #15
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef %88)
  br label %90

90:                                               ; preds = %73, %86
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #15
  %91 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds [3 x i8], ptr %19, i64 0, i64 1
  %95 = getelementptr inbounds [3 x i8], ptr %19, i64 0, i64 2
  %96 = icmp eq ptr %1, null
  br label %555

97:                                               ; preds = %90
  %98 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %99 = tail call ptr @LANG(ptr noundef nonnull @.str.6) #15
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef %99, ptr noundef %0)
  br label %578

101:                                              ; preds = %144, %555
  %102 = phi i1 [ true, %555 ], [ %145, %144 ]
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %21) #15
  %103 = call signext i16 @readkeypacket(ptr noundef nonnull %91, ptr noundef null, ptr noundef nonnull %25, ptr noundef null, ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %24, ptr noundef null) #15
  %104 = icmp slt i16 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = sext i16 %103 to i32
  br label %116

107:                                              ; preds = %101
  %108 = load i8, ptr %25, align 1, !tbaa !13
  %109 = call i32 @is_key_ctb(i8 noundef zeroext %108) #15
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @extract_keyID(ptr noundef nonnull %23, ptr noundef nonnull %20) #15
  br label %112

112:                                              ; preds = %111, %107
  %113 = load i8, ptr %25, align 1, !tbaa !13
  %114 = icmp eq i8 %113, -76
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  call void @PascalToC(ptr noundef nonnull %22) #15
  br label %116

116:                                              ; preds = %115, %112, %105
  %117 = phi i32 [ %106, %105 ], [ 0, %115 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %20) #15
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %567, label %119

119:                                              ; preds = %116
  %120 = add nsw i32 %117, 3
  %121 = icmp ult i32 %120, 2
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @fclose(ptr noundef nonnull %91)
  br label %578

124:                                              ; preds = %119
  %125 = icmp slt i32 %117, 0
  br i1 %125, label %144, label %126

126:                                              ; preds = %124
  %127 = load i8, ptr %25, align 1
  %128 = and i8 %127, 124
  %129 = icmp ne i8 %128, 20
  %130 = icmp eq i8 %128, 24
  %131 = or i1 %102, %130
  %132 = and i1 %129, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = icmp eq i8 %128, 56
  %135 = icmp eq i8 %127, -80
  %136 = or i1 %135, %134
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = icmp eq i8 %128, 8
  %139 = and i1 %564, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load ptr, ptr %565, align 8, !tbaa !22
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  store i8 2, ptr %566, align 8, !tbaa !24
  br label %144

144:                                              ; preds = %143, %133, %126, %124
  %145 = phi i1 [ true, %133 ], [ true, %143 ], [ false, %126 ], [ false, %124 ]
  br label %101, !llvm.loop !25

146:                                              ; preds = %140, %137
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %19) #15
  %147 = call i64 @fread(ptr noundef nonnull %19, i64 noundef 1, i64 noundef 3, ptr noundef nonnull %91)
  %148 = icmp eq i64 %147, 3
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load i8, ptr %19, align 1, !tbaa !13
  %151 = icmp eq i8 %150, -80
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = icmp sgt i8 %150, -1
  br i1 %153, label %161, label %154

154:                                              ; preds = %152
  %155 = call i32 @fseek(ptr noundef nonnull %91, i64 noundef -3, i32 noundef 1)
  br label %161

156:                                              ; preds = %149
  %157 = load i8, ptr %94, align 1, !tbaa !13
  %158 = icmp ne i8 %157, 1
  %159 = load i8, ptr %95, align 1
  %160 = select i1 %158, i8 %556, i8 %159
  br label %161

161:                                              ; preds = %156, %154, %152, %146
  %162 = phi i8 [ %556, %152 ], [ %556, %154 ], [ %556, %146 ], [ %160, %156 ]
  %163 = phi i1 [ true, %152 ], [ true, %154 ], [ true, %146 ], [ %158, %156 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %19) #15
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @fclose(ptr noundef nonnull %91)
  br label %578

166:                                              ; preds = %161
  %167 = load i8, ptr %25, align 1, !tbaa !13
  %168 = lshr i8 %167, 2
  %169 = and i8 %168, 31
  switch i8 %169, label %546 [
    i8 6, label %170
    i8 13, label %411
    i8 2, label %466
  ]

170:                                              ; preds = %166
  %171 = load ptr, ptr @pkhash, align 8, !tbaa !16
  %172 = load i8, ptr %23, align 8, !tbaa !13
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds ptr, ptr %171, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !16
  %176 = icmp eq ptr %175, null
  br i1 %564, label %177, label %211

177:                                              ; preds = %170
  br i1 %176, label %187, label %178

178:                                              ; preds = %177, %183
  %179 = phi ptr [ %185, %183 ], [ %175, %177 ]
  %180 = getelementptr inbounds %struct.pubkey, ptr %179, i64 0, i32 4
  %181 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %180, ptr noundef nonnull dereferenceable(8) %23, i64 8)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %209, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.pubkey, ptr %179, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !16
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %178, !llvm.loop !26

187:                                              ; preds = %183, %177
  %188 = load i32, ptr @nleft, align 4, !tbaa !14
  %189 = icmp slt i32 %188, 48
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = call ptr @xmalloc(i32 noundef 4008) #15
  %192 = load i64, ptr @totalsize, align 8, !tbaa !18
  %193 = add nsw i64 %192, 4000
  store i64 %193, ptr @totalsize, align 8, !tbaa !18
  %194 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %194, ptr %191, align 8, !tbaa !20
  store ptr %191, ptr @bufpool, align 8, !tbaa !16
  %195 = getelementptr inbounds %struct.bufpool, ptr %191, i64 0, i32 1
  store ptr %195, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %196

196:                                              ; preds = %190, %187
  %197 = load i32, ptr @nleft, align 4, !tbaa !14
  %198 = add nsw i32 %197, -48
  store i32 %198, ptr @nleft, align 4, !tbaa !14
  %199 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %200 = getelementptr inbounds i8, ptr %199, i64 48
  store ptr %200, ptr @allocn.ptr, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %199, i8 0, i64 48, i1 false)
  %201 = getelementptr inbounds %struct.pubkey, ptr %199, i64 0, i32 4
  %202 = load i64, ptr %23, align 8
  store i64 %202, ptr %201, align 8
  %203 = load ptr, ptr @pkhash, align 8, !tbaa !16
  %204 = load i8, ptr %23, align 8, !tbaa !13
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !16
  %208 = getelementptr inbounds %struct.pubkey, ptr %199, i64 0, i32 1
  store ptr %207, ptr %208, align 8, !tbaa !27
  store ptr %199, ptr %206, align 8, !tbaa !16
  br label %209

209:                                              ; preds = %178, %196
  %210 = phi ptr [ %199, %196 ], [ %179, %178 ]
  store ptr %210, ptr %561, align 8, !tbaa !28
  br label %245

211:                                              ; preds = %170
  br i1 %176, label %221, label %212

212:                                              ; preds = %211, %217
  %213 = phi ptr [ %219, %217 ], [ %175, %211 ]
  %214 = getelementptr inbounds %struct.pubkey, ptr %213, i64 0, i32 4
  %215 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %214, ptr noundef nonnull dereferenceable(8) %23, i64 8)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %243, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.pubkey, ptr %213, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !16
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %212, !llvm.loop !26

221:                                              ; preds = %217, %211
  %222 = load i32, ptr @nleft, align 4, !tbaa !14
  %223 = icmp slt i32 %222, 48
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = call ptr @xmalloc(i32 noundef 4008) #15
  %226 = load i64, ptr @totalsize, align 8, !tbaa !18
  %227 = add nsw i64 %226, 4000
  store i64 %227, ptr @totalsize, align 8, !tbaa !18
  %228 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %228, ptr %225, align 8, !tbaa !20
  store ptr %225, ptr @bufpool, align 8, !tbaa !16
  %229 = getelementptr inbounds %struct.bufpool, ptr %225, i64 0, i32 1
  store ptr %229, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %230

230:                                              ; preds = %224, %221
  %231 = load i32, ptr @nleft, align 4, !tbaa !14
  %232 = add nsw i32 %231, -48
  store i32 %232, ptr @nleft, align 4, !tbaa !14
  %233 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %234 = getelementptr inbounds i8, ptr %233, i64 48
  store ptr %234, ptr @allocn.ptr, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %233, i8 0, i64 48, i1 false)
  %235 = getelementptr inbounds %struct.pubkey, ptr %233, i64 0, i32 4
  %236 = load i64, ptr %23, align 8
  store i64 %236, ptr %235, align 8
  %237 = load ptr, ptr @pkhash, align 8, !tbaa !16
  %238 = load i8, ptr %23, align 8, !tbaa !13
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds ptr, ptr %237, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !16
  %242 = getelementptr inbounds %struct.pubkey, ptr %233, i64 0, i32 1
  store ptr %241, ptr %242, align 8, !tbaa !27
  store ptr %233, ptr %240, align 8, !tbaa !16
  br label %243

243:                                              ; preds = %212, %230
  %244 = phi ptr [ %233, %230 ], [ %213, %212 ]
  store ptr %244, ptr @pklist, align 8, !tbaa !16
  br label %245

245:                                              ; preds = %243, %209
  %246 = phi ptr [ %210, %209 ], [ %244, %243 ]
  %247 = load ptr, ptr %246, align 8, !tbaa !28
  %248 = icmp eq ptr %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %251 = call ptr @LANG(ptr noundef nonnull @.str.46) #15
  %252 = call ptr @keyIDstring(ptr noundef nonnull %23) #15
  %253 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef %251, ptr noundef %252)
  %254 = call i32 @fclose(ptr noundef nonnull %91)
  br label %578

255:                                              ; preds = %245
  %256 = icmp sgt i8 %162, -1
  br i1 %256, label %257, label %266

257:                                              ; preds = %255
  br i1 %96, label %404, label %258

258:                                              ; preds = %257, %262
  %259 = phi ptr [ %264, %262 ], [ %1, %257 ]
  %260 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %23, ptr noundef nonnull dereferenceable(8) %259, i64 8)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.newkey, ptr %259, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !5
  %265 = icmp eq ptr %264, null
  br i1 %265, label %404, label %258, !llvm.loop !12

266:                                              ; preds = %258, %255
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #15
  %267 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %268 = icmp eq ptr %267, null
  br i1 %268, label %376, label %269

269:                                              ; preds = %266
  %270 = call i64 @ftell(ptr noundef nonnull %91)
  %271 = call i32 @fseek(ptr noundef nonnull %91, i64 noundef %560, i32 noundef 0)
  %272 = call signext i16 @readkeypacket(ptr noundef nonnull %91, ptr noundef null, ptr noundef nonnull %18, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %273 = icmp slt i16 %272, 0
  br i1 %273, label %373, label %274

274:                                              ; preds = %269
  call void @extract_keyID(ptr noundef nonnull %17, ptr noundef nonnull %12) #15
  br label %275

275:                                              ; preds = %288, %274
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %11) #15
  %276 = call signext i16 @readkeypacket(ptr noundef nonnull %91, ptr noundef null, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %277 = icmp slt i16 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = sext i16 %276 to i32
  br label %284

280:                                              ; preds = %275
  %281 = load i8, ptr %18, align 1, !tbaa !13
  %282 = icmp eq i8 %281, -76
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  call void @PascalToC(ptr noundef nonnull %16) #15
  br label %284

284:                                              ; preds = %283, %280, %278
  %285 = phi i32 [ %279, %278 ], [ 0, %283 ], [ 0, %280 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %10) #15
  %286 = and i32 %285, -3
  %287 = icmp eq i32 %286, -3
  br i1 %287, label %373, label %288

288:                                              ; preds = %284
  %289 = load i8, ptr %18, align 1, !tbaa !13
  %290 = icmp eq i8 %289, -76
  br i1 %290, label %291, label %275, !llvm.loop !29

291:                                              ; preds = %288
  %292 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %293 = call i64 @lookup_by_keyID(ptr noundef %292, ptr noundef nonnull %17)
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %373, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %297 = call i64 @ftell(ptr noundef %296)
  %298 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %299 = call signext i16 @readkeypacket(ptr noundef %298, ptr noundef null, ptr noundef nonnull %18, ptr noundef null, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %300 = icmp slt i16 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %303 = call ptr @LANG(ptr noundef nonnull @.str.52) #15
  %304 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef %303)
  br label %373

305:                                              ; preds = %295
  %306 = call signext i16 @mp_compare(ptr noundef nonnull %12, ptr noundef nonnull %14) #15
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = call signext i16 @mp_compare(ptr noundef nonnull %13, ptr noundef nonnull %15) #15
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %318, label %311

311:                                              ; preds = %308, %305
  %312 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %313 = call ptr @LANG(ptr noundef nonnull @.str.53) #15
  %314 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef %313, ptr noundef nonnull %16)
  %315 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %316 = call ptr @LANG(ptr noundef nonnull @.str.54) #15
  %317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef %316)
  br label %318

318:                                              ; preds = %311, %308
  %319 = phi i32 [ -2, %311 ], [ 0, %308 ]
  br i1 %256, label %320, label %333

320:                                              ; preds = %318
  %321 = load i8, ptr @batchmode, align 1, !tbaa !13
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %320
  %324 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %325 = call ptr @LANG(ptr noundef nonnull @.str.55) #15
  %326 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %324, ptr noundef %325, ptr noundef nonnull %16)
  %327 = call ptr @LANG(ptr noundef nonnull @.str.56) #15
  %328 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %329 = call i32 @fputs(ptr noundef %327, ptr noundef %328)
  %330 = call zeroext i8 @getyesno(i8 noundef signext 110) #15
  %331 = icmp eq i8 %330, 0
  %332 = sext i1 %331 to i32
  br label %333

333:                                              ; preds = %323, %320, %318
  %334 = phi i32 [ %319, %318 ], [ %332, %323 ], [ -1, %320 ]
  %335 = icmp eq i32 %334, 0
  %336 = load ptr, ptr @floppy_fp, align 8
  %337 = icmp ne ptr %336, null
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %373

339:                                              ; preds = %333
  %340 = call i64 @lookup_by_keyID(ptr noundef nonnull %336, ptr noundef nonnull %17)
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %339
  %343 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %344 = call ptr @LANG(ptr noundef nonnull @.str.57) #15
  %345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef %344, ptr noundef nonnull %16, ptr noundef nonnull @floppyring)
  br label %373

346:                                              ; preds = %339
  %347 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %348 = call i64 @ftell(ptr noundef %347)
  %349 = sub i64 %348, %297
  %350 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %351 = call i32 @fseek(ptr noundef %350, i64 noundef %297, i32 noundef 0)
  %352 = call i64 @llvm.smin.i64(i64 %349, i64 0)
  br label %353

353:                                              ; preds = %356, %346
  %354 = phi i64 [ %349, %346 ], [ %357, %356 ]
  %355 = icmp sgt i64 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = add nsw i64 %354, -1
  %358 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %359 = call i32 @getc(ptr noundef %358)
  %360 = load ptr, ptr @floppy_fp, align 8, !tbaa !16
  %361 = call i32 @getc(ptr noundef %360)
  %362 = icmp eq i32 %359, %361
  br i1 %362, label %353, label %363, !llvm.loop !30

363:                                              ; preds = %356, %353
  %364 = phi i64 [ %352, %353 ], [ 1, %356 ]
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %373, label %366

366:                                              ; preds = %363
  %367 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %368 = call ptr @LANG(ptr noundef nonnull @.str.58) #15
  %369 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef %368, ptr noundef nonnull %16, ptr noundef nonnull @floppyring)
  %370 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %371 = call ptr @LANG(ptr noundef nonnull @.str.54) #15
  %372 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %370, ptr noundef %371)
  br label %373

373:                                              ; preds = %284, %366, %363, %342, %333, %301, %291, %269
  %374 = phi i32 [ -1, %269 ], [ 1, %291 ], [ -3, %301 ], [ 0, %342 ], [ -2, %366 ], [ 0, %363 ], [ %334, %333 ], [ %285, %284 ]
  %375 = call i32 @fseek(ptr noundef nonnull %91, i64 noundef %270, i32 noundef 0)
  br label %376

376:                                              ; preds = %373, %266
  %377 = phi i32 [ %374, %373 ], [ -1, %266 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %12) #15
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %384

379:                                              ; preds = %376
  %380 = add nsw i32 %559, 1
  %381 = or i8 %162, -121
  %382 = load i8, ptr @mverbose, align 1, !tbaa !13
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %399, label %391

384:                                              ; preds = %376
  %385 = and i8 %162, 127
  %386 = and i8 %162, 7
  %387 = icmp eq i8 %386, 7
  %388 = select i1 %387, i8 6, i8 %385
  %389 = load i8, ptr @mverbose, align 1, !tbaa !13
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %384, %379
  %392 = phi ptr [ @.str.47, %379 ], [ @.str.48, %384 ]
  %393 = phi i8 [ %381, %379 ], [ %388, %384 ]
  %394 = phi i8 [ 1, %379 ], [ %557, %384 ]
  %395 = phi i32 [ %380, %379 ], [ %559, %384 ]
  %396 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %397 = call ptr @keyIDstring(ptr noundef nonnull %23) #15
  %398 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %396, ptr noundef nonnull %392, ptr noundef %397)
  br label %399

399:                                              ; preds = %391, %384, %379
  %400 = phi i8 [ %381, %379 ], [ %388, %384 ], [ %393, %391 ]
  %401 = phi i8 [ 1, %379 ], [ %557, %384 ], [ %394, %391 ]
  %402 = phi i32 [ %380, %379 ], [ %559, %384 ], [ %395, %391 ]
  %403 = load i8, ptr @mverbose, align 1, !tbaa !13
  br label %404

404:                                              ; preds = %262, %399, %257
  %405 = phi i8 [ %400, %399 ], [ %162, %257 ], [ %162, %262 ]
  %406 = phi i8 [ %401, %399 ], [ 0, %257 ], [ 0, %262 ]
  %407 = phi i8 [ %403, %399 ], [ 0, %257 ], [ 0, %262 ]
  %408 = phi i32 [ %402, %399 ], [ %559, %257 ], [ %559, %262 ]
  %409 = getelementptr inbounds %struct.pubkey, ptr %246, i64 0, i32 5
  store i8 %405, ptr %409, align 8, !tbaa !24
  %410 = getelementptr inbounds %struct.pubkey, ptr %246, i64 0, i32 2
  store ptr null, ptr %410, align 8, !tbaa !22
  br label %546

411:                                              ; preds = %166
  br i1 %564, label %412, label %546

412:                                              ; preds = %411
  %413 = icmp eq i8 %558, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %412
  %415 = load ptr, ptr %565, align 8, !tbaa !22
  %416 = icmp eq ptr %415, null
  br i1 %416, label %420, label %417

417:                                              ; preds = %414
  %418 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %419 = call i64 @fwrite(ptr nonnull @.str.49, i64 8, i64 1, ptr %418)
  br label %420

420:                                              ; preds = %417, %414
  %421 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %422 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %421, ptr noundef nonnull @.str.50, ptr noundef nonnull %22)
  br label %423

423:                                              ; preds = %420, %412
  %424 = icmp eq ptr %562, null
  %425 = load i32, ptr @nleft, align 4, !tbaa !14
  %426 = icmp slt i32 %425, 40
  br i1 %424, label %439, label %427

427:                                              ; preds = %423
  br i1 %426, label %428, label %434

428:                                              ; preds = %427
  %429 = call ptr @xmalloc(i32 noundef 4008) #15
  %430 = load i64, ptr @totalsize, align 8, !tbaa !18
  %431 = add nsw i64 %430, 4000
  store i64 %431, ptr @totalsize, align 8, !tbaa !18
  %432 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %432, ptr %429, align 8, !tbaa !20
  store ptr %429, ptr @bufpool, align 8, !tbaa !16
  %433 = getelementptr inbounds %struct.bufpool, ptr %429, i64 0, i32 1
  store ptr %433, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %434

434:                                              ; preds = %428, %427
  %435 = load i32, ptr @nleft, align 4, !tbaa !14
  %436 = add nsw i32 %435, -40
  store i32 %436, ptr @nleft, align 4, !tbaa !14
  %437 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %438 = getelementptr inbounds i8, ptr %437, i64 40
  store ptr %438, ptr @allocn.ptr, align 8, !tbaa !16
  store ptr %437, ptr %562, align 8, !tbaa !31
  br label %451

439:                                              ; preds = %423
  br i1 %426, label %440, label %446

440:                                              ; preds = %439
  %441 = call ptr @xmalloc(i32 noundef 4008) #15
  %442 = load i64, ptr @totalsize, align 8, !tbaa !18
  %443 = add nsw i64 %442, 4000
  store i64 %443, ptr @totalsize, align 8, !tbaa !18
  %444 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %444, ptr %441, align 8, !tbaa !20
  store ptr %441, ptr @bufpool, align 8, !tbaa !16
  %445 = getelementptr inbounds %struct.bufpool, ptr %441, i64 0, i32 1
  store ptr %445, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %446

446:                                              ; preds = %440, %439
  %447 = load i32, ptr @nleft, align 4, !tbaa !14
  %448 = add nsw i32 %447, -40
  store i32 %448, ptr @nleft, align 4, !tbaa !14
  %449 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %450 = getelementptr inbounds i8, ptr %449, i64 40
  store ptr %450, ptr @allocn.ptr, align 8, !tbaa !16
  store ptr %449, ptr %565, align 8, !tbaa !22
  br label %451

451:                                              ; preds = %446, %434
  %452 = phi ptr [ %437, %434 ], [ %449, %446 ]
  %453 = load i8, ptr @mverbose, align 1, !tbaa !13
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %458, label %455

455:                                              ; preds = %451
  %456 = call ptr @store_str(ptr noundef nonnull %22)
  %457 = getelementptr inbounds %struct.userid, ptr %452, i64 0, i32 3
  store ptr %456, ptr %457, align 8, !tbaa !33
  br label %458

458:                                              ; preds = %455, %451
  %459 = and i8 %162, -4
  %460 = icmp eq i8 %557, 0
  %461 = select i1 %460, i8 0, i8 3
  %462 = or disjoint i8 %459, %461
  store ptr null, ptr %452, align 8, !tbaa !31
  %463 = getelementptr inbounds %struct.userid, ptr %452, i64 0, i32 1
  store ptr %561, ptr %463, align 8, !tbaa !34
  %464 = getelementptr inbounds %struct.userid, ptr %452, i64 0, i32 4
  store i8 %462, ptr %464, align 8, !tbaa !35
  %465 = getelementptr inbounds %struct.userid, ptr %452, i64 0, i32 2
  store ptr null, ptr %465, align 8, !tbaa !36
  br label %546

466:                                              ; preds = %166
  %467 = icmp ne ptr %562, null
  %468 = select i1 %564, i1 %467, i1 false
  br i1 %468, label %469, label %546

469:                                              ; preds = %466
  %470 = icmp eq ptr %563, null
  %471 = load i32, ptr @nleft, align 4, !tbaa !14
  %472 = icmp slt i32 %471, 40
  br i1 %470, label %485, label %473

473:                                              ; preds = %469
  br i1 %472, label %474, label %480

474:                                              ; preds = %473
  %475 = call ptr @xmalloc(i32 noundef 4008) #15
  %476 = load i64, ptr @totalsize, align 8, !tbaa !18
  %477 = add nsw i64 %476, 4000
  store i64 %477, ptr @totalsize, align 8, !tbaa !18
  %478 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %478, ptr %475, align 8, !tbaa !20
  store ptr %475, ptr @bufpool, align 8, !tbaa !16
  %479 = getelementptr inbounds %struct.bufpool, ptr %475, i64 0, i32 1
  store ptr %479, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %480

480:                                              ; preds = %474, %473
  %481 = load i32, ptr @nleft, align 4, !tbaa !14
  %482 = add nsw i32 %481, -40
  store i32 %482, ptr @nleft, align 4, !tbaa !14
  %483 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %484 = getelementptr inbounds i8, ptr %483, i64 40
  store ptr %484, ptr @allocn.ptr, align 8, !tbaa !16
  store ptr %483, ptr %563, align 8, !tbaa !37
  br label %498

485:                                              ; preds = %469
  br i1 %472, label %486, label %492

486:                                              ; preds = %485
  %487 = call ptr @xmalloc(i32 noundef 4008) #15
  %488 = load i64, ptr @totalsize, align 8, !tbaa !18
  %489 = add nsw i64 %488, 4000
  store i64 %489, ptr @totalsize, align 8, !tbaa !18
  %490 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %490, ptr %487, align 8, !tbaa !20
  store ptr %487, ptr @bufpool, align 8, !tbaa !16
  %491 = getelementptr inbounds %struct.bufpool, ptr %487, i64 0, i32 1
  store ptr %491, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %492

492:                                              ; preds = %486, %485
  %493 = load i32, ptr @nleft, align 4, !tbaa !14
  %494 = add nsw i32 %493, -40
  store i32 %494, ptr @nleft, align 4, !tbaa !14
  %495 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %496 = getelementptr inbounds i8, ptr %495, i64 40
  store ptr %496, ptr @allocn.ptr, align 8, !tbaa !16
  %497 = getelementptr inbounds %struct.userid, ptr %562, i64 0, i32 2
  store ptr %495, ptr %497, align 8, !tbaa !36
  br label %498

498:                                              ; preds = %492, %480
  %499 = phi ptr [ %483, %480 ], [ %495, %492 ]
  store ptr null, ptr %499, align 8, !tbaa !37
  %500 = getelementptr inbounds %struct.signature, ptr %499, i64 0, i32 1
  store ptr %562, ptr %500, align 8, !tbaa !39
  %501 = load ptr, ptr @pkhash, align 8, !tbaa !16
  %502 = load i8, ptr %24, align 8, !tbaa !13
  %503 = zext i8 %502 to i64
  %504 = getelementptr inbounds ptr, ptr %501, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !16
  %506 = icmp eq ptr %505, null
  br i1 %506, label %516, label %507

507:                                              ; preds = %498, %512
  %508 = phi ptr [ %514, %512 ], [ %505, %498 ]
  %509 = getelementptr inbounds %struct.pubkey, ptr %508, i64 0, i32 4
  %510 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %509, ptr noundef nonnull dereferenceable(8) %24, i64 8)
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %538, label %512

512:                                              ; preds = %507
  %513 = getelementptr inbounds %struct.pubkey, ptr %508, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !16
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %507, !llvm.loop !26

516:                                              ; preds = %512, %498
  %517 = load i32, ptr @nleft, align 4, !tbaa !14
  %518 = icmp slt i32 %517, 48
  br i1 %518, label %519, label %525

519:                                              ; preds = %516
  %520 = call ptr @xmalloc(i32 noundef 4008) #15
  %521 = load i64, ptr @totalsize, align 8, !tbaa !18
  %522 = add nsw i64 %521, 4000
  store i64 %522, ptr @totalsize, align 8, !tbaa !18
  %523 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %523, ptr %520, align 8, !tbaa !20
  store ptr %520, ptr @bufpool, align 8, !tbaa !16
  %524 = getelementptr inbounds %struct.bufpool, ptr %520, i64 0, i32 1
  store ptr %524, ptr @allocn.ptr, align 8, !tbaa !16
  store i32 4000, ptr @nleft, align 4, !tbaa !14
  br label %525

525:                                              ; preds = %519, %516
  %526 = load i32, ptr @nleft, align 4, !tbaa !14
  %527 = add nsw i32 %526, -48
  store i32 %527, ptr @nleft, align 4, !tbaa !14
  %528 = load ptr, ptr @allocn.ptr, align 8, !tbaa !16
  %529 = getelementptr inbounds i8, ptr %528, i64 48
  store ptr %529, ptr @allocn.ptr, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %528, i8 0, i64 48, i1 false)
  %530 = getelementptr inbounds %struct.pubkey, ptr %528, i64 0, i32 4
  %531 = load i64, ptr %24, align 8
  store i64 %531, ptr %530, align 8
  %532 = load ptr, ptr @pkhash, align 8, !tbaa !16
  %533 = load i8, ptr %24, align 8, !tbaa !13
  %534 = zext i8 %533 to i64
  %535 = getelementptr inbounds ptr, ptr %532, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !16
  %537 = getelementptr inbounds %struct.pubkey, ptr %528, i64 0, i32 1
  store ptr %536, ptr %537, align 8, !tbaa !27
  store ptr %528, ptr %535, align 8, !tbaa !16
  br label %538

538:                                              ; preds = %507, %525
  %539 = phi ptr [ %528, %525 ], [ %508, %507 ]
  %540 = getelementptr inbounds %struct.signature, ptr %499, i64 0, i32 2
  store ptr %539, ptr %540, align 8, !tbaa !40
  %541 = getelementptr inbounds %struct.pubkey, ptr %539, i64 0, i32 3
  %542 = load ptr, ptr %541, align 8, !tbaa !41
  %543 = getelementptr inbounds %struct.signature, ptr %499, i64 0, i32 3
  store ptr %542, ptr %543, align 8, !tbaa !42
  store ptr %499, ptr %541, align 8, !tbaa !41
  %544 = and i8 %162, 64
  %545 = getelementptr inbounds %struct.signature, ptr %499, i64 0, i32 4
  store i8 %544, ptr %545, align 8, !tbaa !43
  br label %546

546:                                              ; preds = %538, %466, %458, %411, %404, %166
  %547 = phi i8 [ %162, %166 ], [ %162, %538 ], [ %162, %466 ], [ %462, %458 ], [ %162, %411 ], [ %405, %404 ]
  %548 = phi i8 [ %557, %166 ], [ %557, %538 ], [ %557, %466 ], [ %557, %458 ], [ %557, %411 ], [ %406, %404 ]
  %549 = phi i8 [ %558, %166 ], [ %558, %538 ], [ %558, %466 ], [ %558, %458 ], [ %558, %411 ], [ %407, %404 ]
  %550 = phi i32 [ %559, %166 ], [ %559, %538 ], [ %559, %466 ], [ %559, %458 ], [ %559, %411 ], [ %408, %404 ]
  %551 = phi ptr [ %561, %166 ], [ %561, %538 ], [ %561, %466 ], [ %561, %458 ], [ null, %411 ], [ %246, %404 ]
  %552 = phi ptr [ %562, %166 ], [ %562, %538 ], [ %562, %466 ], [ %452, %458 ], [ %562, %411 ], [ null, %404 ]
  %553 = phi ptr [ %563, %166 ], [ %499, %538 ], [ %563, %466 ], [ null, %458 ], [ %563, %411 ], [ %563, %404 ]
  %554 = call i64 @ftell(ptr noundef nonnull %91)
  br label %555, !llvm.loop !25

555:                                              ; preds = %546, %93
  %556 = phi i8 [ undef, %93 ], [ %547, %546 ]
  %557 = phi i8 [ 0, %93 ], [ %548, %546 ]
  %558 = phi i8 [ 0, %93 ], [ %549, %546 ]
  %559 = phi i32 [ 0, %93 ], [ %550, %546 ]
  %560 = phi i64 [ 0, %93 ], [ %554, %546 ]
  %561 = phi ptr [ null, %93 ], [ %551, %546 ]
  %562 = phi ptr [ null, %93 ], [ %552, %546 ]
  %563 = phi ptr [ null, %93 ], [ %553, %546 ]
  %564 = icmp ne ptr %561, null
  %565 = getelementptr inbounds %struct.pubkey, ptr %561, i64 0, i32 2
  %566 = getelementptr inbounds %struct.pubkey, ptr %561, i64 0, i32 5
  br label %101

567:                                              ; preds = %116
  %568 = icmp eq i32 %559, 0
  %569 = load i8, ptr @mverbose, align 1
  %570 = icmp ne i8 %569, 0
  %571 = select i1 %568, i1 %570, i1 false
  br i1 %571, label %572, label %576

572:                                              ; preds = %567
  %573 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %574 = call ptr @LANG(ptr noundef nonnull @.str.51) #15
  %575 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %573, ptr noundef %574)
  br label %576

576:                                              ; preds = %572, %567
  %577 = call i32 @fclose(ptr noundef nonnull %91)
  br label %578

578:                                              ; preds = %97, %122, %164, %249, %576
  %579 = phi i32 [ -1, %97 ], [ %117, %122 ], [ -7, %164 ], [ -1, %249 ], [ 0, %576 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %22) #15
  %580 = load ptr, ptr @sec_fp, align 8, !tbaa !16
  %581 = icmp eq ptr %580, null
  br i1 %581, label %584, label %582

582:                                              ; preds = %578
  %583 = call i32 @fclose(ptr noundef nonnull %580)
  store ptr null, ptr @sec_fp, align 8, !tbaa !16
  br label %584

584:                                              ; preds = %582, %578
  %585 = icmp slt i32 %579, 0
  br i1 %585, label %877, label %586

586:                                              ; preds = %584
  %587 = load i8, ptr @mverbose, align 1, !tbaa !13
  %588 = icmp ne i8 %587, 0
  %589 = load i8, ptr @verbose, align 1
  %590 = icmp ne i8 %589, 0
  %591 = select i1 %588, i1 true, i1 %590
  br i1 %591, label %592, label %596

592:                                              ; preds = %586
  %593 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %594 = call ptr @LANG(ptr noundef nonnull @.str.41) #15
  %595 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %593, ptr noundef %594)
  br label %596

596:                                              ; preds = %586, %592
  %597 = load ptr, ptr @pklist, align 8, !tbaa !16
  %598 = icmp eq ptr %597, null
  br i1 %598, label %630, label %599

599:                                              ; preds = %596, %627
  %600 = phi ptr [ %628, %627 ], [ %597, %596 ]
  %601 = getelementptr inbounds %struct.pubkey, ptr %600, i64 0, i32 5
  %602 = load i8, ptr %601, align 8, !tbaa !24
  %603 = icmp sgt i8 %602, -1
  br i1 %603, label %627, label %604

604:                                              ; preds = %599
  %605 = load i8, ptr @mverbose, align 1, !tbaa !13
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %614, label %607

607:                                              ; preds = %604
  %608 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %609 = getelementptr inbounds %struct.pubkey, ptr %600, i64 0, i32 2
  %610 = load ptr, ptr %609, align 8, !tbaa !22
  %611 = getelementptr inbounds %struct.userid, ptr %610, i64 0, i32 3
  %612 = load ptr, ptr %611, align 8, !tbaa !33
  %613 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %608, ptr noundef nonnull @.str.60, ptr noundef %612)
  br label %614

614:                                              ; preds = %607, %604
  %615 = load i8, ptr %601, align 8, !tbaa !24
  %616 = and i8 %615, 7
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %626

618:                                              ; preds = %614
  %619 = getelementptr inbounds %struct.pubkey, ptr %600, i64 0, i32 4
  %620 = call ptr @user_from_keyID(ptr noundef nonnull %619)
  %621 = load i8, ptr %601, align 8, !tbaa !24
  %622 = and i8 %621, -8
  %623 = call i32 @ask_owntrust(ptr noundef %620, i8 noundef zeroext %621), !range !44
  %624 = trunc i32 %623 to i8
  %625 = or disjoint i8 %622, %624
  store i8 %625, ptr %601, align 8, !tbaa !24
  br label %626

626:                                              ; preds = %618, %614
  call fastcc void @trace_sig_chain(ptr noundef nonnull %600, i32 noundef 0)
  br label %627

627:                                              ; preds = %626, %599
  %628 = load ptr, ptr %600, align 8, !tbaa !16
  %629 = icmp eq ptr %628, null
  br i1 %629, label %630, label %599, !llvm.loop !45

630:                                              ; preds = %627, %596
  %631 = load i8, ptr @verbose, align 1, !tbaa !13
  %632 = icmp eq i8 %631, 0
  br i1 %632, label %638, label %633

633:                                              ; preds = %630
  %634 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %635 = load i1, ptr @check_only, align 1
  %636 = select i1 %635, ptr @.str.43, ptr @.str.44
  %637 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %634, ptr noundef nonnull @.str.42, ptr noundef nonnull %636)
  br label %638

638:                                              ; preds = %633, %630
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  %639 = load i1, ptr @check_only, align 1
  %640 = select i1 %639, ptr @.str, ptr @.str.64
  %641 = call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull %640)
  %642 = icmp eq ptr %641, null
  br i1 %642, label %643, label %647

643:                                              ; preds = %638
  %644 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %645 = call ptr @LANG(ptr noundef nonnull @.str.6) #15
  %646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %644, ptr noundef %645, ptr noundef %0)
  br label %841

647:                                              ; preds = %638
  %648 = load ptr, ptr @pklist, align 8, !tbaa !16
  %649 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %650 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  br label %651

651:                                              ; preds = %826, %647
  %652 = phi i8 [ %729, %826 ], [ undef, %647 ]
  %653 = phi i64 [ %730, %826 ], [ 0, %647 ]
  %654 = phi i8 [ %811, %826 ], [ 0, %647 ]
  %655 = phi i32 [ %827, %826 ], [ 0, %647 ]
  %656 = phi ptr [ %813, %826 ], [ %648, %647 ]
  %657 = phi ptr [ %814, %826 ], [ null, %647 ]
  %658 = phi ptr [ %815, %826 ], [ null, %647 ]
  br label %659

659:                                              ; preds = %651, %810
  %660 = phi i8 [ %729, %810 ], [ %652, %651 ]
  %661 = phi i64 [ %730, %810 ], [ %653, %651 ]
  %662 = phi i8 [ %811, %810 ], [ %654, %651 ]
  %663 = phi ptr [ %813, %810 ], [ %656, %651 ]
  %664 = phi ptr [ %814, %810 ], [ %657, %651 ]
  %665 = phi ptr [ %815, %810 ], [ %658, %651 ]
  br label %666

666:                                              ; preds = %724, %659
  %667 = phi i8 [ %722, %724 ], [ %660, %659 ]
  %668 = phi i64 [ %706, %724 ], [ %661, %659 ]
  br label %669

669:                                              ; preds = %699, %666
  %670 = phi i1 [ true, %666 ], [ false, %699 ]
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #15
  %671 = call signext i16 @readkeypacket(ptr noundef nonnull %641, ptr noundef null, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #15
  %672 = icmp slt i16 %671, 0
  br i1 %672, label %673, label %675

673:                                              ; preds = %669
  %674 = sext i16 %671 to i32
  br label %684

675:                                              ; preds = %669
  %676 = load i8, ptr %9, align 1, !tbaa !13
  %677 = call i32 @is_key_ctb(i8 noundef zeroext %676) #15
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %680, label %679

679:                                              ; preds = %675
  call void @extract_keyID(ptr noundef nonnull %7, ptr noundef nonnull %4) #15
  br label %680

680:                                              ; preds = %679, %675
  %681 = load i8, ptr %9, align 1, !tbaa !13
  %682 = icmp eq i8 %681, -76
  br i1 %682, label %683, label %684

683:                                              ; preds = %680
  call void @PascalToC(ptr noundef nonnull %6) #15
  br label %684

684:                                              ; preds = %683, %680, %673
  %685 = phi i32 [ %674, %673 ], [ 0, %683 ], [ 0, %680 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #15
  %686 = icmp eq i32 %685, -1
  br i1 %686, label %828, label %687

687:                                              ; preds = %684
  %688 = add nsw i32 %685, 3
  %689 = icmp ult i32 %688, 2
  br i1 %689, label %828, label %690

690:                                              ; preds = %687
  %691 = icmp slt i32 %685, 0
  br i1 %691, label %699, label %692

692:                                              ; preds = %690
  %693 = load i8, ptr %9, align 1
  %694 = and i8 %693, 124
  %695 = icmp ne i8 %694, 20
  %696 = icmp eq i8 %694, 24
  %697 = or i1 %670, %696
  %698 = and i1 %695, %697
  br i1 %698, label %700, label %699

699:                                              ; preds = %692, %690
  br label %669, !llvm.loop !46

700:                                              ; preds = %692
  br i1 %696, label %705, label %701

701:                                              ; preds = %700
  %702 = icmp eq i8 %694, 8
  %703 = icmp eq i8 %693, -76
  %704 = or i1 %703, %702
  br i1 %704, label %705, label %728

705:                                              ; preds = %701, %700
  %706 = call i64 @ftell(ptr noundef nonnull %641)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #15
  %707 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 3, ptr noundef nonnull %641)
  %708 = icmp eq i64 %707, 3
  br i1 %708, label %709, label %721

709:                                              ; preds = %705
  %710 = load i8, ptr %3, align 1, !tbaa !13
  %711 = icmp eq i8 %710, -80
  br i1 %711, label %716, label %712

712:                                              ; preds = %709
  %713 = icmp sgt i8 %710, -1
  br i1 %713, label %721, label %714

714:                                              ; preds = %712
  %715 = call i32 @fseek(ptr noundef nonnull %641, i64 noundef -3, i32 noundef 1)
  br label %721

716:                                              ; preds = %709
  %717 = load i8, ptr %649, align 1, !tbaa !13
  %718 = icmp ne i8 %717, 1
  %719 = load i8, ptr %650, align 1
  %720 = select i1 %718, i8 %667, i8 %719
  br label %721

721:                                              ; preds = %716, %714, %712, %705
  %722 = phi i8 [ %667, %712 ], [ %667, %714 ], [ %667, %705 ], [ %720, %716 ]
  %723 = phi i1 [ true, %712 ], [ true, %714 ], [ true, %705 ], [ %718, %716 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #15
  br i1 %723, label %724, label %728

724:                                              ; preds = %721
  %725 = load i8, ptr %9, align 1, !tbaa !13
  %726 = and i8 %725, 124
  %727 = icmp eq i8 %726, 8
  br i1 %727, label %666, label %828, !llvm.loop !46

728:                                              ; preds = %721, %701
  %729 = phi i8 [ %722, %721 ], [ %667, %701 ]
  %730 = phi i64 [ %706, %721 ], [ %668, %701 ]
  %731 = load i8, ptr %9, align 1, !tbaa !13
  %732 = lshr i8 %731, 2
  %733 = and i8 %732, 31
  switch i8 %733, label %810 [
    i8 6, label %734
    i8 13, label %752
    i8 2, label %796
  ]

734:                                              ; preds = %728
  %735 = icmp eq ptr %663, null
  br i1 %735, label %740, label %736

736:                                              ; preds = %734
  %737 = getelementptr inbounds %struct.pubkey, ptr %663, i64 0, i32 4
  %738 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %737, ptr noundef nonnull dereferenceable(8) %7, i64 8)
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %741, label %740

740:                                              ; preds = %736, %734
  call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.37, i32 noundef 723, ptr noundef nonnull @__PRETTY_FUNCTION__.maint_final) #16
  unreachable

741:                                              ; preds = %736
  %742 = icmp ne ptr %665, null
  %743 = icmp ne ptr %664, null
  %744 = select i1 %742, i1 true, i1 %743
  br i1 %744, label %745, label %746

745:                                              ; preds = %741
  call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.37, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.maint_final) #16
  unreachable

746:                                              ; preds = %741
  %747 = getelementptr inbounds %struct.pubkey, ptr %663, i64 0, i32 2
  %748 = load ptr, ptr %747, align 8, !tbaa !22
  %749 = getelementptr inbounds %struct.pubkey, ptr %663, i64 0, i32 5
  %750 = load i8, ptr %749, align 8, !tbaa !24
  %751 = load ptr, ptr %663, align 8, !tbaa !28
  br label %810

752:                                              ; preds = %728
  %753 = icmp eq ptr %664, null
  %754 = icmp ne ptr %665, null
  %755 = select i1 %753, i1 true, i1 %754
  br i1 %755, label %756, label %757

756:                                              ; preds = %752
  call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.37, i32 noundef 735, ptr noundef nonnull @__PRETTY_FUNCTION__.maint_final) #16
  unreachable

757:                                              ; preds = %752
  %758 = getelementptr inbounds %struct.userid, ptr %664, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !16
  %760 = getelementptr inbounds %struct.userid, ptr %664, i64 0, i32 1
  %761 = load ptr, ptr %760, align 8, !tbaa !34
  %762 = getelementptr inbounds %struct.pubkey, ptr %761, i64 0, i32 5
  %763 = load i8, ptr %762, align 8, !tbaa !24
  %764 = icmp sgt i8 %763, -1
  br i1 %764, label %765, label %789

765:                                              ; preds = %757
  %766 = icmp eq ptr %759, null
  br i1 %766, label %779, label %767

767:                                              ; preds = %765, %767
  %768 = phi ptr [ %777, %767 ], [ %759, %765 ]
  %769 = phi i32 [ %776, %767 ], [ 0, %765 ]
  %770 = getelementptr inbounds %struct.signature, ptr %768, i64 0, i32 4
  %771 = load i8, ptr %770, align 8, !tbaa !43
  %772 = and i8 %771, 7
  %773 = zext nneg i8 %772 to i64
  %774 = getelementptr inbounds [8 x i32], ptr @trust_tbl, i64 0, i64 %773
  %775 = load i32, ptr %774, align 4, !tbaa !14
  %776 = add nsw i32 %775, %769
  %777 = load ptr, ptr %768, align 8, !tbaa !16
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %767, !llvm.loop !47

779:                                              ; preds = %767, %765
  %780 = phi i32 [ 0, %765 ], [ %776, %767 ]
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %789, label %782

782:                                              ; preds = %779
  %783 = load i32, ptr @marginal_min, align 4, !tbaa !14
  %784 = icmp slt i32 %780, %783
  br i1 %784, label %789, label %785

785:                                              ; preds = %782
  %786 = load i32, ptr @complete_min, align 4, !tbaa !14
  %787 = icmp slt i32 %780, %786
  %788 = select i1 %787, i8 2, i8 3
  br label %789

789:                                              ; preds = %785, %782, %779, %757
  %790 = phi i8 [ 3, %757 ], [ 0, %779 ], [ 1, %782 ], [ %788, %785 ]
  %791 = getelementptr inbounds %struct.userid, ptr %664, i64 0, i32 4
  %792 = load i8, ptr %791, align 8, !tbaa !35
  %793 = and i8 %792, -4
  %794 = or disjoint i8 %793, %790
  store i8 %794, ptr %791, align 8, !tbaa !35
  %795 = load ptr, ptr %664, align 8, !tbaa !31
  br label %810

796:                                              ; preds = %728
  %797 = icmp eq ptr %665, null
  br i1 %797, label %798, label %799

798:                                              ; preds = %796
  call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.37, i32 noundef 752, ptr noundef nonnull @__PRETTY_FUNCTION__.maint_final) #16
  unreachable

799:                                              ; preds = %796
  %800 = getelementptr inbounds %struct.signature, ptr %665, i64 0, i32 2
  %801 = load ptr, ptr %800, align 8, !tbaa !40
  %802 = getelementptr inbounds %struct.pubkey, ptr %801, i64 0, i32 4
  %803 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %802, ptr noundef nonnull dereferenceable(8) %8, i64 8)
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %806, label %805

805:                                              ; preds = %799
  call void @__assert_fail(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.37, i32 noundef 753, ptr noundef nonnull @__PRETTY_FUNCTION__.maint_final) #16
  unreachable

806:                                              ; preds = %799
  %807 = getelementptr inbounds %struct.signature, ptr %665, i64 0, i32 4
  %808 = load i8, ptr %807, align 8, !tbaa !43
  %809 = load ptr, ptr %665, align 8, !tbaa !37
  br label %810

810:                                              ; preds = %806, %789, %746, %728
  %811 = phi i8 [ %808, %806 ], [ %794, %789 ], [ %750, %746 ], [ %662, %728 ]
  %812 = phi i32 [ 135, %806 ], [ 3, %789 ], [ 135, %746 ], [ 0, %728 ]
  %813 = phi ptr [ %663, %806 ], [ %663, %789 ], [ %751, %746 ], [ %663, %728 ]
  %814 = phi ptr [ %664, %806 ], [ %795, %789 ], [ %748, %746 ], [ %664, %728 ]
  %815 = phi ptr [ %809, %806 ], [ %759, %789 ], [ null, %746 ], [ %665, %728 ]
  %816 = xor i8 %811, %729
  %817 = zext i8 %816 to i32
  %818 = and i32 %812, %817
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %659, label %820, !llvm.loop !46

820:                                              ; preds = %810
  %821 = load i1, ptr @check_only, align 1
  br i1 %821, label %826, label %822

822:                                              ; preds = %820
  %823 = call i64 @ftell(ptr noundef nonnull %641)
  %824 = call i32 @fseek(ptr noundef nonnull %641, i64 noundef %730, i32 noundef 0)
  call void @write_trust(ptr noundef nonnull %641, i8 noundef zeroext %811) #15
  %825 = call i32 @fseek(ptr noundef nonnull %641, i64 noundef %823, i32 noundef 0)
  br label %826

826:                                              ; preds = %822, %820
  %827 = add nuw nsw i32 %655, 1
  br label %651, !llvm.loop !46

828:                                              ; preds = %724, %687, %684
  %829 = phi i32 [ %685, %687 ], [ -1, %684 ], [ -7, %724 ]
  %830 = call i32 @fclose(ptr noundef nonnull %641)
  %831 = icmp slt i32 %829, -1
  br i1 %831, label %841, label %832

832:                                              ; preds = %828
  %833 = icmp ne ptr %663, null
  %834 = icmp ne ptr %665, null
  %835 = select i1 %833, i1 true, i1 %834
  %836 = icmp ne ptr %664, null
  %837 = select i1 %835, i1 true, i1 %836
  br i1 %837, label %838, label %841

838:                                              ; preds = %832
  %839 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %840 = call i64 @fwrite(ptr nonnull @.str.70, i64 28, i64 1, ptr %839)
  br label %841

841:                                              ; preds = %643, %828, %832, %838
  %842 = phi i32 [ -1, %643 ], [ -1, %838 ], [ %829, %828 ], [ %655, %832 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #15
  %843 = icmp slt i32 %842, 0
  br i1 %843, label %877, label %844

844:                                              ; preds = %841
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store ptr null, ptr @hashtbl, align 8, !tbaa !16
  store i32 0, ptr @nkr, align 4, !tbaa !14
  %845 = load i8, ptr @verbose, align 1, !tbaa !13
  %846 = icmp eq i8 %845, 0
  br i1 %846, label %852, label %847

847:                                              ; preds = %844
  %848 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %849 = load i64, ptr @totalsize, align 8, !tbaa !18
  %850 = sdiv i64 %849, 1024
  %851 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %848, ptr noundef nonnull @.str.83, i64 noundef %850)
  br label %852

852:                                              ; preds = %847, %844
  store i64 0, ptr @totalsize, align 8, !tbaa !18
  %853 = load ptr, ptr @bufpool, align 8, !tbaa !16
  %854 = icmp eq ptr %853, null
  br i1 %854, label %859, label %855

855:                                              ; preds = %852, %855
  %856 = phi ptr [ %857, %855 ], [ %853, %852 ]
  %857 = load ptr, ptr %856, align 8, !tbaa !20
  store ptr %857, ptr @bufpool, align 8, !tbaa !16
  call void @free(ptr noundef %856) #15
  %858 = icmp eq ptr %857, null
  br i1 %858, label %859, label %855, !llvm.loop !48

859:                                              ; preds = %855, %852
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @nleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store ptr null, ptr @pkhash, align 8, !tbaa !16
  %860 = load i8, ptr @verbose, align 1, !tbaa !13
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %867, label %862

862:                                              ; preds = %859
  %863 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %864 = load i64, ptr @totalsize, align 8, !tbaa !18
  %865 = sdiv i64 %864, 1024
  %866 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %863, ptr noundef nonnull @.str.83, i64 noundef %865)
  br label %867

867:                                              ; preds = %862, %859
  store i64 0, ptr @totalsize, align 8, !tbaa !18
  %868 = load ptr, ptr @bufpool, align 8, !tbaa !16
  %869 = icmp eq ptr %868, null
  br i1 %869, label %874, label %870

870:                                              ; preds = %867, %870
  %871 = phi ptr [ %872, %870 ], [ %868, %867 ]
  %872 = load ptr, ptr %871, align 8, !tbaa !20
  store ptr %872, ptr @bufpool, align 8, !tbaa !16
  call void @free(ptr noundef %871) #15
  %873 = icmp eq ptr %872, null
  br i1 %873, label %874, label %870, !llvm.loop !48

874:                                              ; preds = %870, %867
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @nleft, align 4, !tbaa !14
  %875 = load i32, ptr @undefined_trust, align 4, !tbaa !14
  %876 = add nsw i32 %875, %842
  br label %915

877:                                              ; preds = %841, %584
  %878 = phi i32 [ %579, %584 ], [ %842, %841 ]
  %879 = load i8, ptr @verbose, align 1, !tbaa !13
  %880 = icmp eq i8 %879, 0
  br i1 %880, label %884, label %881

881:                                              ; preds = %877
  %882 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %883 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %882, ptr noundef nonnull @.str.45, i32 noundef %878)
  br label %884

884:                                              ; preds = %881, %877
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store ptr null, ptr @hashtbl, align 8, !tbaa !16
  store i32 0, ptr @nkr, align 4, !tbaa !14
  %885 = load i8, ptr @verbose, align 1, !tbaa !13
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %892, label %887

887:                                              ; preds = %884
  %888 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %889 = load i64, ptr @totalsize, align 8, !tbaa !18
  %890 = sdiv i64 %889, 1024
  %891 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %888, ptr noundef nonnull @.str.83, i64 noundef %890)
  br label %892

892:                                              ; preds = %887, %884
  store i64 0, ptr @totalsize, align 8, !tbaa !18
  %893 = load ptr, ptr @bufpool, align 8, !tbaa !16
  %894 = icmp eq ptr %893, null
  br i1 %894, label %899, label %895

895:                                              ; preds = %892, %895
  %896 = phi ptr [ %897, %895 ], [ %893, %892 ]
  %897 = load ptr, ptr %896, align 8, !tbaa !20
  store ptr %897, ptr @bufpool, align 8, !tbaa !16
  call void @free(ptr noundef %896) #15
  %898 = icmp eq ptr %897, null
  br i1 %898, label %899, label %895, !llvm.loop !48

899:                                              ; preds = %895, %892
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @nleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store ptr null, ptr @pkhash, align 8, !tbaa !16
  %900 = load i8, ptr @verbose, align 1, !tbaa !13
  %901 = icmp eq i8 %900, 0
  br i1 %901, label %907, label %902

902:                                              ; preds = %899
  %903 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %904 = load i64, ptr @totalsize, align 8, !tbaa !18
  %905 = sdiv i64 %904, 1024
  %906 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %903, ptr noundef nonnull @.str.83, i64 noundef %905)
  br label %907

907:                                              ; preds = %902, %899
  store i64 0, ptr @totalsize, align 8, !tbaa !18
  %908 = load ptr, ptr @bufpool, align 8, !tbaa !16
  %909 = icmp eq ptr %908, null
  br i1 %909, label %914, label %910

910:                                              ; preds = %907, %910
  %911 = phi ptr [ %912, %910 ], [ %908, %907 ]
  %912 = load ptr, ptr %911, align 8, !tbaa !20
  store ptr %912, ptr @bufpool, align 8, !tbaa !16
  call void @free(ptr noundef %911) #15
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %910, !llvm.loop !48

914:                                              ; preds = %910, %907
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @nleft, align 4, !tbaa !14
  br label %915

915:                                              ; preds = %914, %874
  %916 = phi i32 [ %878, %914 ], [ %876, %874 ]
  ret i32 %916
}

; Function Attrs: nounwind uwtable
define dso_local i32 @maint_check(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 1
  store i8 %5, ptr @mverbose, align 1, !tbaa !13
  %6 = load i8, ptr @moreflag, align 1, !tbaa !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @open_more() #15
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i8, ptr @floppyring, align 16, !tbaa !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = tail call noalias ptr @fopen(ptr noundef nonnull @floppyring, ptr noundef nonnull @.str)
  store ptr %14, ptr @floppy_fp, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %18 = tail call ptr @LANG(ptr noundef nonnull @.str.1) #15
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef %18, ptr noundef nonnull @floppyring)
  br label %20

20:                                               ; preds = %16, %13, %10
  store i1 true, ptr @check_only, align 1
  %21 = tail call fastcc i32 @maintenance(ptr noundef %0, ptr noundef null)
  %22 = load ptr, ptr @floppy_fp, align 8, !tbaa !16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @fclose(ptr noundef nonnull %22)
  store ptr null, ptr @floppy_fp, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %24, %20
  %27 = icmp slt i32 %21, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = icmp eq i32 %21, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call i32 @maint_list(ptr noundef %0), !range !49
  br label %32

32:                                               ; preds = %30, %28
  %33 = tail call i32 @close_more() #15
  br label %88

34:                                               ; preds = %26
  %35 = load i32, ptr @undefined_trust, align 4, !tbaa !14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %34
  %38 = and i32 %1, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @maint_list(ptr noundef %0), !range !49
  %42 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %43 = tail call ptr @LANG(ptr noundef nonnull @.str.2) #15
  %44 = load i32, ptr @undefined_trust, align 4, !tbaa !14
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef %43, i32 noundef %44)
  %46 = tail call i32 @close_more() #15
  br label %88

47:                                               ; preds = %37
  %48 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %49 = tail call ptr @LANG(ptr noundef nonnull @.str.2) #15
  %50 = load i32, ptr @undefined_trust, align 4, !tbaa !14
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  %52 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %53 = tail call ptr @LANG(ptr noundef nonnull @.str.3) #15
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef %53, ptr noundef %0)
  %55 = tail call zeroext i8 @getyesno(i8 noundef signext 121) #15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = tail call i32 @close_more() #15
  br label %88

59:                                               ; preds = %47, %34
  %60 = tail call ptr @tempfile(i32 noundef 0) #15
  %61 = tail call i32 @copyfiles_by_name(ptr noundef %0, ptr noundef %60) #15
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 @close_more() #15
  br label %88

65:                                               ; preds = %59
  store i8 0, ptr @mverbose, align 1, !tbaa !13
  store i1 false, ptr @check_only, align 1
  %66 = tail call fastcc i32 @maintenance(ptr noundef %60, ptr noundef null)
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = tail call i32 @maint_list(ptr noundef %60), !range !49
  %70 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %71 = tail call ptr @LANG(ptr noundef nonnull @.str.4) #15
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef %71, i32 noundef %66)
  br label %73

73:                                               ; preds = %68, %65
  %74 = tail call i32 @close_more() #15
  %75 = icmp sgt i32 %66, 0
  %76 = and i32 %1, 1
  %77 = icmp eq i32 %76, 0
  %78 = and i1 %77, %75
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %81 = tail call ptr @LANG(ptr noundef nonnull @.str.5) #15
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef %81, ptr noundef %0)
  %83 = tail call zeroext i8 @getyesno(i8 noundef signext 121) #15
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = tail call i32 @savetempbak(ptr noundef %60, ptr noundef %0) #15
  br label %88

87:                                               ; preds = %79, %73
  tail call void @rmtemp(ptr noundef %60) #15
  br label %88

88:                                               ; preds = %87, %85, %63, %57, %40, %32
  %89 = phi i32 [ %21, %32 ], [ %21, %40 ], [ -1, %63 ], [ %66, %87 ], [ %86, %85 ], [ %21, %57 ]
  ret i32 %89
}

declare i32 @open_more() local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare ptr @LANG(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @maint_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [130 x i16], align 16
  %4 = alloca [130 x i16], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #15
  %9 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %13 = tail call ptr @LANG(ptr noundef nonnull @.str.6) #15
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef %13, ptr noundef %0)
  br label %195

15:                                               ; preds = %1
  tail call void @init_trust_lst()
  %16 = load i32, ptr @nkr, align 4, !tbaa !14
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 1473, ptr noundef nonnull @__PRETTY_FUNCTION__.setkrent) #16
  unreachable

19:                                               ; preds = %15
  %20 = icmp eq ptr %0, null
  %21 = select i1 %20, ptr @globalPubringName, ptr %0
  %22 = icmp sgt i32 %16, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = zext nneg i32 %16 to i64
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i64 %29, 1
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %34, label %28, !llvm.loop !17

28:                                               ; preds = %25, %23
  %29 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %30 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %31) #17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %25

34:                                               ; preds = %25, %19
  %35 = tail call ptr @store_str(ptr noundef nonnull %21)
  %36 = load i32, ptr @nkr, align 4, !tbaa !14
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @nkr, align 4, !tbaa !14
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %38
  store ptr %35, ptr %39, align 8, !tbaa !16
  br label %40

40:                                               ; preds = %28, %34
  %41 = tail call i32 @init_userhash()
  %42 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %43 = tail call ptr @LANG(ptr noundef nonnull @.str.7) #15
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef %43)
  %45 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 1
  %46 = getelementptr inbounds [3 x i8], ptr %2, i64 0, i64 2
  br label %119

47:                                               ; preds = %150, %119
  %48 = phi i8 [ %120, %119 ], [ %110, %150 ]
  %49 = phi i32 [ %121, %119 ], [ 35, %150 ]
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %47, %146
  %52 = phi i8 [ %48, %47 ], [ %110, %146 ]
  %53 = phi i32 [ 0, %47 ], [ %147, %146 ]
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %172, %51
  %56 = phi i8 [ %52, %51 ], [ %110, %172 ]
  br label %57

57:                                               ; preds = %55, %77
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #15
  %58 = call signext i16 @readkeypacket(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %7, ptr noundef null) #15
  %59 = icmp slt i16 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = sext i16 %58 to i32
  br label %71

62:                                               ; preds = %57
  %63 = load i8, ptr %8, align 1, !tbaa !13
  %64 = call i32 @is_key_ctb(i8 noundef zeroext %63) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  call void @extract_keyID(ptr noundef nonnull %6, ptr noundef nonnull %3) #15
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i8, ptr %8, align 1, !tbaa !13
  %69 = icmp eq i8 %68, -76
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  call void @PascalToC(ptr noundef nonnull %5) #15
  br label %71

71:                                               ; preds = %60, %67, %70
  %72 = phi i32 [ %61, %60 ], [ 0, %70 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #15
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %175, label %74

74:                                               ; preds = %71
  %75 = add nsw i32 %72, 3
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %175, label %77

77:                                               ; preds = %74
  %78 = icmp slt i32 %72, 0
  br i1 %78, label %57, label %79, !llvm.loop !50

79:                                               ; preds = %77
  %80 = load i8, ptr %8, align 1
  %81 = and i8 %80, 124
  %82 = icmp eq i8 %81, 24
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = icmp eq i8 %81, 8
  %85 = icmp eq i8 %80, -76
  %86 = or i1 %85, %84
  br i1 %86, label %87, label %109

87:                                               ; preds = %83, %79
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #15
  %88 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 3, ptr noundef nonnull %9)
  %89 = icmp eq i64 %88, 3
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i8, ptr %2, align 1, !tbaa !13
  %92 = icmp eq i8 %91, -80
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = icmp sgt i8 %91, -1
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = call i32 @fseek(ptr noundef nonnull %9, i64 noundef -3, i32 noundef 1)
  br label %102

97:                                               ; preds = %90
  %98 = load i8, ptr %45, align 1, !tbaa !13
  %99 = icmp ne i8 %98, 1
  %100 = load i8, ptr %46, align 1
  %101 = select i1 %99, i8 %56, i8 %100
  br label %102

102:                                              ; preds = %97, %87, %93, %95
  %103 = phi i8 [ %56, %93 ], [ %56, %95 ], [ %56, %87 ], [ %101, %97 ]
  %104 = phi i1 [ true, %93 ], [ true, %95 ], [ true, %87 ], [ %99, %97 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #15
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i8, ptr %8, align 1, !tbaa !13
  %107 = and i8 %106, 124
  %108 = icmp eq i8 %107, 8
  br i1 %108, label %109, label %175

109:                                              ; preds = %102, %105, %83
  %110 = phi i8 [ %103, %105 ], [ %103, %102 ], [ %56, %83 ]
  %111 = load i8, ptr %8, align 1, !tbaa !13
  %112 = lshr i8 %111, 2
  %113 = and i8 %112, 31
  switch i8 %113, label %172 [
    i8 6, label %114
    i8 13, label %124
    i8 2, label %150
  ]

114:                                              ; preds = %109
  %115 = icmp sgt i8 %110, -1
  %116 = select i1 %115, i32 32, i32 42
  %117 = and i8 %110, 7
  %118 = zext nneg i8 %117 to i64
  store i8 0, ptr %5, align 16, !tbaa !13
  br label %119, !llvm.loop !50

119:                                              ; preds = %40, %114
  %120 = phi i8 [ undef, %40 ], [ %110, %114 ]
  %121 = phi i32 [ 0, %40 ], [ %116, %114 ]
  %122 = phi i64 [ 0, %40 ], [ %118, %114 ]
  %123 = getelementptr inbounds [8 x [16 x i8]], ptr @trust_lst, i64 0, i64 %122
  br label %47

124:                                              ; preds = %109
  %125 = icmp eq i32 %53, 0
  %126 = load ptr, ptr @pgpout, align 8, !tbaa !16
  br i1 %125, label %127, label %133

127:                                              ; preds = %124
  %128 = call ptr @keyIDstring(ptr noundef nonnull %6) #15
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.8, i32 noundef %50, ptr noundef %128)
  %130 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %131 = load i32, ptr @trustlst_len, align 4, !tbaa !14
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.9, i32 noundef %131, ptr noundef nonnull %123)
  br label %136

133:                                              ; preds = %124
  %134 = load i32, ptr @trustlst_len, align 4, !tbaa !14
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.10, ptr noundef nonnull @blankkeyID, i32 noundef %134, ptr noundef nonnull @.str.11)
  br label %136

136:                                              ; preds = %133, %127
  %137 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %138 = load i32, ptr @legitlst_len, align 4, !tbaa !14
  %139 = and i8 %110, 3
  %140 = zext nneg i8 %139 to i64
  %141 = getelementptr inbounds [4 x [16 x i8]], ptr @legit_lst, i64 0, i64 %140
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.9, i32 noundef %138, ptr noundef nonnull %141)
  br i1 %125, label %146, label %143

143:                                              ; preds = %136
  %144 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %145 = call i32 @putc(i32 noundef 32, ptr noundef %144)
  br label %146

146:                                              ; preds = %143, %136
  %147 = add nuw nsw i32 %53, 1
  %148 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %149 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str.12, ptr noundef nonnull %5)
  br label %51, !llvm.loop !50

150:                                              ; preds = %109
  br i1 %54, label %47, label %151, !llvm.loop !50

151:                                              ; preds = %150
  %152 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %153 = icmp sgt i8 %110, -1
  %154 = select i1 %153, i32 32, i32 99
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.8, i32 noundef %154, ptr noundef nonnull @blankkeyID)
  %156 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %157 = load i32, ptr @trustlst_len, align 4, !tbaa !14
  %158 = and i8 %110, 7
  %159 = zext nneg i8 %158 to i64
  %160 = getelementptr inbounds [8 x [16 x i8]], ptr @trust_lst, i64 0, i64 %159
  %161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.9, i32 noundef %157, ptr noundef nonnull %160)
  %162 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %163 = load i32, ptr @legitlst_len, align 4, !tbaa !14
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.13, i32 noundef %163, ptr noundef nonnull @.str.11)
  %165 = call ptr @user_from_keyID(ptr noundef nonnull %7)
  %166 = icmp eq ptr %165, null
  %167 = load ptr, ptr @pgpout, align 8, !tbaa !16
  br i1 %166, label %168, label %173

168:                                              ; preds = %151
  %169 = call ptr @LANG(ptr noundef nonnull @.str.14) #15
  %170 = call ptr @keyIDstring(ptr noundef nonnull %7) #15
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef %169, ptr noundef %170)
  br label %172

172:                                              ; preds = %168, %173, %109
  br label %55, !llvm.loop !50

173:                                              ; preds = %151
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.12, ptr noundef nonnull %165)
  br label %172

175:                                              ; preds = %105, %74, %71
  %176 = phi i32 [ %72, %74 ], [ -1, %71 ], [ -7, %105 ]
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store ptr null, ptr @hashtbl, align 8, !tbaa !16
  store i32 0, ptr @nkr, align 4, !tbaa !14
  %177 = load i8, ptr @verbose, align 1, !tbaa !13
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %181 = load i64, ptr @totalsize, align 8, !tbaa !18
  %182 = sdiv i64 %181, 1024
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.83, i64 noundef %182)
  br label %184

184:                                              ; preds = %179, %175
  store i64 0, ptr @totalsize, align 8, !tbaa !18
  %185 = load ptr, ptr @bufpool, align 8, !tbaa !16
  %186 = icmp eq ptr %185, null
  br i1 %186, label %191, label %187

187:                                              ; preds = %184, %187
  %188 = phi ptr [ %189, %187 ], [ %185, %184 ]
  %189 = load ptr, ptr %188, align 8, !tbaa !20
  store ptr %189, ptr @bufpool, align 8, !tbaa !16
  call void @free(ptr noundef %188) #15
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %187, !llvm.loop !48

191:                                              ; preds = %187, %184
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @nleft, align 4, !tbaa !14
  %192 = call i32 @fclose(ptr noundef nonnull %9)
  %193 = icmp slt i32 %176, -1
  %194 = select i1 %193, i32 %176, i32 0
  br label %195

195:                                              ; preds = %191, %11
  %196 = phi i32 [ -1, %11 ], [ %194, %191 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  ret i32 %196
}

declare i32 @close_more() local_unnamed_addr #4

declare zeroext i8 @getyesno(i8 noundef signext) local_unnamed_addr #4

declare ptr @tempfile(i32 noundef) local_unnamed_addr #4

declare i32 @copyfiles_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @savetempbak(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @rmtemp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @init_trust_lst() local_unnamed_addr #0 {
  %1 = load i1, ptr @init_trust_lst.initialized, align 4
  br i1 %1, label %38, label %2

2:                                                ; preds = %0, %18
  %3 = phi i64 [ %19, %18 ], [ 0, %0 ]
  %4 = getelementptr inbounds [8 x [16 x i8]], ptr @trust_lst, i64 0, i64 %3
  %5 = load i8, ptr %4, align 16, !tbaa !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @LANG(ptr noundef nonnull %4) #15
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %8, i64 noundef 15) #15
  br label %12

12:                                               ; preds = %10, %7
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  %14 = trunc i64 %13 to i32
  %15 = load i32, ptr @trustlst_len, align 4, !tbaa !14
  %16 = icmp slt i32 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 %14, ptr @trustlst_len, align 4, !tbaa !14
  br label %18

18:                                               ; preds = %2, %17, %12
  %19 = add nuw nsw i64 %3, 1
  %20 = icmp eq i64 %19, 8
  br i1 %20, label %21, label %2, !llvm.loop !51

21:                                               ; preds = %18, %34
  %22 = phi i64 [ %35, %34 ], [ 0, %18 ]
  %23 = getelementptr inbounds [4 x [16 x i8]], ptr @legit_lst, i64 0, i64 %22
  %24 = tail call ptr @LANG(ptr noundef nonnull %23) #15
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %24, i64 noundef 15) #15
  br label %28

28:                                               ; preds = %26, %21
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #17
  %30 = trunc i64 %29 to i32
  %31 = load i32, ptr @legitlst_len, align 4, !tbaa !14
  %32 = icmp slt i32 %31, %30
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 %30, ptr @legitlst_len, align 4, !tbaa !14
  br label %34

34:                                               ; preds = %28, %33
  %35 = add nuw nsw i64 %22, 1
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %21, !llvm.loop !52

37:                                               ; preds = %34
  store i1 true, ptr @init_trust_lst.initialized, align 4
  br label %38

38:                                               ; preds = %0, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setkrent(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @nkr, align 4, !tbaa !14
  %3 = icmp slt i32 %2, 8
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 1473, ptr noundef nonnull @__PRETTY_FUNCTION__.setkrent) #16
  unreachable

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @globalPubringName, ptr %0
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = zext nneg i32 %2 to i64
  br label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i64 %15, 1
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %20, label %14, !llvm.loop !17

14:                                               ; preds = %9, %11
  %15 = phi i64 [ 0, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %11

20:                                               ; preds = %11, %5
  %21 = tail call ptr @store_str(ptr noundef nonnull %7)
  %22 = load i32, ptr @nkr, align 4, !tbaa !14
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @nkr, align 4, !tbaa !14
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %24
  store ptr %21, ptr %25, align 8, !tbaa !16
  br label %26

26:                                               ; preds = %14, %20
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @init_userhash() local_unnamed_addr #0 {
  %1 = alloca [130 x i16], align 16
  %2 = alloca [130 x i16], align 16
  %3 = alloca [8 x i8], align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  %6 = load ptr, ptr @hashtbl, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = tail call ptr @xmalloc(i32 noundef 2056) #15
  %10 = load i64, ptr @totalsize, align 8, !tbaa !18
  %11 = add nsw i64 %10, 2048
  store i64 %11, ptr @totalsize, align 8, !tbaa !18
  %12 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %12, ptr %9, align 8, !tbaa !20
  store ptr %9, ptr @bufpool, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.bufpool, ptr %9, i64 0, i32 1
  store ptr %13, ptr @hashtbl, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %13, i8 0, i64 2048, i1 false)
  br label %14

14:                                               ; preds = %8, %0
  %15 = load i32, ptr @nkr, align 4, !tbaa !14
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %14, %86
  %18 = phi i64 [ %87, %86 ], [ 0, %14 ]
  %19 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = call noalias ptr @fopen(ptr noundef %20, ptr noundef nonnull @.str)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %86, label %23

23:                                               ; preds = %17, %82
  %24 = phi i32 [ %83, %82 ], [ 0, %17 ]
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %2) #15
  %25 = call signext i16 @readkeypacket(ptr noundef nonnull %21, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %26 = icmp slt i16 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = sext i16 %25 to i32
  br label %38

29:                                               ; preds = %23
  %30 = load i8, ptr %5, align 1, !tbaa !13
  %31 = call i32 @is_key_ctb(i8 noundef zeroext %30) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @extract_keyID(ptr noundef nonnull %3, ptr noundef nonnull %1) #15
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i8, ptr %5, align 1, !tbaa !13
  %36 = icmp eq i8 %35, -76
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @PascalToC(ptr noundef nonnull %4) #15
  br label %38

38:                                               ; preds = %27, %34, %37
  %39 = phi i32 [ %28, %27 ], [ 0, %37 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %1) #15
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %84, label %41

41:                                               ; preds = %38
  %42 = load i8, ptr %5, align 1, !tbaa !13
  %43 = call i32 @is_key_ctb(i8 noundef zeroext %42) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = call ptr @user_from_keyID(ptr noundef nonnull %3)
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, i32 1, i32 %24
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i32 [ %24, %41 ], [ %48, %45 ]
  %51 = icmp ne i32 %50, 0
  %52 = load i8, ptr %5, align 1
  %53 = icmp eq i8 %52, -76
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load i32, ptr @hashleft, align 4, !tbaa !14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = call ptr @xmalloc(i32 noundef 3992) #15
  %60 = load i64, ptr @totalsize, align 8, !tbaa !18
  %61 = add nsw i64 %60, 3984
  store i64 %61, ptr @totalsize, align 8, !tbaa !18
  %62 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %62, ptr %59, align 8, !tbaa !20
  store ptr %59, ptr @bufpool, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.bufpool, ptr %59, i64 0, i32 1
  store ptr %63, ptr @hashptr, align 8, !tbaa !16
  store i32 166, ptr @hashleft, align 4, !tbaa !14
  br label %64

64:                                               ; preds = %58, %55
  %65 = load ptr, ptr @hashptr, align 8, !tbaa !16
  %66 = getelementptr inbounds %struct.hashent, ptr %65, i64 0, i32 1
  %67 = load i64, ptr %3, align 8
  store i64 %67, ptr %66, align 8
  %68 = call ptr @store_str(ptr noundef nonnull %4)
  %69 = load ptr, ptr @hashptr, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.hashent, ptr %69, i64 0, i32 2
  store ptr %68, ptr %70, align 8, !tbaa !53
  %71 = load ptr, ptr @hashtbl, align 8, !tbaa !16
  %72 = load i8, ptr %3, align 8, !tbaa !13
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !16
  store ptr %75, ptr %69, align 8, !tbaa !55
  %76 = load i8, ptr %3, align 8, !tbaa !13
  %77 = zext i8 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %71, i64 %77
  store ptr %69, ptr %78, align 8, !tbaa !16
  %79 = getelementptr inbounds %struct.hashent, ptr %69, i64 1
  store ptr %79, ptr @hashptr, align 8, !tbaa !16
  %80 = load i32, ptr @hashleft, align 4, !tbaa !14
  %81 = add nsw i32 %80, -1
  store i32 %81, ptr @hashleft, align 4, !tbaa !14
  br label %82

82:                                               ; preds = %64, %49
  %83 = phi i32 [ 0, %64 ], [ %50, %49 ]
  br label %23, !llvm.loop !56

84:                                               ; preds = %38
  %85 = call i32 @fclose(ptr noundef nonnull %21)
  br label %86

86:                                               ; preds = %17, %84
  %87 = add nuw nsw i64 %18, 1
  %88 = load i32, ptr @nkr, align 4, !tbaa !14
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %17, label %91, !llvm.loop !57

91:                                               ; preds = %86, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @readkpacket(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [130 x i16], align 16
  %7 = alloca [130 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #15
  %8 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4, ptr noundef null) #15
  %9 = icmp slt i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = sext i16 %8 to i32
  br label %25

12:                                               ; preds = %5
  %13 = icmp eq ptr %3, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr %1, align 1, !tbaa !13
  %16 = call i32 @is_key_ctb(i8 noundef zeroext %15) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @extract_keyID(ptr noundef nonnull %3, ptr noundef nonnull %6) #15
  br label %19

19:                                               ; preds = %18, %14, %12
  %20 = icmp eq ptr %2, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %1, align 1, !tbaa !13
  %23 = icmp eq i8 %22, -76
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @PascalToC(ptr noundef nonnull %2) #15
  br label %25

25:                                               ; preds = %19, %21, %24, %10
  %26 = phi i32 [ %11, %10 ], [ 0, %24 ], [ 0, %21 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %6) #15
  ret i32 %26
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @read_trust(ptr nocapture noundef %0, ptr noundef writeonly %1) local_unnamed_addr #6 {
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #15
  %4 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 3, ptr noundef %0)
  %5 = icmp eq i64 %4, 3
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = load i8, ptr %3, align 1, !tbaa !13
  %8 = icmp eq i8 %7, -80
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = icmp sgt i8 %7, -1
  br i1 %10, label %22, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @fseek(ptr noundef %0, i64 noundef -3, i32 noundef 1)
  br label %22

13:                                               ; preds = %6
  %14 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = icmp eq ptr %1, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !13
  store i8 %21, ptr %1, align 1, !tbaa !13
  br label %22

22:                                               ; preds = %17, %19, %13, %9, %2, %11
  %23 = phi i32 [ -7, %11 ], [ -1, %2 ], [ -3, %9 ], [ -3, %13 ], [ 0, %19 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #15
  ret i32 %23
}

declare ptr @keyIDstring(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @user_from_keyID(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [130 x i16], align 16
  %3 = alloca [130 x i16], align 16
  %4 = alloca [8 x i8], align 1
  %5 = alloca i8, align 1
  %6 = load ptr, ptr @hashtbl, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %65

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  %9 = load i32, ptr @nkr, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %8, %53
  %12 = phi i64 [ %55, %53 ], [ 0, %8 ]
  %13 = phi i32 [ %54, %53 ], [ 0, %8 ]
  %14 = getelementptr inbounds [8 x ptr], ptr @krnames, i64 0, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = call noalias ptr @fopen(ptr noundef %15, ptr noundef nonnull @.str)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %11, %44
  %19 = phi i32 [ %45, %44 ], [ %13, %11 ]
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #15
  %20 = call signext i16 @readkeypacket(ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @_user_from_keyID.userid, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %21 = icmp slt i16 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = sext i16 %20 to i32
  br label %33

24:                                               ; preds = %18
  %25 = load i8, ptr %5, align 1, !tbaa !13
  %26 = call i32 @is_key_ctb(i8 noundef zeroext %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @extract_keyID(ptr noundef nonnull %4, ptr noundef nonnull %2) #15
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i8, ptr %5, align 1, !tbaa !13
  %31 = icmp eq i8 %30, -76
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @PascalToC(ptr noundef nonnull @_user_from_keyID.userid) #15
  br label %33

33:                                               ; preds = %32, %29, %22
  %34 = phi i32 [ %23, %22 ], [ 0, %32 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %2) #15
  %35 = icmp ugt i32 %34, -4
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %5, align 1, !tbaa !13
  %38 = call i32 @is_key_ctb(i8 noundef zeroext %37) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) %0, i64 8)
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 1, i32 %19
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %19, %36 ], [ %43, %40 ]
  %46 = icmp ne i32 %45, 0
  %47 = load i8, ptr %5, align 1
  %48 = icmp eq i8 %47, -76
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %18, !llvm.loop !58

50:                                               ; preds = %44, %33
  %51 = phi i32 [ 1, %44 ], [ %19, %33 ]
  %52 = call i32 @fclose(ptr noundef nonnull %16)
  br label %53

53:                                               ; preds = %50, %11
  %54 = phi i32 [ %13, %11 ], [ %51, %50 ]
  %55 = add nuw nsw i64 %12, 1
  %56 = icmp eq i32 %54, 0
  %57 = load i32, ptr @nkr, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %55, %58
  %60 = select i1 %56, i1 %59, i1 false
  br i1 %60, label %11, label %61, !llvm.loop !59

61:                                               ; preds = %53
  %62 = select i1 %56, ptr null, ptr @_user_from_keyID.userid
  br label %63

63:                                               ; preds = %8, %61
  %64 = phi ptr [ null, %8 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %80

65:                                               ; preds = %1
  %66 = load i8, ptr %0, align 1, !tbaa !13
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %6, i64 %67
  br label %69

69:                                               ; preds = %73, %65
  %70 = phi ptr [ %68, %65 ], [ %71, %73 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.hashent, ptr %71, i64 0, i32 1
  %75 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %0, ptr noundef nonnull dereferenceable(8) %74, i64 8)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %69, !llvm.loop !60

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hashent, ptr %71, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !53
  br label %80

80:                                               ; preds = %69, %77, %63
  %81 = phi ptr [ %79, %77 ], [ %64, %63 ], [ null, %69 ]
  ret ptr %81
}

; Function Attrs: nounwind uwtable
define dso_local void @endkrent() local_unnamed_addr #0 {
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store ptr null, ptr @hashtbl, align 8, !tbaa !16
  store i32 0, ptr @nkr, align 4, !tbaa !14
  %1 = load i8, ptr @verbose, align 1, !tbaa !13
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %5 = load i64, ptr @totalsize, align 8, !tbaa !18
  %6 = sdiv i64 %5, 1024
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.83, i64 noundef %6)
  br label %8

8:                                                ; preds = %3, %0
  store i64 0, ptr @totalsize, align 8, !tbaa !18
  %9 = load ptr, ptr @bufpool, align 8, !tbaa !16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %9, %8 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !20
  store ptr %13, ptr @bufpool, align 8, !tbaa !16
  tail call void @free(ptr noundef %12) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %11, !llvm.loop !48

15:                                               ; preds = %11, %8
  store i32 0, ptr @hashleft, align 4, !tbaa !14
  store i32 0, ptr @strleft, align 4, !tbaa !14
  store i32 0, ptr @nleft, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @ask_owntrust(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = load i1, ptr @check_only, align 1
  %5 = load i8, ptr @filter_mode, align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  %8 = load i8, ptr @batchmode, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, ptr @undefined_trust, align 4, !tbaa !14
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @undefined_trust, align 4, !tbaa !14
  br label %34

14:                                               ; preds = %2
  %15 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %16 = tail call ptr @LANG(ptr noundef nonnull @.str.15) #15
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef %16)
  %18 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %19 = tail call ptr @LANG(ptr noundef nonnull @.str.16) #15
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef %19, ptr noundef %0)
  %21 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %22 = tail call i32 @fflush(ptr noundef %21)
  %23 = call i32 @getstring(ptr noundef nonnull %3, i32 noundef 7, i32 noundef 1) #15
  %24 = load i8, ptr %3, align 1, !tbaa !13
  %25 = add i8 %24, -49
  %26 = icmp ult i8 %25, 4
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = and i8 %1, 7
  %29 = zext nneg i8 %28 to i32
  br label %34

30:                                               ; preds = %14
  %31 = zext nneg i8 %25 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @switch.table.ask_owntrust, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %27, %11
  %35 = phi i32 [ 0, %11 ], [ %29, %27 ], [ %33, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %35
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @getstring(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @lookup_by_keyID(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [130 x i16], align 16
  %4 = alloca [130 x i16], align 16
  %5 = alloca [8 x i8], align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  tail call void @rewind(ptr noundef %0)
  br label %7

7:                                                ; preds = %33, %2
  %8 = phi i64 [ %34, %33 ], [ 0, %2 ]
  br label %9

9:                                                ; preds = %7, %22
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #15
  %10 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %11 = icmp slt i16 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = sext i16 %10 to i32
  br label %19

14:                                               ; preds = %9
  %15 = load i8, ptr %6, align 1, !tbaa !13
  %16 = call i32 @is_key_ctb(i8 noundef zeroext %15) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @extract_keyID(ptr noundef nonnull %5, ptr noundef nonnull %3) #15
  br label %19

19:                                               ; preds = %14, %18, %12
  %20 = phi i32 [ %13, %12 ], [ 0, %18 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #15
  %21 = icmp ugt i32 %20, -4
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = icmp slt i32 %20, 0
  br i1 %23, label %9, label %24, !llvm.loop !61

24:                                               ; preds = %22
  %25 = load i8, ptr %6, align 1, !tbaa !13
  %26 = call i32 @is_key_ctb(i8 noundef zeroext %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %5, ptr noundef nonnull dereferenceable(8) %1, i64 8)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @fseek(ptr noundef %0, i64 noundef %8, i32 noundef 0)
  br label %37

33:                                               ; preds = %28, %24
  %34 = call i64 @ftell(ptr noundef %0)
  br label %7, !llvm.loop !61

35:                                               ; preds = %19
  %36 = sext i32 %20 to i64
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %36, %35 ], [ %8, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i64 %38
}

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @is_key_ctb(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @show_userid(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [130 x i16], align 16
  %4 = alloca [130 x i16], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  %7 = tail call i64 @ftell(ptr noundef %0)
  %8 = tail call i64 @lookup_by_keyID(ptr noundef %0, ptr noundef %1)
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %10, label %29

10:                                               ; preds = %2, %23
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %4) #15
  %11 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %12 = icmp slt i16 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = sext i16 %11 to i32
  br label %19

15:                                               ; preds = %10
  %16 = load i8, ptr %6, align 1, !tbaa !13
  %17 = icmp eq i8 %16, -76
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @PascalToC(ptr noundef nonnull %5) #15
  br label %19

19:                                               ; preds = %13, %15, %18
  %20 = phi i32 [ %14, %13 ], [ 0, %18 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %3) #15
  %21 = and i32 %20, -3
  %22 = icmp eq i32 %21, -3
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %6, align 1, !tbaa !13
  %25 = icmp eq i8 %24, -76
  br i1 %25, label %26, label %10, !llvm.loop !62

26:                                               ; preds = %23
  %27 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.12, ptr noundef nonnull %5)
  br label %34

29:                                               ; preds = %19, %2
  %30 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %31 = call ptr @LANG(ptr noundef nonnull @.str.14) #15
  %32 = call ptr @keyIDstring(ptr noundef %1) #15
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef %31, ptr noundef %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = call i32 @fseek(ptr noundef %0, i64 noundef %7, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @show_key(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [256 x i8], align 16
  %7 = alloca [130 x i16], align 16
  %8 = alloca [130 x i16], align 16
  %9 = alloca [8 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [8 x i8], align 1
  %14 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #15
  %15 = load i16, ptr @global_precision, align 2, !tbaa !63
  %16 = tail call i64 @ftell(ptr noundef %0)
  %17 = tail call i32 @fseek(ptr noundef %0, i64 noundef %1, i32 noundef 0)
  %18 = and i32 %2, 4
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %2, 0
  %21 = and i32 %2, 16
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %2, 8
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %2, 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 1
  %28 = getelementptr inbounds [3 x i8], ptr %5, i64 0, i64 2
  %29 = and i32 %2, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %2, 16
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %2, 2
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 1
  %36 = getelementptr inbounds [3 x i8], ptr %4, i64 0, i64 2
  br label %37

37:                                               ; preds = %149, %3
  %38 = phi i32 [ -1, %3 ], [ %150, %149 ]
  %39 = phi i8 [ 0, %3 ], [ %151, %149 ]
  %40 = phi i32 [ 0, %3 ], [ %152, %149 ]
  %41 = phi i32 [ 0, %3 ], [ %153, %149 ]
  %42 = phi i8 [ 0, %3 ], [ %154, %149 ]
  %43 = phi i32 [ 0, %3 ], [ %155, %149 ]
  %44 = phi i32 [ 0, %3 ], [ %156, %149 ]
  %45 = call signext i16 @readkeypacket(ptr noundef %0, ptr noundef null, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %12) #15
  %46 = sext i16 %45 to i32
  %47 = icmp ugt i16 %45, -4
  br i1 %47, label %246, label %48

48:                                               ; preds = %37
  %49 = load i8, ptr %11, align 1, !tbaa !13
  %50 = call i32 @is_key_ctb(i8 noundef zeroext %49) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %41, 0
  br i1 %53, label %54, label %246

54:                                               ; preds = %52
  call void @extract_keyID(ptr noundef nonnull %13, ptr noundef nonnull %7) #15
  br i1 %19, label %56, label %55

55:                                               ; preds = %54
  call void @getKeyHash(ptr noundef nonnull %14, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i8, ptr %11, align 1, !tbaa !13
  br label %149

58:                                               ; preds = %48
  %59 = load i8, ptr %11, align 1, !tbaa !13
  switch i8 %59, label %203 [
    i8 -80, label %60
    i8 -76, label %70
  ]

60:                                               ; preds = %58
  %61 = icmp slt i32 %38, 0
  %62 = icmp ne i32 %40, 0
  %63 = select i1 %61, i1 true, i1 %62
  %64 = load i8, ptr %12, align 1
  %65 = and i8 %64, 32
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %63, i1 true, i1 %66
  %68 = select i1 %67, i32 %44, i32 1
  %69 = select i1 %30, i8 %42, i8 1
  br label %149

70:                                               ; preds = %58
  %71 = icmp eq i32 %40, 0
  call void @PascalToC(ptr noundef nonnull %6) #15
  br i1 %71, label %72, label %169

72:                                               ; preds = %70
  br i1 %22, label %78, label %73

73:                                               ; preds = %72
  %74 = call ptr @key2IDstring(ptr noundef nonnull %7) #15
  %75 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %76 = call ptr @LANG(ptr noundef nonnull @.str.35) #15
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef %76, ptr noundef %74)
  br label %246

78:                                               ; preds = %72
  br i1 %24, label %115, label %79

79:                                               ; preds = %78
  %80 = and i8 %39, 124
  %81 = load ptr, ptr @pgpout, align 8, !tbaa !16
  switch i8 %80, label %88 [
    i8 24, label %82
    i8 20, label %85
  ]

82:                                               ; preds = %79
  %83 = call ptr @LANG(ptr noundef nonnull @.str.17) #15
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef %83)
  br label %90

85:                                               ; preds = %79
  %86 = call ptr @LANG(ptr noundef nonnull @.str.18) #15
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef %86)
  br label %90

88:                                               ; preds = %79
  %89 = call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %81)
  br label %90

90:                                               ; preds = %85, %88, %82
  %91 = icmp slt i32 %38, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %94 = call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %93)
  br label %107

95:                                               ; preds = %90
  %96 = icmp eq i32 %43, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %95
  %98 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %99 = call i64 @fwrite(ptr nonnull @.str.21, i64 2, i64 1, ptr %98)
  br label %107

100:                                              ; preds = %95
  %101 = icmp eq i32 %44, 0
  %102 = load ptr, ptr @pgpout, align 8, !tbaa !16
  br i1 %101, label %105, label %103

103:                                              ; preds = %100
  %104 = call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %102)
  br label %107

105:                                              ; preds = %100
  %106 = call i64 @fwrite(ptr nonnull @.str.23, i64 2, i64 1, ptr %102)
  br label %107

107:                                              ; preds = %97, %105, %103, %92
  %108 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %109 = call i32 @countbits(ptr noundef nonnull %7) #15
  %110 = call ptr @key2IDstring(ptr noundef nonnull %7) #15
  %111 = call ptr @cdate(ptr noundef nonnull %10) #15
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.24, i32 noundef %109, ptr noundef %110, ptr noundef %111)
  %113 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %114 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.12, ptr noundef nonnull %6)
  br label %246

115:                                              ; preds = %78
  %116 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %117 = call ptr @LANG(ptr noundef nonnull @.str.25) #15
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef %117, ptr noundef nonnull %6)
  %119 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %120 = call ptr @LANG(ptr noundef nonnull @.str.26) #15
  %121 = call i32 @countbits(ptr noundef nonnull %7) #15
  %122 = call ptr @key2IDstring(ptr noundef nonnull %7) #15
  %123 = call ptr @cdate(ptr noundef nonnull %10) #15
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef %120, i32 noundef %121, ptr noundef %122, ptr noundef %123)
  switch i32 %38, label %133 [
    i32 -4, label %125
    i32 -6, label %129
  ]

125:                                              ; preds = %115
  %126 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %127 = call ptr @LANG(ptr noundef nonnull @.str.27) #15
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef %127)
  br label %135

129:                                              ; preds = %115
  %130 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %131 = call ptr @LANG(ptr noundef nonnull @.str.28) #15
  %132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef %131)
  br label %135

133:                                              ; preds = %115
  br i1 %26, label %135, label %134

134:                                              ; preds = %133
  call void @printKeyHash(ptr noundef nonnull %14, i8 noundef zeroext 0) #15
  br label %135

135:                                              ; preds = %129, %134, %133, %125
  %136 = icmp eq i32 %43, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %135
  %138 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %139 = call ptr @LANG(ptr noundef nonnull @.str.29) #15
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef %139)
  br label %141

141:                                              ; preds = %137, %135
  %142 = icmp eq i32 %44, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %141
  %144 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %145 = call ptr @LANG(ptr noundef nonnull @.str.30) #15
  %146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef %145)
  br label %147

147:                                              ; preds = %143, %141
  %148 = icmp eq i8 %42, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %147, %60, %203, %245, %214, %177, %194, %56
  %150 = phi i32 [ %46, %56 ], [ %38, %194 ], [ %38, %177 ], [ %38, %245 ], [ %38, %214 ], [ %38, %203 ], [ %38, %60 ], [ %38, %147 ]
  %151 = phi i8 [ %57, %56 ], [ %39, %194 ], [ %39, %177 ], [ %39, %245 ], [ %39, %214 ], [ %39, %203 ], [ %39, %60 ], [ %39, %147 ]
  %152 = phi i32 [ %40, %56 ], [ 1, %194 ], [ 1, %177 ], [ %40, %245 ], [ %40, %214 ], [ %40, %203 ], [ %40, %60 ], [ 1, %147 ]
  %153 = phi i32 [ 1, %56 ], [ %41, %194 ], [ %41, %177 ], [ %41, %245 ], [ %41, %214 ], [ %41, %203 ], [ %41, %60 ], [ %41, %147 ]
  %154 = phi i8 [ %42, %56 ], [ 1, %194 ], [ 0, %177 ], [ %42, %245 ], [ %42, %214 ], [ %42, %203 ], [ %69, %60 ], [ 0, %147 ]
  %155 = phi i32 [ %43, %56 ], [ %43, %194 ], [ %43, %177 ], [ %208, %245 ], [ %208, %214 ], [ %43, %203 ], [ %43, %60 ], [ %43, %147 ]
  %156 = phi i32 [ %44, %56 ], [ %44, %194 ], [ %44, %177 ], [ %44, %245 ], [ %44, %214 ], [ %44, %203 ], [ %68, %60 ], [ %44, %147 ]
  br label %37, !llvm.loop !65

157:                                              ; preds = %147
  %158 = load i8, ptr %12, align 1, !tbaa !13
  %159 = and i8 %158, 7
  %160 = zext nneg i8 %159 to i64
  %161 = getelementptr inbounds [8 x ptr], ptr @owntrust_msg, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !16
  %163 = load i8, ptr %162, align 1, !tbaa !13
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %157
  %166 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %167 = call ptr @LANG(ptr noundef nonnull %162) #15
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef %167)
  br label %177

169:                                              ; preds = %70
  br i1 %20, label %173, label %170

170:                                              ; preds = %169
  %171 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %172 = call i32 @fputc(i32 10, ptr %171)
  br label %173

173:                                              ; preds = %170, %169
  %174 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %175 = call ptr @LANG(ptr noundef nonnull @.str.32) #15
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef %175, ptr noundef nonnull %6)
  br label %177

177:                                              ; preds = %157, %165, %173
  %178 = icmp eq i8 %42, 0
  br i1 %178, label %149, label %179

179:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #15
  %180 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 3, ptr noundef %0)
  %181 = icmp eq i64 %180, 3
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = load i8, ptr %5, align 1, !tbaa !13
  %184 = icmp eq i8 %183, -80
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = icmp sgt i8 %183, -1
  br i1 %186, label %194, label %187

187:                                              ; preds = %185
  %188 = call i32 @fseek(ptr noundef %0, i64 noundef -3, i32 noundef 1)
  br label %194

189:                                              ; preds = %182
  %190 = load i8, ptr %27, align 1, !tbaa !13
  %191 = icmp eq i8 %190, 1
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i8, ptr %28, align 1, !tbaa !13
  store i8 %193, ptr %12, align 1, !tbaa !13
  br label %194

194:                                              ; preds = %179, %185, %187, %189, %192
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #15
  %195 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %196 = load i8, ptr %12, align 1, !tbaa !13
  %197 = and i8 %196, 3
  %198 = zext nneg i8 %197 to i64
  %199 = shl i64 %198, 2
  %200 = call ptr @llvm.load.relative.i64(ptr @reltable.show_key, i64 %199)
  %201 = call ptr @LANG(ptr noundef %200) #15
  %202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef %201)
  br label %149

203:                                              ; preds = %58
  %204 = and i8 %59, 124
  %205 = icmp eq i8 %204, 8
  br i1 %205, label %206, label %149

206:                                              ; preds = %203
  %207 = icmp eq i32 %40, 0
  %208 = select i1 %207, i32 1, i32 %43
  br i1 %32, label %214, label %209

209:                                              ; preds = %206
  %210 = call ptr @key2IDstring(ptr noundef nonnull %7) #15
  %211 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %212 = call ptr @LANG(ptr noundef nonnull @.str.35) #15
  %213 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef %212, ptr noundef %210)
  br label %246

214:                                              ; preds = %206
  br i1 %34, label %149, label %215

215:                                              ; preds = %214
  %216 = icmp eq i8 %42, 0
  br i1 %216, label %241, label %217

217:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  %218 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 3, ptr noundef %0)
  %219 = icmp eq i64 %218, 3
  br i1 %219, label %220, label %232

220:                                              ; preds = %217
  %221 = load i8, ptr %4, align 1, !tbaa !13
  %222 = icmp eq i8 %221, -80
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = icmp sgt i8 %221, -1
  br i1 %224, label %232, label %225

225:                                              ; preds = %223
  %226 = call i32 @fseek(ptr noundef %0, i64 noundef -3, i32 noundef 1)
  br label %232

227:                                              ; preds = %220
  %228 = load i8, ptr %35, align 1, !tbaa !13
  %229 = icmp eq i8 %228, 1
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i8, ptr %36, align 1, !tbaa !13
  store i8 %231, ptr %12, align 1, !tbaa !13
  br label %232

232:                                              ; preds = %217, %223, %225, %227, %230
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  %233 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %234 = load i8, ptr %12, align 1, !tbaa !13
  %235 = and i8 %234, 7
  %236 = zext nneg i8 %235 to i64
  %237 = shl i64 %236, 2
  %238 = call ptr @llvm.load.relative.i64(ptr @reltable.show_key.84, i64 %237)
  %239 = call ptr @LANG(ptr noundef %238) #15
  %240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef %239)
  br label %245

241:                                              ; preds = %215
  %242 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %243 = call ptr @LANG(ptr noundef nonnull @.str.33) #15
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef %243)
  br label %245

245:                                              ; preds = %241, %232
  call void @show_userid(ptr noundef %0, ptr noundef nonnull %9)
  br label %149

246:                                              ; preds = %37, %52, %209, %107, %73
  %247 = phi i32 [ 1, %73 ], [ 1, %107 ], [ %40, %209 ], [ %40, %52 ], [ %40, %37 ]
  %248 = phi i32 [ %43, %73 ], [ %43, %107 ], [ %208, %209 ], [ %43, %52 ], [ %43, %37 ]
  %249 = icmp eq i16 %45, -1
  %250 = icmp ne i32 %247, 0
  %251 = and i1 %249, %250
  %252 = select i1 %251, i32 0, i32 %46
  %253 = icmp eq i32 %248, 0
  %254 = xor i1 %250, true
  %255 = select i1 %254, i1 %253, i1 false
  %256 = icmp ne i32 %2, 16
  %257 = and i1 %256, %255
  br i1 %257, label %258, label %265

258:                                              ; preds = %246
  %259 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %260 = call ptr @LANG(ptr noundef nonnull @.str.34) #15
  %261 = call i32 @countbits(ptr noundef nonnull %7) #15
  %262 = call ptr @keyIDstring(ptr noundef nonnull %13) #15
  %263 = call ptr @cdate(ptr noundef nonnull %10) #15
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef %260, i32 noundef %261, ptr noundef %262, ptr noundef %263)
  br label %265

265:                                              ; preds = %258, %246
  %266 = phi i32 [ -1, %258 ], [ %252, %246 ]
  store i16 %15, ptr @global_precision, align 2, !tbaa !63
  %267 = call i32 @fseek(ptr noundef %0, i64 noundef %16, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #15
  ret i32 %266
}

declare signext i16 @readkeypacket(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @extract_keyID(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @getKeyHash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @PascalToC(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @show_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %3 = tail call ptr @LANG(ptr noundef nonnull @.str.35) #15
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef %3, ptr noundef %0)
  ret void
}

declare ptr @key2IDstring(ptr noundef) local_unnamed_addr #4

declare i32 @countbits(ptr noundef) local_unnamed_addr #4

declare ptr @cdate(ptr noundef) local_unnamed_addr #4

declare void @printKeyHash(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @write_trust_pos(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @ftell(ptr noundef %0)
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef %2, i32 noundef 0)
  tail call void @write_trust(ptr noundef %0, i8 noundef zeroext %1) #15
  %6 = tail call i32 @fseek(ptr noundef %0, i64 noundef %4, i32 noundef 0)
  ret void
}

declare void @write_trust(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @store_str(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %3 = trunc i64 %2 to i32
  %4 = add i32 %3, 1
  %5 = icmp sgt i32 %4, 4000
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr @stderr, align 8, !tbaa !16
  %8 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 27, i64 1, ptr %7) #18
  br label %25

9:                                                ; preds = %1
  %10 = load i32, ptr @strleft, align 4, !tbaa !14
  %11 = icmp sgt i32 %4, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = tail call ptr @xmalloc(i32 noundef 4008) #15
  %14 = load i64, ptr @totalsize, align 8, !tbaa !18
  %15 = add nsw i64 %14, 4000
  store i64 %15, ptr @totalsize, align 8, !tbaa !18
  %16 = load ptr, ptr @bufpool, align 8, !tbaa !16
  store ptr %16, ptr %13, align 8, !tbaa !20
  store ptr %13, ptr @bufpool, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.bufpool, ptr %13, i64 0, i32 1
  store ptr %17, ptr @strptr, align 8, !tbaa !16
  store i32 4000, ptr @strleft, align 4, !tbaa !14
  br label %18

18:                                               ; preds = %12, %9
  %19 = load ptr, ptr @strptr, align 8, !tbaa !16
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %0) #15
  %21 = sext i32 %4 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  store ptr %22, ptr @strptr, align 8, !tbaa !16
  %23 = load i32, ptr @strleft, align 4, !tbaa !14
  %24 = sub nsw i32 %23, %4
  store i32 %24, ptr @strleft, align 4, !tbaa !14
  br label %25

25:                                               ; preds = %18, %6
  %26 = phi ptr [ null, %6 ], [ %19, %18 ]
  ret ptr %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

declare signext i16 @mp_compare(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @trace_sig_chain(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %4 = load i32, ptr @max_cert_depth, align 4, !tbaa !14
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.37, i32 noundef 551, ptr noundef nonnull @__PRETTY_FUNCTION__.trace_sig_chain) #16
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pubkey, ptr %0, i64 0, i32 6
  %9 = load i8, ptr %8, align 1, !tbaa !66
  %10 = icmp eq i8 %9, 0
  %11 = zext i8 %9 to i32
  %12 = icmp sgt i32 %11, %1
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %189

14:                                               ; preds = %7
  %15 = trunc i32 %1 to i8
  store i8 %15, ptr %8, align 1, !tbaa !66
  %16 = getelementptr inbounds %struct.pubkey, ptr %0, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !24
  %18 = and i8 %17, 7
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pubkey, ptr %0, i64 0, i32 2
  %22 = load i32, ptr @marginal_min, align 4
  %23 = load i32, ptr @complete_min, align 4
  br label %24

24:                                               ; preds = %58, %20
  %25 = phi ptr [ %21, %20 ], [ %26, %58 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %72, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.userid, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.pubkey, ptr %30, i64 0, i32 5
  %32 = load i8, ptr %31, align 8, !tbaa !24
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.userid, ptr %26, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %34, %38
  %39 = phi ptr [ %48, %38 ], [ %36, %34 ]
  %40 = phi i32 [ %47, %38 ], [ 0, %34 ]
  %41 = getelementptr inbounds %struct.signature, ptr %39, i64 0, i32 4
  %42 = load i8, ptr %41, align 8, !tbaa !43
  %43 = and i8 %42, 7
  %44 = zext nneg i8 %43 to i64
  %45 = getelementptr inbounds [8 x i32], ptr @trust_tbl, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !14
  %47 = add nsw i32 %46, %40
  %48 = load ptr, ptr %39, align 8, !tbaa !16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %38, !llvm.loop !47

50:                                               ; preds = %38, %34
  %51 = phi i32 [ 0, %34 ], [ %47, %38 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = icmp slt i32 %51, %22
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = icmp slt i32 %51, %23
  %57 = select i1 %56, i8 2, i8 3
  br label %58

58:                                               ; preds = %28, %50, %53, %55
  %59 = phi i8 [ 3, %28 ], [ 0, %50 ], [ 1, %53 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.userid, ptr %26, i64 0, i32 4
  %61 = load i8, ptr %60, align 8, !tbaa !35
  %62 = and i8 %61, -4
  %63 = or disjoint i8 %62, %59
  store i8 %63, ptr %60, align 8, !tbaa !35
  %64 = icmp eq i8 %59, 3
  br i1 %64, label %65, label %24, !llvm.loop !67

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.pubkey, ptr %0, i64 0, i32 4
  %67 = tail call ptr @user_from_keyID(ptr noundef nonnull %66)
  %68 = load i8, ptr %16, align 8, !tbaa !24
  %69 = tail call i32 @ask_owntrust(ptr noundef %67, i8 noundef zeroext %68), !range !44
  %70 = trunc i32 %69 to i8
  %71 = or disjoint i8 %17, %70
  store i8 %71, ptr %16, align 8, !tbaa !24
  br label %72

72:                                               ; preds = %24, %65, %14
  %73 = getelementptr inbounds %struct.pubkey, ptr %0, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !41
  %75 = icmp eq ptr %74, null
  br i1 %75, label %189, label %76

76:                                               ; preds = %72
  %77 = shl nsw i32 %1, 1
  %78 = shl nsw i32 %1, 1
  %79 = add nsw i32 %1, 1
  br label %80

80:                                               ; preds = %76, %185
  %81 = phi ptr [ %74, %76 ], [ %187, %185 ]
  %82 = getelementptr inbounds %struct.signature, ptr %81, i64 0, i32 4
  %83 = load i8, ptr %82, align 8, !tbaa !43
  %84 = and i8 %83, 64
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = and i8 %83, 120
  %88 = load i8, ptr %16, align 8, !tbaa !24
  %89 = and i8 %88, 7
  %90 = or disjoint i8 %87, %89
  %91 = or disjoint i8 %90, -128
  store i8 %91, ptr %82, align 8, !tbaa !43
  %92 = load i8, ptr @mverbose, align 1, !tbaa !13
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %86
  %95 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %96 = getelementptr inbounds %struct.signature, ptr %81, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !39
  %98 = getelementptr inbounds %struct.userid, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !33
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.62, i32 noundef %77, ptr noundef nonnull @.str.11, ptr noundef %99)
  br label %113

101:                                              ; preds = %80
  %102 = and i8 %83, 56
  %103 = or disjoint i8 %102, 2
  store i8 %103, ptr %82, align 8, !tbaa !43
  %104 = load i8, ptr @mverbose, align 1, !tbaa !13
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr @pgpout, align 8, !tbaa !16
  %108 = getelementptr inbounds %struct.signature, ptr %81, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !39
  %110 = getelementptr inbounds %struct.userid, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !33
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.63, i32 noundef %78, ptr noundef nonnull @.str.11, ptr noundef %111)
  br label %113

113:                                              ; preds = %101, %106, %86, %94
  %114 = load i8, ptr %82, align 8, !tbaa !43
  %115 = and i8 %114, 7
  %116 = zext nneg i8 %115 to i64
  %117 = getelementptr inbounds [8 x i32], ptr @trust_tbl, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !14
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %185, label %120

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.signature, ptr %81, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !39
  %123 = getelementptr inbounds %struct.userid, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !34
  %125 = getelementptr inbounds %struct.pubkey, ptr %124, i64 0, i32 5
  %126 = load i8, ptr %125, align 8, !tbaa !24
  %127 = icmp sgt i8 %126, -1
  br i1 %127, label %128, label %185

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.pubkey, ptr %124, i64 0, i32 6
  %130 = load i8, ptr %129, align 1, !tbaa !66
  %131 = icmp eq i8 %130, 0
  %132 = zext i8 %130 to i32
  %133 = icmp slt i32 %79, %132
  %134 = select i1 %131, i1 true, i1 %133
  br i1 %134, label %135, label %185

135:                                              ; preds = %128
  %136 = load i32, ptr @max_cert_depth, align 4, !tbaa !14
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = zext nneg i32 %136 to i64
  %140 = shl nuw nsw i64 %139, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %140, i1 false), !tbaa !14
  br label %141

141:                                              ; preds = %138, %135
  %142 = getelementptr inbounds %struct.userid, ptr %122, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !16
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %169, %141
  %146 = icmp sgt i32 %136, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %145
  %148 = load i32, ptr @complete_min, align 4, !tbaa !14
  %149 = zext nneg i32 %136 to i64
  br label %172

150:                                              ; preds = %141, %169
  %151 = phi ptr [ %170, %169 ], [ %143, %141 ]
  %152 = getelementptr inbounds %struct.signature, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !40
  %154 = getelementptr inbounds %struct.pubkey, ptr %153, i64 0, i32 6
  %155 = load i8, ptr %154, align 1, !tbaa !66
  %156 = zext i8 %155 to i32
  %157 = icmp sgt i32 %136, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.signature, ptr %151, i64 0, i32 4
  %160 = load i8, ptr %159, align 8, !tbaa !43
  %161 = and i8 %160, 7
  %162 = zext nneg i8 %161 to i64
  %163 = getelementptr inbounds [8 x i32], ptr @trust_tbl, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !14
  %165 = zext i8 %155 to i64
  %166 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !14
  %168 = add nsw i32 %167, %164
  store i32 %168, ptr %166, align 4, !tbaa !14
  br label %169

169:                                              ; preds = %150, %158
  %170 = load ptr, ptr %151, align 8, !tbaa !16
  %171 = icmp eq ptr %170, null
  br i1 %171, label %145, label %150, !llvm.loop !68

172:                                              ; preds = %147, %182
  %173 = phi i64 [ 0, %147 ], [ %183, %182 ]
  %174 = phi i32 [ 0, %147 ], [ %177, %182 ]
  %175 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %173
  %176 = load i32, ptr %175, align 4, !tbaa !14
  %177 = add nsw i32 %176, %174
  %178 = icmp slt i32 %177, %148
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = trunc i64 %173 to i32
  %181 = add nuw nsw i32 %180, 1
  tail call fastcc void @trace_sig_chain(ptr noundef %124, i32 noundef %181)
  br label %185

182:                                              ; preds = %172
  %183 = add nuw nsw i64 %173, 1
  %184 = icmp eq i64 %183, %149
  br i1 %184, label %185, label %172, !llvm.loop !69

185:                                              ; preds = %182, %145, %128, %179, %120, %113
  %186 = getelementptr inbounds %struct.signature, ptr %81, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !42
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %80, !llvm.loop !70

189:                                              ; preds = %185, %72, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret void
}

declare ptr @xmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 8}
!6 = !{!"newkey", !7, i64 0, !9, i64 8}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !11}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!21, !9, i64 0}
!21 = !{!"bufpool", !9, i64 0, !7, i64 8}
!22 = !{!23, !9, i64 16}
!23 = !{!"pubkey", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 40, !7, i64 41}
!24 = !{!23, !7, i64 40}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!23, !9, i64 8}
!28 = !{!23, !9, i64 0}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = !{!32, !9, i64 0}
!32 = !{!"userid", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32}
!33 = !{!32, !9, i64 24}
!34 = !{!32, !9, i64 8}
!35 = !{!32, !7, i64 32}
!36 = !{!32, !9, i64 16}
!37 = !{!38, !9, i64 0}
!38 = !{!"signature", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !7, i64 32}
!39 = !{!38, !9, i64 8}
!40 = !{!38, !9, i64 16}
!41 = !{!23, !9, i64 24}
!42 = !{!38, !9, i64 24}
!43 = !{!38, !7, i64 32}
!44 = !{i32 0, i32 8}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = !{i32 -2147483648, i32 1}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = !{!54, !9, i64 16}
!54 = !{!"hashent", !9, i64 0, !7, i64 8, !9, i64 16}
!55 = !{!54, !9, i64 0}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !7, i64 0}
!65 = distinct !{!65, !11}
!66 = !{!23, !7, i64 41}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
