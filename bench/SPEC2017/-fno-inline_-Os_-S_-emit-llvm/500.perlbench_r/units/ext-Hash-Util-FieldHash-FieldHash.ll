; ModuleID = 'ext/Hash-Util-FieldHash/FieldHash.c'
source_filename = "ext/Hash-Util-FieldHash/FieldHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.0, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.ufuncs = type { ptr, ptr, i64 }
%struct.he = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.3, %union._xivu }
%union.anon.3 = type { i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.4, ptr, %union.anon.5, %union.anon.6, %union.anon.7, ptr, %union.anon.8, ptr, i32, i32, i32 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"Hash::Util::FieldHash::_ob_reg\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't get object registry hash\00", align 1
@my_cxt.0 = internal unnamed_addr global ptr null, align 8
@PL_in_clean_all = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Rogue call of 'HUF_watch_key_safe'\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Rogue call of 'HUF_watch_key_id'\00", align 1
@counter = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"ext/Hash-Util-FieldHash/FieldHash.c\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Hash::Util::FieldHash::_fieldhash\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Hash::Util::FieldHash::id\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Hash::Util::FieldHash::id_2obj\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Hash::Util::FieldHash::register\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"$@\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Hash::Util::FieldHash::CLONE\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Hash::Util::FieldHash::_active_fields\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Hash::Util::FieldHash::_test_uvar_get\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Hash::Util::FieldHash::_test_uvar_same\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Hash::Util::FieldHash::_test_uvar_set\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"href, mode\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"obj, ...\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Attempt to register a non-ref\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Hash::Util::FieldHash\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"svref, countref\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_get_ob_reg() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #6
  %2 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !9
  store i64 %2, ptr @PL_tmps_floor, align 8, !tbaa !9
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !5
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_markstack_grow() #6
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %4, %0 ]
  %11 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %10, align 4, !tbaa !11
  %17 = tail call i32 @Perl_call_pv(ptr noundef nonnull @.str, i32 noundef 18) #6
  %18 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %9
  %21 = load ptr, ptr %18, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !13
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !13
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 12
  %35 = select i1 %34, ptr %30, ptr null
  %36 = sext i1 %34 to i64
  %37 = getelementptr inbounds ptr, ptr %18, i64 %36
  br label %38

38:                                               ; preds = %28, %23, %20, %9
  %39 = phi ptr [ null, %23 ], [ null, %20 ], [ null, %9 ], [ %35, %28 ]
  %40 = phi ptr [ %18, %23 ], [ %18, %20 ], [ %18, %9 ], [ %37, %28 ]
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !5
  %41 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !9
  %42 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !9
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @Perl_free_tmps() #6
  br label %45

45:                                               ; preds = %44, %38
  tail call void @Perl_pop_scope() #6
  %46 = icmp eq ptr %39, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.1) #6
  br label %49

49:                                               ; preds = %47, %45
  ret ptr %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_call_pv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @HUF_global(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %4 [
    i32 1, label %2
    i32 0, label %2
    i32 -1, label %2
  ]

2:                                                ; preds = %1, %1, %1
  %3 = tail call ptr @HUF_get_ob_reg() #7
  store ptr %3, ptr @my_cxt.0, align 8, !tbaa !16
  br label %4

4:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_obj_id(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = and i32 %5, 255
  %7 = icmp ugt i32 %6, 6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.xpvmg, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !19
  %17 = icmp eq i8 %16, 126
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !22
  %21 = icmp eq i16 %20, 18756
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  br label %33

25:                                               ; preds = %13, %18
  %26 = load ptr, ptr %14, align 8, !tbaa !15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !24

28:                                               ; preds = %25, %8, %1
  %29 = ptrtoint ptr %3 to i64
  %30 = tail call ptr @Perl_newSVuv(i64 noundef %29) #6
  %31 = tail call ptr @Perl_sv_magicext(ptr noundef %3, ptr noundef %30, i32 noundef 126, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  %32 = getelementptr inbounds %struct.magic, ptr %31, i64 0, i32 2
  store i16 18756, ptr %32, align 8, !tbaa !22
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %30) #7
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi ptr [ %24, %22 ], [ %30, %28 ]
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !26
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #6
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @HUF_add_uvar_magic(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ufuncs, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %1, ptr %6, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.ufuncs, ptr %6, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !29
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds %struct.ufuncs, ptr %6, i64 0, i32 2
  store i64 %8, ptr %9, align 8, !tbaa !30
  call void @Perl_sv_magic(ptr noundef %0, ptr noundef %4, i32 noundef 85, ptr noundef nonnull %6, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_get_trigger_content(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.magic, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HUF_destroy_obj(i64 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !13
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr @PL_in_clean_all, align 1, !range !31
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = tail call ptr @HUF_get_trigger_content(ptr noundef nonnull %1) #7
  %12 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef 0, i32 noundef 0) #6
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef 1, i32 noundef 0) #6
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call i32 @Perl_hv_iterinit(ptr noundef %15) #6
  %17 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %15, i32 noundef 0) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %10, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = tail call ptr @Perl_hv_common(ptr noundef %24, ptr noundef %13, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  %26 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %15, i32 noundef 0) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !32

28:                                               ; preds = %19, %10
  %29 = load i8, ptr @PL_in_clean_all, align 1, !tbaa !33, !range !31, !noundef !35
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @HUF_global(i32 noundef -1) #7
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %34 = tail call ptr @Perl_hv_common(ptr noundef %33, ptr noundef %13, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  br label %35

35:                                               ; preds = %32, %2
  ret i32 0
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_new_trigger(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = tail call ptr @Perl_newRV(ptr noundef %4) #6
  %6 = tail call ptr @Perl_sv_rvweaken(ptr noundef %5) #6
  %7 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %8 = tail call ptr @Perl_sv_2mortal(ptr noundef %7) #6
  %9 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %1) #7
  %10 = tail call ptr @Perl_av_store(ptr noundef %7, i64 noundef 0, ptr noundef %1) #6
  %11 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  %12 = tail call ptr @Perl_av_store(ptr noundef %7, i64 noundef 1, ptr noundef %11) #6
  tail call void @HUF_add_uvar_magic(ptr noundef %6, ptr noundef null, ptr noundef nonnull @HUF_destroy_obj, i32 noundef 0, ptr noundef %7) #7
  %13 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %14 = tail call ptr @Perl_hv_common(ptr noundef %13, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %6, i32 noundef 0) #6
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_ask_trigger(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %3 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.he, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_get_trigger0(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @HUF_ask_trigger(ptr noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @HUF_new_trigger(ptr noundef %0, ptr noundef %1) #7
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @HUF_get_trigger(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @HUF_ask_trigger(ptr noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @HUF_new_trigger(ptr noundef %0, ptr noundef %1) #7
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %3, %2 ], [ %6, %5 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @HUF_mark_field(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @HUF_get_trigger_content(ptr noundef %0) #7
  %5 = tail call ptr @Perl_av_fetch(ptr noundef %4, i64 noundef 1, i32 noundef 0) #6
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @Perl_newRV(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %8 = ptrtoint ptr %1 to i64
  store i64 %8, ptr %3, align 8, !tbaa !9
  %9 = call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 36, ptr noundef %7, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HUF_watch_key_safe(i64 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 85) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @HUF_obj_id(ptr noundef nonnull %7) #7
  store ptr %15, ptr %6, align 8, !tbaa !23
  %16 = and i64 %0, 20
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @HUF_get_trigger(ptr noundef nonnull %7, ptr noundef %15) #7
  tail call void @HUF_mark_field(ptr noundef %19, ptr noundef %1) #7
  br label %29

20:                                               ; preds = %9
  %21 = and i64 %0, 20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @HUF_ask_trigger(ptr noundef nonnull %7) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @HUF_mark_field(ptr noundef nonnull %24, ptr noundef %1) #7
  br label %29

27:                                               ; preds = %5, %2
  %28 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.2) #6
  br label %29

29:                                               ; preds = %23, %26, %14, %18, %20, %27
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HUF_watch_key_id(i64 %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 85) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !13
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @HUF_obj_id(ptr noundef nonnull %7) #7
  store ptr %15, ptr %6, align 8, !tbaa !23
  br label %18

16:                                               ; preds = %5, %2
  %17 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.3) #6
  br label %18

18:                                               ; preds = %9, %14, %16
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @HUF_func_2mode(ptr noundef readnone %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, @HUF_watch_key_id
  %3 = zext i1 %2 to i32
  %4 = icmp eq ptr %0, @HUF_watch_key_safe
  %5 = select i1 %4, i32 2, i32 %3
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @HUF_mode_2func(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq i32 %0, 2
  %3 = select i1 %2, ptr @HUF_watch_key_safe, ptr null
  %4 = icmp eq i32 %0, 1
  %5 = select i1 %4, ptr @HUF_watch_key_id, ptr %3
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HUF_get_status(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !36
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.magic, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ufuncs, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !27
  %21 = tail call i32 @HUF_func_2mode(ptr noundef %20) #7, !range !39
  br label %22

22:                                               ; preds = %8, %11, %15, %19, %3, %1
  %23 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %21, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @HUF_fix_trigger(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @HUF_get_trigger_content(ptr noundef %0) #7
  %5 = tail call ptr @Perl_av_fetch(ptr noundef %4, i64 noundef 1, i32 noundef 0) #6
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  %8 = tail call ptr @Perl_av_fetch(ptr noundef %4, i64 noundef 0, i32 noundef 0) #6
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call i32 @Perl_hv_iterinit(ptr noundef %6) #6
  %11 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %6, i32 noundef 0) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %2, %27
  %14 = phi ptr [ %28, %27 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.he, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %19 = ptrtoint ptr %18 to i64
  store i64 %19, ptr %3, align 8, !tbaa !9
  %20 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %16) #7
  %21 = call ptr @Perl_hv_common_key_len(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 36, ptr noundef %16, i32 noundef 0) #6
  %22 = call ptr @Perl_hv_common(ptr noundef %18, ptr noundef %9, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %22) #7
  %26 = call ptr @Perl_hv_common(ptr noundef %18, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %22, i32 noundef 0) #6
  br label %27

27:                                               ; preds = %24, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %28 = call ptr @Perl_hv_iternext_flags(ptr noundef %6, i32 noundef 0) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !40

30:                                               ; preds = %27, %2
  %31 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %1) #7
  %32 = call ptr @Perl_av_store(ptr noundef %4, i64 noundef 0, ptr noundef %1) #6
  %33 = call ptr @Perl_av_store(ptr noundef %4, i64 noundef 1, ptr noundef %7) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @HUF_fix_objects() local_unnamed_addr #0 {
  %1 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %2 = tail call ptr @Perl_sv_2mortal(ptr noundef %1) #6
  %3 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %4 = tail call i32 @Perl_hv_iterinit(ptr noundef %3) #6
  %5 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %6 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %5, i32 noundef 0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %0, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %0 ]
  %10 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %9) #6
  %11 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %10) #7
  tail call void @Perl_av_push(ptr noundef %2, ptr noundef %10) #6
  %12 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %13 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %12, i32 noundef 0) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !41

15:                                               ; preds = %8, %0
  %16 = tail call fastcc i64 @S_av_top_index(ptr noundef %2) #7
  %17 = and i64 %16, 2147483648
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = add nuw nsw i64 %16, 1
  %21 = and i64 %20, 4294967295
  br label %22

22:                                               ; preds = %19, %50
  %23 = phi i64 [ 0, %19 ], [ %54, %50 ]
  %24 = tail call ptr @Perl_av_fetch(ptr noundef %2, i64 noundef %23, i32 noundef 0) #6
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %27 = tail call ptr @Perl_hv_common(ptr noundef %26, ptr noundef %25, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = ptrtoint ptr %29 to i64
  %31 = tail call ptr @Perl_newSVuv(i64 noundef %30) #6
  %32 = load ptr, ptr %29, align 8, !tbaa !18
  %33 = getelementptr inbounds %struct.xpvmg, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %22, %47
  %37 = phi ptr [ %48, %47 ], [ %34, %22 ]
  %38 = getelementptr inbounds %struct.magic, ptr %37, i64 0, i32 3
  %39 = load i8, ptr %38, align 2, !tbaa !19
  %40 = icmp eq i8 %39, 126
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.magic, ptr %37, i64 0, i32 2
  %43 = load i16, ptr %42, align 8, !tbaa !22
  %44 = icmp eq i16 %43, 18756
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.magic, ptr %37, i64 0, i32 6
  store ptr %31, ptr %46, align 8, !tbaa !23
  br label %47

47:                                               ; preds = %36, %41, %45
  %48 = load ptr, ptr %37, align 8, !tbaa !15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36, !llvm.loop !42

50:                                               ; preds = %47, %22
  tail call void @HUF_fix_trigger(ptr noundef %27, ptr noundef %31) #7
  %51 = load ptr, ptr @my_cxt.0, align 8, !tbaa !16
  %52 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %27) #7
  %53 = tail call ptr @Perl_hv_common(ptr noundef %51, ptr noundef %31, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %27, i32 noundef 0) #6
  %54 = add nuw nsw i64 %23, 1
  %55 = icmp eq i64 %54, %21
  br i1 %55, label %56, label %22, !llvm.loop !43

56:                                               ; preds = %50, %15
  ret void
}

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !13
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #6
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @HUF_inc_var(i64 %0, ptr nocapture readnone %1) #0 {
  %3 = load ptr, ptr @counter, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !13
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !15
  br label %14

12:                                               ; preds = %2
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %3, i32 noundef 2) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = add nsw i64 %15, 1
  tail call void @Perl_sv_setiv(ptr noundef nonnull %3, i64 noundef %16) #6
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Hash__Util__FieldHash(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Hash__Util__FieldHash__fieldhash, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Hash__Util__FieldHash_id, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Hash__Util__FieldHash_id_2obj, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Hash__Util__FieldHash_register, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Hash__Util__FieldHash_CLONE) #6
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Hash__Util__FieldHash__active_fields) #6
  %9 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Hash__Util__FieldHash__test_uvar_get) #6
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 5
  store i32 1, ptr %11, align 8, !tbaa !15
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Hash__Util__FieldHash__test_uvar_get) #6
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  store i32 3, ptr %14, align 8, !tbaa !15
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Hash__Util__FieldHash__test_uvar_get) #6
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 2, ptr %17, align 8, !tbaa !15
  tail call void @HUF_global(i32 noundef 1) #7
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #6
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash__fieldhash(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 6
  %19 = load i8, ptr %18, align 1, !tbaa !50
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr @PL_curpad, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_newmortal() #6
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr ptr, ptr %32, i64 %8
  %37 = getelementptr ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !13
  %41 = and i32 %40, 2097408
  %42 = icmp eq i32 %41, 256
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load ptr, ptr %38, align 8, !tbaa !18
  %45 = getelementptr inbounds %struct.xpviv, ptr %44, i64 0, i32 4
  %46 = load i64, ptr %45, align 8, !tbaa !15
  br label %49

47:                                               ; preds = %30
  %48 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %38, i32 noundef 2) #6
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i64 [ %46, %43 ], [ %48, %47 ]
  %51 = trunc i64 %50 to i32
  %52 = icmp ne i32 %51, 0
  %53 = icmp ne ptr %35, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !13
  %58 = and i32 %57, 2048
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.hv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !36
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = tail call ptr @HUF_mode_2func(i32 noundef %51) #7
  tail call void @HUF_add_uvar_magic(ptr noundef nonnull %62, ptr noundef %70, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  %71 = tail call i32 @HUF_get_status(ptr noundef nonnull %62) #7, !range !39
  %72 = zext nneg i32 %71 to i64
  br label %73

73:                                               ; preds = %69, %64, %60, %55, %49
  %74 = phi i64 [ %72, %69 ], [ 0, %64 ], [ 0, %60 ], [ 0, %55 ], [ 0, %49 ]
  %75 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  tail call void @Perl_sv_setiv(ptr noundef %31, i64 noundef %74) #6
  %76 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !13
  %78 = and i32 %77, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = tail call i32 @Perl_mg_set(ptr noundef nonnull %31) #6
  br label %82

82:                                               ; preds = %73, %80
  %83 = getelementptr inbounds ptr, ptr %75, i64 %33
  store ptr %31, ptr %83, align 8, !tbaa !5
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %85 = getelementptr inbounds ptr, ptr %84, i64 %33
  store ptr %85, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash_id(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #6
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = shl i64 %11, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = getelementptr ptr, ptr %17, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %30 = ptrtoint ptr %29 to i64
  %31 = ptrtoint ptr %21 to i64
  %32 = sub i64 %30, %31
  %33 = icmp slt i64 %32, 8
  br i1 %28, label %41, label %34

34:                                               ; preds = %16
  br i1 %33, label %35, label %37

35:                                               ; preds = %34
  %36 = tail call ptr @Perl_stack_grow(ptr noundef %21, ptr noundef %21, i64 noundef 1) #6
  br label %37

37:                                               ; preds = %34, %35
  %38 = phi ptr [ %36, %35 ], [ %21, %34 ]
  %39 = tail call ptr @HUF_obj_id(ptr noundef nonnull %24) #7
  %40 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr %39, ptr %40, align 8, !tbaa !5
  br label %47

41:                                               ; preds = %16
  br i1 %33, label %42, label %44

42:                                               ; preds = %41
  %43 = tail call ptr @Perl_stack_grow(ptr noundef %21, ptr noundef %21, i64 noundef 1) #6
  br label %44

44:                                               ; preds = %41, %42
  %45 = phi ptr [ %43, %42 ], [ %21, %41 ]
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %24, ptr %46, align 8, !tbaa !5
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi ptr [ %40, %37 ], [ %46, %44 ]
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash_id_2obj(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.20) #6
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = tail call ptr @HUF_ask_trigger(ptr noundef %21) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !15
  %27 = tail call ptr @Perl_newRV(ptr noundef %26) #6
  br label %28

28:                                               ; preds = %17, %24
  %29 = phi ptr [ %27, %24 ], [ @PL_sv_undef, %17 ]
  %30 = tail call ptr @Perl_sv_2mortal(ptr noundef %29) #6
  %31 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %32 = getelementptr inbounds ptr, ptr %31, i64 %19
  store ptr %30, ptr %32, align 8, !tbaa !5
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %34 = getelementptr inbounds ptr, ptr %33, i64 %19
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.22) #6
  br label %33

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !15
  %32 = tail call ptr @Perl_newRV(ptr noundef %31) #6
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi ptr [ %32, %29 ], [ null, %27 ]
  %35 = tail call ptr @HUF_obj_id(ptr noundef nonnull %22) #7
  %36 = tail call ptr @HUF_get_trigger(ptr noundef nonnull %22, ptr noundef %35) #7
  %37 = icmp sgt i32 %14, 1
  br i1 %37, label %38, label %58

38:                                               ; preds = %33, %55
  %39 = phi ptr [ %41, %55 ], [ %2, %33 ]
  %40 = phi i32 [ %56, %55 ], [ 1, %33 ]
  %41 = getelementptr inbounds ptr, ptr %39, i64 -1
  %42 = load ptr, ptr %39, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !13
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !13
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  tail call void @HUF_mark_field(ptr noundef %36, ptr noundef nonnull %49) #7
  br label %55

55:                                               ; preds = %54, %47, %38
  %56 = add nuw nsw i32 %40, 1
  %57 = icmp eq i32 %56, %14
  br i1 %57, label %58, label %38, !llvm.loop !53

58:                                               ; preds = %55, %33
  %59 = tail call ptr @Perl_sv_2mortal(ptr noundef %34) #6
  %60 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %61 = getelementptr inbounds ptr, ptr %60, i64 %20
  store ptr %59, ptr %61, align 8, !tbaa !5
  %62 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %63 = getelementptr inbounds ptr, ptr %62, i64 %20
  store ptr %63, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash_CLONE(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #6
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !13
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %21, ptr noundef null, i32 noundef 2) #6
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ]
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(22) @.str.24) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @HUF_global(i32 noundef 0) #7
  tail call void @HUF_fix_objects() #7
  br label %36

36:                                               ; preds = %35, %31
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %38 = getelementptr inbounds ptr, ptr %37, i64 %19
  %39 = getelementptr inbounds ptr, ptr %38, i64 -1
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash__active_fields(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.25) #6
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = shl i64 %11, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = getelementptr ptr, ptr %17, i64 %7
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %16
  %30 = tail call ptr @HUF_obj_id(ptr noundef nonnull %24) #7
  %31 = tail call ptr @HUF_ask_trigger(ptr noundef %30) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @HUF_get_trigger_content(ptr noundef nonnull %31) #7
  %35 = tail call ptr @Perl_av_fetch(ptr noundef %34, i64 noundef 1, i32 noundef 0) #6
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = tail call i32 @Perl_hv_iterinit(ptr noundef %36) #6
  %38 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %36, i32 noundef 0) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %33, %62
  %41 = phi ptr [ %64, %62 ], [ %38, %33 ]
  %42 = phi ptr [ %63, %62 ], [ %21, %33 ]
  %43 = getelementptr inbounds %struct.he, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !15
  %47 = tail call ptr @Perl_hv_common(ptr noundef %46, ptr noundef %30, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %40
  %50 = load ptr, ptr @PL_stack_max, align 8, !tbaa !5
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %42 to i64
  %53 = sub i64 %51, %52
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = tail call ptr @Perl_stack_grow(ptr noundef %42, ptr noundef %42, i64 noundef 1) #6
  br label %57

57:                                               ; preds = %49, %55
  %58 = phi ptr [ %56, %55 ], [ %42, %49 ]
  %59 = tail call ptr @Perl_newRV(ptr noundef %46) #6
  %60 = tail call ptr @Perl_sv_2mortal(ptr noundef %59) #6
  %61 = getelementptr inbounds ptr, ptr %58, i64 1
  store ptr %60, ptr %61, align 8, !tbaa !5
  br label %62

62:                                               ; preds = %40, %57
  %63 = phi ptr [ %61, %57 ], [ %42, %40 ]
  %64 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %36, i32 noundef 0) #6
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %40, !llvm.loop !54

66:                                               ; preds = %62, %33, %29, %16
  %67 = phi ptr [ %21, %16 ], [ %21, %29 ], [ %21, %33 ], [ %63, %62 ]
  store ptr %67, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util__FieldHash__test_uvar_get(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !5
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !5
  %5 = load i32, ptr %3, align 4, !tbaa !11
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = load ptr, ptr %0, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = and i64 %12, 34359738360
  %17 = icmp eq i64 %16, 16
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #6
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %6, %1 ]
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr ptr, ptr %21, i64 %8
  %26 = getelementptr ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !13
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !15
  store ptr %39, ptr @counter, align 8, !tbaa !5
  tail call void @Perl_sv_setiv(ptr noundef %39, i64 noundef 0) #6
  %40 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !15
  %42 = and i32 %15, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr null, ptr @HUF_inc_var
  %45 = and i32 %15, 2
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr null, ptr @HUF_inc_var
  %48 = load ptr, ptr %38, align 8, !tbaa !15
  tail call void @HUF_add_uvar_magic(ptr noundef %41, ptr noundef %44, ptr noundef %47, i32 noundef 0, ptr noundef %48) #7
  %49 = load ptr, ptr @PL_stack_base, align 8, !tbaa !5
  br label %50

50:                                               ; preds = %37, %32, %20
  %51 = phi ptr [ %49, %37 ], [ %21, %32 ], [ %21, %20 ]
  %52 = getelementptr inbounds ptr, ptr %51, i64 %22
  %53 = getelementptr inbounds ptr, ptr %52, i64 -1
  store ptr %53, ptr @PL_stack_sp, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize willreturn memory(read) }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !12, i64 12}
!14 = !{!"sv", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !6, i64 0}
!17 = !{!"", !6, i64 0}
!18 = !{!14, !6, i64 0}
!19 = !{!20, !7, i64 18}
!20 = !{!"magic", !6, i64 0, !6, i64 8, !21, i64 16, !7, i64 18, !7, i64 19, !10, i64 24, !6, i64 32, !6, i64 40}
!21 = !{!"short", !7, i64 0}
!22 = !{!20, !21, i64 16}
!23 = !{!20, !6, i64 32}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!14, !12, i64 8}
!27 = !{!28, !6, i64 0}
!28 = !{!"ufuncs", !6, i64 0, !6, i64 8, !10, i64 16}
!29 = !{!28, !6, i64 8}
!30 = !{!28, !10, i64 16}
!31 = !{i8 0, i8 2}
!32 = distinct !{!32, !25}
!33 = !{!34, !34, i64 0}
!34 = !{!"_Bool", !7, i64 0}
!35 = !{}
!36 = !{!37, !12, i64 12}
!37 = !{!"hv", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!38 = !{!20, !6, i64 40}
!39 = !{i32 0, i32 3}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = !{!45, !6, i64 0}
!45 = !{!"av", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!46 = !{!47, !10, i64 16}
!47 = !{!"xpvav", !6, i64 0, !7, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!48 = !{!49, !6, i64 0}
!49 = !{!"cv", !6, i64 0, !12, i64 8, !12, i64 12, !7, i64 16}
!50 = !{!51, !7, i64 35}
!51 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35}
!52 = !{!51, !10, i64 24}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
