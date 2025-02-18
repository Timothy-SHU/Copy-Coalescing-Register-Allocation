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
%struct.MD5_CTX = type { i32, i32, i32, i32, i32, i32, [128 x i8] }
%struct.io = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
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

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Digest__MD5(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Digest__MD5_new) #9
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Digest__MD5_clone) #9
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Digest__MD5_DESTROY) #9
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Digest__MD5_add) #9
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Digest__MD5_addfile) #9
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_Digest__MD5_digest) #9
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 5
  store i32 2, ptr %10, align 8, !tbaa !41
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Digest__MD5_digest) #9
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  store i32 0, ptr %13, align 8, !tbaa !41
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Digest__MD5_digest) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 5
  store i32 1, ptr %16, align 8, !tbaa !41
  %17 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Digest__MD5_context) #9
  %18 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Digest__MD5_md5) #9
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 5
  store i32 0, ptr %20, align 8, !tbaa !41
  %21 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Digest__MD5_md5) #9
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.xpvcv, ptr %22, i64 0, i32 5
  store i32 2, ptr %23, align 8, !tbaa !41
  %24 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Digest__MD5_md5) #9
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 5
  store i32 1, ptr %26, align 8, !tbaa !41
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_new(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = load i32, ptr %4, align 4, !tbaa !43
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !44
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %27 = and i32 %23, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load ptr, ptr %21, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !47
  store i64 %32, ptr %2, align 8, !tbaa !50
  %33 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  br label %37

35:                                               ; preds = %26
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #9
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = call ptr @Perl_safesysmalloc(i64 noundef 152) #9
  %40 = call fastcc ptr @new_md5_ctx(ptr noundef %39, ptr noundef %38)
  %41 = call ptr @Perl_sv_2mortal(ptr noundef %40) #9
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %43 = getelementptr inbounds ptr, ptr %42, i64 %19
  store ptr %41, ptr %43, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %46

44:                                               ; preds = %17
  %45 = tail call fastcc ptr @get_md5_ctx(ptr noundef %21)
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi ptr [ %45, %44 ], [ %39, %37 ]
  store i32 1732584193, ptr %47, align 4, !tbaa !51
  %48 = getelementptr inbounds %struct.MD5_CTX, ptr %47, i64 0, i32 1
  store i32 -271733879, ptr %48, align 4, !tbaa !53
  %49 = getelementptr inbounds %struct.MD5_CTX, ptr %47, i64 0, i32 2
  store i32 -1732584194, ptr %49, align 4, !tbaa !54
  %50 = getelementptr inbounds %struct.MD5_CTX, ptr %47, i64 0, i32 3
  store i32 271733878, ptr %50, align 4, !tbaa !55
  %51 = getelementptr inbounds %struct.MD5_CTX, ptr %47, i64 0, i32 5
  store i32 0, ptr %51, align 4, !tbaa !56
  %52 = getelementptr inbounds %struct.MD5_CTX, ptr %47, i64 0, i32 4
  store i32 0, ptr %52, align 4, !tbaa !57
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %54 = getelementptr inbounds ptr, ptr %53, i64 %19
  store ptr %54, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_clone(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #9
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = tail call fastcc ptr @get_md5_ctx(ptr noundef %20)
  %22 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = tail call ptr @Perl_sv_reftype(ptr noundef %23, i32 noundef 1) #9
  %25 = tail call ptr @Perl_safesysmalloc(i64 noundef 152) #9
  %26 = tail call fastcc ptr @new_md5_ctx(ptr noundef %25, ptr noundef %24)
  %27 = tail call ptr @Perl_sv_2mortal(ptr noundef %26) #9
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %28, i64 %18
  store ptr %27, ptr %29, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(152) %25, ptr noundef nonnull align 4 dereferenceable(152) %21, i64 152, i1 false)
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %31 = getelementptr inbounds ptr, ptr %30, i64 %18
  store ptr %31, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_DESTROY(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #9
  br label %15

15:                                               ; preds = %14, %1
  %16 = add nsw i32 %5, 1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = tail call fastcc ptr @get_md5_ctx(ptr noundef %20)
  tail call void @Perl_safesysfree(ptr noundef %21) #9
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %23 = getelementptr inbounds ptr, ptr %22, i64 %18
  %24 = getelementptr inbounds ptr, ptr %23, i64 -1
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_add(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = load i32, ptr %4, align 4, !tbaa !43
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.20) #9
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = tail call fastcc ptr @get_md5_ctx(ptr noundef %22)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %24 = icmp sgt i32 %15, 1
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = sext i32 %8 to i64
  %27 = and i64 %14, 4294967295
  br label %28

28:                                               ; preds = %25, %56
  %29 = phi i64 [ 1, %25 ], [ %57, %56 ]
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %31 = add nsw i64 %29, %26
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = and i32 %35, 536870912
  %37 = and i32 %35, 538969088
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load ptr, ptr %33, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !47
  store i64 %42, ptr %2, align 8, !tbaa !50
  %43 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  br label %47

45:                                               ; preds = %28
  %46 = call ptr @Perl_sv_2pvbyte(ptr noundef %33, ptr noundef nonnull %2) #9
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %44, %39 ], [ %46, %45 ]
  %49 = load i64, ptr %2, align 8, !tbaa !50
  call fastcc void @MD5Update(ptr noundef %23, ptr noundef %48, i64 noundef %49)
  %50 = icmp eq i32 %36, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 %31
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %54, i32 noundef 2, i64 noundef 0) #9
  br label %56

56:                                               ; preds = %51, %47
  %57 = add nuw nsw i64 %29, 1
  %58 = icmp eq i64 %57, %27
  br i1 %58, label %59, label %28, !llvm.loop !58

59:                                               ; preds = %56, %18
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %61 = getelementptr inbounds ptr, ptr %60, i64 %20
  store ptr %61, ptr @PL_stack_sp, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_addfile(ptr noundef %0) #0 !prof !34 {
  %2 = alloca [4096 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = load i32, ptr %4, align 4, !tbaa !43
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr ptr, ptr %18, i64 %9
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call ptr @Perl_sv_2io(ptr noundef %24) #9
  %26 = getelementptr inbounds %struct.io, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = tail call fastcc ptr @get_md5_ctx(ptr noundef %21)
  %29 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !57
  %31 = and i32 %30, 63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #9
  %32 = icmp eq ptr %27, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %17
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %33
  %36 = sub nuw nsw i32 64, %31
  %37 = zext nneg i32 %36 to i64
  %38 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef %37) #9
  %39 = trunc i64 %38 to i32
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = and i64 %38, 4294967295
  call fastcc void @MD5Update(ptr noundef %28, ptr noundef nonnull %2, i64 noundef %42)
  br label %46

43:                                               ; preds = %35
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %45 = getelementptr inbounds ptr, ptr %44, i64 %19
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !42
  br label %46

46:                                               ; preds = %41, %43
  br i1 %40, label %47, label %65

47:                                               ; preds = %46, %33
  %48 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef 4096) #9
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47, %51
  %52 = phi i64 [ %54, %51 ], [ %48, %47 ]
  %53 = and i64 %52, 4294967295
  call fastcc void @MD5Update(ptr noundef %28, ptr noundef nonnull %2, i64 noundef %53)
  %54 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef 4096) #9
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %51, label %57, !llvm.loop !61

57:                                               ; preds = %51, %47
  %58 = call i32 @Perl_PerlIO_error(ptr noundef nonnull %27) #9
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %17, %57
  %61 = phi ptr [ @.str.22, %57 ], [ @.str.23, %17 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull %61) #9
  br label %62

62:                                               ; preds = %60, %57
  %63 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %64 = getelementptr inbounds ptr, ptr %63, i64 %19
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !42
  br label %65

65:                                               ; preds = %46, %62
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_digest(ptr noundef %0) #0 !prof !34 {
  %2 = alloca [16 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = load i32, ptr %4, align 4, !tbaa !43
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = ptrtoint ptr %3 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = and i64 %12, 34359738360
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #9
  br label %19

19:                                               ; preds = %18, %1
  %20 = add nsw i32 %6, 1
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = tail call fastcc ptr @get_md5_ctx(ptr noundef %24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call fastcc void @MD5Final(ptr noundef nonnull %2, ptr noundef %25)
  store i32 1732584193, ptr %25, align 4, !tbaa !51
  %26 = getelementptr inbounds %struct.MD5_CTX, ptr %25, i64 0, i32 1
  store i32 -271733879, ptr %26, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.MD5_CTX, ptr %25, i64 0, i32 2
  store i32 -1732584194, ptr %27, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.MD5_CTX, ptr %25, i64 0, i32 3
  store i32 271733878, ptr %28, align 4, !tbaa !55
  %29 = getelementptr inbounds %struct.MD5_CTX, ptr %25, i64 0, i32 5
  store i32 0, ptr %29, align 4, !tbaa !56
  %30 = getelementptr inbounds %struct.MD5_CTX, ptr %25, i64 0, i32 4
  store i32 0, ptr %30, align 4, !tbaa !57
  %31 = call fastcc ptr @make_mortal_sv(ptr noundef nonnull %2, i32 noundef %15)
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %33 = getelementptr inbounds ptr, ptr %32, i64 %22
  store ptr %31, ptr %33, align 8, !tbaa !42
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %35 = getelementptr inbounds ptr, ptr %34, i64 %22
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_context(ptr noundef %0) #0 !prof !34 {
  %2 = alloca [16 x i8], align 16
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %7 = load i32, ptr %5, align 4, !tbaa !43
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.26) #9
  br label %19

19:                                               ; preds = %18, %1
  %20 = shl i64 %14, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %4, i64 %22
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = tail call fastcc ptr @get_md5_ctx(ptr noundef %27)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %29 = icmp sgt i32 %16, 2
  br i1 %29, label %30, label %171

30:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %32 = getelementptr ptr, ptr %31, i64 %10
  %33 = getelementptr ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !44
  %37 = and i32 %36, -2145386240
  %38 = icmp eq i32 %37, -2147483392
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.xpvuv, ptr %40, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !41
  br label %45

43:                                               ; preds = %30
  %44 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %34, i32 noundef 2) #9
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %48 = sext i32 %7 to i64
  %49 = getelementptr ptr, ptr %47, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8, !tbaa !42
  %52 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !44
  %54 = and i32 %53, 2098176
  %55 = icmp eq i32 %54, 1024
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load ptr, ptr %51, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.xpv, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !47
  store i64 %59, ptr %3, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  br label %64

62:                                               ; preds = %45
  %63 = call ptr @Perl_sv_2pv_flags(ptr noundef %51, ptr noundef nonnull %3, i32 noundef 2) #9
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi ptr [ %61, %56 ], [ %63, %62 ]
  %66 = load i8, ptr %65, align 1, !tbaa !41
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds i8, ptr %65, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !41
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 8
  %72 = or disjoint i32 %71, %67
  %73 = getelementptr inbounds i8, ptr %65, i64 2
  %74 = load i8, ptr %73, align 1, !tbaa !41
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 16
  %77 = or disjoint i32 %72, %76
  %78 = getelementptr inbounds i8, ptr %65, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !41
  %80 = zext i8 %79 to i32
  %81 = shl nuw i32 %80, 24
  %82 = or disjoint i32 %77, %81
  store i32 %82, ptr %28, align 4, !tbaa !51
  %83 = getelementptr inbounds i8, ptr %65, i64 4
  %84 = load i8, ptr %83, align 1, !tbaa !41
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds i8, ptr %65, i64 5
  %87 = load i8, ptr %86, align 1, !tbaa !41
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 8
  %90 = or disjoint i32 %89, %85
  %91 = getelementptr inbounds i8, ptr %65, i64 6
  %92 = load i8, ptr %91, align 1, !tbaa !41
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or disjoint i32 %90, %94
  %96 = getelementptr inbounds i8, ptr %65, i64 7
  %97 = load i8, ptr %96, align 1, !tbaa !41
  %98 = zext i8 %97 to i32
  %99 = shl nuw i32 %98, 24
  %100 = or disjoint i32 %95, %99
  %101 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 1
  store i32 %100, ptr %101, align 4, !tbaa !53
  %102 = getelementptr inbounds i8, ptr %65, i64 8
  %103 = load i8, ptr %102, align 1, !tbaa !41
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %65, i64 9
  %106 = load i8, ptr %105, align 1, !tbaa !41
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = or disjoint i32 %108, %104
  %110 = getelementptr inbounds i8, ptr %65, i64 10
  %111 = load i8, ptr %110, align 1, !tbaa !41
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 16
  %114 = or disjoint i32 %109, %113
  %115 = getelementptr inbounds i8, ptr %65, i64 11
  %116 = load i8, ptr %115, align 1, !tbaa !41
  %117 = zext i8 %116 to i32
  %118 = shl nuw i32 %117, 24
  %119 = or disjoint i32 %114, %118
  %120 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 2
  store i32 %119, ptr %120, align 4, !tbaa !54
  %121 = getelementptr inbounds i8, ptr %65, i64 12
  %122 = load i8, ptr %121, align 1, !tbaa !41
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds i8, ptr %65, i64 13
  %125 = load i8, ptr %124, align 1, !tbaa !41
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 8
  %128 = or disjoint i32 %127, %123
  %129 = getelementptr inbounds i8, ptr %65, i64 14
  %130 = load i8, ptr %129, align 1, !tbaa !41
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 16
  %133 = or disjoint i32 %128, %132
  %134 = getelementptr inbounds i8, ptr %65, i64 15
  %135 = load i8, ptr %134, align 1, !tbaa !41
  %136 = zext i8 %135 to i32
  %137 = shl nuw i32 %136, 24
  %138 = or disjoint i32 %133, %137
  %139 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 3
  store i32 %138, ptr %139, align 4, !tbaa !55
  %140 = trunc i64 %46 to i32
  %141 = shl i32 %140, 6
  %142 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 4
  store i32 %141, ptr %142, align 4, !tbaa !57
  %143 = lshr i64 %46, 26
  %144 = trunc i64 %143 to i32
  %145 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 5
  store i32 %144, ptr %145, align 4, !tbaa !56
  %146 = icmp eq i32 %16, 4
  br i1 %146, label %147, label %168

147:                                              ; preds = %64
  %148 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %149 = sext i32 %7 to i64
  %150 = getelementptr ptr, ptr %148, i64 %149
  %151 = getelementptr ptr, ptr %150, i64 4
  %152 = load ptr, ptr %151, align 8, !tbaa !42
  %153 = getelementptr inbounds %struct.sv, ptr %152, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !44
  %155 = and i32 %154, 2098176
  %156 = icmp eq i32 %155, 1024
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load ptr, ptr %152, align 8, !tbaa !46
  %159 = getelementptr inbounds %struct.xpv, ptr %158, i64 0, i32 2
  %160 = load i64, ptr %159, align 8, !tbaa !47
  store i64 %160, ptr %3, align 8, !tbaa !50
  %161 = getelementptr inbounds %struct.sv, ptr %152, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !41
  br label %165

163:                                              ; preds = %147
  %164 = call ptr @Perl_sv_2pv_flags(ptr noundef %152, ptr noundef nonnull %3, i32 noundef 2) #9
  br label %165

165:                                              ; preds = %163, %157
  %166 = phi ptr [ %162, %157 ], [ %164, %163 ]
  %167 = load i64, ptr %3, align 8, !tbaa !50
  call fastcc void @MD5Update(ptr noundef nonnull %28, ptr noundef %166, i64 noundef %167)
  br label %168

168:                                              ; preds = %64, %165
  %169 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %170 = getelementptr inbounds ptr, ptr %169, i64 %25
  store ptr %170, ptr @PL_stack_sp, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %263

171:                                              ; preds = %19
  %172 = icmp eq i32 %16, 1
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  %174 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %175 = getelementptr inbounds ptr, ptr %174, i64 %25
  %176 = getelementptr inbounds ptr, ptr %175, i64 -1
  store ptr %176, ptr @PL_stack_sp, align 8, !tbaa !42
  br label %263

177:                                              ; preds = %171
  %178 = load i32, ptr %28, align 4, !tbaa !51
  %179 = trunc i32 %178 to i8
  store i8 %179, ptr %2, align 16, !tbaa !41
  %180 = lshr i32 %178, 8
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 1
  store i8 %181, ptr %182, align 1, !tbaa !41
  %183 = lshr i32 %178, 16
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 2
  store i8 %184, ptr %185, align 2, !tbaa !41
  %186 = lshr i32 %178, 24
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 3
  store i8 %187, ptr %188, align 1, !tbaa !41
  %189 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !53
  %191 = trunc i32 %190 to i8
  %192 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 4
  store i8 %191, ptr %192, align 4, !tbaa !41
  %193 = lshr i32 %190, 8
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 5
  store i8 %194, ptr %195, align 1, !tbaa !41
  %196 = lshr i32 %190, 16
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 6
  store i8 %197, ptr %198, align 2, !tbaa !41
  %199 = lshr i32 %190, 24
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 7
  store i8 %200, ptr %201, align 1, !tbaa !41
  %202 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !54
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 8
  store i8 %204, ptr %205, align 8, !tbaa !41
  %206 = lshr i32 %203, 8
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 9
  store i8 %207, ptr %208, align 1, !tbaa !41
  %209 = lshr i32 %203, 16
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 10
  store i8 %210, ptr %211, align 2, !tbaa !41
  %212 = lshr i32 %203, 24
  %213 = trunc i32 %212 to i8
  %214 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 11
  store i8 %213, ptr %214, align 1, !tbaa !41
  %215 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 3
  %216 = load i32, ptr %215, align 4, !tbaa !55
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 12
  store i8 %217, ptr %218, align 4, !tbaa !41
  %219 = lshr i32 %216, 8
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 13
  store i8 %220, ptr %221, align 1, !tbaa !41
  %222 = lshr i32 %216, 16
  %223 = trunc i32 %222 to i8
  %224 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 14
  store i8 %223, ptr %224, align 2, !tbaa !41
  %225 = lshr i32 %216, 24
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds [16 x i8], ptr %2, i64 0, i64 15
  store i8 %226, ptr %227, align 1, !tbaa !41
  %228 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %229 = ptrtoint ptr %228 to i64
  %230 = ptrtoint ptr %23 to i64
  %231 = sub i64 %229, %230
  %232 = icmp slt i64 %231, 24
  br i1 %232, label %233, label %235

233:                                              ; preds = %177
  %234 = tail call ptr @Perl_stack_grow(ptr noundef %23, ptr noundef %23, i64 noundef 3) #9
  br label %235

235:                                              ; preds = %177, %233
  %236 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 5
  %237 = load i32, ptr %236, align 4, !tbaa !56
  %238 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 4
  %239 = load i32, ptr %238, align 4, !tbaa !57
  %240 = tail call i32 @llvm.fshl.i32(i32 %237, i32 %239, i32 26)
  %241 = zext i32 %240 to i64
  %242 = tail call ptr @Perl_newSVuv(i64 noundef %241) #9
  %243 = tail call ptr @Perl_sv_2mortal(ptr noundef %242) #9
  %244 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %245 = getelementptr inbounds ptr, ptr %244, i64 %25
  store ptr %243, ptr %245, align 8, !tbaa !42
  %246 = call ptr @Perl_newSVpv(ptr noundef nonnull %2, i64 noundef 16) #9
  %247 = call ptr @Perl_sv_2mortal(ptr noundef %246) #9
  %248 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %249 = getelementptr ptr, ptr %248, i64 %10
  %250 = getelementptr ptr, ptr %249, i64 2
  store ptr %247, ptr %250, align 8, !tbaa !42
  %251 = getelementptr inbounds %struct.MD5_CTX, ptr %28, i64 0, i32 6
  %252 = load i32, ptr %238, align 4, !tbaa !57
  %253 = and i32 %252, 63
  %254 = zext nneg i32 %253 to i64
  %255 = call ptr @Perl_newSVpv(ptr noundef nonnull %251, i64 noundef %254) #9
  %256 = call ptr @Perl_sv_2mortal(ptr noundef %255) #9
  %257 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %258 = getelementptr ptr, ptr %257, i64 %10
  %259 = getelementptr ptr, ptr %258, i64 3
  store ptr %256, ptr %259, align 8, !tbaa !42
  %260 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %261 = getelementptr inbounds ptr, ptr %260, i64 %25
  %262 = getelementptr inbounds ptr, ptr %261, i64 2
  store ptr %262, ptr @PL_stack_sp, align 8, !tbaa !42
  br label %263

263:                                              ; preds = %168, %235, %173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Digest__MD5_md5(ptr nocapture noundef readonly %0) #0 !prof !34 {
  %2 = alloca %struct.MD5_CTX, align 4
  %3 = alloca i64, align 8
  %4 = alloca [16 x i8], align 16
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %7 = getelementptr inbounds i32, ptr %6, i64 -1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %8 = load i32, ptr %6, align 4, !tbaa !43
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %10 = add nsw i32 %8, 1
  %11 = sext i32 %8 to i64
  %12 = getelementptr ptr, ptr %9, i64 %11
  %13 = ptrtoint ptr %5 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr i64 %15, 3
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr %0, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  store i32 1732584193, ptr %2, align 4, !tbaa !51
  %21 = getelementptr inbounds %struct.MD5_CTX, ptr %2, i64 0, i32 1
  store i32 -271733879, ptr %21, align 4, !tbaa !53
  %22 = getelementptr inbounds %struct.MD5_CTX, ptr %2, i64 0, i32 2
  store i32 -1732584194, ptr %22, align 4, !tbaa !54
  %23 = getelementptr inbounds %struct.MD5_CTX, ptr %2, i64 0, i32 3
  store i32 271733878, ptr %23, align 4, !tbaa !55
  %24 = getelementptr inbounds %struct.MD5_CTX, ptr %2, i64 0, i32 5
  store i32 0, ptr %24, align 4, !tbaa !56
  %25 = getelementptr inbounds %struct.MD5_CTX, ptr %2, i64 0, i32 4
  store i32 0, ptr %25, align 4, !tbaa !57
  %26 = load i8, ptr @PL_dowarn, align 1, !tbaa !41
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %164, label %29

29:                                               ; preds = %1
  %30 = icmp eq i32 %17, 1
  br i1 %30, label %31, label %81

31:                                               ; preds = %29
  %32 = sext i32 %10 to i64
  %33 = getelementptr inbounds ptr, ptr %9, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !44
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %156, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !41
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !44
  %44 = and i32 %43, 1048576
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %80, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !46
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !64
  %51 = and i32 %50, 33554432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !41
  %56 = load ptr, ptr %48, align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.xpvhv, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !67
  %59 = getelementptr ptr, ptr %55, i64 %58
  %60 = getelementptr ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !41
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %53
  %64 = getelementptr i8, ptr %59, i64 36
  %65 = load i32, ptr %64, align 4, !tbaa !69
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %61, align 8, !tbaa !42
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %63, %67
  %71 = phi ptr [ %60, %63 ], [ %61, %67 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !41
  %73 = getelementptr inbounds %struct.hek, ptr %72, i64 0, i32 2
  br label %74

74:                                               ; preds = %46, %53, %67, %70
  %75 = phi ptr [ %73, %70 ], [ null, %67 ], [ null, %53 ], [ null, %46 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(12) @.str.15) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %156, label %80

80:                                               ; preds = %77, %74, %39
  br label %156

81:                                               ; preds = %29
  %82 = icmp sgt i32 %17, 1
  br i1 %82, label %83, label %156

83:                                               ; preds = %81
  %84 = sext i32 %10 to i64
  %85 = getelementptr inbounds ptr, ptr %9, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = and i32 %88, 2098176
  %90 = icmp eq i32 %89, 1024
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load ptr, ptr %86, align 8, !tbaa !46
  %93 = getelementptr inbounds %struct.xpv, ptr %92, i64 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !47
  store i64 %94, ptr %3, align 8, !tbaa !50
  %95 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !41
  br label %99

97:                                               ; preds = %83
  %98 = call ptr @Perl_sv_2pv_flags(ptr noundef %86, ptr noundef nonnull %3, i32 noundef 2) #9
  br label %99

99:                                               ; preds = %97, %91
  %100 = phi ptr [ %96, %91 ], [ %98, %97 ]
  %101 = load i64, ptr %3, align 8, !tbaa !50
  %102 = icmp eq i64 %101, 11
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.15, ptr noundef nonnull dereferenceable(11) %100, i64 11)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %156, label %106

106:                                              ; preds = %103, %99
  %107 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %108 = getelementptr inbounds ptr, ptr %107, i64 %84
  %109 = load ptr, ptr %108, align 8, !tbaa !42
  %110 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !44
  %112 = and i32 %111, 2048
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %156, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !41
  %117 = getelementptr inbounds %struct.sv, ptr %116, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !44
  %119 = and i32 %118, 1048576
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %156, label %121

121:                                              ; preds = %114
  %122 = load ptr, ptr %116, align 8, !tbaa !46
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = getelementptr inbounds %struct.hv, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !64
  %126 = and i32 %125, 33554432
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %149, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.hv, ptr %123, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !41
  %131 = load ptr, ptr %123, align 8, !tbaa !66
  %132 = getelementptr inbounds %struct.xpvhv, ptr %131, i64 0, i32 3
  %133 = load i64, ptr %132, align 8, !tbaa !67
  %134 = getelementptr ptr, ptr %130, i64 %133
  %135 = getelementptr ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !41
  %137 = icmp eq ptr %136, null
  br i1 %137, label %149, label %138

138:                                              ; preds = %128
  %139 = getelementptr i8, ptr %134, i64 36
  %140 = load i32, ptr %139, align 4, !tbaa !69
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %136, align 8, !tbaa !42
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %138, %142
  %146 = phi ptr [ %135, %138 ], [ %136, %142 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !41
  %148 = getelementptr inbounds %struct.hek, ptr %147, i64 0, i32 2
  br label %149

149:                                              ; preds = %121, %128, %142, %145
  %150 = phi ptr [ %148, %145 ], [ null, %142 ], [ null, %128 ], [ null, %121 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %150, ptr noundef nonnull dereferenceable(12) @.str.15) #10
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, ptr @.str.27, ptr null
  br label %156

156:                                              ; preds = %103, %152, %114, %149, %80, %77, %81, %106, %31
  %157 = phi ptr [ null, %31 ], [ null, %106 ], [ null, %81 ], [ @.str.28, %80 ], [ @.str.27, %77 ], [ null, %149 ], [ null, %114 ], [ %155, %152 ], [ @.str.29, %103 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = icmp eq i32 %20, 0
  %161 = icmp eq i32 %20, 1
  %162 = select i1 %161, ptr @.str.31, ptr @.str.32
  %163 = select i1 %160, ptr @.str.30, ptr %162
  call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.33, ptr noundef nonnull %163, ptr noundef nonnull %157) #9
  br label %164

164:                                              ; preds = %156, %159, %1
  %165 = icmp sgt i32 %17, 0
  br i1 %165, label %166, label %200

166:                                              ; preds = %164
  %167 = sext i32 %10 to i64
  %168 = and i64 %16, 4294967295
  br label %169

169:                                              ; preds = %166, %197
  %170 = phi i64 [ 0, %166 ], [ %198, %197 ]
  %171 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %172 = add nsw i64 %170, %167
  %173 = getelementptr inbounds ptr, ptr %171, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !42
  %175 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !44
  %177 = and i32 %176, 536870912
  %178 = and i32 %176, 538969088
  %179 = icmp eq i32 %178, 1024
  br i1 %179, label %180, label %186

180:                                              ; preds = %169
  %181 = load ptr, ptr %174, align 8, !tbaa !46
  %182 = getelementptr inbounds %struct.xpv, ptr %181, i64 0, i32 2
  %183 = load i64, ptr %182, align 8, !tbaa !47
  store i64 %183, ptr %3, align 8, !tbaa !50
  %184 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !41
  br label %188

186:                                              ; preds = %169
  %187 = call ptr @Perl_sv_2pvbyte(ptr noundef %174, ptr noundef nonnull %3) #9
  br label %188

188:                                              ; preds = %186, %180
  %189 = phi ptr [ %185, %180 ], [ %187, %186 ]
  %190 = load i64, ptr %3, align 8, !tbaa !50
  call fastcc void @MD5Update(ptr noundef nonnull %2, ptr noundef %189, i64 noundef %190)
  %191 = icmp eq i32 %177, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %194 = getelementptr inbounds ptr, ptr %193, i64 %172
  %195 = load ptr, ptr %194, align 8, !tbaa !42
  %196 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %195, i32 noundef 2, i64 noundef 0) #9
  br label %197

197:                                              ; preds = %192, %188
  %198 = add nuw nsw i64 %170, 1
  %199 = icmp eq i64 %198, %168
  br i1 %199, label %200, label %169, !llvm.loop !71

200:                                              ; preds = %197, %164
  call fastcc void @MD5Final(ptr noundef nonnull %4, ptr noundef nonnull %2)
  %201 = call fastcc ptr @make_mortal_sv(ptr noundef nonnull %4, i32 noundef %20)
  %202 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %203 = sext i32 %10 to i64
  %204 = getelementptr inbounds ptr, ptr %202, i64 %203
  store ptr %201, ptr %204, align 8, !tbaa !42
  %205 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %206 = getelementptr inbounds ptr, ptr %205, i64 %203
  store ptr %206, ptr @PL_stack_sp, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @new_md5_ctx(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  %4 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #9
  %5 = tail call ptr @Perl_gv_stashpv(ptr noundef %1, i32 noundef 0) #9
  %6 = tail call ptr @Perl_sv_bless(ptr noundef %4, ptr noundef %5) #9
  %7 = tail call ptr @Perl_sv_magicext(ptr noundef %3, ptr noundef null, i32 noundef 126, ptr noundef nonnull @vtbl_md5, ptr noundef %0, i32 noundef 0) #9
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @get_md5_ctx(ptr noundef %0) unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef %0, ptr noundef nonnull @.str.15) #9
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16) #9
  br label %4

4:                                                ; preds = %3, %1
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.xpvmg, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %4, %23
  %12 = phi ptr [ %24, %23 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !72
  %15 = icmp eq i8 %14, 126
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = icmp eq ptr %18, @vtbl_md5
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.magic, ptr %12, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  br label %27

23:                                               ; preds = %11, %16
  %24 = load ptr, ptr %12, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !77

26:                                               ; preds = %23, %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17) #9
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi ptr [ %22, %20 ], [ null, %26 ]
  ret ptr %28
}

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MD5Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 !prof !34 {
  %4 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = and i32 %5, 63
  %7 = zext nneg i32 %6 to i64
  %8 = trunc i64 %2 to i32
  %9 = add i32 %5, %8
  store i32 %9, ptr %4, align 4, !tbaa !57
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !56
  br label %16

16:                                               ; preds = %12, %3
  %17 = icmp eq i32 %6, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = sub nuw nsw i64 64, %7
  %20 = icmp ugt i64 %19, %2
  %21 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds i8, ptr %21, i64 %7
  br i1 %20, label %23, label %24

23:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %1, i64 %2, i1 false)
  br label %27

24:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %19, i1 false)
  tail call fastcc void @MD5Transform(ptr noundef %0, ptr noundef nonnull %21, i64 noundef 1)
  %25 = getelementptr inbounds i8, ptr %1, i64 %19
  %26 = sub i64 %2, %19
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i64 [ %2, %23 ], [ %26, %24 ]
  %29 = phi ptr [ %1, %23 ], [ %25, %24 ]
  br i1 %20, label %43, label %30

30:                                               ; preds = %27, %16
  %31 = phi i64 [ %28, %27 ], [ %2, %16 ]
  %32 = phi ptr [ %29, %27 ], [ %1, %16 ]
  %33 = icmp ult i64 %31, 64
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = lshr i64 %31, 6
  tail call fastcc void @MD5Transform(ptr noundef %0, ptr noundef %32, i64 noundef %35)
  br label %36

36:                                               ; preds = %34, %30
  %37 = and i64 %31, 63
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 6
  %41 = and i64 %31, -64
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %40, ptr align 1 %42, i64 %37, i1 false)
  br label %43

43:                                               ; preds = %36, %39, %27
  ret void
}

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MD5Transform(ptr nocapture noundef %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #5 !prof !34 {
  %4 = load i32, ptr %0, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds %struct.MD5_CTX, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !55
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ %10, %3 ], [ %805, %11 ]
  %13 = phi i32 [ %8, %3 ], [ %804, %11 ]
  %14 = phi i32 [ %6, %3 ], [ %803, %11 ]
  %15 = phi i32 [ %4, %3 ], [ %801, %11 ]
  %16 = phi i64 [ %2, %3 ], [ %806, %11 ]
  %17 = phi ptr [ %1, %3 ], [ %428, %11 ]
  %18 = xor i32 %13, %12
  %19 = and i32 %14, %18
  %20 = xor i32 %19, %12
  %21 = load i8, ptr %17, align 1, !tbaa !41
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %17, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !41
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or disjoint i32 %26, %22
  %28 = getelementptr inbounds i8, ptr %17, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !41
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = or disjoint i32 %27, %31
  %33 = getelementptr inbounds i8, ptr %17, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !41
  %35 = zext i8 %34 to i32
  %36 = shl nuw i32 %35, 24
  %37 = or disjoint i32 %32, %36
  %38 = getelementptr inbounds i8, ptr %17, i64 4
  %39 = add i32 %15, -680876936
  %40 = add i32 %39, %20
  %41 = add i32 %40, %37
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 7)
  %43 = add i32 %42, %14
  %44 = xor i32 %14, %13
  %45 = and i32 %43, %44
  %46 = xor i32 %45, %13
  %47 = load i8, ptr %38, align 1, !tbaa !41
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %17, i64 5
  %50 = load i8, ptr %49, align 1, !tbaa !41
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or disjoint i32 %52, %48
  %54 = getelementptr inbounds i8, ptr %17, i64 6
  %55 = load i8, ptr %54, align 1, !tbaa !41
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or disjoint i32 %53, %57
  %59 = getelementptr inbounds i8, ptr %17, i64 7
  %60 = load i8, ptr %59, align 1, !tbaa !41
  %61 = zext i8 %60 to i32
  %62 = shl nuw i32 %61, 24
  %63 = or disjoint i32 %58, %62
  %64 = getelementptr inbounds i8, ptr %17, i64 8
  %65 = add i32 %12, -389564586
  %66 = add i32 %65, %63
  %67 = add i32 %66, %46
  %68 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 12)
  %69 = add i32 %68, %43
  %70 = xor i32 %43, %14
  %71 = and i32 %69, %70
  %72 = xor i32 %71, %14
  %73 = load i8, ptr %64, align 1, !tbaa !41
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds i8, ptr %17, i64 9
  %76 = load i8, ptr %75, align 1, !tbaa !41
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or disjoint i32 %78, %74
  %80 = getelementptr inbounds i8, ptr %17, i64 10
  %81 = load i8, ptr %80, align 1, !tbaa !41
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = or disjoint i32 %79, %83
  %85 = getelementptr inbounds i8, ptr %17, i64 11
  %86 = load i8, ptr %85, align 1, !tbaa !41
  %87 = zext i8 %86 to i32
  %88 = shl nuw i32 %87, 24
  %89 = or disjoint i32 %84, %88
  %90 = getelementptr inbounds i8, ptr %17, i64 12
  %91 = add i32 %13, 606105819
  %92 = add i32 %91, %89
  %93 = add i32 %92, %72
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 17)
  %95 = add i32 %94, %69
  %96 = xor i32 %69, %43
  %97 = and i32 %95, %96
  %98 = xor i32 %97, %43
  %99 = load i8, ptr %90, align 1, !tbaa !41
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds i8, ptr %17, i64 13
  %102 = load i8, ptr %101, align 1, !tbaa !41
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = or disjoint i32 %104, %100
  %106 = getelementptr inbounds i8, ptr %17, i64 14
  %107 = load i8, ptr %106, align 1, !tbaa !41
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 16
  %110 = or disjoint i32 %105, %109
  %111 = getelementptr inbounds i8, ptr %17, i64 15
  %112 = load i8, ptr %111, align 1, !tbaa !41
  %113 = zext i8 %112 to i32
  %114 = shl nuw i32 %113, 24
  %115 = or disjoint i32 %110, %114
  %116 = getelementptr inbounds i8, ptr %17, i64 16
  %117 = add i32 %14, -1044525330
  %118 = add i32 %117, %115
  %119 = add i32 %118, %98
  %120 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 22)
  %121 = add i32 %120, %95
  %122 = xor i32 %95, %69
  %123 = and i32 %121, %122
  %124 = xor i32 %123, %69
  %125 = load i8, ptr %116, align 1, !tbaa !41
  %126 = zext i8 %125 to i32
  %127 = getelementptr inbounds i8, ptr %17, i64 17
  %128 = load i8, ptr %127, align 1, !tbaa !41
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 8
  %131 = or disjoint i32 %130, %126
  %132 = getelementptr inbounds i8, ptr %17, i64 18
  %133 = load i8, ptr %132, align 1, !tbaa !41
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or disjoint i32 %131, %135
  %137 = getelementptr inbounds i8, ptr %17, i64 19
  %138 = load i8, ptr %137, align 1, !tbaa !41
  %139 = zext i8 %138 to i32
  %140 = shl nuw i32 %139, 24
  %141 = or disjoint i32 %136, %140
  %142 = getelementptr inbounds i8, ptr %17, i64 20
  %143 = add i32 %43, -176418897
  %144 = add i32 %143, %141
  %145 = add i32 %144, %124
  %146 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 7)
  %147 = add i32 %146, %121
  %148 = xor i32 %121, %95
  %149 = and i32 %147, %148
  %150 = xor i32 %149, %95
  %151 = load i8, ptr %142, align 1, !tbaa !41
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds i8, ptr %17, i64 21
  %154 = load i8, ptr %153, align 1, !tbaa !41
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 8
  %157 = or disjoint i32 %156, %152
  %158 = getelementptr inbounds i8, ptr %17, i64 22
  %159 = load i8, ptr %158, align 1, !tbaa !41
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 16
  %162 = or disjoint i32 %157, %161
  %163 = getelementptr inbounds i8, ptr %17, i64 23
  %164 = load i8, ptr %163, align 1, !tbaa !41
  %165 = zext i8 %164 to i32
  %166 = shl nuw i32 %165, 24
  %167 = or disjoint i32 %162, %166
  %168 = getelementptr inbounds i8, ptr %17, i64 24
  %169 = add i32 %69, 1200080426
  %170 = add i32 %169, %167
  %171 = add i32 %170, %150
  %172 = tail call i32 @llvm.fshl.i32(i32 %171, i32 %171, i32 12)
  %173 = add i32 %172, %147
  %174 = xor i32 %147, %121
  %175 = and i32 %173, %174
  %176 = xor i32 %175, %121
  %177 = load i8, ptr %168, align 1, !tbaa !41
  %178 = zext i8 %177 to i32
  %179 = getelementptr inbounds i8, ptr %17, i64 25
  %180 = load i8, ptr %179, align 1, !tbaa !41
  %181 = zext i8 %180 to i32
  %182 = shl nuw nsw i32 %181, 8
  %183 = or disjoint i32 %182, %178
  %184 = getelementptr inbounds i8, ptr %17, i64 26
  %185 = load i8, ptr %184, align 1, !tbaa !41
  %186 = zext i8 %185 to i32
  %187 = shl nuw nsw i32 %186, 16
  %188 = or disjoint i32 %183, %187
  %189 = getelementptr inbounds i8, ptr %17, i64 27
  %190 = load i8, ptr %189, align 1, !tbaa !41
  %191 = zext i8 %190 to i32
  %192 = shl nuw i32 %191, 24
  %193 = or disjoint i32 %188, %192
  %194 = getelementptr inbounds i8, ptr %17, i64 28
  %195 = add i32 %95, -1473231341
  %196 = add i32 %195, %193
  %197 = add i32 %196, %176
  %198 = tail call i32 @llvm.fshl.i32(i32 %197, i32 %197, i32 17)
  %199 = add i32 %198, %173
  %200 = xor i32 %173, %147
  %201 = and i32 %199, %200
  %202 = xor i32 %201, %147
  %203 = load i8, ptr %194, align 1, !tbaa !41
  %204 = zext i8 %203 to i32
  %205 = getelementptr inbounds i8, ptr %17, i64 29
  %206 = load i8, ptr %205, align 1, !tbaa !41
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 8
  %209 = or disjoint i32 %208, %204
  %210 = getelementptr inbounds i8, ptr %17, i64 30
  %211 = load i8, ptr %210, align 1, !tbaa !41
  %212 = zext i8 %211 to i32
  %213 = shl nuw nsw i32 %212, 16
  %214 = or disjoint i32 %209, %213
  %215 = getelementptr inbounds i8, ptr %17, i64 31
  %216 = load i8, ptr %215, align 1, !tbaa !41
  %217 = zext i8 %216 to i32
  %218 = shl nuw i32 %217, 24
  %219 = or disjoint i32 %214, %218
  %220 = getelementptr inbounds i8, ptr %17, i64 32
  %221 = add i32 %121, -45705983
  %222 = add i32 %221, %219
  %223 = add i32 %222, %202
  %224 = tail call i32 @llvm.fshl.i32(i32 %223, i32 %223, i32 22)
  %225 = add i32 %224, %199
  %226 = xor i32 %199, %173
  %227 = and i32 %225, %226
  %228 = xor i32 %227, %173
  %229 = load i8, ptr %220, align 1, !tbaa !41
  %230 = zext i8 %229 to i32
  %231 = getelementptr inbounds i8, ptr %17, i64 33
  %232 = load i8, ptr %231, align 1, !tbaa !41
  %233 = zext i8 %232 to i32
  %234 = shl nuw nsw i32 %233, 8
  %235 = or disjoint i32 %234, %230
  %236 = getelementptr inbounds i8, ptr %17, i64 34
  %237 = load i8, ptr %236, align 1, !tbaa !41
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 16
  %240 = or disjoint i32 %235, %239
  %241 = getelementptr inbounds i8, ptr %17, i64 35
  %242 = load i8, ptr %241, align 1, !tbaa !41
  %243 = zext i8 %242 to i32
  %244 = shl nuw i32 %243, 24
  %245 = or disjoint i32 %240, %244
  %246 = getelementptr inbounds i8, ptr %17, i64 36
  %247 = add i32 %245, 1770035416
  %248 = add i32 %247, %147
  %249 = add i32 %248, %228
  %250 = tail call i32 @llvm.fshl.i32(i32 %249, i32 %249, i32 7)
  %251 = add i32 %250, %225
  %252 = xor i32 %225, %199
  %253 = and i32 %251, %252
  %254 = xor i32 %253, %199
  %255 = load i8, ptr %246, align 1, !tbaa !41
  %256 = zext i8 %255 to i32
  %257 = getelementptr inbounds i8, ptr %17, i64 37
  %258 = load i8, ptr %257, align 1, !tbaa !41
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 8
  %261 = or disjoint i32 %260, %256
  %262 = getelementptr inbounds i8, ptr %17, i64 38
  %263 = load i8, ptr %262, align 1, !tbaa !41
  %264 = zext i8 %263 to i32
  %265 = shl nuw nsw i32 %264, 16
  %266 = or disjoint i32 %261, %265
  %267 = getelementptr inbounds i8, ptr %17, i64 39
  %268 = load i8, ptr %267, align 1, !tbaa !41
  %269 = zext i8 %268 to i32
  %270 = shl nuw i32 %269, 24
  %271 = or disjoint i32 %266, %270
  %272 = getelementptr inbounds i8, ptr %17, i64 40
  %273 = add i32 %271, -1958414417
  %274 = add i32 %273, %173
  %275 = add i32 %274, %254
  %276 = tail call i32 @llvm.fshl.i32(i32 %275, i32 %275, i32 12)
  %277 = add i32 %276, %251
  %278 = xor i32 %251, %225
  %279 = and i32 %277, %278
  %280 = xor i32 %279, %225
  %281 = load i8, ptr %272, align 1, !tbaa !41
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds i8, ptr %17, i64 41
  %284 = load i8, ptr %283, align 1, !tbaa !41
  %285 = zext i8 %284 to i32
  %286 = shl nuw nsw i32 %285, 8
  %287 = or disjoint i32 %286, %282
  %288 = getelementptr inbounds i8, ptr %17, i64 42
  %289 = load i8, ptr %288, align 1, !tbaa !41
  %290 = zext i8 %289 to i32
  %291 = shl nuw nsw i32 %290, 16
  %292 = or disjoint i32 %287, %291
  %293 = getelementptr inbounds i8, ptr %17, i64 43
  %294 = load i8, ptr %293, align 1, !tbaa !41
  %295 = zext i8 %294 to i32
  %296 = shl nuw i32 %295, 24
  %297 = or disjoint i32 %292, %296
  %298 = getelementptr inbounds i8, ptr %17, i64 44
  %299 = add i32 %297, -42063
  %300 = add i32 %299, %199
  %301 = add i32 %300, %280
  %302 = tail call i32 @llvm.fshl.i32(i32 %301, i32 %301, i32 17)
  %303 = add i32 %302, %277
  %304 = xor i32 %277, %251
  %305 = and i32 %303, %304
  %306 = xor i32 %305, %251
  %307 = load i8, ptr %298, align 1, !tbaa !41
  %308 = zext i8 %307 to i32
  %309 = getelementptr inbounds i8, ptr %17, i64 45
  %310 = load i8, ptr %309, align 1, !tbaa !41
  %311 = zext i8 %310 to i32
  %312 = shl nuw nsw i32 %311, 8
  %313 = or disjoint i32 %312, %308
  %314 = getelementptr inbounds i8, ptr %17, i64 46
  %315 = load i8, ptr %314, align 1, !tbaa !41
  %316 = zext i8 %315 to i32
  %317 = shl nuw nsw i32 %316, 16
  %318 = or disjoint i32 %313, %317
  %319 = getelementptr inbounds i8, ptr %17, i64 47
  %320 = load i8, ptr %319, align 1, !tbaa !41
  %321 = zext i8 %320 to i32
  %322 = shl nuw i32 %321, 24
  %323 = or disjoint i32 %318, %322
  %324 = getelementptr inbounds i8, ptr %17, i64 48
  %325 = add i32 %323, -1990404162
  %326 = add i32 %325, %225
  %327 = add i32 %326, %306
  %328 = tail call i32 @llvm.fshl.i32(i32 %327, i32 %327, i32 22)
  %329 = add i32 %328, %303
  %330 = xor i32 %303, %277
  %331 = and i32 %329, %330
  %332 = xor i32 %331, %277
  %333 = load i8, ptr %324, align 1, !tbaa !41
  %334 = zext i8 %333 to i32
  %335 = getelementptr inbounds i8, ptr %17, i64 49
  %336 = load i8, ptr %335, align 1, !tbaa !41
  %337 = zext i8 %336 to i32
  %338 = shl nuw nsw i32 %337, 8
  %339 = or disjoint i32 %338, %334
  %340 = getelementptr inbounds i8, ptr %17, i64 50
  %341 = load i8, ptr %340, align 1, !tbaa !41
  %342 = zext i8 %341 to i32
  %343 = shl nuw nsw i32 %342, 16
  %344 = or disjoint i32 %339, %343
  %345 = getelementptr inbounds i8, ptr %17, i64 51
  %346 = load i8, ptr %345, align 1, !tbaa !41
  %347 = zext i8 %346 to i32
  %348 = shl nuw i32 %347, 24
  %349 = or disjoint i32 %344, %348
  %350 = getelementptr inbounds i8, ptr %17, i64 52
  %351 = add i32 %349, 1804603682
  %352 = add i32 %351, %251
  %353 = add i32 %352, %332
  %354 = tail call i32 @llvm.fshl.i32(i32 %353, i32 %353, i32 7)
  %355 = add i32 %354, %329
  %356 = xor i32 %329, %303
  %357 = and i32 %355, %356
  %358 = xor i32 %357, %303
  %359 = load i8, ptr %350, align 1, !tbaa !41
  %360 = zext i8 %359 to i32
  %361 = getelementptr inbounds i8, ptr %17, i64 53
  %362 = load i8, ptr %361, align 1, !tbaa !41
  %363 = zext i8 %362 to i32
  %364 = shl nuw nsw i32 %363, 8
  %365 = or disjoint i32 %364, %360
  %366 = getelementptr inbounds i8, ptr %17, i64 54
  %367 = load i8, ptr %366, align 1, !tbaa !41
  %368 = zext i8 %367 to i32
  %369 = shl nuw nsw i32 %368, 16
  %370 = or disjoint i32 %365, %369
  %371 = getelementptr inbounds i8, ptr %17, i64 55
  %372 = load i8, ptr %371, align 1, !tbaa !41
  %373 = zext i8 %372 to i32
  %374 = shl nuw i32 %373, 24
  %375 = or disjoint i32 %370, %374
  %376 = getelementptr inbounds i8, ptr %17, i64 56
  %377 = add i32 %375, -40341101
  %378 = add i32 %377, %277
  %379 = add i32 %378, %358
  %380 = tail call i32 @llvm.fshl.i32(i32 %379, i32 %379, i32 12)
  %381 = add i32 %380, %355
  %382 = xor i32 %355, %329
  %383 = and i32 %381, %382
  %384 = xor i32 %383, %329
  %385 = load i8, ptr %376, align 1, !tbaa !41
  %386 = zext i8 %385 to i32
  %387 = getelementptr inbounds i8, ptr %17, i64 57
  %388 = load i8, ptr %387, align 1, !tbaa !41
  %389 = zext i8 %388 to i32
  %390 = shl nuw nsw i32 %389, 8
  %391 = or disjoint i32 %390, %386
  %392 = getelementptr inbounds i8, ptr %17, i64 58
  %393 = load i8, ptr %392, align 1, !tbaa !41
  %394 = zext i8 %393 to i32
  %395 = shl nuw nsw i32 %394, 16
  %396 = or disjoint i32 %391, %395
  %397 = getelementptr inbounds i8, ptr %17, i64 59
  %398 = load i8, ptr %397, align 1, !tbaa !41
  %399 = zext i8 %398 to i32
  %400 = shl nuw i32 %399, 24
  %401 = or disjoint i32 %396, %400
  %402 = getelementptr inbounds i8, ptr %17, i64 60
  %403 = add i32 %401, -1502002290
  %404 = add i32 %403, %303
  %405 = add i32 %404, %384
  %406 = tail call i32 @llvm.fshl.i32(i32 %405, i32 %405, i32 17)
  %407 = add i32 %406, %381
  %408 = xor i32 %381, %355
  %409 = and i32 %407, %408
  %410 = xor i32 %409, %355
  %411 = load i8, ptr %402, align 1, !tbaa !41
  %412 = zext i8 %411 to i32
  %413 = getelementptr inbounds i8, ptr %17, i64 61
  %414 = load i8, ptr %413, align 1, !tbaa !41
  %415 = zext i8 %414 to i32
  %416 = shl nuw nsw i32 %415, 8
  %417 = or disjoint i32 %416, %412
  %418 = getelementptr inbounds i8, ptr %17, i64 62
  %419 = load i8, ptr %418, align 1, !tbaa !41
  %420 = zext i8 %419 to i32
  %421 = shl nuw nsw i32 %420, 16
  %422 = or disjoint i32 %417, %421
  %423 = getelementptr inbounds i8, ptr %17, i64 63
  %424 = load i8, ptr %423, align 1, !tbaa !41
  %425 = zext i8 %424 to i32
  %426 = shl nuw i32 %425, 24
  %427 = or disjoint i32 %422, %426
  %428 = getelementptr inbounds i8, ptr %17, i64 64
  %429 = add i32 %427, 1236535329
  %430 = add i32 %429, %329
  %431 = add i32 %430, %410
  %432 = tail call i32 @llvm.fshl.i32(i32 %431, i32 %431, i32 22)
  %433 = add i32 %432, %407
  %434 = xor i32 %433, %407
  %435 = and i32 %434, %381
  %436 = xor i32 %435, %407
  %437 = add i32 %63, -165796510
  %438 = add i32 %437, %355
  %439 = add i32 %438, %436
  %440 = tail call i32 @llvm.fshl.i32(i32 %439, i32 %439, i32 5)
  %441 = add i32 %440, %433
  %442 = xor i32 %441, %433
  %443 = and i32 %442, %407
  %444 = xor i32 %443, %433
  %445 = add i32 %193, -1069501632
  %446 = add i32 %445, %381
  %447 = add i32 %446, %444
  %448 = tail call i32 @llvm.fshl.i32(i32 %447, i32 %447, i32 9)
  %449 = add i32 %448, %441
  %450 = xor i32 %449, %441
  %451 = and i32 %450, %433
  %452 = xor i32 %451, %441
  %453 = add i32 %323, 643717713
  %454 = add i32 %453, %407
  %455 = add i32 %454, %452
  %456 = tail call i32 @llvm.fshl.i32(i32 %455, i32 %455, i32 14)
  %457 = add i32 %456, %449
  %458 = xor i32 %457, %449
  %459 = and i32 %458, %441
  %460 = xor i32 %459, %449
  %461 = add i32 %37, -373897302
  %462 = add i32 %461, %433
  %463 = add i32 %462, %460
  %464 = tail call i32 @llvm.fshl.i32(i32 %463, i32 %463, i32 20)
  %465 = add i32 %464, %457
  %466 = xor i32 %465, %457
  %467 = and i32 %466, %449
  %468 = xor i32 %467, %457
  %469 = add i32 %167, -701558691
  %470 = add i32 %469, %441
  %471 = add i32 %470, %468
  %472 = tail call i32 @llvm.fshl.i32(i32 %471, i32 %471, i32 5)
  %473 = add i32 %472, %465
  %474 = xor i32 %473, %465
  %475 = and i32 %474, %457
  %476 = xor i32 %475, %465
  %477 = add i32 %297, 38016083
  %478 = add i32 %477, %449
  %479 = add i32 %478, %476
  %480 = tail call i32 @llvm.fshl.i32(i32 %479, i32 %479, i32 9)
  %481 = add i32 %480, %473
  %482 = xor i32 %481, %473
  %483 = and i32 %482, %465
  %484 = xor i32 %483, %473
  %485 = add i32 %427, -660478335
  %486 = add i32 %485, %457
  %487 = add i32 %486, %484
  %488 = tail call i32 @llvm.fshl.i32(i32 %487, i32 %487, i32 14)
  %489 = add i32 %488, %481
  %490 = xor i32 %489, %481
  %491 = and i32 %490, %473
  %492 = xor i32 %491, %481
  %493 = add i32 %141, -405537848
  %494 = add i32 %493, %465
  %495 = add i32 %494, %492
  %496 = tail call i32 @llvm.fshl.i32(i32 %495, i32 %495, i32 20)
  %497 = add i32 %496, %489
  %498 = xor i32 %497, %489
  %499 = and i32 %498, %481
  %500 = xor i32 %499, %489
  %501 = add i32 %271, 568446438
  %502 = add i32 %501, %473
  %503 = add i32 %502, %500
  %504 = tail call i32 @llvm.fshl.i32(i32 %503, i32 %503, i32 5)
  %505 = add i32 %504, %497
  %506 = xor i32 %505, %497
  %507 = and i32 %506, %489
  %508 = xor i32 %507, %497
  %509 = add i32 %401, -1019803690
  %510 = add i32 %509, %481
  %511 = add i32 %510, %508
  %512 = tail call i32 @llvm.fshl.i32(i32 %511, i32 %511, i32 9)
  %513 = add i32 %512, %505
  %514 = xor i32 %513, %505
  %515 = and i32 %514, %497
  %516 = xor i32 %515, %505
  %517 = add i32 %115, -187363961
  %518 = add i32 %517, %489
  %519 = add i32 %518, %516
  %520 = tail call i32 @llvm.fshl.i32(i32 %519, i32 %519, i32 14)
  %521 = add i32 %520, %513
  %522 = xor i32 %521, %513
  %523 = and i32 %522, %505
  %524 = xor i32 %523, %513
  %525 = add i32 %245, 1163531501
  %526 = add i32 %525, %497
  %527 = add i32 %526, %524
  %528 = tail call i32 @llvm.fshl.i32(i32 %527, i32 %527, i32 20)
  %529 = add i32 %528, %521
  %530 = xor i32 %529, %521
  %531 = and i32 %530, %513
  %532 = xor i32 %531, %521
  %533 = add i32 %375, -1444681467
  %534 = add i32 %533, %505
  %535 = add i32 %534, %532
  %536 = tail call i32 @llvm.fshl.i32(i32 %535, i32 %535, i32 5)
  %537 = add i32 %536, %529
  %538 = xor i32 %537, %529
  %539 = and i32 %538, %521
  %540 = xor i32 %539, %529
  %541 = add i32 %89, -51403784
  %542 = add i32 %541, %513
  %543 = add i32 %542, %540
  %544 = tail call i32 @llvm.fshl.i32(i32 %543, i32 %543, i32 9)
  %545 = add i32 %544, %537
  %546 = xor i32 %545, %537
  %547 = and i32 %546, %529
  %548 = xor i32 %547, %537
  %549 = add i32 %219, 1735328473
  %550 = add i32 %549, %521
  %551 = add i32 %550, %548
  %552 = tail call i32 @llvm.fshl.i32(i32 %551, i32 %551, i32 14)
  %553 = add i32 %552, %545
  %554 = xor i32 %553, %545
  %555 = and i32 %554, %537
  %556 = xor i32 %555, %545
  %557 = add i32 %349, -1926607734
  %558 = add i32 %557, %529
  %559 = add i32 %558, %556
  %560 = tail call i32 @llvm.fshl.i32(i32 %559, i32 %559, i32 20)
  %561 = add i32 %560, %553
  %562 = xor i32 %553, %545
  %563 = xor i32 %562, %561
  %564 = add i32 %167, -378558
  %565 = add i32 %564, %537
  %566 = add i32 %565, %563
  %567 = tail call i32 @llvm.fshl.i32(i32 %566, i32 %566, i32 4)
  %568 = add i32 %567, %561
  %569 = xor i32 %561, %553
  %570 = xor i32 %569, %568
  %571 = add i32 %245, -2022574463
  %572 = add i32 %571, %545
  %573 = add i32 %572, %570
  %574 = tail call i32 @llvm.fshl.i32(i32 %573, i32 %573, i32 11)
  %575 = add i32 %574, %568
  %576 = xor i32 %568, %561
  %577 = xor i32 %576, %575
  %578 = add i32 %323, 1839030562
  %579 = add i32 %578, %553
  %580 = add i32 %579, %577
  %581 = tail call i32 @llvm.fshl.i32(i32 %580, i32 %580, i32 16)
  %582 = add i32 %581, %575
  %583 = xor i32 %575, %568
  %584 = xor i32 %583, %582
  %585 = add i32 %401, -35309556
  %586 = add i32 %585, %561
  %587 = add i32 %586, %584
  %588 = tail call i32 @llvm.fshl.i32(i32 %587, i32 %587, i32 23)
  %589 = add i32 %588, %582
  %590 = xor i32 %582, %575
  %591 = xor i32 %590, %589
  %592 = add i32 %63, -1530992060
  %593 = add i32 %592, %568
  %594 = add i32 %593, %591
  %595 = tail call i32 @llvm.fshl.i32(i32 %594, i32 %594, i32 4)
  %596 = add i32 %595, %589
  %597 = xor i32 %589, %582
  %598 = xor i32 %597, %596
  %599 = add i32 %141, 1272893353
  %600 = add i32 %599, %575
  %601 = add i32 %600, %598
  %602 = tail call i32 @llvm.fshl.i32(i32 %601, i32 %601, i32 11)
  %603 = add i32 %602, %596
  %604 = xor i32 %596, %589
  %605 = xor i32 %604, %603
  %606 = add i32 %219, -155497632
  %607 = add i32 %606, %582
  %608 = add i32 %607, %605
  %609 = tail call i32 @llvm.fshl.i32(i32 %608, i32 %608, i32 16)
  %610 = add i32 %609, %603
  %611 = xor i32 %603, %596
  %612 = xor i32 %611, %610
  %613 = add i32 %297, -1094730640
  %614 = add i32 %613, %589
  %615 = add i32 %614, %612
  %616 = tail call i32 @llvm.fshl.i32(i32 %615, i32 %615, i32 23)
  %617 = add i32 %616, %610
  %618 = xor i32 %610, %603
  %619 = xor i32 %618, %617
  %620 = add i32 %375, 681279174
  %621 = add i32 %620, %596
  %622 = add i32 %621, %619
  %623 = tail call i32 @llvm.fshl.i32(i32 %622, i32 %622, i32 4)
  %624 = add i32 %623, %617
  %625 = xor i32 %617, %610
  %626 = xor i32 %625, %624
  %627 = add i32 %37, -358537222
  %628 = add i32 %627, %603
  %629 = add i32 %628, %626
  %630 = tail call i32 @llvm.fshl.i32(i32 %629, i32 %629, i32 11)
  %631 = add i32 %630, %624
  %632 = xor i32 %624, %617
  %633 = xor i32 %632, %631
  %634 = add i32 %115, -722521979
  %635 = add i32 %634, %610
  %636 = add i32 %635, %633
  %637 = tail call i32 @llvm.fshl.i32(i32 %636, i32 %636, i32 16)
  %638 = add i32 %637, %631
  %639 = xor i32 %631, %624
  %640 = xor i32 %639, %638
  %641 = add i32 %193, 76029189
  %642 = add i32 %641, %617
  %643 = add i32 %642, %640
  %644 = tail call i32 @llvm.fshl.i32(i32 %643, i32 %643, i32 23)
  %645 = add i32 %644, %638
  %646 = xor i32 %638, %631
  %647 = xor i32 %646, %645
  %648 = add i32 %271, -640364487
  %649 = add i32 %648, %624
  %650 = add i32 %649, %647
  %651 = tail call i32 @llvm.fshl.i32(i32 %650, i32 %650, i32 4)
  %652 = add i32 %651, %645
  %653 = xor i32 %645, %638
  %654 = xor i32 %653, %652
  %655 = add i32 %349, -421815835
  %656 = add i32 %655, %631
  %657 = add i32 %656, %654
  %658 = tail call i32 @llvm.fshl.i32(i32 %657, i32 %657, i32 11)
  %659 = add i32 %658, %652
  %660 = xor i32 %652, %645
  %661 = xor i32 %660, %659
  %662 = add i32 %427, 530742520
  %663 = add i32 %662, %638
  %664 = add i32 %663, %661
  %665 = tail call i32 @llvm.fshl.i32(i32 %664, i32 %664, i32 16)
  %666 = add i32 %665, %659
  %667 = xor i32 %659, %652
  %668 = xor i32 %667, %666
  %669 = add i32 %89, -995338651
  %670 = add i32 %669, %645
  %671 = add i32 %670, %668
  %672 = tail call i32 @llvm.fshl.i32(i32 %671, i32 %671, i32 23)
  %673 = add i32 %672, %666
  %674 = xor i32 %659, -1
  %675 = or i32 %673, %674
  %676 = xor i32 %675, %666
  %677 = add i32 %37, -198630844
  %678 = add i32 %677, %652
  %679 = add i32 %678, %676
  %680 = tail call i32 @llvm.fshl.i32(i32 %679, i32 %679, i32 6)
  %681 = add i32 %680, %673
  %682 = xor i32 %666, -1
  %683 = or i32 %681, %682
  %684 = xor i32 %683, %673
  %685 = add i32 %219, 1126891415
  %686 = add i32 %685, %659
  %687 = add i32 %686, %684
  %688 = tail call i32 @llvm.fshl.i32(i32 %687, i32 %687, i32 10)
  %689 = add i32 %688, %681
  %690 = xor i32 %673, -1
  %691 = or i32 %689, %690
  %692 = xor i32 %691, %681
  %693 = add i32 %401, -1416354905
  %694 = add i32 %693, %666
  %695 = add i32 %694, %692
  %696 = tail call i32 @llvm.fshl.i32(i32 %695, i32 %695, i32 15)
  %697 = add i32 %696, %689
  %698 = xor i32 %681, -1
  %699 = or i32 %697, %698
  %700 = xor i32 %699, %689
  %701 = add i32 %167, -57434055
  %702 = add i32 %701, %673
  %703 = add i32 %702, %700
  %704 = tail call i32 @llvm.fshl.i32(i32 %703, i32 %703, i32 21)
  %705 = add i32 %704, %697
  %706 = xor i32 %689, -1
  %707 = or i32 %705, %706
  %708 = xor i32 %707, %697
  %709 = add i32 %349, 1700485571
  %710 = add i32 %709, %681
  %711 = add i32 %710, %708
  %712 = tail call i32 @llvm.fshl.i32(i32 %711, i32 %711, i32 6)
  %713 = add i32 %712, %705
  %714 = xor i32 %697, -1
  %715 = or i32 %713, %714
  %716 = xor i32 %715, %705
  %717 = add i32 %115, -1894986606
  %718 = add i32 %717, %689
  %719 = add i32 %718, %716
  %720 = tail call i32 @llvm.fshl.i32(i32 %719, i32 %719, i32 10)
  %721 = add i32 %720, %713
  %722 = xor i32 %705, -1
  %723 = or i32 %721, %722
  %724 = xor i32 %723, %713
  %725 = add i32 %297, -1051523
  %726 = add i32 %725, %697
  %727 = add i32 %726, %724
  %728 = tail call i32 @llvm.fshl.i32(i32 %727, i32 %727, i32 15)
  %729 = add i32 %728, %721
  %730 = xor i32 %713, -1
  %731 = or i32 %729, %730
  %732 = xor i32 %731, %721
  %733 = add i32 %63, -2054922799
  %734 = add i32 %733, %705
  %735 = add i32 %734, %732
  %736 = tail call i32 @llvm.fshl.i32(i32 %735, i32 %735, i32 21)
  %737 = add i32 %736, %729
  %738 = xor i32 %721, -1
  %739 = or i32 %737, %738
  %740 = xor i32 %739, %729
  %741 = add i32 %245, 1873313359
  %742 = add i32 %741, %713
  %743 = add i32 %742, %740
  %744 = tail call i32 @llvm.fshl.i32(i32 %743, i32 %743, i32 6)
  %745 = add i32 %744, %737
  %746 = xor i32 %729, -1
  %747 = or i32 %745, %746
  %748 = xor i32 %747, %737
  %749 = add i32 %427, -30611744
  %750 = add i32 %749, %721
  %751 = add i32 %750, %748
  %752 = tail call i32 @llvm.fshl.i32(i32 %751, i32 %751, i32 10)
  %753 = add i32 %752, %745
  %754 = xor i32 %737, -1
  %755 = or i32 %753, %754
  %756 = xor i32 %755, %745
  %757 = add i32 %193, -1560198380
  %758 = add i32 %757, %729
  %759 = add i32 %758, %756
  %760 = tail call i32 @llvm.fshl.i32(i32 %759, i32 %759, i32 15)
  %761 = add i32 %760, %753
  %762 = xor i32 %745, -1
  %763 = or i32 %761, %762
  %764 = xor i32 %763, %753
  %765 = add i32 %375, 1309151649
  %766 = add i32 %765, %737
  %767 = add i32 %766, %764
  %768 = tail call i32 @llvm.fshl.i32(i32 %767, i32 %767, i32 21)
  %769 = add i32 %768, %761
  %770 = xor i32 %753, -1
  %771 = or i32 %769, %770
  %772 = xor i32 %771, %761
  %773 = add i32 %141, -145523070
  %774 = add i32 %773, %745
  %775 = add i32 %774, %772
  %776 = tail call i32 @llvm.fshl.i32(i32 %775, i32 %775, i32 6)
  %777 = add i32 %776, %769
  %778 = xor i32 %761, -1
  %779 = or i32 %777, %778
  %780 = xor i32 %779, %769
  %781 = add i32 %323, -1120210379
  %782 = add i32 %781, %753
  %783 = add i32 %782, %780
  %784 = tail call i32 @llvm.fshl.i32(i32 %783, i32 %783, i32 10)
  %785 = add i32 %784, %777
  %786 = xor i32 %769, -1
  %787 = or i32 %785, %786
  %788 = xor i32 %787, %777
  %789 = add i32 %89, 718787259
  %790 = add i32 %789, %761
  %791 = add i32 %790, %788
  %792 = tail call i32 @llvm.fshl.i32(i32 %791, i32 %791, i32 15)
  %793 = add i32 %792, %785
  %794 = xor i32 %777, -1
  %795 = or i32 %793, %794
  %796 = xor i32 %795, %785
  %797 = add i32 %271, -343485551
  %798 = add i32 %797, %769
  %799 = add i32 %798, %796
  %800 = tail call i32 @llvm.fshl.i32(i32 %799, i32 %799, i32 21)
  %801 = add i32 %777, %15
  %802 = add i32 %793, %14
  %803 = add i32 %802, %800
  %804 = add i32 %793, %13
  %805 = add i32 %785, %12
  %806 = add i64 %16, -1
  %807 = icmp eq i64 %806, 0
  br i1 %807, label %808, label %11, !llvm.loop !78

808:                                              ; preds = %11
  store i32 %801, ptr %0, align 4, !tbaa !51
  store i32 %803, ptr %5, align 4, !tbaa !53
  store i32 %804, ptr %7, align 4, !tbaa !54
  store i32 %805, ptr %9, align 4, !tbaa !55
  ret void
}

declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MD5Final(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #5 !prof !34 {
  %3 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = and i32 %4, 63
  %6 = zext nneg i32 %5 to i64
  %7 = icmp ult i32 %5, 56
  %8 = select i1 %7, i64 56, i64 120
  %9 = sub nsw i64 %8, %6
  %10 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 6
  %11 = getelementptr inbounds i8, ptr %10, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 16 @PADDING, i64 %9, i1 false)
  %12 = load i32, ptr %3, align 4, !tbaa !57
  %13 = shl i32 %12, 3
  %14 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !56
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %12, i32 3)
  %17 = getelementptr inbounds i8, ptr %10, i64 %8
  %18 = trunc i32 %13 to i8
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %18, ptr %17, align 1, !tbaa !41
  %20 = lshr i32 %13, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %21, ptr %19, align 1, !tbaa !41
  %23 = lshr i32 %13, 16
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %24, ptr %22, align 1, !tbaa !41
  %26 = lshr i32 %13, 24
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %25, align 1, !tbaa !41
  %28 = or disjoint i64 %8, 4
  %29 = getelementptr inbounds i8, ptr %10, i64 %28
  %30 = trunc i32 %16 to i8
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %30, ptr %29, align 1, !tbaa !41
  %32 = lshr i32 %16, 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %33, ptr %31, align 1, !tbaa !41
  %35 = lshr i32 %16, 16
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %36, ptr %34, align 1, !tbaa !41
  %38 = lshr i32 %16, 24
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %37, align 1, !tbaa !41
  %40 = add nuw nsw i64 %8, 8
  %41 = lshr exact i64 %40, 6
  tail call fastcc void @MD5Transform(ptr noundef %1, ptr noundef nonnull %10, i64 noundef %41)
  %42 = load i32, ptr %1, align 4, !tbaa !51
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %43, ptr %0, align 1, !tbaa !41
  %45 = lshr i32 %42, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %46, ptr %44, align 1, !tbaa !41
  %48 = lshr i32 %42, 16
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %49, ptr %47, align 1, !tbaa !41
  %51 = lshr i32 %42, 24
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %50, align 1, !tbaa !41
  %53 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !53
  %55 = getelementptr inbounds i8, ptr %0, i64 4
  %56 = trunc i32 %54 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %56, ptr %55, align 1, !tbaa !41
  %58 = lshr i32 %54, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %59, ptr %57, align 1, !tbaa !41
  %61 = lshr i32 %54, 16
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %62, ptr %60, align 1, !tbaa !41
  %64 = lshr i32 %54, 24
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %63, align 1, !tbaa !41
  %66 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !54
  %68 = getelementptr inbounds i8, ptr %0, i64 8
  %69 = trunc i32 %67 to i8
  %70 = getelementptr inbounds i8, ptr %0, i64 9
  store i8 %69, ptr %68, align 1, !tbaa !41
  %71 = lshr i32 %67, 8
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %0, i64 10
  store i8 %72, ptr %70, align 1, !tbaa !41
  %74 = lshr i32 %67, 16
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %0, i64 11
  store i8 %75, ptr %73, align 1, !tbaa !41
  %77 = lshr i32 %67, 24
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %76, align 1, !tbaa !41
  %79 = getelementptr inbounds %struct.MD5_CTX, ptr %1, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !55
  %81 = getelementptr inbounds i8, ptr %0, i64 12
  %82 = trunc i32 %80 to i8
  %83 = getelementptr inbounds i8, ptr %0, i64 13
  store i8 %82, ptr %81, align 1, !tbaa !41
  %84 = lshr i32 %80, 8
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds i8, ptr %0, i64 14
  store i8 %85, ptr %83, align 1, !tbaa !41
  %87 = lshr i32 %80, 16
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, ptr %0, i64 15
  store i8 %88, ptr %86, align 1, !tbaa !41
  %90 = lshr i32 %80, 24
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %89, align 1, !tbaa !41
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @make_mortal_sv(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 {
  %3 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #9
  switch i32 %1, label %82 [
    i32 0, label %83
    i32 1, label %12
    i32 2, label %4
  ]

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1, !tbaa !41
  %6 = zext i8 %5 to i32
  %7 = lshr i32 %6, 2
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !41
  %11 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %10, ptr %3, align 16, !tbaa !41
  br label %30

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %26, %12 ], [ %3, %2 ]
  %14 = phi i64 [ %27, %12 ], [ 0, %2 ]
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !41
  %17 = lshr i8 %16, 4
  %18 = zext nneg i8 %17 to i64
  %19 = getelementptr inbounds [17 x i8], ptr @hex_16.hexdigits, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %21 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %20, ptr %13, align 1, !tbaa !41
  %22 = and i8 %16, 15
  %23 = zext nneg i8 %22 to i64
  %24 = getelementptr inbounds [17 x i8], ptr @hex_16.hexdigits, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !41
  %26 = getelementptr inbounds i8, ptr %13, i64 2
  store i8 %25, ptr %21, align 1, !tbaa !41
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, 16
  br i1 %28, label %29, label %12, !llvm.loop !79

29:                                               ; preds = %12
  store i8 0, ptr %26, align 1, !tbaa !41
  br label %83

30:                                               ; preds = %4, %30
  %31 = phi ptr [ %11, %4 ], [ %73, %30 ]
  %32 = phi i32 [ %6, %4 ], [ %68, %30 ]
  %33 = phi i64 [ 1, %4 ], [ %66, %30 ]
  %34 = phi ptr [ %0, %4 ], [ %65, %30 ]
  %35 = phi ptr [ %3, %4 ], [ %64, %30 ]
  %36 = phi i64 [ 0, %4 ], [ %40, %30 ]
  %37 = getelementptr inbounds i8, ptr %0, i64 %33
  %38 = getelementptr i8, ptr %34, i64 2
  %39 = load i8, ptr %37, align 1, !tbaa !41
  %40 = add nuw nsw i64 %36, 3
  %41 = load i8, ptr %38, align 1, !tbaa !41
  %42 = shl nuw nsw i32 %32, 4
  %43 = and i32 %42, 48
  %44 = zext i8 %39 to i32
  %45 = lshr i32 %44, 4
  %46 = or disjoint i32 %45, %43
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !41
  %50 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 %49, ptr %31, align 1, !tbaa !41
  %51 = shl nuw nsw i32 %44, 2
  %52 = and i32 %51, 60
  %53 = zext i8 %41 to i32
  %54 = lshr i32 %53, 6
  %55 = or disjoint i32 %52, %54
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !41
  %59 = getelementptr inbounds i8, ptr %35, i64 3
  store i8 %58, ptr %50, align 1, !tbaa !41
  %60 = and i32 %53, 63
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !41
  %64 = getelementptr inbounds i8, ptr %35, i64 4
  store i8 %63, ptr %59, align 1, !tbaa !41
  %65 = getelementptr inbounds i8, ptr %0, i64 %40
  %66 = add nuw nsw i64 %36, 4
  %67 = load i8, ptr %65, align 1, !tbaa !41
  %68 = zext i8 %67 to i32
  %69 = lshr i32 %68, 2
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !41
  %73 = getelementptr inbounds i8, ptr %35, i64 5
  store i8 %72, ptr %64, align 1, !tbaa !41
  %74 = icmp eq i64 %66, 16
  br i1 %74, label %75, label %30, !llvm.loop !80

75:                                               ; preds = %30
  %76 = shl nuw nsw i32 %68, 4
  %77 = and i32 %76, 48
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [65 x i8], ptr @base64_16.base64, i64 0, i64 %78
  %80 = load i8, ptr %79, align 16, !tbaa !41
  %81 = getelementptr inbounds i8, ptr %35, i64 6
  store i8 %80, ptr %73, align 1, !tbaa !41
  store i8 0, ptr %81, align 1, !tbaa !41
  br label %83

82:                                               ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, i32 noundef %1) #9
  br label %83

83:                                               ; preds = %2, %82, %75, %29
  %84 = phi i64 [ 0, %82 ], [ 22, %75 ], [ 32, %29 ], [ 16, %2 ]
  %85 = phi ptr [ null, %82 ], [ %3, %75 ], [ %3, %29 ], [ %0, %2 ]
  %86 = call ptr @Perl_newSVpv(ptr noundef %85, i64 noundef %84) #9
  %87 = call ptr @Perl_sv_2mortal(ptr noundef %86) #9
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #9
  ret ptr %87
}

declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"cv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!37, !37, i64 0}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !40, i64 12}
!45 = !{!"sv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!46 = !{!45, !37, i64 0}
!47 = !{!48, !49, i64 16}
!48 = !{!"xpv", !37, i64 0, !38, i64 8, !49, i64 16, !38, i64 24}
!49 = !{!"long", !38, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!52, !40, i64 0}
!52 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !38, i64 24}
!53 = !{!52, !40, i64 4}
!54 = !{!52, !40, i64 8}
!55 = !{!52, !40, i64 12}
!56 = !{!52, !40, i64 20}
!57 = !{!52, !40, i64 16}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = distinct !{!61, !59, !60}
!62 = !{!63, !37, i64 0}
!63 = !{!"xpvmg", !37, i64 0, !38, i64 8, !49, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!64 = !{!65, !40, i64 12}
!65 = !{!"hv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!66 = !{!65, !37, i64 0}
!67 = !{!68, !49, i64 24}
!68 = !{!"xpvhv", !37, i64 0, !38, i64 8, !49, i64 16, !49, i64 24}
!69 = !{!70, !40, i64 28}
!70 = !{!"xpvhv_aux", !38, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!71 = distinct !{!71, !59, !60}
!72 = !{!73, !38, i64 18}
!73 = !{!"magic", !37, i64 0, !37, i64 8, !74, i64 16, !38, i64 18, !38, i64 19, !49, i64 24, !37, i64 32, !37, i64 40}
!74 = !{!"short", !38, i64 0}
!75 = !{!73, !37, i64 8}
!76 = !{!73, !37, i64 40}
!77 = distinct !{!77, !59, !60}
!78 = distinct !{!78, !59, !60}
!79 = distinct !{!79, !59, !60}
!80 = distinct !{!80, !60}
