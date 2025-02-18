; ModuleID = 'mathoms.c'
source_filename = "mathoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union.anon.1 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%union._xnvu = type { double }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.any = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.padnamelist = type { i64, ptr, i64, i64, i32 }
%struct.padname = type { ptr, ptr, %union.anon.4, i32, i32, i32, i32, i8, i8 }
%union.anon.4 = type { ptr }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c":raw\00", align 1
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_in_utf8_CTYPE_locale = external local_unnamed_addr global i8, align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@PL_comppad_name = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_ref(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call ptr @Perl_doref(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #11
  ret ptr %3
}

declare ptr @Perl_doref(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_unref(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_unref_flags(ptr noundef %0, i32 noundef 0) #11
  ret void
}

declare void @Perl_sv_unref_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_taint(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #11
  ret void
}

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_sv_2iv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #11
  ret i64 %2
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_sv_2uv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %0, i32 noundef 2) #11
  ret i64 %2
}

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local double @Perl_sv_2nv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call double @Perl_sv_2nv_flags(ptr noundef %0, i32 noundef 2) #11
  ret double %2
}

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_2pv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  ret ptr %3
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_2pv_nolen(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef null, i32 noundef 2) #11
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_2pvbyte_nolen(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_sv_2pvbyte(ptr noundef %0, ptr noundef null) #11
  ret ptr %2
}

declare ptr @Perl_sv_2pvbyte(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_2pvutf8_nolen(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_sv_2pvutf8(ptr noundef %0, ptr noundef null) #11
  ret ptr %2
}

declare ptr @Perl_sv_2pvutf8(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_force_normal(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_force_normal_flags(ptr noundef %0, i32 noundef 0) #11
  ret void
}

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_setsv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  ret void
}

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_catpvn(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 2) #11
  ret void
}

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_catpvn_mg(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 130) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_catsv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_catsv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  ret void
}

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_catsv_mg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_catsv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 130) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_sv_iv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !35
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, -1
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  br i1 %7, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.xpvuv, ptr %8, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !42
  br label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !42
  br label %17

15:                                               ; preds = %1
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %0, i32 noundef 2) #11
  br label %17

17:                                               ; preds = %15, %12, %9
  %18 = phi i64 [ %11, %9 ], [ %14, %12 ], [ %16, %15 ]
  ret i64 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_sv_uv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !35
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, -1
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  br i1 %7, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.xpvuv, ptr %8, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !42
  br label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !42
  br label %17

15:                                               ; preds = %1
  %16 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %0, i32 noundef 2) #11
  br label %17

17:                                               ; preds = %15, %12, %9
  %18 = phi i64 [ %11, %9 ], [ %14, %12 ], [ %16, %15 ]
  ret i64 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local double @Perl_sv_nv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !35
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.xpvnv, ptr %7, i64 0, i32 5
  %9 = load double, ptr %8, align 8, !tbaa !42
  br label %12

10:                                               ; preds = %1
  %11 = tail call double @Perl_sv_2nv_flags(ptr noundef %0, i32 noundef 2) #11
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi double [ %9, %6 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !43
  store i64 %10, ptr %1, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvn_nomg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !43
  store i64 %10, ptr %1, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  br label %15

13:                                               ; preds = %2
  %14 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 0) #11
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !35
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  br label %11

9:                                                ; preds = %1
  %10 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef null, i32 noundef 2) #11
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvn_force(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  ret ptr %3
}

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvbyte(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %0, i1 noundef zeroext false) #11
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  br label %12

10:                                               ; preds = %1
  %11 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef null, i32 noundef 2) #11
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %9, %7 ], [ %11, %10 ]
  ret ptr %13
}

declare zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvbyten(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %0, i1 noundef zeroext false) #11
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !35
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !43
  store i64 %11, ptr %1, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br label %16

14:                                               ; preds = %2
  %15 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvutf8(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %0, i32 noundef 2, i64 noundef 0) #11
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  br label %12

10:                                               ; preds = %1
  %11 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef null, i32 noundef 2) #11
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %9, %7 ], [ %11, %10 ]
  ret ptr %13
}

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_pvutf8n(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %0, i32 noundef 2, i64 noundef 0) #11
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !35
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !43
  store i64 %11, ptr %1, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  br label %16

14:                                               ; preds = %2
  %15 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  ret ptr %17
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_sv_utf8_upgrade(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %0, i32 noundef 2, i64 noundef 0) #11
  ret i64 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_fprintf_nocontext(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !34 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 @PerlIO_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #11
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

declare i32 @PerlIO_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_printf_nocontext(ptr noundef %0, ...) local_unnamed_addr #0 !prof !34 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @Perl_PerlIO_stdout() #11
  %4 = call i32 @PerlIO_vprintf(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret i32 %4
}

declare ptr @Perl_PerlIO_stdout() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @Perl_huge() local_unnamed_addr #4 !prof !34 {
  ret double 0x7FF0000000000000
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_fullname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %0, %1
  %4 = select i1 %3, ptr @.str, ptr @.str.1
  tail call void @Perl_gv_fullname4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext true) #11
  ret void
}

declare void @Perl_gv_fullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_efullname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %0, %1
  %4 = select i1 %3, ptr @.str, ptr @.str.1
  tail call void @Perl_gv_efullname4(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext true) #11
  ret void
}

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_fullname3(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_gv_fullname4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_efullname3(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_gv_efullname4(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmethod(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %0, ptr noundef %1, i32 noundef 1) #11
  ret ptr %3
}

declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_iternext(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_hv_magic(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_open(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 !prof !34 {
  %8 = tail call zeroext i1 @Perl_do_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef null, i32 noundef 0) #11
  ret i1 %8
}

declare zeroext i1 @Perl_do_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_open9(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !34 {
  %10 = alloca ptr, align 8
  store ptr %7, ptr %10, align 8, !tbaa !47
  %11 = call zeroext i1 @Perl_do_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %10, i32 noundef 1) #11
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_do_binmode(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @PerlIO_binmode(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.2) #11
  ret i32 %4
}

declare i32 @PerlIO_binmode(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_aexec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call zeroext i1 @Perl_do_aexec5(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0) #11
  ret i1 %4
}

declare zeroext i1 @Perl_do_aexec5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_init_i18nl14n(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 @Perl_init_i18nl10n(i32 noundef %0) #11
  ret i32 %2
}

declare i32 @Perl_init_i18nl10n(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_string_loc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null) #11
  ret i1 %4
}

declare zeroext i1 @Perl_is_utf8_string_loclen(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_sv_nolocking(ptr nocapture noundef readnone %0) local_unnamed_addr #4 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_sv_nounlocking(ptr nocapture noundef readnone %0) local_unnamed_addr #4 !prof !34 {
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_long(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %3 = add nsw i32 %2, 7
  %4 = load i32, ptr @PL_savestack_max, align 4, !tbaa !48
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @Perl_savestack_grow() #11
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i64, ptr %0, align 8, !tbaa !46
  %9 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %10 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !48
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %union.any, ptr %9, i64 %12
  store i64 %8, ptr %13, align 8, !tbaa !42
  %14 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %15 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @PL_savestack_ix, align 4, !tbaa !48
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %union.any, ptr %14, i64 %17
  store ptr %0, ptr %18, align 8, !tbaa !42
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %20 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @PL_savestack_ix, align 4, !tbaa !48
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %union.any, ptr %19, i64 %22
  store i64 37, ptr %23, align 8, !tbaa !42
  ret void
}

declare void @Perl_savestack_grow() local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_iv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %3 = add nsw i32 %2, 7
  %4 = load i32, ptr @PL_savestack_max, align 4, !tbaa !48
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @Perl_savestack_grow() #11
  br label %7

7:                                                ; preds = %1, %6
  %8 = load i64, ptr %0, align 8, !tbaa !46
  %9 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %10 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @PL_savestack_ix, align 4, !tbaa !48
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %union.any, ptr %9, i64 %12
  store i64 %8, ptr %13, align 8, !tbaa !42
  %14 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %15 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @PL_savestack_ix, align 4, !tbaa !48
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds %union.any, ptr %14, i64 %17
  store ptr %0, ptr %18, align 8, !tbaa !42
  %19 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %20 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @PL_savestack_ix, align 4, !tbaa !48
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %union.any, ptr %19, i64 %22
  store i64 36, ptr %23, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_nogv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %3 = add nsw i32 %2, 6
  %4 = load i32, ptr @PL_savestack_max, align 4, !tbaa !48
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @Perl_savestack_grow() #11
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %9 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @PL_savestack_ix, align 4, !tbaa !48
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds %union.any, ptr %8, i64 %11
  store ptr %0, ptr %12, align 8, !tbaa !42
  %13 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %14 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @PL_savestack_ix, align 4, !tbaa !48
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %union.any, ptr %13, i64 %16
  store i64 17, ptr %17, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_list(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = add nuw i32 %1, 1
  %6 = zext i32 %5 to i64
  br label %7

7:                                                ; preds = %4, %25
  %8 = phi i64 [ 1, %4 ], [ %42, %25 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !35
  %13 = and i32 %12, 2097152
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @Perl_mg_get(ptr noundef %10) #11
  br label %17

17:                                               ; preds = %7, %15
  %18 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  %19 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void @Perl_sv_setsv_flags(ptr noundef %18, ptr noundef %19, i32 noundef 1536) #11
  %20 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %21 = add nsw i32 %20, 7
  %22 = load i32, ptr @PL_savestack_max, align 4, !tbaa !48
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void @Perl_savestack_grow() #11
  br label %25

25:                                               ; preds = %17, %24
  %26 = load ptr, ptr %9, align 8, !tbaa !47
  %27 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %28 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr @PL_savestack_ix, align 4, !tbaa !48
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %union.any, ptr %27, i64 %30
  store ptr %26, ptr %31, align 8, !tbaa !42
  %32 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %33 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @PL_savestack_ix, align 4, !tbaa !48
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %union.any, ptr %32, i64 %35
  store ptr %18, ptr %36, align 8, !tbaa !42
  %37 = load ptr, ptr @PL_savestack, align 8, !tbaa !47
  %38 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !48
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @PL_savestack_ix, align 4, !tbaa !48
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds %union.any, ptr %37, i64 %40
  store i64 35, ptr %41, align 8, !tbaa !42
  %42 = add nuw nsw i64 %8, 1
  %43 = icmp eq i64 %42, %6
  br i1 %43, label %44, label %7, !llvm.loop !49

44:                                               ; preds = %25, %2
  ret void
}

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_usepvn_mg(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_usepvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 128) #11
  ret void
}

declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_usepvn(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_usepvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_unpack_str(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, ptr noundef %4, ptr nocapture noundef readnone %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 !prof !34 {
  %9 = tail call i32 @Perl_unpackstring(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %7) #11
  ret i32 %9
}

declare i32 @Perl_unpackstring(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_pack_cat(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readnone %5, i32 noundef %6) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_packlist(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  ret void
}

declare void @Perl_packlist(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_store_ent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %2, i32 noundef %3) #11
  ret ptr %5
}

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_hv_exists_ent(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef %2) #11
  %5 = icmp ne ptr %4, null
  ret i1 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_fetch_ent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 0, i32 16
  %7 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %6, ptr noundef null, i32 noundef %3) #11
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_delete_ent(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = or i32 %2, 64
  %6 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef %5, ptr noundef null, i32 noundef %3) #11
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_store_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !34 {
  %7 = sext i32 %2 to i64
  %8 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %7, i32 noundef %5, i32 noundef 36, ptr noundef %3, i32 noundef %4) #11
  ret ptr %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_store(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !34 {
  %6 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %7 = lshr i32 %2, 31
  %8 = zext nneg i32 %6 to i64
  %9 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %8, i32 noundef %7, i32 noundef 36, ptr noundef %3, i32 noundef %4) #11
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_hv_exists(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %5 = lshr i32 %2, 31
  %6 = zext nneg i32 %4 to i64
  %7 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %6, i32 noundef %5, i32 noundef 8, ptr noundef null, i32 noundef 0) #11
  %8 = icmp ne ptr %7, null
  ret i1 %8
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_fetch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %6 = lshr i32 %2, 31
  %7 = zext nneg i32 %5 to i64
  %8 = icmp eq i32 %3, 0
  %9 = select i1 %8, i32 32, i32 48
  %10 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %7, i32 noundef %6, i32 noundef %9, ptr noundef null, i32 noundef 0) #11
  ret ptr %10
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_hv_delete(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %6 = lshr i32 %2, 31
  %7 = zext nneg i32 %5 to i64
  %8 = or i32 %3, 64
  %9 = tail call ptr @Perl_hv_common(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %7, i32 noundef %6, i32 noundef %8, ptr noundef null, i32 noundef 0) #11
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_newAV() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11
  ret ptr %1
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_newHV() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_insert(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_insert_flags(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 2) #11
  ret void
}

declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_freesv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_save_pushptr(ptr noundef %0, i32 noundef 11) #11
  ret void
}

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_mortalizesv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_save_pushptr(ptr noundef %0, i32 noundef 16) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_freeop(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 2048
  store i16 %4, ptr %2, align 8
  tail call void @Perl_save_pushptr(ptr noundef %0, i32 noundef 9) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_freepv(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_save_pushptr(ptr noundef %0, i32 noundef 10) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_save_op() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !47
  tail call void @Perl_save_pushptr(ptr noundef %1, i32 noundef 18) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_SVadd(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_AVadd(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 11) #11
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_HVadd(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 12) #11
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_IOadd(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #11
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_newIO() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @Perl_newSV_type(i32 noundef 15) #11
  ret ptr %1
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_my_stat() local_unnamed_addr #0 !prof !34 {
  %1 = tail call i32 @Perl_my_stat_flags(i32 noundef 2) #11
  ret i32 %1
}

declare i32 @Perl_my_stat_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_my_lstat() local_unnamed_addr #0 !prof !34 {
  %1 = tail call i32 @Perl_my_lstat_flags(i32 noundef 2) #11
  ret i32 %1
}

declare i32 @Perl_my_lstat_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_sv_eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i32 @Perl_sv_eq_flags(ptr noundef %0, ptr noundef %1, i32 noundef 2) #11
  ret i32 %3
}

declare i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_sv_2bool(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %0, i32 noundef 2) #11
  ret i1 %2
}

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_custom_op_name(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_custom_op_get_field(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_custom_op_desc(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_custom_op_get_field(ptr noundef %0, i32 noundef 2) #11
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_newSUB(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !34 {
  %5 = tail call ptr @Perl_newATTRSUB_x(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, i1 noundef zeroext false) #11
  ret ptr %5
}

declare ptr @Perl_newATTRSUB_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_utf8_fold(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i64 @Perl__to_utf8_fold_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 2) #11
  ret i64 %4
}

declare i64 @Perl__to_utf8_fold_flags(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_utf8_lower(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i64 @Perl__to_utf8_lower_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #11
  ret i64 %4
}

declare i64 @Perl__to_utf8_lower_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_utf8_title(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i64 @Perl__to_utf8_title_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #11
  ret i64 %4
}

declare i64 @Perl__to_utf8_title_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_to_utf8_upper(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i64 @Perl__to_utf8_upper_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) #11
  ret i64 %4
}

declare i64 @Perl__to_utf8_upper_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_mortalcopy(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %0, i32 noundef 2) #11
  ret ptr %2
}

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_copypv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  tail call void @Perl_sv_copypv_flags(ptr noundef %0, ptr noundef %1, i32 noundef 0) #11
  ret void
}

declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @NATIVE_TO_NEED(i64 noundef %0, i64 noundef returned %1) local_unnamed_addr #4 !prof !34 {
  ret i64 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @ASCII_TO_NEED(i64 noundef %0, i64 noundef returned %1) local_unnamed_addr #4 !prof !34 {
  ret i64 %1
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_isIDFIRST_lazy(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr %0, align 1, !tbaa !42
  br i1 %6, label %15, label %8

8:                                                ; preds = %1
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !48
  %12 = and i32 %11, 81920
  %13 = icmp eq i32 %12, 81920
  %14 = zext i1 %13 to i32
  br label %40

15:                                               ; preds = %1
  %16 = icmp sgt i8 %7, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = zext nneg i8 %7 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 1
  br label %40

23:                                               ; preds = %15
  %24 = and i8 %7, -2
  %25 = icmp eq i8 %24, -62
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = shl i8 %7, 6
  %28 = getelementptr inbounds i8, ptr %0, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !42
  %30 = and i8 %29, 63
  %31 = or disjoint i8 %30, %27
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !48
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 1
  br label %40

37:                                               ; preds = %23
  %38 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %0) #11
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %17, %37, %26, %8
  %41 = phi i32 [ %14, %8 ], [ %22, %17 ], [ %36, %26 ], [ %39, %37 ]
  %42 = icmp ne i32 %41, 0
  ret i1 %42
}

declare zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_isALNUM_lazy(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr %0, align 1, !tbaa !42
  br i1 %6, label %15, label %8

8:                                                ; preds = %1
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !48
  %12 = and i32 %11, 16385
  %13 = icmp eq i32 %12, 16385
  %14 = zext i1 %13 to i32
  br label %38

15:                                               ; preds = %1
  %16 = icmp sgt i8 %7, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = zext nneg i8 %7 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = and i32 %20, 1
  br label %38

22:                                               ; preds = %15
  %23 = and i8 %7, -2
  %24 = icmp eq i8 %23, -62
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = shl i8 %7, 6
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !42
  %29 = and i8 %28, 63
  %30 = or disjoint i8 %29, %26
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !48
  %34 = and i32 %33, 1
  br label %38

35:                                               ; preds = %22
  %36 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef nonnull %0) #11
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %17, %35, %25, %8
  %39 = phi i32 [ %14, %8 ], [ %21, %17 ], [ %34, %25 ], [ %37, %35 ]
  %40 = icmp ne i32 %39, 0
  ret i1 %40
}

declare zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnum(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 0, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

declare zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnumc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 0, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alpha(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 4
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 2, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @Perl_is_uni_ascii(i64 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp ult i64 %0, 128
  ret i1 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @Perl_is_uni_blank(i64 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 2048
  %7 = icmp ne i32 %6, 0
  br label %25

8:                                                ; preds = %1
  %9 = icmp eq i64 %0, 5760
  br i1 %9, label %25, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i64 %0, 5760
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = add i64 %0, -8192
  %14 = icmp ult i64 %13, 11
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = icmp ugt i64 %0, 8202
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = icmp eq i64 %0, 8239
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = icmp ugt i64 %0, 8239
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = icmp eq i64 %0, 8287
  %23 = icmp eq i64 %0, 12288
  %24 = or i1 %22, %23
  br label %25

25:                                               ; preds = %8, %12, %17, %21, %19, %15, %10, %3
  %26 = phi i1 [ %7, %3 ], [ true, %8 ], [ false, %10 ], [ true, %12 ], [ false, %15 ], [ true, %17 ], [ false, %19 ], [ %24, %21 ]
  ret i1 %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @Perl_is_uni_space(i64 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 1024
  %7 = icmp ne i32 %6, 0
  br label %28

8:                                                ; preds = %1
  %9 = icmp eq i64 %0, 5760
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i64 %0, 5760
  br i1 %11, label %12, label %28

12:                                               ; preds = %10
  %13 = add i64 %0, -8192
  %14 = icmp ult i64 %13, 11
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = icmp ugt i64 %0, 8202
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = icmp eq i64 %0, 8232
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = icmp ugt i64 %0, 8232
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  switch i64 %0, label %22 [
    i64 8233, label %28
    i64 8239, label %28
  ]

22:                                               ; preds = %21
  %23 = icmp ugt i64 %0, 8239
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = icmp eq i64 %0, 8287
  %26 = icmp eq i64 %0, 12288
  %27 = or i1 %25, %26
  br label %28

28:                                               ; preds = %21, %8, %12, %17, %24, %22, %19, %15, %10, %21, %3
  %29 = phi i1 [ %7, %3 ], [ true, %8 ], [ false, %10 ], [ true, %12 ], [ false, %15 ], [ true, %17 ], [ false, %19 ], [ false, %22 ], [ %27, %24 ], [ true, %21 ], [ true, %21 ]
  ret i1 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_digit(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 1, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_upper(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 16
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 4, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_lower(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 8
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 3, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @Perl_is_uni_cntrl(i64 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 8192
  %7 = icmp ne i32 %6, 0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i1 [ false, %1 ], [ %7, %3 ]
  ret i1 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_graph(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 8, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_print(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 64
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 6, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_punct(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 32
  %7 = icmp ne i32 %6, 0
  br label %10

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 5, i64 noundef %0) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i1 [ %7, %3 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i1 @Perl_is_uni_xdigit(i64 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 4096
  %7 = icmp ne i32 %6, 0
  br label %19

8:                                                ; preds = %1
  %9 = add i64 %0, -65296
  %10 = icmp ult i64 %9, 10
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = icmp ugt i64 %0, 65305
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = add i64 %0, -65313
  %15 = icmp ult i64 %14, 6
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = add i64 %0, -65345
  %18 = icmp ult i64 %17, 6
  br label %19

19:                                               ; preds = %8, %16, %13, %11, %3
  %20 = phi i1 [ %7, %3 ], [ true, %8 ], [ false, %11 ], [ %18, %16 ], [ true, %13 ]
  ret i1 %20
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnum_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 8
  %11 = icmp ne i16 %10, 0
  %12 = icmp eq i64 %0, 95
  %13 = or i1 %12, %11
  br label %16

14:                                               ; preds = %1
  %15 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 0, i64 noundef %0) #11
  br label %16

16:                                               ; preds = %3, %5, %14
  %17 = phi i1 [ %15, %14 ], [ false, %3 ], [ %13, %5 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alnumc_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 8
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 7, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_idfirst_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 1024
  %11 = icmp ne i16 %10, 0
  %12 = icmp eq i64 %0, 95
  %13 = or i1 %12, %11
  br label %16

14:                                               ; preds = %1
  %15 = tail call zeroext i1 @Perl__is_uni_perl_idstart(i64 noundef %0) #11
  br label %16

16:                                               ; preds = %3, %5, %14
  %17 = phi i1 [ %15, %14 ], [ false, %3 ], [ %13, %5 ]
  ret i1 %17
}

declare zeroext i1 @Perl__is_uni_perl_idstart(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_alpha_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 1024
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 2, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @Perl_is_uni_ascii_lc(i64 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = icmp ult i64 %0, 128
  ret i1 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_is_uni_blank_lc(i64 noundef %0) local_unnamed_addr #6 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = load i8, ptr @PL_in_utf8_CTYPE_locale, align 1, !tbaa !56, !range !58, !noundef !59
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %0
  %7 = load i32, ptr %6, align 4, !tbaa !48
  br i1 %5, label %11, label %8

8:                                                ; preds = %3
  %9 = and i32 %7, 2048
  %10 = icmp ne i32 %9, 0
  br label %31

11:                                               ; preds = %3
  %12 = and i32 %7, 18432
  %13 = icmp eq i32 %12, 18432
  br label %31

14:                                               ; preds = %1
  %15 = icmp eq i64 %0, 5760
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i64 %0, 5760
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = add i64 %0, -8192
  %20 = icmp ult i64 %19, 11
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = icmp ugt i64 %0, 8202
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = icmp eq i64 %0, 8239
  br i1 %24, label %31, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i64 %0, 8239
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = icmp eq i64 %0, 8287
  %29 = icmp eq i64 %0, 12288
  %30 = or i1 %28, %29
  br label %31

31:                                               ; preds = %14, %18, %23, %27, %25, %21, %16, %8, %11
  %32 = phi i1 [ %10, %8 ], [ %13, %11 ], [ true, %14 ], [ false, %16 ], [ true, %18 ], [ false, %21 ], [ true, %23 ], [ false, %25 ], [ %30, %27 ]
  ret i1 %32
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_is_uni_space_lc(i64 noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 8192
  %11 = icmp ne i16 %10, 0
  br label %32

12:                                               ; preds = %1
  %13 = icmp eq i64 %0, 5760
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = icmp ugt i64 %0, 5760
  br i1 %15, label %16, label %32

16:                                               ; preds = %14
  %17 = add i64 %0, -8192
  %18 = icmp ult i64 %17, 11
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = icmp ugt i64 %0, 8202
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = icmp eq i64 %0, 8232
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = icmp ugt i64 %0, 8232
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  switch i64 %0, label %26 [
    i64 8233, label %32
    i64 8239, label %32
  ]

26:                                               ; preds = %25
  %27 = icmp ugt i64 %0, 8239
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = icmp eq i64 %0, 8287
  %30 = icmp eq i64 %0, 12288
  %31 = or i1 %29, %30
  br label %32

32:                                               ; preds = %25, %12, %16, %21, %28, %26, %23, %19, %14, %25, %3, %5
  %33 = phi i1 [ false, %3 ], [ %11, %5 ], [ true, %12 ], [ false, %14 ], [ true, %16 ], [ false, %19 ], [ true, %21 ], [ false, %23 ], [ false, %26 ], [ %31, %28 ], [ true, %25 ], [ true, %25 ]
  ret i1 %33
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_digit_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 2048
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 1, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_idfirst(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #11
  %3 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef nonnull %2, i64 noundef %0, i64 noundef 0) #11
  %4 = call zeroext i1 @Perl__is_utf8_idstart(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #11
  ret i1 %4
}

declare ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl__is_utf8_idstart(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_idfirst(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl__is_utf8_idstart(ptr noundef %0) #11
  ret i1 %2
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_xidfirst(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl__is_utf8_xidstart(ptr noundef %0) #11
  ret i1 %2
}

declare zeroext i1 @Perl__is_utf8_xidstart(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_idcont(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl__is_utf8_idcont(ptr noundef %0) #11
  ret i1 %2
}

declare zeroext i1 @Perl__is_utf8_idcont(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_xidcont(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl__is_utf8_xidcont(ptr noundef %0) #11
  ret i1 %2
}

declare zeroext i1 @Perl__is_utf8_xidcont(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_upper_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 256
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 4, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_lower_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 512
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 3, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_is_uni_cntrl_lc(i64 noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = icmp ult i64 %0, 128
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = tail call ptr @__ctype_b_loc() #12
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds i16, ptr %5, i64 %0
  %7 = load i16, ptr %6, align 2, !tbaa !54
  %8 = and i16 %7, 2
  %9 = icmp ne i16 %8, 0
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i1 [ false, %1 ], [ %9, %3 ]
  ret i1 %11
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_graph_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = icmp slt i16 %9, 0
  br label %13

11:                                               ; preds = %1
  %12 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 8, i64 noundef %0) #11
  br label %13

13:                                               ; preds = %3, %5, %11
  %14 = phi i1 [ %12, %11 ], [ false, %3 ], [ %10, %5 ]
  ret i1 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_print_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 16384
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 6, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_uni_punct_lc(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 4
  %11 = icmp ne i16 %10, 0
  br label %14

12:                                               ; preds = %1
  %13 = tail call zeroext i1 @Perl__is_uni_FOO(i8 noundef zeroext 5, i64 noundef %0) #11
  br label %14

14:                                               ; preds = %3, %5, %12
  %15 = phi i1 [ %13, %12 ], [ false, %3 ], [ %11, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_is_uni_xdigit_lc(i64 noundef %0) local_unnamed_addr #7 !prof !34 {
  %2 = icmp ult i64 %0, 256
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = icmp ult i64 %0, 128
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds i16, ptr %7, i64 %0
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = and i16 %9, 4096
  %11 = icmp ne i16 %10, 0
  br label %23

12:                                               ; preds = %1
  %13 = add i64 %0, -65296
  %14 = icmp ult i64 %13, 10
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = icmp ugt i64 %0, 65305
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = add i64 %0, -65313
  %19 = icmp ult i64 %18, 6
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = add i64 %0, -65345
  %22 = icmp ult i64 %21, 6
  br label %23

23:                                               ; preds = %12, %20, %17, %15, %3, %5
  %24 = phi i1 [ false, %3 ], [ %11, %5 ], [ true, %12 ], [ false, %15 ], [ %22, %20 ], [ true, %17 ]
  ret i1 %24
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_to_uni_upper_lc(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #11
  %4 = zext i32 %0 to i64
  %5 = call i64 @Perl_to_uni_upper(i64 noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #11
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %6
}

declare i64 @Perl_to_uni_upper(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_to_uni_title_lc(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #11
  %4 = zext i32 %0 to i64
  %5 = call i64 @Perl_to_uni_title(i64 noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #11
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %6
}

declare i64 @Perl_to_uni_title(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_to_uni_lower_lc(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #11
  %4 = zext i32 %0 to i64
  %5 = call i64 @Perl_to_uni_lower(i64 noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #11
  %6 = trunc i64 %5 to i32
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 %6
}

declare i64 @Perl_to_uni_lower(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_alnum(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 1
  br label %25

9:                                                ; preds = %1
  %10 = and i8 %2, -2
  %11 = icmp eq i8 %10, -62
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = shl i8 %2, 6
  %14 = getelementptr inbounds i8, ptr %0, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !42
  %16 = and i8 %15, 63
  %17 = or disjoint i8 %16, %13
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !48
  %21 = and i32 %20, 1
  br label %25

22:                                               ; preds = %9
  %23 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 0, ptr noundef nonnull %0) #11
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %12, %22, %4
  %26 = phi i32 [ %8, %4 ], [ %21, %12 ], [ %24, %22 ]
  %27 = icmp ne i32 %26, 0
  ret i1 %27
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_alnumc(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 7
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 7, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_alpha(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 2
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 2
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 2, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_ascii(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  ret i1 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_blank(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 11
  %9 = and i32 %8, 1
  br label %58

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 11
  %23 = and i32 %22, 1
  br label %58

24:                                               ; preds = %10
  switch i8 %2, label %58 [
    i8 -31, label %25
    i8 -30, label %34
    i8 -29, label %49
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, ptr %0, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !42
  %28 = icmp eq i8 %27, -102
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !42
  %32 = icmp eq i8 %31, -128
  %33 = select i1 %32, i32 3, i32 0
  br label %58

34:                                               ; preds = %24
  %35 = getelementptr inbounds i8, ptr %0, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !42
  switch i8 %36, label %58 [
    i8 -128, label %37
    i8 -127, label %44
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %0, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !42
  %40 = icmp ult i8 %39, -117
  %41 = icmp eq i8 %39, -81
  %42 = or i1 %40, %41
  %43 = select i1 %42, i32 3, i32 0
  br label %58

44:                                               ; preds = %34
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !42
  %47 = icmp eq i8 %46, -97
  %48 = select i1 %47, i32 3, i32 0
  br label %58

49:                                               ; preds = %24
  %50 = getelementptr inbounds i8, ptr %0, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !42
  %52 = icmp eq i8 %51, -128
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %0, i64 2
  %55 = load i8, ptr %54, align 1, !tbaa !42
  %56 = icmp eq i8 %55, -128
  %57 = select i1 %56, i32 3, i32 0
  br label %58

58:                                               ; preds = %49, %53, %24, %44, %34, %25, %29, %13, %37, %4
  %59 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %43, %37 ], [ 0, %25 ], [ %33, %29 ], [ %48, %44 ], [ 0, %34 ], [ 0, %49 ], [ %57, %53 ], [ 0, %24 ]
  %60 = icmp ne i32 %59, 0
  ret i1 %60
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_space(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 10
  %9 = and i32 %8, 1
  br label %61

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 10
  %23 = and i32 %22, 1
  br label %61

24:                                               ; preds = %10
  switch i8 %2, label %61 [
    i8 -31, label %25
    i8 -30, label %34
    i8 -29, label %52
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, ptr %0, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !42
  %28 = icmp eq i8 %27, -102
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !42
  %32 = icmp eq i8 %31, -128
  %33 = select i1 %32, i32 3, i32 0
  br label %61

34:                                               ; preds = %24
  %35 = getelementptr inbounds i8, ptr %0, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !42
  switch i8 %36, label %61 [
    i8 -128, label %37
    i8 -127, label %47
  ]

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %0, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !42
  %40 = icmp ult i8 %39, -117
  %41 = and i8 %39, -2
  %42 = icmp eq i8 %41, -88
  %43 = or i1 %40, %42
  %44 = icmp eq i8 %39, -81
  %45 = or i1 %44, %43
  %46 = select i1 %45, i32 3, i32 0
  br label %61

47:                                               ; preds = %34
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  %49 = load i8, ptr %48, align 1, !tbaa !42
  %50 = icmp eq i8 %49, -97
  %51 = select i1 %50, i32 3, i32 0
  br label %61

52:                                               ; preds = %24
  %53 = getelementptr inbounds i8, ptr %0, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !42
  %55 = icmp eq i8 %54, -128
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %0, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !42
  %59 = icmp eq i8 %58, -128
  %60 = select i1 %59, i32 3, i32 0
  br label %61

61:                                               ; preds = %52, %56, %24, %47, %34, %25, %29, %13, %37, %4
  %62 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %46, %37 ], [ 0, %25 ], [ %33, %29 ], [ %51, %47 ], [ 0, %34 ], [ 0, %52 ], [ %60, %56 ], [ 0, %24 ]
  %63 = icmp ne i32 %62, 0
  ret i1 %63
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_perl_space(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 17408
  %7 = icmp eq i32 %6, 17408
  ret i1 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_perl_word(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 16385
  %7 = icmp eq i32 %6, 16385
  ret i1 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_digit(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 2
  %9 = icmp ne i32 %8, 0
  br label %14

10:                                               ; preds = %1
  %11 = icmp ugt i8 %2, -61
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 1, ptr noundef nonnull %0) #11
  br label %14

14:                                               ; preds = %12, %10, %4
  %15 = phi i1 [ %9, %4 ], [ %13, %12 ], [ false, %10 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_posix_digit(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_upper(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 4, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_lower(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 3
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 3, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_cntrl(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = and i8 %2, -2
  %6 = icmp eq i8 %5, -62
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = shl i8 %2, 6
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = and i8 %10, 63
  %12 = or disjoint i8 %11, %8
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi i8 [ %12, %7 ], [ %2, %1 ]
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = and i32 %17, 8192
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %13, %4
  %21 = phi i1 [ false, %4 ], [ %19, %13 ]
  ret i1 %21
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_graph(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 8
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 8, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_print(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 6
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 6, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_punct(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 1
  br label %27

10:                                               ; preds = %1
  %11 = and i8 %2, -2
  %12 = icmp eq i8 %11, -62
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = shl i8 %2, 6
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !42
  %17 = and i8 %16, 63
  %18 = or disjoint i8 %17, %14
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = lshr i32 %21, 5
  %23 = and i32 %22, 1
  br label %27

24:                                               ; preds = %10
  %25 = tail call zeroext i1 @Perl__is_utf8_FOO(i8 noundef zeroext 5, ptr noundef nonnull %0) #11
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %13, %24, %4
  %28 = phi i32 [ %9, %4 ], [ %23, %13 ], [ %26, %24 ]
  %29 = icmp ne i32 %28, 0
  ret i1 %29
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @Perl_is_utf8_xdigit(ptr nocapture noundef readonly %0) local_unnamed_addr #8 !prof !34 {
  %2 = load i8, ptr %0, align 1, !tbaa !42
  %3 = icmp sgt i8 %2, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i64
  %6 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !48
  %8 = and i32 %7, 4096
  %9 = icmp ne i32 %8, 0
  br label %28

10:                                               ; preds = %1
  %11 = icmp eq i8 %2, -17
  br i1 %11, label %12, label %28

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !42
  switch i8 %14, label %28 [
    i8 -68, label %15
    i8 -67, label %23
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !42
  %18 = add i8 %17, 112
  %19 = icmp ult i8 %18, 10
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = add i8 %17, 95
  %22 = icmp ult i8 %21, 6
  br label %28

23:                                               ; preds = %12
  %24 = getelementptr inbounds i8, ptr %0, i64 2
  %25 = load i8, ptr %24, align 1, !tbaa !42
  %26 = add i8 %25, 127
  %27 = icmp ult i8 %26, 6
  br label %28

28:                                               ; preds = %23, %20, %12, %15, %10, %4
  %29 = phi i1 [ %9, %4 ], [ false, %10 ], [ true, %15 ], [ false, %12 ], [ %22, %20 ], [ %27, %23 ]
  ret i1 %29
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_is_utf8_mark(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call zeroext i1 @Perl__is_utf8_mark(ptr noundef %0) #11
  ret i1 %2
}

declare zeroext i1 @Perl__is_utf8_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_is_utf8_char(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load i8, ptr %0, align 1, !tbaa !42
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !42
  %7 = zext i8 %6 to i64
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %91, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i8 %3, -1
  br i1 %10, label %91, label %11

11:                                               ; preds = %9
  %12 = icmp ult i8 %6, 5
  br i1 %12, label %13, label %86

13:                                               ; preds = %11
  %14 = add nsw i8 %3, 62
  %15 = icmp ult i8 %14, 30
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %0, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = and i8 %18, -64
  %20 = icmp eq i8 %19, -128
  %21 = select i1 %20, i64 2, i64 0
  br label %91

22:                                               ; preds = %13
  %23 = icmp eq i8 %3, -32
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, ptr %0, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !42
  %27 = and i8 %26, -32
  %28 = icmp eq i8 %27, -96
  br i1 %28, label %29, label %91

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !42
  %32 = and i8 %31, -64
  %33 = icmp eq i8 %32, -128
  %34 = select i1 %33, i64 3, i64 0
  br label %91

35:                                               ; preds = %22
  %36 = add nsw i8 %3, 31
  %37 = icmp ult i8 %36, 15
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %0, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !42
  %41 = and i8 %40, -64
  %42 = icmp eq i8 %41, -128
  br i1 %42, label %43, label %91

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %0, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !42
  %46 = and i8 %45, -64
  %47 = icmp eq i8 %46, -128
  %48 = select i1 %47, i64 3, i64 0
  br label %91

49:                                               ; preds = %35
  %50 = icmp eq i8 %3, -16
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !42
  %54 = add i8 %53, 112
  %55 = icmp ult i8 %54, 48
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %0, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !42
  %59 = and i8 %58, -64
  %60 = icmp eq i8 %59, -128
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = getelementptr inbounds i8, ptr %0, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !42
  %64 = and i8 %63, -64
  %65 = icmp eq i8 %64, -128
  %66 = select i1 %65, i64 4, i64 0
  br label %91

67:                                               ; preds = %49
  %68 = add nsw i8 %3, 15
  %69 = icmp ult i8 %68, 7
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, ptr %0, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !42
  %73 = and i8 %72, -64
  %74 = icmp eq i8 %73, -128
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %0, i64 2
  %77 = load i8, ptr %76, align 1, !tbaa !42
  %78 = and i8 %77, -64
  %79 = icmp eq i8 %78, -128
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, ptr %0, i64 3
  %82 = load i8, ptr %81, align 1, !tbaa !42
  %83 = and i8 %82, -64
  %84 = icmp eq i8 %83, -128
  %85 = select i1 %84, i64 4, i64 0
  br label %91

86:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %87 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %0, i64 noundef %7, ptr noundef nonnull %2, i32 noundef 8192) #11
  %88 = load i64, ptr %2, align 8
  %89 = icmp eq i64 %88, -1
  %90 = select i1 %89, i64 0, i64 %88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %91

91:                                               ; preds = %16, %29, %24, %43, %38, %61, %56, %51, %80, %75, %70, %67, %9, %86, %1
  %92 = phi i64 [ 0, %1 ], [ 1, %9 ], [ %90, %86 ], [ %21, %16 ], [ 0, %24 ], [ %34, %29 ], [ 0, %38 ], [ %48, %43 ], [ 0, %56 ], [ 0, %51 ], [ %66, %61 ], [ 0, %75 ], [ 0, %70 ], [ 0, %67 ], [ %85, %80 ]
  ret i64 %92
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_is_utf8_char_buf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca i64, align 8
  %4 = icmp ugt ptr %1, %0
  br i1 %4, label %5, label %97

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1, !tbaa !42
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %97, label %8

8:                                                ; preds = %5
  %9 = zext i8 %6 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = ptrtoint ptr %0 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %9
  %14 = load i8, ptr %13, align 1, !tbaa !42
  %15 = zext i8 %14 to i64
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %97, label %17

17:                                               ; preds = %8
  %18 = icmp ult i8 %14, 5
  br i1 %18, label %19, label %92

19:                                               ; preds = %17
  %20 = add nsw i8 %6, 62
  %21 = icmp ult i8 %20, 30
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !42
  %25 = and i8 %24, -64
  %26 = icmp eq i8 %25, -128
  %27 = select i1 %26, i64 2, i64 0
  br label %97

28:                                               ; preds = %19
  %29 = icmp eq i8 %6, -32
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, ptr %0, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !42
  %33 = and i8 %32, -32
  %34 = icmp eq i8 %33, -96
  br i1 %34, label %35, label %97

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %0, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !42
  %38 = and i8 %37, -64
  %39 = icmp eq i8 %38, -128
  %40 = select i1 %39, i64 3, i64 0
  br label %97

41:                                               ; preds = %28
  %42 = add nsw i8 %6, 31
  %43 = icmp ult i8 %42, 15
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !42
  %47 = and i8 %46, -64
  %48 = icmp eq i8 %47, -128
  br i1 %48, label %49, label %97

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %0, i64 2
  %51 = load i8, ptr %50, align 1, !tbaa !42
  %52 = and i8 %51, -64
  %53 = icmp eq i8 %52, -128
  %54 = select i1 %53, i64 3, i64 0
  br label %97

55:                                               ; preds = %41
  %56 = icmp eq i8 %6, -16
  br i1 %56, label %57, label %73

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, ptr %0, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !42
  %60 = add i8 %59, 112
  %61 = icmp ult i8 %60, 48
  br i1 %61, label %62, label %97

62:                                               ; preds = %57
  %63 = getelementptr inbounds i8, ptr %0, i64 2
  %64 = load i8, ptr %63, align 1, !tbaa !42
  %65 = and i8 %64, -64
  %66 = icmp eq i8 %65, -128
  br i1 %66, label %67, label %97

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, ptr %0, i64 3
  %69 = load i8, ptr %68, align 1, !tbaa !42
  %70 = and i8 %69, -64
  %71 = icmp eq i8 %70, -128
  %72 = select i1 %71, i64 4, i64 0
  br label %97

73:                                               ; preds = %55
  %74 = add nsw i8 %6, 15
  %75 = icmp ult i8 %74, 7
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, ptr %0, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !42
  %79 = and i8 %78, -64
  %80 = icmp eq i8 %79, -128
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !42
  %84 = and i8 %83, -64
  %85 = icmp eq i8 %84, -128
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 3
  %88 = load i8, ptr %87, align 1, !tbaa !42
  %89 = and i8 %88, -64
  %90 = icmp eq i8 %89, -128
  %91 = select i1 %90, i64 4, i64 0
  br label %97

92:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %93 = call i64 @Perl_utf8n_to_uvchr(ptr noundef nonnull %0, i64 noundef %12, ptr noundef nonnull %3, i32 noundef 8192) #11
  %94 = load i64, ptr %3, align 8
  %95 = icmp eq i64 %94, -1
  %96 = select i1 %95, i64 0, i64 %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %97

97:                                               ; preds = %22, %35, %30, %49, %44, %67, %62, %57, %86, %81, %76, %73, %5, %92, %8, %2
  %98 = phi i64 [ 0, %2 ], [ 1, %5 ], [ 0, %8 ], [ %96, %92 ], [ %27, %22 ], [ 0, %30 ], [ %40, %35 ], [ 0, %44 ], [ %54, %49 ], [ 0, %62 ], [ 0, %57 ], [ %72, %67 ], [ 0, %81 ], [ 0, %76 ], [ 0, %73 ], [ %91, %86 ]
  ret i64 %98
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_valid_utf8_to_uvuni(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %0, ptr noundef %1) #11
  ret i64 %3
}

declare i64 @Perl_valid_utf8_to_uvchr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8_to_uvchr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #11
  %4 = select i1 %3, i32 0, i32 -8161
  %5 = tail call i64 @Perl_utf8n_to_uvchr(ptr noundef %0, i64 noundef 13, ptr noundef %1, i32 noundef %4) #11
  ret i64 %5
}

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_utf8_to_uvuni(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i64 @Perl_valid_utf8_to_uvchr(ptr noundef %0, ptr noundef %1) #11
  ret i64 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_pad_compname_type(i64 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @PL_comppad_name, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 %0
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  ret ptr %8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

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
!35 = !{!36, !40, i64 12}
!36 = !{!"sv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!36, !37, i64 0}
!42 = !{!38, !38, i64 0}
!43 = !{!44, !45, i64 16}
!44 = !{!"xpv", !37, i64 0, !38, i64 8, !45, i64 16, !38, i64 24}
!45 = !{!"long", !38, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!40, !40, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !40, i64 56}
!53 = !{!"cop", !37, i64 0, !37, i64 8, !37, i64 16, !45, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !38, i64 34, !38, i64 35, !40, i64 36, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 72}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !38, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"_Bool", !38, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!61, !37, i64 8}
!61 = !{!"padnamelist", !45, i64 0, !37, i64 8, !45, i64 16, !45, i64 24, !40, i64 32}
