; ModuleID = 'cpan/Digest-MD5/MD5.c'
source_filename = "cpan/Digest-MD5/MD5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr, ptr, ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.6 }
%union.anon.6 = type { i64 }
%struct.io = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.MD5_CTX = type { i32, i32, i32, i32, i32, i32, [128 x i8] }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }
%union._xivu = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xnvu = type { double }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"cpan/Digest-MD5/MD5.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Digest::MD5::new\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Digest::MD5::clone\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Digest::MD5::DESTROY\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Digest::MD5::add\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Digest::MD5::addfile\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Digest::MD5::b64digest\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Digest::MD5::digest\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Digest::MD5::hexdigest\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Digest::MD5::context\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Digest::MD5::md5\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Digest::MD5::md5_base64\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Digest::MD5::md5_hex\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"xclass\00", align 1
@vtbl_md5 = internal constant %struct.anon zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"Digest::MD5\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Not a reference to a Digest::MD5 object\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Failed to get MD5_CTX pointer\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"self, ...\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"self, fh\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Reading from filehandle failed\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"No filehandle passed\00", align 1
@PADDING = internal unnamed_addr constant <{ i8, [63 x i8] }> <{ i8 -128, [63 x i8] zeroinitializer }>, align 16
@.str.25 = private unnamed_addr constant [25 x i8] c"Bad conversion type (%d)\00", align 1
@hex_16.hexdigits = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@base64_16.base64 = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@.str.26 = private unnamed_addr constant [9 x i8] c"ctx, ...\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_dowarn = external local_unnamed_addr global i8, align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"probably called as method\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"called with reference argument\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"probably called as class method\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"md5_hex\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"md5_base64\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"&Digest::MD5::%s function %s\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Digest__MD5(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Digest__MD5_new) #11
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Digest__MD5_clone) #11
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Digest__MD5_DESTROY) #11
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Digest__MD5_add) #11
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Digest__MD5_addfile) #11
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_Digest__MD5_digest) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 5
  store i32 2, ptr %10, align 8, !tbaa !42
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Digest__MD5_digest) #11
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  store i32 0, ptr %13, align 8, !tbaa !42
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Digest__MD5_digest) #11
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  store i32 1, ptr %16, align 8, !tbaa !42
  %17 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Digest__MD5_context) #11
  %18 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Digest__MD5_md5) #11
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !42
  %21 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Digest__MD5_md5) #11
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.xpvcv, ptr %22, i64 0, i32 5
  store i32 2, ptr %23, align 8, !tbaa !42
  %24 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Digest__MD5_md5) #11
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 5
  store i32 1, ptr %26, align 8, !tbaa !42
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_new(ptr noundef %0) #0 !prof !35 !PGOFuncName !43 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %6 = load i32, ptr %4, align 4, !tbaa !45
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %28 = and i32 %24, 2098176
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load ptr, ptr %22, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.xpv, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !49
  store i64 %33, ptr %2, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  br label %38

36:                                               ; preds = %27
  %37 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %22, ptr noundef nonnull %2, i32 noundef 2) #11
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi ptr [ %35, %30 ], [ %37, %36 ]
  %40 = call ptr @Perl_safesysmalloc(i64 noundef 152) #11
  %41 = call fastcc ptr @new_md5_ctx(ptr noundef %40, ptr noundef %39) #13
  %42 = call ptr @Perl_sv_2mortal(ptr noundef %41) #11
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %44 = getelementptr inbounds ptr, ptr %43, i64 %20
  store ptr %42, ptr %44, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %47

45:                                               ; preds = %18
  %46 = tail call fastcc ptr @get_md5_ctx(ptr noundef nonnull %22) #13
  br label %47

47:                                               ; preds = %45, %38
  %48 = phi ptr [ %46, %45 ], [ %40, %38 ]
  call fastcc void @MD5Init(ptr noundef %48) #13
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %50 = getelementptr inbounds ptr, ptr %49, i64 %20
  store ptr %50, ptr @PL_stack_sp, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_clone(ptr noundef %0) #0 !prof !35 !PGOFuncName !53 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %5 = load i32, ptr %3, align 4, !tbaa !45
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #11
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = tail call fastcc ptr @get_md5_ctx(ptr noundef %21) #13
  %23 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @Perl_sv_reftype(ptr noundef %24, i32 noundef 1) #11
  %26 = tail call ptr @Perl_safesysmalloc(i64 noundef 152) #11
  %27 = tail call fastcc ptr @new_md5_ctx(ptr noundef %26, ptr noundef %25) #13
  %28 = tail call ptr @Perl_sv_2mortal(ptr noundef %27) #11
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %30 = getelementptr inbounds ptr, ptr %29, i64 %19
  store ptr %28, ptr %30, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %26, ptr noundef nonnull align 4 dereferenceable(152) %22, i64 152, i1 false)
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %32 = getelementptr inbounds ptr, ptr %31, i64 %19
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_DESTROY(ptr noundef %0) #0 !prof !35 !PGOFuncName !54 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %5 = load i32, ptr %3, align 4, !tbaa !45
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #11
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = tail call fastcc ptr @get_md5_ctx(ptr noundef %21) #13
  tail call void @Perl_safesysfree(ptr noundef %22) #11
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %24 = getelementptr inbounds ptr, ptr %23, i64 %19
  %25 = getelementptr inbounds ptr, ptr %24, i64 -1
  store ptr %25, ptr @PL_stack_sp, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_add(ptr noundef %0) #0 !prof !35 !PGOFuncName !55 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %6 = load i32, ptr %4, align 4, !tbaa !45
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.20) #11
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %7, %1 ]
  %21 = sext i32 %8 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = tail call fastcc ptr @get_md5_ctx(ptr noundef %23) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %25 = icmp sgt i32 %15, 1
  br i1 %25, label %26, label %60

26:                                               ; preds = %19
  %27 = and i64 %14, 4294967295
  br label %28

28:                                               ; preds = %26, %57
  %29 = phi i64 [ 1, %26 ], [ %58, %57 ]
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %31 = add nsw i64 %29, %21
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !46
  %36 = and i32 %35, 536870912
  %37 = and i32 %35, 538969088
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load ptr, ptr %33, align 8, !tbaa !48
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !49
  store i64 %42, ptr %2, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  br label %48

45:                                               ; preds = %28
  %46 = call ptr @Perl_sv_2pvbyte(ptr noundef nonnull %33, ptr noundef nonnull %2) #11
  %47 = load i64, ptr %2, align 8, !tbaa !52
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i64 [ %42, %39 ], [ %47, %45 ]
  %50 = phi ptr [ %44, %39 ], [ %46, %45 ]
  call fastcc void @MD5Update(ptr noundef %24, ptr noundef %50, i64 noundef %49) #13
  %51 = icmp eq i32 %36, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %54 = getelementptr inbounds ptr, ptr %53, i64 %31
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  %56 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %55, i32 noundef 2, i64 noundef 0) #11
  br label %57

57:                                               ; preds = %52, %48
  %58 = add nuw nsw i64 %29, 1
  %59 = icmp eq i64 %58, %27
  br i1 %59, label %60, label %28, !llvm.loop !56

60:                                               ; preds = %57, %19
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %62 = getelementptr inbounds ptr, ptr %61, i64 %21
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_addfile(ptr noundef %0) #0 !prof !35 !PGOFuncName !58 {
  %2 = alloca [4096 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %6 = load i32, ptr %4, align 4, !tbaa !45
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #11
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = getelementptr ptr, ptr %19, i64 %9
  %24 = getelementptr ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = tail call ptr @Perl_sv_2io(ptr noundef %25) #11
  %27 = getelementptr inbounds %struct.io, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = tail call fastcc ptr @get_md5_ctx(ptr noundef %22) #13
  %30 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !59
  %32 = and i32 %31, 63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #12
  %33 = icmp eq ptr %28, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %18
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = sub nuw nsw i32 64, %32
  %38 = zext nneg i32 %37 to i64
  %39 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %28, ptr noundef nonnull %2, i64 noundef %38) #11
  %40 = trunc i64 %39 to i32
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = and i64 %39, 4294967295
  call fastcc void @MD5Update(ptr noundef nonnull %29, ptr noundef nonnull %2, i64 noundef %43) #13
  br label %44

44:                                               ; preds = %42, %34
  %45 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %28, ptr noundef nonnull %2, i64 noundef 4096) #11
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %48
  %49 = phi i64 [ %51, %48 ], [ %45, %44 ]
  %50 = and i64 %49, 4294967295
  call fastcc void @MD5Update(ptr noundef %29, ptr noundef nonnull %2, i64 noundef %50) #13
  %51 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %28, ptr noundef nonnull %2, i64 noundef 4096) #11
  %52 = trunc i64 %51 to i32
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %48, label %54, !llvm.loop !61

54:                                               ; preds = %48, %44
  %55 = call i32 @Perl_PerlIO_error(ptr noundef nonnull %28) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.22) #11
  br label %59

58:                                               ; preds = %18
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.23) #11
  br label %59

59:                                               ; preds = %54, %57, %58, %36
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %61 = getelementptr inbounds ptr, ptr %60, i64 %20
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_digest(ptr noundef %0) #0 !prof !35 !PGOFuncName !62 {
  %2 = alloca [16 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %6 = load i32, ptr %4, align 4, !tbaa !45
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !42
  %16 = and i64 %12, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %7, %1 ]
  %22 = add nsw i32 %6, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = tail call fastcc ptr @get_md5_ctx(ptr noundef %25) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call fastcc void @MD5Final(ptr noundef nonnull %2, ptr noundef %26) #13
  tail call fastcc void @MD5Init(ptr noundef %26) #13
  %27 = call fastcc ptr @make_mortal_sv(ptr noundef nonnull %2, i32 noundef %15) #13
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 %23
  store ptr %27, ptr %29, align 8, !tbaa !44
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %31 = getelementptr inbounds ptr, ptr %30, i64 %23
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_context(ptr noundef %0) #0 !prof !35 !PGOFuncName !63 {
  %2 = alloca [16 x i8], align 16
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %7 = load i32, ptr %5, align 4, !tbaa !45
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.26) #11
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = shl i64 %14, 29
  %23 = ashr i64 %22, 32
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds ptr, ptr %4, i64 %24
  %26 = sext i32 %9 to i64
  %27 = getelementptr inbounds ptr, ptr %21, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = tail call fastcc ptr @get_md5_ctx(ptr noundef %28) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %30 = icmp sgt i32 %16, 2
  br i1 %30, label %31, label %110

31:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %33 = getelementptr ptr, ptr %32, i64 %10
  %34 = getelementptr ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !46
  %38 = and i32 %37, -2145386240
  %39 = icmp eq i32 %38, -2147483392
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load ptr, ptr %35, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct.xpvuv, ptr %41, i64 0, i32 4
  %43 = load i64, ptr %42, align 8, !tbaa !42
  br label %47

44:                                               ; preds = %31
  %45 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %35, i32 noundef 2) #11
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi ptr [ %32, %40 ], [ %46, %44 ]
  %49 = phi i64 [ %43, %40 ], [ %45, %44 ]
  %50 = getelementptr ptr, ptr %48, i64 %10
  %51 = getelementptr ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !46
  %55 = and i32 %54, 2098176
  %56 = icmp eq i32 %55, 1024
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load ptr, ptr %52, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.xpv, ptr %58, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !49
  store i64 %60, ptr %3, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !42
  br label %66

63:                                               ; preds = %47
  %64 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %52, ptr noundef nonnull %3, i32 noundef 2) #11
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %48, %57 ], [ %65, %63 ]
  %68 = phi ptr [ %62, %57 ], [ %64, %63 ]
  %69 = load i32, ptr %68, align 1
  store i32 %69, ptr %29, align 4, !tbaa !64
  %70 = getelementptr inbounds i8, ptr %68, i64 4
  %71 = load i32, ptr %70, align 1
  %72 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 1
  store i32 %71, ptr %72, align 4, !tbaa !65
  %73 = getelementptr inbounds i8, ptr %68, i64 8
  %74 = load i32, ptr %73, align 1
  %75 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 2
  store i32 %74, ptr %75, align 4, !tbaa !66
  %76 = getelementptr inbounds i8, ptr %68, i64 12
  %77 = load i32, ptr %76, align 1
  %78 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 3
  store i32 %77, ptr %78, align 4, !tbaa !67
  %79 = trunc i64 %49 to i32
  %80 = shl i32 %79, 6
  %81 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 4
  store i32 %80, ptr %81, align 4, !tbaa !59
  %82 = lshr i64 %49, 26
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 5
  store i32 %83, ptr %84, align 4, !tbaa !68
  %85 = icmp eq i32 %16, 4
  br i1 %85, label %86, label %107

86:                                               ; preds = %66
  %87 = getelementptr ptr, ptr %67, i64 %10
  %88 = getelementptr ptr, ptr %87, i64 4
  %89 = load ptr, ptr %88, align 8, !tbaa !44
  %90 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !46
  %92 = and i32 %91, 2098176
  %93 = icmp eq i32 %92, 1024
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load ptr, ptr %89, align 8, !tbaa !48
  %96 = getelementptr inbounds %struct.xpv, ptr %95, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !49
  store i64 %97, ptr %3, align 8, !tbaa !52
  %98 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  br label %103

100:                                              ; preds = %86
  %101 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %89, ptr noundef nonnull %3, i32 noundef 2) #11
  %102 = load i64, ptr %3, align 8, !tbaa !52
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi i64 [ %97, %94 ], [ %102, %100 ]
  %105 = phi ptr [ %99, %94 ], [ %101, %100 ]
  call fastcc void @MD5Update(ptr noundef nonnull %29, ptr noundef %105, i64 noundef %104) #13
  %106 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  br label %107

107:                                              ; preds = %66, %103
  %108 = phi ptr [ %67, %66 ], [ %106, %103 ]
  %109 = getelementptr inbounds ptr, ptr %108, i64 %26
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %202

110:                                              ; preds = %20
  %111 = icmp eq i32 %16, 1
  br i1 %111, label %116, label %112

112:                                              ; preds = %110
  %113 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %114 = getelementptr inbounds ptr, ptr %113, i64 %26
  %115 = getelementptr inbounds ptr, ptr %114, i64 -1
  store ptr %115, ptr @PL_stack_sp, align 8, !tbaa !44
  br label %202

116:                                              ; preds = %110
  %117 = load i32, ptr %29, align 4, !tbaa !64
  %118 = trunc i32 %117 to i8
  store i8 %118, ptr %2, align 16, !tbaa !42
  %119 = lshr i32 %117, 8
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 1
  store i8 %120, ptr %121, align 1, !tbaa !42
  %122 = lshr i32 %117, 16
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 2
  store i8 %123, ptr %124, align 2, !tbaa !42
  %125 = lshr i32 %117, 24
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 3
  store i8 %126, ptr %127, align 1, !tbaa !42
  %128 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !65
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 4
  store i8 %130, ptr %131, align 4, !tbaa !42
  %132 = lshr i32 %129, 8
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 5
  store i8 %133, ptr %134, align 1, !tbaa !42
  %135 = lshr i32 %129, 16
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 6
  store i8 %136, ptr %137, align 2, !tbaa !42
  %138 = lshr i32 %129, 24
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 7
  store i8 %139, ptr %140, align 1, !tbaa !42
  %141 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !66
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 8
  store i8 %143, ptr %144, align 8, !tbaa !42
  %145 = lshr i32 %142, 8
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 9
  store i8 %146, ptr %147, align 1, !tbaa !42
  %148 = lshr i32 %142, 16
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 10
  store i8 %149, ptr %150, align 2, !tbaa !42
  %151 = lshr i32 %142, 24
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 11
  store i8 %152, ptr %153, align 1, !tbaa !42
  %154 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !67
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 12
  store i8 %156, ptr %157, align 4, !tbaa !42
  %158 = lshr i32 %155, 8
  %159 = trunc i32 %158 to i8
  %160 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 13
  store i8 %159, ptr %160, align 1, !tbaa !42
  %161 = lshr i32 %155, 16
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 14
  store i8 %162, ptr %163, align 2, !tbaa !42
  %164 = lshr i32 %155, 24
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 15
  store i8 %165, ptr %166, align 1, !tbaa !42
  %167 = load ptr, ptr @PL_stack_max, align 8, !tbaa !44
  %168 = ptrtoint ptr %167 to i64
  %169 = ptrtoint ptr %25 to i64
  %170 = sub i64 %168, %169
  %171 = icmp slt i64 %170, 24
  br i1 %171, label %172, label %174

172:                                              ; preds = %116
  %173 = tail call ptr @Perl_stack_grow(ptr noundef %25, ptr noundef %25, i64 noundef 3) #11
  br label %174

174:                                              ; preds = %116, %172
  %175 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 5
  %176 = load i32, ptr %175, align 4, !tbaa !68
  %177 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 4
  %178 = load i32, ptr %177, align 4, !tbaa !59
  %179 = tail call i32 @llvm.fshl.i32(i32 %176, i32 %178, i32 26)
  %180 = zext i32 %179 to i64
  %181 = tail call ptr @Perl_newSVuv(i64 noundef %180) #11
  %182 = tail call ptr @Perl_sv_2mortal(ptr noundef %181) #11
  %183 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %184 = getelementptr inbounds ptr, ptr %183, i64 %26
  store ptr %182, ptr %184, align 8, !tbaa !44
  %185 = call ptr @Perl_newSVpv(ptr noundef nonnull %2, i64 noundef 16) #11
  %186 = call ptr @Perl_sv_2mortal(ptr noundef %185) #11
  %187 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %188 = getelementptr ptr, ptr %187, i64 %10
  %189 = getelementptr ptr, ptr %188, i64 2
  store ptr %186, ptr %189, align 8, !tbaa !44
  %190 = getelementptr inbounds %struct.MD5_CTX, ptr %29, i64 0, i32 6
  %191 = load i32, ptr %177, align 4, !tbaa !59
  %192 = and i32 %191, 63
  %193 = zext nneg i32 %192 to i64
  %194 = call ptr @Perl_newSVpv(ptr noundef nonnull %190, i64 noundef %193) #11
  %195 = call ptr @Perl_sv_2mortal(ptr noundef %194) #11
  %196 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %197 = getelementptr ptr, ptr %196, i64 %10
  %198 = getelementptr ptr, ptr %197, i64 3
  store ptr %195, ptr %198, align 8, !tbaa !44
  %199 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %200 = getelementptr inbounds ptr, ptr %199, i64 %26
  %201 = getelementptr inbounds ptr, ptr %200, i64 2
  store ptr %201, ptr @PL_stack_sp, align 8, !tbaa !44
  br label %202

202:                                              ; preds = %107, %174, %112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Digest__MD5_md5(ptr nocapture noundef readonly %0) #0 !prof !35 !PGOFuncName !69 {
  %2 = alloca %struct.MD5_CTX, align 4
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 16
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !44
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !44
  %8 = load i32, ptr %6, align 4, !tbaa !45
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %8 to i64
  %12 = getelementptr ptr, ptr %9, i64 %11
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr i64 %15, 3
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr %0, align 8, !tbaa !36
  %19 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call fastcc void @MD5Init(ptr noundef nonnull %2) #13
  %21 = load i8, ptr @PL_dowarn, align 1, !tbaa !42
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %147, label %24

24:                                               ; preds = %1
  %25 = icmp eq i32 %17, 1
  br i1 %25, label %26, label %71

26:                                               ; preds = %24
  %27 = sext i32 %10 to i64
  %28 = getelementptr inbounds ptr, ptr %9, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %151, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !46
  %39 = and i32 %38, 1048576
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %70, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %36, align 8, !tbaa !48
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.hv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !72
  %46 = and i32 %45, 33554432
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.hv, ptr %43, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = load ptr, ptr %43, align 8, !tbaa !74
  %52 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !75
  %54 = getelementptr ptr, ptr %50, i64 %53
  %55 = getelementptr ptr, ptr %54, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !42
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %48
  %59 = getelementptr i8, ptr %54, i64 36
  %60 = load i32, ptr %59, align 4, !tbaa !77
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %56, align 8, !tbaa !42
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %58, %62
  %66 = phi ptr [ %63, %62 ], [ %56, %58 ]
  %67 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 2
  %68 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(12) @.str.15) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %141, label %70

70:                                               ; preds = %41, %48, %62, %65, %34
  br label %141

71:                                               ; preds = %24
  %72 = icmp sgt i32 %17, 1
  br i1 %72, label %73, label %149

73:                                               ; preds = %71
  %74 = sext i32 %10 to i64
  %75 = getelementptr inbounds ptr, ptr %9, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  %77 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !46
  %79 = and i32 %78, 2098176
  %80 = icmp eq i32 %79, 1024
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load ptr, ptr %76, align 8, !tbaa !48
  %83 = getelementptr inbounds %struct.xpv, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !49
  store i64 %84, ptr %3, align 8, !tbaa !52
  %85 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  br label %90

87:                                               ; preds = %73
  %88 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %76, ptr noundef nonnull %3, i32 noundef 2) #11
  %89 = load i64, ptr %3, align 8, !tbaa !52
  br label %90

90:                                               ; preds = %87, %81
  %91 = phi i64 [ %89, %87 ], [ %84, %81 ]
  %92 = phi ptr [ %88, %87 ], [ %86, %81 ]
  %93 = icmp eq i64 %91, 11
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.15, ptr noundef nonnull dereferenceable(11) %92, i64 11)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %141, label %97

97:                                               ; preds = %94, %90
  %98 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %99 = getelementptr inbounds ptr, ptr %98, i64 %74
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !46
  %103 = and i32 %102, 2048
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %151, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.sv, ptr %100, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !42
  %108 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !46
  %110 = and i32 %109, 1048576
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %151, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %107, align 8, !tbaa !48
  %114 = load ptr, ptr %113, align 8, !tbaa !70
  %115 = getelementptr inbounds %struct.hv, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !72
  %117 = and i32 %116, 33554432
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.hv, ptr %114, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  %122 = load ptr, ptr %114, align 8, !tbaa !74
  %123 = getelementptr inbounds %struct.xpvhv, ptr %122, i64 0, i32 3
  %124 = load i64, ptr %123, align 8, !tbaa !75
  %125 = getelementptr ptr, ptr %121, i64 %124
  %126 = getelementptr ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8, !tbaa !42
  %128 = icmp eq ptr %127, null
  br i1 %128, label %151, label %129

129:                                              ; preds = %119
  %130 = getelementptr i8, ptr %125, i64 36
  %131 = load i32, ptr %130, align 4, !tbaa !77
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %127, align 8, !tbaa !42
  %135 = icmp eq ptr %134, null
  br i1 %135, label %151, label %136

136:                                              ; preds = %129, %133
  %137 = phi ptr [ %134, %133 ], [ %127, %129 ]
  %138 = getelementptr inbounds %struct.hek, ptr %137, i64 0, i32 2
  %139 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %138, ptr noundef nonnull dereferenceable(12) @.str.15) #14
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136, %65, %70, %94
  %142 = phi ptr [ @.str.28, %70 ], [ @.str.27, %65 ], [ @.str.29, %94 ], [ @.str.27, %136 ]
  %143 = icmp eq i32 %20, 0
  %144 = icmp eq i32 %20, 1
  %145 = select i1 %144, ptr @.str.31, ptr @.str.32
  %146 = select i1 %143, ptr @.str.30, ptr %145
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.33, ptr noundef nonnull %146, ptr noundef nonnull %142) #11
  br label %151

147:                                              ; preds = %1
  %148 = icmp sgt i32 %17, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %71, %147
  %150 = sext i32 %10 to i64
  br label %186

151:                                              ; preds = %141, %26, %97, %105, %136, %133, %119, %112, %147
  %152 = sext i32 %10 to i64
  %153 = and i64 %16, 4294967295
  br label %154

154:                                              ; preds = %151, %183
  %155 = phi i64 [ 0, %151 ], [ %184, %183 ]
  %156 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %157 = add nsw i64 %155, %152
  %158 = getelementptr inbounds ptr, ptr %156, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !44
  %160 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !46
  %162 = and i32 %161, 536870912
  %163 = and i32 %161, 538969088
  %164 = icmp eq i32 %163, 1024
  br i1 %164, label %165, label %171

165:                                              ; preds = %154
  %166 = load ptr, ptr %159, align 8, !tbaa !48
  %167 = getelementptr inbounds %struct.xpv, ptr %166, i64 0, i32 2
  %168 = load i64, ptr %167, align 8, !tbaa !49
  store i64 %168, ptr %3, align 8, !tbaa !52
  %169 = getelementptr inbounds %struct.sv, ptr %159, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !42
  br label %174

171:                                              ; preds = %154
  %172 = call ptr @Perl_sv_2pvbyte(ptr noundef nonnull %159, ptr noundef nonnull %3) #11
  %173 = load i64, ptr %3, align 8, !tbaa !52
  br label %174

174:                                              ; preds = %171, %165
  %175 = phi i64 [ %168, %165 ], [ %173, %171 ]
  %176 = phi ptr [ %170, %165 ], [ %172, %171 ]
  call fastcc void @MD5Update(ptr noundef nonnull %2, ptr noundef %176, i64 noundef %175) #13
  %177 = icmp eq i32 %162, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %180 = getelementptr inbounds ptr, ptr %179, i64 %157
  %181 = load ptr, ptr %180, align 8, !tbaa !44
  %182 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %181, i32 noundef 2, i64 noundef 0) #11
  br label %183

183:                                              ; preds = %178, %174
  %184 = add nuw nsw i64 %155, 1
  %185 = icmp eq i64 %184, %153
  br i1 %185, label %186, label %154, !llvm.loop !79

186:                                              ; preds = %183, %149
  %187 = phi i64 [ %150, %149 ], [ %152, %183 ]
  call fastcc void @MD5Final(ptr noundef nonnull %4, ptr noundef nonnull %2) #13
  %188 = call fastcc ptr @make_mortal_sv(ptr noundef nonnull %4, i32 noundef %20) #13
  %189 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %190 = getelementptr inbounds ptr, ptr %189, i64 %187
  store ptr %188, ptr %190, align 8, !tbaa !44
  %191 = load ptr, ptr @PL_stack_base, align 8, !tbaa !44
  %192 = getelementptr inbounds ptr, ptr %191, i64 %187
  store ptr %192, ptr @PL_stack_sp, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @new_md5_ctx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !80 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  %4 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #11
  %5 = tail call ptr @Perl_gv_stashpv(ptr noundef %1, i32 noundef 0) #11
  %6 = tail call ptr @Perl_sv_bless(ptr noundef %4, ptr noundef %5) #11
  %7 = tail call ptr @Perl_sv_magicext(ptr noundef %3, ptr noundef null, i32 noundef 126, ptr noundef nonnull @vtbl_md5, ptr noundef %0, i32 noundef 0) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_md5_ctx(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !81 {
  %2 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16) #11
  br label %4

4:                                                ; preds = %3, %1
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.xpvmg, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %4, %23
  %12 = phi ptr [ %24, %23 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !82
  %15 = icmp eq i8 %14, 126
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = icmp eq ptr %18, @vtbl_md5
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  br label %27

23:                                               ; preds = %11, %16
  %24 = load ptr, ptr %12, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !87

26:                                               ; preds = %23, %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17) #11
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi ptr [ %22, %20 ], [ null, %26 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @MD5Init(ptr nocapture noundef writeonly %0) unnamed_addr #3 !prof !35 !PGOFuncName !88 {
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !45
  %2 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 5
  store i32 0, ptr %2, align 4, !tbaa !68
  %3 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 4
  store i32 0, ptr %3, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MD5Update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #5 !prof !35 !PGOFuncName !89 {
  %4 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = and i32 %5, 63
  %7 = zext nneg i32 %6 to i64
  %8 = trunc i64 %2 to i32
  %9 = add i32 %5, %8
  store i32 %9, ptr %4, align 4, !tbaa !59
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !68
  br label %16

16:                                               ; preds = %12, %3
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = sub nuw nsw i64 64, %7
  %20 = icmp ugt i64 %19, %2
  %21 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds i8, ptr %21, i64 %7
  br i1 %20, label %23, label %24

23:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %1, i64 %2, i1 false)
  br label %40

24:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %19, i1 false)
  tail call fastcc void @MD5Transform(ptr noundef nonnull %0, ptr noundef nonnull %21, i64 noundef 1) #13
  %25 = getelementptr inbounds i8, ptr %1, i64 %19
  %26 = sub i64 %2, %19
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi i64 [ %26, %24 ], [ %2, %16 ]
  %29 = phi ptr [ %25, %24 ], [ %1, %16 ]
  %30 = icmp ult i64 %28, 64
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = lshr i64 %28, 6
  tail call fastcc void @MD5Transform(ptr noundef nonnull %0, ptr noundef %29, i64 noundef %32) #13
  br label %33

33:                                               ; preds = %31, %27
  %34 = and i64 %28, 63
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 6
  %38 = and i64 %28, -64
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %37, ptr align 1 %39, i64 %34, i1 false)
  br label %40

40:                                               ; preds = %23, %33, %36
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MD5Transform(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #6 !prof !35 !PGOFuncName !90 {
  %4 = load i32, ptr %0, align 4, !tbaa !64
  %5 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !67
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ %10, %3 ], [ %724, %11 ]
  %13 = phi i32 [ %8, %3 ], [ %723, %11 ]
  %14 = phi i32 [ %6, %3 ], [ %722, %11 ]
  %15 = phi i32 [ %4, %3 ], [ %720, %11 ]
  %16 = phi i64 [ %2, %3 ], [ %725, %11 ]
  %17 = phi ptr [ %1, %3 ], [ %348, %11 ]
  %18 = xor i32 %13, %12
  %19 = and i32 %14, %18
  %20 = xor i32 %19, %12
  %21 = load i16, ptr %17, align 1
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds i8, ptr %17, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !42
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %26, %22
  %28 = getelementptr inbounds i8, ptr %17, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !42
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = or disjoint i32 %27, %31
  %33 = getelementptr inbounds i8, ptr %17, i64 4
  %34 = add i32 %15, -680876936
  %35 = add i32 %34, %20
  %36 = add i32 %35, %32
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 7)
  %38 = add i32 %37, %14
  %39 = xor i32 %14, %13
  %40 = and i32 %38, %39
  %41 = xor i32 %40, %13
  %42 = load i16, ptr %33, align 1
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds i8, ptr %17, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 16
  %48 = or disjoint i32 %47, %43
  %49 = getelementptr inbounds i8, ptr %17, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !42
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = or disjoint i32 %48, %52
  %54 = getelementptr inbounds i8, ptr %17, i64 8
  %55 = add i32 %12, -389564586
  %56 = add i32 %55, %53
  %57 = add i32 %56, %41
  %58 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 12)
  %59 = add i32 %58, %38
  %60 = xor i32 %38, %14
  %61 = and i32 %59, %60
  %62 = xor i32 %61, %14
  %63 = load i16, ptr %54, align 1
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds i8, ptr %17, i64 10
  %66 = load i8, ptr %65, align 1, !tbaa !42
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or disjoint i32 %68, %64
  %70 = getelementptr inbounds i8, ptr %17, i64 11
  %71 = load i8, ptr %70, align 1, !tbaa !42
  %72 = zext i8 %71 to i32
  %73 = shl nuw i32 %72, 24
  %74 = or disjoint i32 %69, %73
  %75 = getelementptr inbounds i8, ptr %17, i64 12
  %76 = add i32 %13, 606105819
  %77 = add i32 %76, %74
  %78 = add i32 %77, %62
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 17)
  %80 = add i32 %79, %59
  %81 = xor i32 %59, %38
  %82 = and i32 %80, %81
  %83 = xor i32 %82, %38
  %84 = load i16, ptr %75, align 1
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds i8, ptr %17, i64 14
  %87 = load i8, ptr %86, align 1, !tbaa !42
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 16
  %90 = or disjoint i32 %89, %85
  %91 = getelementptr inbounds i8, ptr %17, i64 15
  %92 = load i8, ptr %91, align 1, !tbaa !42
  %93 = zext i8 %92 to i32
  %94 = shl nuw i32 %93, 24
  %95 = or disjoint i32 %90, %94
  %96 = getelementptr inbounds i8, ptr %17, i64 16
  %97 = add i32 %14, -1044525330
  %98 = add i32 %97, %95
  %99 = add i32 %98, %83
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 22)
  %101 = add i32 %100, %80
  %102 = xor i32 %80, %59
  %103 = and i32 %101, %102
  %104 = xor i32 %103, %59
  %105 = load i16, ptr %96, align 1
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds i8, ptr %17, i64 18
  %108 = load i8, ptr %107, align 1, !tbaa !42
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 16
  %111 = or disjoint i32 %110, %106
  %112 = getelementptr inbounds i8, ptr %17, i64 19
  %113 = load i8, ptr %112, align 1, !tbaa !42
  %114 = zext i8 %113 to i32
  %115 = shl nuw i32 %114, 24
  %116 = or disjoint i32 %111, %115
  %117 = getelementptr inbounds i8, ptr %17, i64 20
  %118 = add i32 %38, -176418897
  %119 = add i32 %118, %116
  %120 = add i32 %119, %104
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 7)
  %122 = add i32 %121, %101
  %123 = xor i32 %101, %80
  %124 = and i32 %122, %123
  %125 = xor i32 %124, %80
  %126 = load i16, ptr %117, align 1
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds i8, ptr %17, i64 22
  %129 = load i8, ptr %128, align 1, !tbaa !42
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 16
  %132 = or disjoint i32 %131, %127
  %133 = getelementptr inbounds i8, ptr %17, i64 23
  %134 = load i8, ptr %133, align 1, !tbaa !42
  %135 = zext i8 %134 to i32
  %136 = shl nuw i32 %135, 24
  %137 = or disjoint i32 %132, %136
  %138 = getelementptr inbounds i8, ptr %17, i64 24
  %139 = add i32 %59, 1200080426
  %140 = add i32 %139, %137
  %141 = add i32 %140, %125
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 12)
  %143 = add i32 %142, %122
  %144 = xor i32 %122, %101
  %145 = and i32 %143, %144
  %146 = xor i32 %145, %101
  %147 = load i16, ptr %138, align 1
  %148 = zext i16 %147 to i32
  %149 = getelementptr inbounds i8, ptr %17, i64 26
  %150 = load i8, ptr %149, align 1, !tbaa !42
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 16
  %153 = or disjoint i32 %152, %148
  %154 = getelementptr inbounds i8, ptr %17, i64 27
  %155 = load i8, ptr %154, align 1, !tbaa !42
  %156 = zext i8 %155 to i32
  %157 = shl nuw i32 %156, 24
  %158 = or disjoint i32 %153, %157
  %159 = getelementptr inbounds i8, ptr %17, i64 28
  %160 = add i32 %158, -1473231341
  %161 = add i32 %160, %80
  %162 = add i32 %161, %146
  %163 = tail call i32 @llvm.fshl.i32(i32 %162, i32 %162, i32 17)
  %164 = add i32 %163, %143
  %165 = xor i32 %143, %122
  %166 = and i32 %164, %165
  %167 = xor i32 %166, %122
  %168 = load i16, ptr %159, align 1
  %169 = zext i16 %168 to i32
  %170 = getelementptr inbounds i8, ptr %17, i64 30
  %171 = load i8, ptr %170, align 1, !tbaa !42
  %172 = zext i8 %171 to i32
  %173 = shl nuw nsw i32 %172, 16
  %174 = or disjoint i32 %173, %169
  %175 = getelementptr inbounds i8, ptr %17, i64 31
  %176 = load i8, ptr %175, align 1, !tbaa !42
  %177 = zext i8 %176 to i32
  %178 = shl nuw i32 %177, 24
  %179 = or disjoint i32 %174, %178
  %180 = getelementptr inbounds i8, ptr %17, i64 32
  %181 = add i32 %179, -45705983
  %182 = add i32 %181, %101
  %183 = add i32 %182, %167
  %184 = tail call i32 @llvm.fshl.i32(i32 %183, i32 %183, i32 22)
  %185 = add i32 %184, %164
  %186 = xor i32 %164, %143
  %187 = and i32 %185, %186
  %188 = xor i32 %187, %143
  %189 = load i16, ptr %180, align 1
  %190 = zext i16 %189 to i32
  %191 = getelementptr inbounds i8, ptr %17, i64 34
  %192 = load i8, ptr %191, align 1, !tbaa !42
  %193 = zext i8 %192 to i32
  %194 = shl nuw nsw i32 %193, 16
  %195 = or disjoint i32 %194, %190
  %196 = getelementptr inbounds i8, ptr %17, i64 35
  %197 = load i8, ptr %196, align 1, !tbaa !42
  %198 = zext i8 %197 to i32
  %199 = shl nuw i32 %198, 24
  %200 = or disjoint i32 %195, %199
  %201 = getelementptr inbounds i8, ptr %17, i64 36
  %202 = add i32 %200, 1770035416
  %203 = add i32 %202, %122
  %204 = add i32 %203, %188
  %205 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 7)
  %206 = add i32 %205, %185
  %207 = xor i32 %185, %164
  %208 = and i32 %206, %207
  %209 = xor i32 %208, %164
  %210 = load i16, ptr %201, align 1
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds i8, ptr %17, i64 38
  %213 = load i8, ptr %212, align 1, !tbaa !42
  %214 = zext i8 %213 to i32
  %215 = shl nuw nsw i32 %214, 16
  %216 = or disjoint i32 %215, %211
  %217 = getelementptr inbounds i8, ptr %17, i64 39
  %218 = load i8, ptr %217, align 1, !tbaa !42
  %219 = zext i8 %218 to i32
  %220 = shl nuw i32 %219, 24
  %221 = or disjoint i32 %216, %220
  %222 = getelementptr inbounds i8, ptr %17, i64 40
  %223 = add i32 %221, -1958414417
  %224 = add i32 %223, %143
  %225 = add i32 %224, %209
  %226 = tail call i32 @llvm.fshl.i32(i32 %225, i32 %225, i32 12)
  %227 = add i32 %226, %206
  %228 = xor i32 %206, %185
  %229 = and i32 %227, %228
  %230 = xor i32 %229, %185
  %231 = load i16, ptr %222, align 1
  %232 = zext i16 %231 to i32
  %233 = getelementptr inbounds i8, ptr %17, i64 42
  %234 = load i8, ptr %233, align 1, !tbaa !42
  %235 = zext i8 %234 to i32
  %236 = shl nuw nsw i32 %235, 16
  %237 = or disjoint i32 %236, %232
  %238 = getelementptr inbounds i8, ptr %17, i64 43
  %239 = load i8, ptr %238, align 1, !tbaa !42
  %240 = zext i8 %239 to i32
  %241 = shl nuw i32 %240, 24
  %242 = or disjoint i32 %237, %241
  %243 = getelementptr inbounds i8, ptr %17, i64 44
  %244 = add i32 %242, -42063
  %245 = add i32 %244, %164
  %246 = add i32 %245, %230
  %247 = tail call i32 @llvm.fshl.i32(i32 %246, i32 %246, i32 17)
  %248 = add i32 %247, %227
  %249 = xor i32 %227, %206
  %250 = and i32 %248, %249
  %251 = xor i32 %250, %206
  %252 = load i16, ptr %243, align 1
  %253 = zext i16 %252 to i32
  %254 = getelementptr inbounds i8, ptr %17, i64 46
  %255 = load i8, ptr %254, align 1, !tbaa !42
  %256 = zext i8 %255 to i32
  %257 = shl nuw nsw i32 %256, 16
  %258 = or disjoint i32 %257, %253
  %259 = getelementptr inbounds i8, ptr %17, i64 47
  %260 = load i8, ptr %259, align 1, !tbaa !42
  %261 = zext i8 %260 to i32
  %262 = shl nuw i32 %261, 24
  %263 = or disjoint i32 %258, %262
  %264 = getelementptr inbounds i8, ptr %17, i64 48
  %265 = add i32 %263, -1990404162
  %266 = add i32 %265, %185
  %267 = add i32 %266, %251
  %268 = tail call i32 @llvm.fshl.i32(i32 %267, i32 %267, i32 22)
  %269 = add i32 %268, %248
  %270 = xor i32 %248, %227
  %271 = and i32 %269, %270
  %272 = xor i32 %271, %227
  %273 = load i16, ptr %264, align 1
  %274 = zext i16 %273 to i32
  %275 = getelementptr inbounds i8, ptr %17, i64 50
  %276 = load i8, ptr %275, align 1, !tbaa !42
  %277 = zext i8 %276 to i32
  %278 = shl nuw nsw i32 %277, 16
  %279 = or disjoint i32 %278, %274
  %280 = getelementptr inbounds i8, ptr %17, i64 51
  %281 = load i8, ptr %280, align 1, !tbaa !42
  %282 = zext i8 %281 to i32
  %283 = shl nuw i32 %282, 24
  %284 = or disjoint i32 %279, %283
  %285 = getelementptr inbounds i8, ptr %17, i64 52
  %286 = add i32 %284, 1804603682
  %287 = add i32 %286, %206
  %288 = add i32 %287, %272
  %289 = tail call i32 @llvm.fshl.i32(i32 %288, i32 %288, i32 7)
  %290 = add i32 %289, %269
  %291 = xor i32 %269, %248
  %292 = and i32 %290, %291
  %293 = xor i32 %292, %248
  %294 = load i16, ptr %285, align 1
  %295 = zext i16 %294 to i32
  %296 = getelementptr inbounds i8, ptr %17, i64 54
  %297 = load i8, ptr %296, align 1, !tbaa !42
  %298 = zext i8 %297 to i32
  %299 = shl nuw nsw i32 %298, 16
  %300 = or disjoint i32 %299, %295
  %301 = getelementptr inbounds i8, ptr %17, i64 55
  %302 = load i8, ptr %301, align 1, !tbaa !42
  %303 = zext i8 %302 to i32
  %304 = shl nuw i32 %303, 24
  %305 = or disjoint i32 %300, %304
  %306 = getelementptr inbounds i8, ptr %17, i64 56
  %307 = add i32 %305, -40341101
  %308 = add i32 %307, %227
  %309 = add i32 %308, %293
  %310 = tail call i32 @llvm.fshl.i32(i32 %309, i32 %309, i32 12)
  %311 = add i32 %310, %290
  %312 = xor i32 %290, %269
  %313 = and i32 %311, %312
  %314 = xor i32 %313, %269
  %315 = load i16, ptr %306, align 1
  %316 = zext i16 %315 to i32
  %317 = getelementptr inbounds i8, ptr %17, i64 58
  %318 = load i8, ptr %317, align 1, !tbaa !42
  %319 = zext i8 %318 to i32
  %320 = shl nuw nsw i32 %319, 16
  %321 = or disjoint i32 %320, %316
  %322 = getelementptr inbounds i8, ptr %17, i64 59
  %323 = load i8, ptr %322, align 1, !tbaa !42
  %324 = zext i8 %323 to i32
  %325 = shl nuw i32 %324, 24
  %326 = or disjoint i32 %321, %325
  %327 = getelementptr inbounds i8, ptr %17, i64 60
  %328 = add i32 %326, -1502002290
  %329 = add i32 %328, %248
  %330 = add i32 %329, %314
  %331 = tail call i32 @llvm.fshl.i32(i32 %330, i32 %330, i32 17)
  %332 = add i32 %331, %311
  %333 = xor i32 %311, %290
  %334 = and i32 %332, %333
  %335 = xor i32 %334, %290
  %336 = load i16, ptr %327, align 1
  %337 = zext i16 %336 to i32
  %338 = getelementptr inbounds i8, ptr %17, i64 62
  %339 = load i8, ptr %338, align 1, !tbaa !42
  %340 = zext i8 %339 to i32
  %341 = shl nuw nsw i32 %340, 16
  %342 = or disjoint i32 %341, %337
  %343 = getelementptr inbounds i8, ptr %17, i64 63
  %344 = load i8, ptr %343, align 1, !tbaa !42
  %345 = zext i8 %344 to i32
  %346 = shl nuw i32 %345, 24
  %347 = or disjoint i32 %342, %346
  %348 = getelementptr inbounds i8, ptr %17, i64 64
  %349 = add i32 %347, 1236535329
  %350 = add i32 %349, %269
  %351 = add i32 %350, %335
  %352 = tail call i32 @llvm.fshl.i32(i32 %351, i32 %351, i32 22)
  %353 = add i32 %352, %332
  %354 = xor i32 %353, %332
  %355 = and i32 %354, %311
  %356 = xor i32 %355, %332
  %357 = add i32 %53, -165796510
  %358 = add i32 %357, %290
  %359 = add i32 %358, %356
  %360 = tail call i32 @llvm.fshl.i32(i32 %359, i32 %359, i32 5)
  %361 = add i32 %360, %353
  %362 = xor i32 %361, %353
  %363 = and i32 %362, %332
  %364 = xor i32 %363, %353
  %365 = add i32 %158, -1069501632
  %366 = add i32 %365, %311
  %367 = add i32 %366, %364
  %368 = tail call i32 @llvm.fshl.i32(i32 %367, i32 %367, i32 9)
  %369 = add i32 %368, %361
  %370 = xor i32 %369, %361
  %371 = and i32 %370, %353
  %372 = xor i32 %371, %361
  %373 = add i32 %263, 643717713
  %374 = add i32 %373, %332
  %375 = add i32 %374, %372
  %376 = tail call i32 @llvm.fshl.i32(i32 %375, i32 %375, i32 14)
  %377 = add i32 %376, %369
  %378 = xor i32 %377, %369
  %379 = and i32 %378, %361
  %380 = xor i32 %379, %369
  %381 = add i32 %32, -373897302
  %382 = add i32 %381, %353
  %383 = add i32 %382, %380
  %384 = tail call i32 @llvm.fshl.i32(i32 %383, i32 %383, i32 20)
  %385 = add i32 %384, %377
  %386 = xor i32 %385, %377
  %387 = and i32 %386, %369
  %388 = xor i32 %387, %377
  %389 = add i32 %137, -701558691
  %390 = add i32 %389, %361
  %391 = add i32 %390, %388
  %392 = tail call i32 @llvm.fshl.i32(i32 %391, i32 %391, i32 5)
  %393 = add i32 %392, %385
  %394 = xor i32 %393, %385
  %395 = and i32 %394, %377
  %396 = xor i32 %395, %385
  %397 = add i32 %242, 38016083
  %398 = add i32 %397, %369
  %399 = add i32 %398, %396
  %400 = tail call i32 @llvm.fshl.i32(i32 %399, i32 %399, i32 9)
  %401 = add i32 %400, %393
  %402 = xor i32 %401, %393
  %403 = and i32 %402, %385
  %404 = xor i32 %403, %393
  %405 = add i32 %347, -660478335
  %406 = add i32 %405, %377
  %407 = add i32 %406, %404
  %408 = tail call i32 @llvm.fshl.i32(i32 %407, i32 %407, i32 14)
  %409 = add i32 %408, %401
  %410 = xor i32 %409, %401
  %411 = and i32 %410, %393
  %412 = xor i32 %411, %401
  %413 = add i32 %116, -405537848
  %414 = add i32 %413, %385
  %415 = add i32 %414, %412
  %416 = tail call i32 @llvm.fshl.i32(i32 %415, i32 %415, i32 20)
  %417 = add i32 %416, %409
  %418 = xor i32 %417, %409
  %419 = and i32 %418, %401
  %420 = xor i32 %419, %409
  %421 = add i32 %221, 568446438
  %422 = add i32 %421, %393
  %423 = add i32 %422, %420
  %424 = tail call i32 @llvm.fshl.i32(i32 %423, i32 %423, i32 5)
  %425 = add i32 %424, %417
  %426 = xor i32 %425, %417
  %427 = and i32 %426, %409
  %428 = xor i32 %427, %417
  %429 = add i32 %326, -1019803690
  %430 = add i32 %429, %401
  %431 = add i32 %430, %428
  %432 = tail call i32 @llvm.fshl.i32(i32 %431, i32 %431, i32 9)
  %433 = add i32 %432, %425
  %434 = xor i32 %433, %425
  %435 = and i32 %434, %417
  %436 = xor i32 %435, %425
  %437 = add i32 %95, -187363961
  %438 = add i32 %437, %409
  %439 = add i32 %438, %436
  %440 = tail call i32 @llvm.fshl.i32(i32 %439, i32 %439, i32 14)
  %441 = add i32 %440, %433
  %442 = xor i32 %441, %433
  %443 = and i32 %442, %425
  %444 = xor i32 %443, %433
  %445 = add i32 %200, 1163531501
  %446 = add i32 %445, %417
  %447 = add i32 %446, %444
  %448 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 20)
  %449 = add i32 %448, %441
  %450 = xor i32 %449, %441
  %451 = and i32 %450, %433
  %452 = xor i32 %451, %441
  %453 = add i32 %305, -1444681467
  %454 = add i32 %453, %425
  %455 = add i32 %454, %452
  %456 = tail call i32 @llvm.fshl.i32(i32 %455, i32 %455, i32 5)
  %457 = add i32 %456, %449
  %458 = xor i32 %457, %449
  %459 = and i32 %458, %441
  %460 = xor i32 %459, %449
  %461 = add i32 %74, -51403784
  %462 = add i32 %461, %433
  %463 = add i32 %462, %460
  %464 = tail call i32 @llvm.fshl.i32(i32 %463, i32 %463, i32 9)
  %465 = add i32 %464, %457
  %466 = xor i32 %465, %457
  %467 = and i32 %466, %449
  %468 = xor i32 %467, %457
  %469 = add i32 %179, 1735328473
  %470 = add i32 %469, %441
  %471 = add i32 %470, %468
  %472 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 14)
  %473 = add i32 %472, %465
  %474 = xor i32 %473, %465
  %475 = and i32 %474, %457
  %476 = xor i32 %475, %465
  %477 = add i32 %284, -1926607734
  %478 = add i32 %477, %449
  %479 = add i32 %478, %476
  %480 = tail call i32 @llvm.fshl.i32(i32 %479, i32 %479, i32 20)
  %481 = add i32 %480, %473
  %482 = xor i32 %474, %481
  %483 = add i32 %137, -378558
  %484 = add i32 %483, %457
  %485 = add i32 %484, %482
  %486 = tail call i32 @llvm.fshl.i32(i32 %485, i32 %485, i32 4)
  %487 = add i32 %486, %481
  %488 = xor i32 %481, %473
  %489 = xor i32 %488, %487
  %490 = add i32 %200, -2022574463
  %491 = add i32 %490, %465
  %492 = add i32 %491, %489
  %493 = tail call i32 @llvm.fshl.i32(i32 %492, i32 %492, i32 11)
  %494 = add i32 %493, %487
  %495 = xor i32 %487, %481
  %496 = xor i32 %495, %494
  %497 = add i32 %263, 1839030562
  %498 = add i32 %497, %473
  %499 = add i32 %498, %496
  %500 = tail call i32 @llvm.fshl.i32(i32 %499, i32 %499, i32 16)
  %501 = add i32 %500, %494
  %502 = xor i32 %494, %487
  %503 = xor i32 %502, %501
  %504 = add i32 %326, -35309556
  %505 = add i32 %504, %481
  %506 = add i32 %505, %503
  %507 = tail call i32 @llvm.fshl.i32(i32 %506, i32 %506, i32 23)
  %508 = add i32 %507, %501
  %509 = xor i32 %501, %494
  %510 = xor i32 %509, %508
  %511 = add i32 %53, -1530992060
  %512 = add i32 %511, %487
  %513 = add i32 %512, %510
  %514 = tail call i32 @llvm.fshl.i32(i32 %513, i32 %513, i32 4)
  %515 = add i32 %514, %508
  %516 = xor i32 %508, %501
  %517 = xor i32 %516, %515
  %518 = add i32 %116, 1272893353
  %519 = add i32 %518, %494
  %520 = add i32 %519, %517
  %521 = tail call i32 @llvm.fshl.i32(i32 %520, i32 %520, i32 11)
  %522 = add i32 %521, %515
  %523 = xor i32 %515, %508
  %524 = xor i32 %523, %522
  %525 = add i32 %179, -155497632
  %526 = add i32 %525, %501
  %527 = add i32 %526, %524
  %528 = tail call i32 @llvm.fshl.i32(i32 %527, i32 %527, i32 16)
  %529 = add i32 %528, %522
  %530 = xor i32 %522, %515
  %531 = xor i32 %530, %529
  %532 = add i32 %242, -1094730640
  %533 = add i32 %532, %508
  %534 = add i32 %533, %531
  %535 = tail call i32 @llvm.fshl.i32(i32 %534, i32 %534, i32 23)
  %536 = add i32 %535, %529
  %537 = xor i32 %529, %522
  %538 = xor i32 %537, %536
  %539 = add i32 %305, 681279174
  %540 = add i32 %539, %515
  %541 = add i32 %540, %538
  %542 = tail call i32 @llvm.fshl.i32(i32 %541, i32 %541, i32 4)
  %543 = add i32 %542, %536
  %544 = xor i32 %536, %529
  %545 = xor i32 %544, %543
  %546 = add i32 %32, -358537222
  %547 = add i32 %546, %522
  %548 = add i32 %547, %545
  %549 = tail call i32 @llvm.fshl.i32(i32 %548, i32 %548, i32 11)
  %550 = add i32 %549, %543
  %551 = xor i32 %543, %536
  %552 = xor i32 %551, %550
  %553 = add i32 %95, -722521979
  %554 = add i32 %553, %529
  %555 = add i32 %554, %552
  %556 = tail call i32 @llvm.fshl.i32(i32 %555, i32 %555, i32 16)
  %557 = add i32 %556, %550
  %558 = xor i32 %550, %543
  %559 = xor i32 %558, %557
  %560 = add i32 %158, 76029189
  %561 = add i32 %560, %536
  %562 = add i32 %561, %559
  %563 = tail call i32 @llvm.fshl.i32(i32 %562, i32 %562, i32 23)
  %564 = add i32 %563, %557
  %565 = xor i32 %557, %550
  %566 = xor i32 %565, %564
  %567 = add i32 %221, -640364487
  %568 = add i32 %567, %543
  %569 = add i32 %568, %566
  %570 = tail call i32 @llvm.fshl.i32(i32 %569, i32 %569, i32 4)
  %571 = add i32 %570, %564
  %572 = xor i32 %564, %557
  %573 = xor i32 %572, %571
  %574 = add i32 %284, -421815835
  %575 = add i32 %574, %550
  %576 = add i32 %575, %573
  %577 = tail call i32 @llvm.fshl.i32(i32 %576, i32 %576, i32 11)
  %578 = add i32 %577, %571
  %579 = xor i32 %571, %564
  %580 = xor i32 %579, %578
  %581 = add i32 %347, 530742520
  %582 = add i32 %581, %557
  %583 = add i32 %582, %580
  %584 = tail call i32 @llvm.fshl.i32(i32 %583, i32 %583, i32 16)
  %585 = add i32 %584, %578
  %586 = xor i32 %578, %571
  %587 = xor i32 %586, %585
  %588 = add i32 %74, -995338651
  %589 = add i32 %588, %564
  %590 = add i32 %589, %587
  %591 = tail call i32 @llvm.fshl.i32(i32 %590, i32 %590, i32 23)
  %592 = add i32 %591, %585
  %593 = xor i32 %578, -1
  %594 = or i32 %592, %593
  %595 = xor i32 %594, %585
  %596 = add i32 %32, -198630844
  %597 = add i32 %596, %571
  %598 = add i32 %597, %595
  %599 = tail call i32 @llvm.fshl.i32(i32 %598, i32 %598, i32 6)
  %600 = add i32 %599, %592
  %601 = xor i32 %585, -1
  %602 = or i32 %600, %601
  %603 = xor i32 %602, %592
  %604 = add i32 %179, 1126891415
  %605 = add i32 %604, %578
  %606 = add i32 %605, %603
  %607 = tail call i32 @llvm.fshl.i32(i32 %606, i32 %606, i32 10)
  %608 = add i32 %607, %600
  %609 = xor i32 %592, -1
  %610 = or i32 %608, %609
  %611 = xor i32 %610, %600
  %612 = add i32 %326, -1416354905
  %613 = add i32 %612, %585
  %614 = add i32 %613, %611
  %615 = tail call i32 @llvm.fshl.i32(i32 %614, i32 %614, i32 15)
  %616 = add i32 %615, %608
  %617 = xor i32 %600, -1
  %618 = or i32 %616, %617
  %619 = xor i32 %618, %608
  %620 = add i32 %137, -57434055
  %621 = add i32 %620, %592
  %622 = add i32 %621, %619
  %623 = tail call i32 @llvm.fshl.i32(i32 %622, i32 %622, i32 21)
  %624 = add i32 %623, %616
  %625 = xor i32 %608, -1
  %626 = or i32 %624, %625
  %627 = xor i32 %626, %616
  %628 = add i32 %284, 1700485571
  %629 = add i32 %628, %600
  %630 = add i32 %629, %627
  %631 = tail call i32 @llvm.fshl.i32(i32 %630, i32 %630, i32 6)
  %632 = add i32 %631, %624
  %633 = xor i32 %616, -1
  %634 = or i32 %632, %633
  %635 = xor i32 %634, %624
  %636 = add i32 %95, -1894986606
  %637 = add i32 %636, %608
  %638 = add i32 %637, %635
  %639 = tail call i32 @llvm.fshl.i32(i32 %638, i32 %638, i32 10)
  %640 = add i32 %639, %632
  %641 = xor i32 %624, -1
  %642 = or i32 %640, %641
  %643 = xor i32 %642, %632
  %644 = add i32 %242, -1051523
  %645 = add i32 %644, %616
  %646 = add i32 %645, %643
  %647 = tail call i32 @llvm.fshl.i32(i32 %646, i32 %646, i32 15)
  %648 = add i32 %647, %640
  %649 = xor i32 %632, -1
  %650 = or i32 %648, %649
  %651 = xor i32 %650, %640
  %652 = add i32 %53, -2054922799
  %653 = add i32 %652, %624
  %654 = add i32 %653, %651
  %655 = tail call i32 @llvm.fshl.i32(i32 %654, i32 %654, i32 21)
  %656 = add i32 %655, %648
  %657 = xor i32 %640, -1
  %658 = or i32 %656, %657
  %659 = xor i32 %658, %648
  %660 = add i32 %200, 1873313359
  %661 = add i32 %660, %632
  %662 = add i32 %661, %659
  %663 = tail call i32 @llvm.fshl.i32(i32 %662, i32 %662, i32 6)
  %664 = add i32 %663, %656
  %665 = xor i32 %648, -1
  %666 = or i32 %664, %665
  %667 = xor i32 %666, %656
  %668 = add i32 %347, -30611744
  %669 = add i32 %668, %640
  %670 = add i32 %669, %667
  %671 = tail call i32 @llvm.fshl.i32(i32 %670, i32 %670, i32 10)
  %672 = add i32 %671, %664
  %673 = xor i32 %656, -1
  %674 = or i32 %672, %673
  %675 = xor i32 %674, %664
  %676 = add i32 %158, -1560198380
  %677 = add i32 %676, %648
  %678 = add i32 %677, %675
  %679 = tail call i32 @llvm.fshl.i32(i32 %678, i32 %678, i32 15)
  %680 = add i32 %679, %672
  %681 = xor i32 %664, -1
  %682 = or i32 %680, %681
  %683 = xor i32 %682, %672
  %684 = add i32 %305, 1309151649
  %685 = add i32 %684, %656
  %686 = add i32 %685, %683
  %687 = tail call i32 @llvm.fshl.i32(i32 %686, i32 %686, i32 21)
  %688 = add i32 %687, %680
  %689 = xor i32 %672, -1
  %690 = or i32 %688, %689
  %691 = xor i32 %690, %680
  %692 = add i32 %116, -145523070
  %693 = add i32 %692, %664
  %694 = add i32 %693, %691
  %695 = tail call i32 @llvm.fshl.i32(i32 %694, i32 %694, i32 6)
  %696 = add i32 %695, %688
  %697 = xor i32 %680, -1
  %698 = or i32 %696, %697
  %699 = xor i32 %698, %688
  %700 = add i32 %263, -1120210379
  %701 = add i32 %700, %672
  %702 = add i32 %701, %699
  %703 = tail call i32 @llvm.fshl.i32(i32 %702, i32 %702, i32 10)
  %704 = add i32 %703, %696
  %705 = xor i32 %688, -1
  %706 = or i32 %704, %705
  %707 = xor i32 %706, %696
  %708 = add i32 %74, 718787259
  %709 = add i32 %708, %680
  %710 = add i32 %709, %707
  %711 = tail call i32 @llvm.fshl.i32(i32 %710, i32 %710, i32 15)
  %712 = add i32 %711, %704
  %713 = xor i32 %696, -1
  %714 = or i32 %712, %713
  %715 = xor i32 %714, %704
  %716 = add i32 %221, -343485551
  %717 = add i32 %716, %688
  %718 = add i32 %717, %715
  %719 = tail call i32 @llvm.fshl.i32(i32 %718, i32 %718, i32 21)
  %720 = add i32 %696, %15
  %721 = add i32 %712, %14
  %722 = add i32 %721, %719
  %723 = add i32 %712, %13
  %724 = add i32 %704, %12
  %725 = add i64 %16, -1
  %726 = icmp eq i64 %725, 0
  br i1 %726, label %727, label %11, !llvm.loop !91

727:                                              ; preds = %11
  store i32 %720, ptr %0, align 4, !tbaa !64
  store i32 %722, ptr %5, align 4, !tbaa !65
  store i32 %723, ptr %7, align 4, !tbaa !66
  store i32 %724, ptr %9, align 4, !tbaa !67
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MD5Final(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !35 !PGOFuncName !92 {
  %3 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = and i32 %4, 63
  %6 = zext nneg i32 %5 to i64
  %7 = icmp ult i32 %5, 56
  %8 = select i1 %7, i64 56, i64 120
  %9 = sub nsw i64 %8, %6
  %10 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 6
  %11 = getelementptr inbounds i8, ptr %10, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 16 @PADDING, i64 %9, i1 false)
  %12 = load i32, ptr %3, align 4, !tbaa !59
  %13 = shl i32 %12, 3
  %14 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %12, i32 3)
  %17 = getelementptr inbounds i8, ptr %10, i64 %8
  tail call fastcc void @u2s(i32 noundef %13, ptr noundef nonnull %17) #13
  %18 = or disjoint i64 %8, 4
  %19 = getelementptr inbounds i8, ptr %10, i64 %18
  tail call fastcc void @u2s(i32 noundef %16, ptr noundef nonnull %19) #13
  %20 = add nuw nsw i64 %8, 8
  %21 = lshr exact i64 %20, 6
  tail call fastcc void @MD5Transform(ptr noundef %1, ptr noundef nonnull %10, i64 noundef %21) #13
  %22 = load i32, ptr %1, align 4, !tbaa !64
  tail call fastcc void @u2s(i32 noundef %22, ptr noundef %0) #13
  %23 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  tail call fastcc void @u2s(i32 noundef %24, ptr noundef nonnull %25) #13
  %26 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  tail call fastcc void @u2s(i32 noundef %27, ptr noundef nonnull %28) #13
  %29 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !67
  %31 = getelementptr inbounds i8, ptr %0, i64 12
  tail call fastcc void @u2s(i32 noundef %30, ptr noundef nonnull %31) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_mortal_sv(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !93 {
  %3 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #12
  switch i32 %1, label %8 [
    i32 0, label %9
    i32 1, label %4
    i32 2, label %6
  ]

4:                                                ; preds = %2
  %5 = call fastcc ptr @hex_16(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %9

6:                                                ; preds = %2
  %7 = call fastcc ptr @base64_16(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %9

8:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, i32 noundef %1) #11
  br label %9

9:                                                ; preds = %2, %8, %6, %4
  %10 = phi i64 [ 0, %8 ], [ 22, %6 ], [ 32, %4 ], [ 16, %2 ]
  %11 = phi ptr [ null, %8 ], [ %3, %6 ], [ %3, %4 ], [ %0, %2 ]
  %12 = call ptr @Perl_newSVpv(ptr noundef %11, i64 noundef %10) #11
  %13 = call ptr @Perl_sv_2mortal(ptr noundef %12) #11
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #12
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @u2s(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !35 !PGOFuncName !94 {
  %3 = trunc i32 %0 to i8
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %3, ptr %1, align 1, !tbaa !42
  %5 = lshr i32 %0, 8
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %6, ptr %4, align 1, !tbaa !42
  %8 = lshr i32 %0, 16
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %9, ptr %7, align 1, !tbaa !42
  %11 = lshr i32 %0, 24
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %10, align 1, !tbaa !42
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @hex_16(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) unnamed_addr #7 !prof !35 !PGOFuncName !95 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi ptr [ %1, %2 ], [ %18, %3 ]
  %5 = phi i64 [ 0, %2 ], [ %19, %3 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !42
  %8 = lshr i8 %7, 4
  %9 = zext nneg i8 %8 to i64
  %10 = getelementptr inbounds [17 x i8], ptr @hex_16.hexdigits, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !42
  %12 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %11, ptr %4, align 1, !tbaa !42
  %13 = load i8, ptr %6, align 1, !tbaa !42
  %14 = and i8 %13, 15
  %15 = zext nneg i8 %14 to i64
  %16 = getelementptr inbounds [17 x i8], ptr @hex_16.hexdigits, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !42
  %18 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %17, ptr %12, align 1, !tbaa !42
  %19 = add nuw nsw i64 %5, 1
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %21, label %3, !llvm.loop !96

21:                                               ; preds = %3
  store i8 0, ptr %18, align 1, !tbaa !42
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @base64_16(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) unnamed_addr #5 !prof !35 !PGOFuncName !97 {
  %3 = load i8, ptr %0, align 1, !tbaa !42
  %4 = zext i8 %3 to i32
  %5 = lshr i32 %4, 2
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !42
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %8, ptr %1, align 1, !tbaa !42
  br label %17

10:                                               ; preds = %17
  %11 = shl nuw nsw i32 %55, 4
  %12 = and i32 %11, 48
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %13
  %15 = load i8, ptr %14, align 16, !tbaa !42
  %16 = getelementptr inbounds i8, ptr %22, i64 6
  store i8 %15, ptr %60, align 1, !tbaa !42
  store i8 0, ptr %16, align 1, !tbaa !42
  ret ptr %1

17:                                               ; preds = %2, %17
  %18 = phi ptr [ %9, %2 ], [ %60, %17 ]
  %19 = phi i32 [ %4, %2 ], [ %55, %17 ]
  %20 = phi i64 [ 1, %2 ], [ %53, %17 ]
  %21 = phi ptr [ %0, %2 ], [ %52, %17 ]
  %22 = phi ptr [ %1, %2 ], [ %51, %17 ]
  %23 = phi i64 [ 0, %2 ], [ %27, %17 ]
  %24 = getelementptr inbounds i8, ptr %0, i64 %20
  %25 = getelementptr i8, ptr %21, i64 2
  %26 = load i8, ptr %24, align 1, !tbaa !42
  %27 = add nuw nsw i64 %23, 3
  %28 = load i8, ptr %25, align 1, !tbaa !42
  %29 = shl nuw nsw i32 %19, 4
  %30 = and i32 %29, 48
  %31 = zext i8 %26 to i32
  %32 = lshr i32 %31, 4
  %33 = or disjoint i32 %32, %30
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !42
  %37 = getelementptr inbounds i8, ptr %22, i64 2
  store i8 %36, ptr %18, align 1, !tbaa !42
  %38 = shl nuw nsw i32 %31, 2
  %39 = and i32 %38, 60
  %40 = zext i8 %28 to i32
  %41 = lshr i32 %40, 6
  %42 = or disjoint i32 %39, %41
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = getelementptr inbounds i8, ptr %22, i64 3
  store i8 %45, ptr %37, align 1, !tbaa !42
  %47 = and i32 %40, 63
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !42
  %51 = getelementptr inbounds i8, ptr %22, i64 4
  store i8 %50, ptr %46, align 1, !tbaa !42
  %52 = getelementptr inbounds i8, ptr %0, i64 %27
  %53 = add nuw nsw i64 %23, 4
  %54 = load i8, ptr %52, align 1, !tbaa !42
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %55, 2
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !42
  %60 = getelementptr inbounds i8, ptr %22, i64 5
  store i8 %59, ptr %51, align 1, !tbaa !42
  %61 = icmp eq i64 %53, 16
  br i1 %61, label %10, label %17
}

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !38, i64 0}
!37 = !{!"cv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!"MD5.c:XS_Digest__MD5_new"}
!44 = !{!38, !38, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{!47, !41, i64 12}
!47 = !{!"sv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!48 = !{!47, !38, i64 0}
!49 = !{!50, !51, i64 16}
!50 = !{!"xpv", !38, i64 0, !39, i64 8, !51, i64 16, !39, i64 24}
!51 = !{!"long", !39, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"MD5.c:XS_Digest__MD5_clone"}
!54 = !{!"MD5.c:XS_Digest__MD5_DESTROY"}
!55 = !{!"MD5.c:XS_Digest__MD5_add"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"MD5.c:XS_Digest__MD5_addfile"}
!59 = !{!60, !41, i64 16}
!60 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !39, i64 24}
!61 = distinct !{!61, !57}
!62 = !{!"MD5.c:XS_Digest__MD5_digest"}
!63 = !{!"MD5.c:XS_Digest__MD5_context"}
!64 = !{!60, !41, i64 0}
!65 = !{!60, !41, i64 4}
!66 = !{!60, !41, i64 8}
!67 = !{!60, !41, i64 12}
!68 = !{!60, !41, i64 20}
!69 = !{!"MD5.c:XS_Digest__MD5_md5"}
!70 = !{!71, !38, i64 0}
!71 = !{!"xpvmg", !38, i64 0, !39, i64 8, !51, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!72 = !{!73, !41, i64 12}
!73 = !{!"hv", !38, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!74 = !{!73, !38, i64 0}
!75 = !{!76, !51, i64 24}
!76 = !{!"xpvhv", !38, i64 0, !39, i64 8, !51, i64 16, !51, i64 24}
!77 = !{!78, !41, i64 28}
!78 = !{!"xpvhv_aux", !39, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !41, i64 28, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52}
!79 = distinct !{!79, !57}
!80 = !{!"MD5.c:new_md5_ctx"}
!81 = !{!"MD5.c:get_md5_ctx"}
!82 = !{!83, !39, i64 18}
!83 = !{!"magic", !38, i64 0, !38, i64 8, !84, i64 16, !39, i64 18, !39, i64 19, !51, i64 24, !38, i64 32, !38, i64 40}
!84 = !{!"short", !39, i64 0}
!85 = !{!83, !38, i64 8}
!86 = !{!83, !38, i64 40}
!87 = distinct !{!87, !57}
!88 = !{!"MD5.c:MD5Init"}
!89 = !{!"MD5.c:MD5Update"}
!90 = !{!"MD5.c:MD5Transform"}
!91 = distinct !{!91, !57}
!92 = !{!"MD5.c:MD5Final"}
!93 = !{!"MD5.c:make_mortal_sv"}
!94 = !{!"MD5.c:u2s"}
!95 = !{!"MD5.c:hex_16"}
!96 = distinct !{!96, !57}
!97 = !{!"MD5.c:base64_16"}
