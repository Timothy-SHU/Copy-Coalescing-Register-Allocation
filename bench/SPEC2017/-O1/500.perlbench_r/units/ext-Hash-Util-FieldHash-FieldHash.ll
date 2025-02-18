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

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_get_ob_reg() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  tail call void @Perl_push_scope() #6
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #6
  %2 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  store i64 %2, ptr @PL_tmps_floor, align 8, !tbaa !39
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_markstack_grow() #6
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %4, %0 ]
  %11 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %12 = ptrtoint ptr %1 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %10, align 4, !tbaa !41
  %17 = tail call i32 @Perl_call_pv(ptr noundef nonnull @.str, i32 noundef 18) #6
  %18 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %19 = icmp eq i32 %17, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %9
  %21 = load ptr, ptr %18, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !43
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 12
  %35 = select i1 %34, ptr %30, ptr null
  %36 = sext i1 %34 to i64
  %37 = getelementptr inbounds ptr, ptr %18, i64 %36
  br label %38

38:                                               ; preds = %28, %23, %20, %9
  %39 = phi ptr [ null, %23 ], [ null, %20 ], [ null, %9 ], [ %35, %28 ]
  %40 = phi ptr [ %18, %23 ], [ %18, %20 ], [ %18, %9 ], [ %37, %28 ]
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !35
  %41 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  %42 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !39
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

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_call_pv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_free_tmps() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @HUF_global(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  switch i32 %0, label %4 [
    i32 1, label %2
    i32 0, label %2
    i32 -1, label %2
  ]

2:                                                ; preds = %1, %1, %1
  %3 = tail call ptr @HUF_get_ob_reg()
  store ptr %3, ptr @my_cxt.0, align 8, !tbaa !46
  br label %4

4:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_obj_id(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !34 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = and i32 %5, 255
  %7 = icmp ugt i32 %6, 6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.xpvmg, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 3
  %16 = load i8, ptr %15, align 2, !tbaa !49
  %17 = icmp eq i8 %16, 126
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i16 %20, 18756
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  br label %41

25:                                               ; preds = %13, %18
  %26 = load ptr, ptr %14, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !54

28:                                               ; preds = %25, %8, %1
  %29 = ptrtoint ptr %3 to i64
  %30 = tail call ptr @Perl_newSVuv(i64 noundef %29) #6
  %31 = tail call ptr @Perl_sv_magicext(ptr noundef %3, ptr noundef %30, i32 noundef 126, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  %32 = getelementptr inbounds %struct.magic, ptr %31, i64 0, i32 2
  store i16 18756, ptr %32, align 8, !tbaa !52
  %33 = icmp eq ptr %30, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !57
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = add i32 %36, -1
  store i32 %39, ptr %35, align 8, !tbaa !57
  br label %41

40:                                               ; preds = %34
  tail call void @Perl_sv_free2(ptr noundef nonnull %30, i32 noundef %36) #6
  br label %41

41:                                               ; preds = %40, %38, %28, %22
  %42 = phi ptr [ %24, %22 ], [ %30, %28 ], [ %30, %38 ], [ %30, %40 ]
  ret ptr %42
}

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @HUF_add_uvar_magic(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !34 {
  %6 = alloca %struct.ufuncs, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  store ptr %1, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.ufuncs, ptr %6, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !60
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds %struct.ufuncs, ptr %6, i64 0, i32 2
  store i64 %8, ptr %9, align 8, !tbaa !61
  call void @Perl_sv_magic(ptr noundef %0, ptr noundef %4, i32 noundef 85, ptr noundef nonnull %6, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  ret void
}

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_get_trigger_content(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.magic, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  br label %9

9:                                                ; preds = %1, %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %10
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @HUF_destroy_obj(i64 %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr @PL_in_clean_all, align 1, !range !62
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @Perl_mg_find(ptr noundef nonnull %1, i32 noundef 85) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.magic, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  br label %18

18:                                               ; preds = %10, %12, %15
  %19 = phi ptr [ %17, %15 ], [ null, %12 ], [ null, %10 ]
  %20 = tail call ptr @Perl_av_fetch(ptr noundef %19, i64 noundef 0, i32 noundef 0) #6
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = tail call ptr @Perl_av_fetch(ptr noundef %19, i64 noundef 1, i32 noundef 0) #6
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = tail call i32 @Perl_hv_iterinit(ptr noundef %23) #6
  %25 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %23, i32 noundef 0) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %18, %27
  %28 = phi ptr [ %34, %27 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.he, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = tail call ptr @Perl_hv_common(ptr noundef %32, ptr noundef %21, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  %34 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %23, i32 noundef 0) #6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !llvm.loop !63

36:                                               ; preds = %27, %18
  %37 = load i8, ptr @PL_in_clean_all, align 1, !tbaa !64, !range !62, !noundef !66
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @HUF_get_ob_reg()
  store ptr %40, ptr @my_cxt.0, align 8, !tbaa !46
  br label %41

41:                                               ; preds = %39, %36
  %42 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %43 = tail call ptr @Perl_hv_common(ptr noundef %42, ptr noundef %21, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  br label %44

44:                                               ; preds = %41, %2
  ret i32 0
}

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_new_trigger(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca %struct.ufuncs, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = tail call ptr @Perl_newRV(ptr noundef %5) #6
  %7 = tail call ptr @Perl_sv_rvweaken(ptr noundef %6) #6
  %8 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %9 = tail call ptr @Perl_sv_2mortal(ptr noundef %8) #6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !57
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !57
  br label %15

15:                                               ; preds = %2, %11
  %16 = tail call ptr @Perl_av_store(ptr noundef %8, i64 noundef 0, ptr noundef %1) #6
  %17 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  %18 = tail call ptr @Perl_av_store(ptr noundef %8, i64 noundef 1, ptr noundef %17) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr null, ptr %3, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.ufuncs, ptr %3, i64 0, i32 1
  store ptr @HUF_destroy_obj, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.ufuncs, ptr %3, i64 0, i32 2
  store i64 0, ptr %20, align 8, !tbaa !61
  call void @Perl_sv_magic(ptr noundef %7, ptr noundef %8, i32 noundef 85, ptr noundef nonnull %3, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %21 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %22 = call ptr @Perl_hv_common(ptr noundef %21, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %7, i32 noundef 0) #6
  ret ptr %7
}

declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_ask_trigger(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %3 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.he, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_get_trigger0(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %4 = tail call ptr @Perl_hv_common(ptr noundef %3, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.he, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @HUF_new_trigger(ptr noundef %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %10, %9 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @HUF_get_trigger(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %4 = tail call ptr @Perl_hv_common(ptr noundef %3, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.he, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call ptr @HUF_new_trigger(ptr noundef %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %10, %9 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local void @HUF_mark_field(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca i64, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  br label %11

11:                                               ; preds = %2, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %2 ]
  %13 = tail call ptr @Perl_av_fetch(ptr noundef %12, i64 noundef 1, i32 noundef 0) #6
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr @Perl_newRV(ptr noundef %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %16 = ptrtoint ptr %1 to i64
  store i64 %16, ptr %3, align 8, !tbaa !39
  %17 = call ptr @Perl_hv_common_key_len(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 36, ptr noundef %15, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret void
}

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @HUF_watch_key_safe(i64 noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 85) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @HUF_obj_id(ptr noundef nonnull %7)
  store ptr %15, ptr %6, align 8, !tbaa !53
  %16 = and i64 %0, 20
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @HUF_get_trigger(ptr noundef nonnull %7, ptr noundef %15)
  tail call void @HUF_mark_field(ptr noundef %19, ptr noundef %1)
  br label %36

20:                                               ; preds = %9
  %21 = and i64 %0, 20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %25 = tail call ptr @Perl_hv_common(ptr noundef %24, ptr noundef nonnull %7, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %23, %27
  %31 = phi ptr [ %29, %27 ], [ null, %23 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  tail call void @HUF_mark_field(ptr noundef nonnull %31, ptr noundef %1)
  br label %36

34:                                               ; preds = %5, %2
  %35 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.2) #6
  br label %36

36:                                               ; preds = %30, %33, %14, %18, %20, %34
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @HUF_watch_key_id(i64 %0, ptr noundef %1) #0 !prof !34 {
  %3 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 85) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.magic, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @HUF_obj_id(ptr noundef nonnull %7)
  store ptr %15, ptr %6, align 8, !tbaa !53
  br label %18

16:                                               ; preds = %5, %2
  %17 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.3) #6
  br label %18

18:                                               ; preds = %9, %14, %16
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @HUF_func_2mode(ptr noundef readnone %0) local_unnamed_addr #3 !prof !34 {
  %2 = icmp eq ptr %0, @HUF_watch_key_id
  %3 = zext i1 %2 to i32
  %4 = icmp eq ptr %0, @HUF_watch_key_safe
  %5 = select i1 %4, i32 2, i32 %3
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @HUF_mode_2func(i32 noundef %0) local_unnamed_addr #3 !prof !34 {
  %2 = icmp eq i32 %0, 2
  %3 = select i1 %2, ptr @HUF_watch_key_safe, ptr null
  %4 = icmp eq i32 %0, 1
  %5 = select i1 %4, ptr @HUF_watch_key_id, ptr %3
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @HUF_get_status(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !67
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.magic, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ufuncs, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8, !tbaa !58
  %21 = icmp eq ptr %20, @HUF_watch_key_id
  %22 = zext i1 %21 to i32
  %23 = icmp eq ptr %20, @HUF_watch_key_safe
  %24 = select i1 %23, i32 2, i32 %22
  br label %25

25:                                               ; preds = %8, %11, %15, %19, %3, %1
  %26 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %24, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: cold nounwind uwtable
define dso_local void @HUF_fix_trigger(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = alloca i64, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 85) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.magic, ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  br label %11

11:                                               ; preds = %2, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %2 ]
  %13 = tail call ptr @Perl_av_fetch(ptr noundef %12, i64 noundef 1, i32 noundef 0) #6
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr @Perl_newSV_type(i32 noundef 12) #6
  %16 = tail call ptr @Perl_av_fetch(ptr noundef %12, i64 noundef 0, i32 noundef 0) #6
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = tail call i32 @Perl_hv_iterinit(ptr noundef %14) #6
  %19 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %14, i32 noundef 0) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %11, %42
  %22 = phi ptr [ %43, %42 ], [ %19, %11 ]
  %23 = getelementptr inbounds %struct.he, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %27 = ptrtoint ptr %26 to i64
  store i64 %27, ptr %3, align 8, !tbaa !39
  %28 = icmp eq ptr %24, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !57
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %21, %29
  %34 = call ptr @Perl_hv_common_key_len(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 36, ptr noundef %24, i32 noundef 0) #6
  %35 = call ptr @Perl_hv_common(ptr noundef %26, ptr noundef %17, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !57
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !57
  %41 = call ptr @Perl_hv_common(ptr noundef %26, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %35, i32 noundef 0) #6
  br label %42

42:                                               ; preds = %37, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %43 = call ptr @Perl_hv_iternext_flags(ptr noundef %14, i32 noundef 0) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !70

45:                                               ; preds = %42, %11
  %46 = icmp eq ptr %1, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !57
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !57
  br label %51

51:                                               ; preds = %45, %47
  %52 = call ptr @Perl_av_store(ptr noundef %12, i64 noundef 0, ptr noundef %1) #6
  %53 = call ptr @Perl_av_store(ptr noundef %12, i64 noundef 1, ptr noundef %15) #6
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @HUF_fix_objects() local_unnamed_addr #0 !prof !34 {
  %1 = tail call ptr @Perl_newSV_type(i32 noundef 11) #6
  %2 = tail call ptr @Perl_sv_2mortal(ptr noundef %1) #6
  %3 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %4 = tail call i32 @Perl_hv_iterinit(ptr noundef %3) #6
  %5 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %6 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %5, i32 noundef 0) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %0, %16
  %9 = phi ptr [ %18, %16 ], [ %6, %0 ]
  %10 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %9) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !57
  br label %16

16:                                               ; preds = %8, %12
  tail call void @Perl_av_push(ptr noundef %2, ptr noundef %10) #6
  %17 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %18 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %17, i32 noundef 0) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !71

20:                                               ; preds = %16, %0
  %21 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = and i32 %22, 8388608
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @Perl_mg_size(ptr noundef %2) #6
  br label %32

27:                                               ; preds = %20
  %28 = load ptr, ptr %2, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.xpvav, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !74
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %25, %27
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %32
  %36 = add nuw i32 %33, 1
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %35, %73
  %39 = phi i64 [ 0, %35 ], [ %75, %73 ]
  %40 = tail call ptr @Perl_av_fetch(ptr noundef %2, i64 noundef %39, i32 noundef 0) #6
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %43 = tail call ptr @Perl_hv_common(ptr noundef %42, ptr noundef %41, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 64, ptr noundef null, i32 noundef 0) #6
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = ptrtoint ptr %45 to i64
  %47 = tail call ptr @Perl_newSVuv(i64 noundef %46) #6
  %48 = load ptr, ptr %45, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct.xpvmg, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %38, %63
  %53 = phi ptr [ %64, %63 ], [ %50, %38 ]
  %54 = getelementptr inbounds %struct.magic, ptr %53, i64 0, i32 3
  %55 = load i8, ptr %54, align 2, !tbaa !49
  %56 = icmp eq i8 %55, 126
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.magic, ptr %53, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !52
  %60 = icmp eq i16 %59, 18756
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.magic, ptr %53, i64 0, i32 6
  store ptr %47, ptr %62, align 8, !tbaa !53
  br label %63

63:                                               ; preds = %52, %57, %61
  %64 = load ptr, ptr %53, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52, !llvm.loop !76

66:                                               ; preds = %63, %38
  tail call void @HUF_fix_trigger(ptr noundef %43, ptr noundef %47)
  %67 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %68 = icmp eq ptr %43, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !57
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !57
  br label %73

73:                                               ; preds = %66, %69
  %74 = tail call ptr @Perl_hv_common(ptr noundef %67, ptr noundef %47, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %43, i32 noundef 0) #6
  %75 = add nuw nsw i64 %39, 1
  %76 = icmp eq i64 %75, %37
  br i1 %76, label %77, label %38, !llvm.loop !77

77:                                               ; preds = %73, %32
  ret void
}

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @HUF_inc_var(i64 %0, ptr nocapture readnone %1) #0 !prof !34 {
  %3 = load ptr, ptr @counter, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = and i32 %5, 2097408
  %7 = icmp eq i32 %6, 256
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.xpviv, ptr %9, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !45
  br label %14

12:                                               ; preds = %2
  %13 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %3, i32 noundef 2) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ %11, %8 ], [ %13, %12 ]
  %16 = add nsw i64 %15, 1
  tail call void @Perl_sv_setiv(ptr noundef %3, i64 noundef %16) #6
  ret i32 0
}

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Hash__Util__FieldHash(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Hash__Util__FieldHash__fieldhash, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Hash__Util__FieldHash_id, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  %5 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Hash__Util__FieldHash_id_2obj, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  %6 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Hash__Util__FieldHash_register, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Hash__Util__FieldHash_CLONE) #6
  %8 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Hash__Util__FieldHash__active_fields) #6
  %9 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Hash__Util__FieldHash__test_uvar_get) #6
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 5
  store i32 1, ptr %11, align 8, !tbaa !45
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.16, ptr noundef nonnull @XS_Hash__Util__FieldHash__test_uvar_get) #6
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 5
  store i32 3, ptr %14, align 8, !tbaa !45
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.17, ptr noundef nonnull @XS_Hash__Util__FieldHash__test_uvar_get) #6
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 5
  store i32 2, ptr %17, align 8, !tbaa !45
  %18 = tail call ptr @HUF_get_ob_reg()
  store ptr %18, ptr @my_cxt.0, align 8, !tbaa !46
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #6
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash__fieldhash(ptr noundef %0) #0 !prof !34 {
  %2 = alloca %struct.ufuncs, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !41
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %20 = load i8, ptr %19, align 1, !tbaa !80
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !82
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  br label %31

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_sv_newmortal() #6
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %34 = sext i32 %8 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = getelementptr ptr, ptr %33, i64 %9
  %38 = getelementptr ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !43
  %42 = and i32 %41, 2097408
  %43 = icmp eq i32 %42, 256
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load ptr, ptr %39, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.xpviv, ptr %45, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !45
  br label %50

48:                                               ; preds = %31
  %49 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %39, i32 noundef 2) #6
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i64 [ %47, %44 ], [ %49, %48 ]
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %52, 0
  %54 = icmp ne ptr %36, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !43
  %59 = and i32 %58, 2048
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !45
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.hv, ptr %63, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !67
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 12
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = icmp eq i32 %52, 2
  %72 = select i1 %71, ptr @HUF_watch_key_safe, ptr null
  %73 = icmp eq i32 %52, 1
  %74 = select i1 %73, ptr @HUF_watch_key_id, ptr %72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store ptr %74, ptr %2, align 8, !tbaa !58
  %75 = getelementptr inbounds %struct.ufuncs, ptr %2, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  call void @Perl_sv_magic(ptr noundef nonnull %63, ptr noundef null, i32 noundef 85, ptr noundef nonnull %2, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  %76 = call i32 @HUF_get_status(ptr noundef nonnull %63), !range !83
  %77 = zext nneg i32 %76 to i64
  br label %78

78:                                               ; preds = %70, %65, %61, %56, %50
  %79 = phi i64 [ %77, %70 ], [ 0, %65 ], [ 0, %61 ], [ 0, %56 ], [ 0, %50 ]
  %80 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  call void @Perl_sv_setiv(ptr noundef %32, i64 noundef %79) #6
  %81 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !43
  %83 = and i32 %82, 4194304
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = call i32 @Perl_mg_set(ptr noundef %32) #6
  br label %87

87:                                               ; preds = %78, %85
  %88 = getelementptr inbounds ptr, ptr %80, i64 %34
  store ptr %32, ptr %88, align 8, !tbaa !35
  %89 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %90 = getelementptr inbounds ptr, ptr %89, i64 %34
  store ptr %90, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash_id(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.19) #6
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %19 to i64
  %31 = sub i64 %29, %30
  %32 = icmp slt i64 %31, 8
  br i1 %27, label %40, label %33

33:                                               ; preds = %15
  br i1 %32, label %34, label %36

34:                                               ; preds = %33
  %35 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #6
  br label %36

36:                                               ; preds = %33, %34
  %37 = phi ptr [ %35, %34 ], [ %19, %33 ]
  %38 = tail call ptr @HUF_obj_id(ptr noundef %23)
  %39 = getelementptr inbounds ptr, ptr %37, i64 1
  store ptr %38, ptr %39, align 8, !tbaa !35
  br label %46

40:                                               ; preds = %15
  br i1 %32, label %41, label %43

41:                                               ; preds = %40
  %42 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #6
  br label %43

43:                                               ; preds = %40, %41
  %44 = phi ptr [ %42, %41 ], [ %19, %40 ]
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  store ptr %23, ptr %45, align 8, !tbaa !35
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %39, %36 ], [ %45, %43 ]
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash_id_2obj(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.20) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %22 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef %20, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.he, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %16, %24
  %28 = phi ptr [ %26, %24 ], [ null, %16 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = tail call ptr @Perl_newRV(ptr noundef %32) #6
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi ptr [ %33, %30 ], [ @PL_sv_undef, %27 ]
  %36 = tail call ptr @Perl_sv_2mortal(ptr noundef %35) #6
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  store ptr %36, ptr %38, align 8, !tbaa !35
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %40 = getelementptr inbounds ptr, ptr %39, i64 %18
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash_register(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #6
  br label %17

17:                                               ; preds = %16, %1
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !43
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.22) #6
  br label %32

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = tail call ptr @Perl_newRV(ptr noundef %30) #6
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi ptr [ %31, %28 ], [ null, %26 ]
  %34 = tail call ptr @HUF_obj_id(ptr noundef %21)
  %35 = tail call ptr @HUF_get_trigger(ptr noundef %21, ptr noundef %34)
  %36 = icmp sgt i32 %14, 1
  br i1 %36, label %37, label %57

37:                                               ; preds = %32, %54
  %38 = phi ptr [ %40, %54 ], [ %2, %32 ]
  %39 = phi i32 [ %55, %54 ], [ 1, %32 ]
  %40 = getelementptr inbounds ptr, ptr %38, i64 -1
  %41 = load ptr, ptr %38, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !43
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !43
  %51 = and i32 %50, 255
  %52 = icmp eq i32 %51, 12
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  tail call void @HUF_mark_field(ptr noundef %35, ptr noundef %48)
  br label %54

54:                                               ; preds = %53, %46, %37
  %55 = add nuw nsw i32 %39, 1
  %56 = icmp eq i32 %55, %14
  br i1 %56, label %57, label %37, !llvm.loop !84

57:                                               ; preds = %54, %32
  %58 = tail call ptr @Perl_sv_2mortal(ptr noundef %33) #6
  %59 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %60 = getelementptr inbounds ptr, ptr %59, i64 %19
  store ptr %58, ptr %60, align 8, !tbaa !35
  %61 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %62 = getelementptr inbounds ptr, ptr %61, i64 %19
  store ptr %62, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash_CLONE(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #6
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  br label %30

28:                                               ; preds = %16
  %29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %20, ptr noundef null, i32 noundef 2) #6
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %27, %25 ], [ %29, %28 ]
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(22) @.str.24) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call ptr @HUF_get_ob_reg()
  store ptr %35, ptr @my_cxt.0, align 8, !tbaa !46
  tail call void @HUF_fix_objects()
  br label %36

36:                                               ; preds = %34, %30
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 %18
  %39 = getelementptr inbounds ptr, ptr %38, i64 -1
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash__active_fields(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !41
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.25) #6
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %21 = getelementptr ptr, ptr %20, i64 %7
  %22 = getelementptr ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %15
  %29 = tail call ptr @HUF_obj_id(ptr noundef %23)
  %30 = load ptr, ptr @my_cxt.0, align 8, !tbaa !46
  %31 = tail call ptr @Perl_hv_common(ptr noundef %30, ptr noundef %29, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.he, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  br label %36

36:                                               ; preds = %28, %33
  %37 = phi ptr [ %35, %33 ], [ null, %28 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @Perl_mg_find(ptr noundef nonnull %37, i32 noundef 85) #6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.magic, ptr %40, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi ptr [ %44, %42 ], [ null, %39 ]
  %47 = tail call ptr @Perl_av_fetch(ptr noundef %46, i64 noundef 1, i32 noundef 0) #6
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = tail call i32 @Perl_hv_iterinit(ptr noundef %48) #6
  %50 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %48, i32 noundef 0) #6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %78, label %52

52:                                               ; preds = %45, %74
  %53 = phi ptr [ %76, %74 ], [ %50, %45 ]
  %54 = phi ptr [ %75, %74 ], [ %19, %45 ]
  %55 = getelementptr inbounds %struct.he, ptr %53, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !45
  %57 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = tail call ptr @Perl_hv_common(ptr noundef %58, ptr noundef %29, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %63 = ptrtoint ptr %62 to i64
  %64 = ptrtoint ptr %54 to i64
  %65 = sub i64 %63, %64
  %66 = icmp slt i64 %65, 8
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = tail call ptr @Perl_stack_grow(ptr noundef %54, ptr noundef %54, i64 noundef 1) #6
  br label %69

69:                                               ; preds = %61, %67
  %70 = phi ptr [ %68, %67 ], [ %54, %61 ]
  %71 = tail call ptr @Perl_newRV(ptr noundef %58) #6
  %72 = tail call ptr @Perl_sv_2mortal(ptr noundef %71) #6
  %73 = getelementptr inbounds ptr, ptr %70, i64 1
  store ptr %72, ptr %73, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %52, %69
  %75 = phi ptr [ %73, %69 ], [ %54, %52 ]
  %76 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %48, i32 noundef 0) #6
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %52, !llvm.loop !85

78:                                               ; preds = %74, %45, %36, %15
  %79 = phi ptr [ %19, %15 ], [ %19, %36 ], [ %19, %45 ], [ %75, %74 ]
  store ptr %79, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util__FieldHash__test_uvar_get(ptr noundef %0) #0 !prof !34 {
  %2 = alloca %struct.ufuncs, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !41
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !45
  %17 = and i64 %13, 34359738360
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.26) #6
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr ptr, ptr %21, i64 %9
  %26 = getelementptr ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !43
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !43
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  store ptr %39, ptr @counter, align 8, !tbaa !35
  tail call void @Perl_sv_setiv(ptr noundef %39, i64 noundef 0) #6
  %40 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = and i32 %16, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr null, ptr @HUF_inc_var
  %45 = and i32 %16, 2
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr null, ptr @HUF_inc_var
  %48 = load ptr, ptr %38, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store ptr %44, ptr %2, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.ufuncs, ptr %2, i64 0, i32 1
  store ptr %47, ptr %49, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.ufuncs, ptr %2, i64 0, i32 2
  store i64 0, ptr %50, align 8, !tbaa !61
  call void @Perl_sv_magic(ptr noundef %41, ptr noundef %48, i32 noundef 85, ptr noundef nonnull %2, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br label %51

51:                                               ; preds = %37, %32, %20
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 %22
  %54 = getelementptr inbounds ptr, ptr %53, i64 -1
  store ptr %54, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!44, !42, i64 12}
!44 = !{!"sv", !36, i64 0, !42, i64 8, !42, i64 12, !37, i64 16}
!45 = !{!37, !37, i64 0}
!46 = !{!47, !36, i64 0}
!47 = !{!"", !36, i64 0}
!48 = !{!44, !36, i64 0}
!49 = !{!50, !37, i64 18}
!50 = !{!"magic", !36, i64 0, !36, i64 8, !51, i64 16, !37, i64 18, !37, i64 19, !40, i64 24, !36, i64 32, !36, i64 40}
!51 = !{!"short", !37, i64 0}
!52 = !{!50, !51, i64 16}
!53 = !{!50, !36, i64 32}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!44, !42, i64 8}
!58 = !{!59, !36, i64 0}
!59 = !{!"ufuncs", !36, i64 0, !36, i64 8, !40, i64 16}
!60 = !{!59, !36, i64 8}
!61 = !{!59, !40, i64 16}
!62 = !{i8 0, i8 2}
!63 = distinct !{!63, !55, !56}
!64 = !{!65, !65, i64 0}
!65 = !{!"_Bool", !37, i64 0}
!66 = !{}
!67 = !{!68, !42, i64 12}
!68 = !{!"hv", !36, i64 0, !42, i64 8, !42, i64 12, !37, i64 16}
!69 = !{!50, !36, i64 40}
!70 = distinct !{!70, !55, !56}
!71 = distinct !{!71, !55, !56}
!72 = !{!73, !36, i64 0}
!73 = !{!"av", !36, i64 0, !42, i64 8, !42, i64 12, !37, i64 16}
!74 = !{!75, !40, i64 16}
!75 = !{!"xpvav", !36, i64 0, !37, i64 8, !40, i64 16, !40, i64 24, !36, i64 32}
!76 = distinct !{!76, !55, !56}
!77 = distinct !{!77, !55, !56}
!78 = !{!79, !36, i64 0}
!79 = !{!"cv", !36, i64 0, !42, i64 8, !42, i64 12, !37, i64 16}
!80 = !{!81, !37, i64 35}
!81 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !37, i64 34, !37, i64 35}
!82 = !{!81, !40, i64 24}
!83 = !{i32 0, i32 3}
!84 = distinct !{!84, !55, !56}
!85 = distinct !{!85, !55, !56}
