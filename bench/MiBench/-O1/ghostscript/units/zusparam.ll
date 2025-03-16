; ModuleID = 'zusparam.c'
source_filename = "zusparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.password_s = type { i32, [64 x i8] }
%struct.op_def = type { ptr, ptr }
%struct.param_set_s = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.long_param_def_s = type { ptr, i64, i64, ptr, ptr }
%struct.bool_param_def_s = type { ptr, ptr, ptr }
%struct.string_param_def_s = type { ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.array_param_list_s = type { ptr, %union.anon.1, ptr, i32, i32, ptr, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, %struct.ref_s, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dict_param_list_s = type { ptr, %union.anon.4, ptr, i32, i32, %struct.ref_s }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, %struct.ref_s, i32 }
%struct.stack_param_list_s = type { ptr, %union.anon, ptr, i32, i32, ptr, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, %struct.ref_s, i32 }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }

@SystemParamsPassword = dso_local global %struct.password_s zeroinitializer, align 4
@zusparam_op_defs.op_defs_ = internal constant [9 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zcurrentsystemparams }, %struct.op_def { ptr @.str.1, ptr @zcurrentuserparams }, %struct.op_def { ptr @.str.2, ptr @zgetsystemparam }, %struct.op_def { ptr @.str.3, ptr @zgetuserparam }, %struct.op_def { ptr @.str.4, ptr null }, %struct.op_def { ptr @.str.5, ptr @zcheckpassword }, %struct.op_def { ptr @.str.6, ptr @zsetsystemparams }, %struct.op_def { ptr @.str.7, ptr @zsetuserparams }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [22 x i8] c"0.currentsystemparams\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"0.currentuserparams\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"1.getsystemparam\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"1.getuserparam\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"1.checkpassword\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"1setsystemparams\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1setuserparams\00", align 1
@system_param_set = internal constant %struct.param_set_s { ptr @system_long_params, i32 5, ptr @system_bool_params, i32 1, ptr @system_string_params, i32 1 }, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@system_long_params = internal constant [5 x %struct.long_param_def_s] [%struct.long_param_def_s { ptr @.str.8, i64 0, i64 4294967295, ptr @current_BuildTime, ptr null }, %struct.long_param_def_s { ptr @.str.9, i64 0, i64 4294967295, ptr @current_MaxFontCache, ptr @set_MaxFontCache }, %struct.long_param_def_s { ptr @.str.10, i64 0, i64 4294967295, ptr @current_CurFontCache, ptr null }, %struct.long_param_def_s { ptr @.str.11, i64 0, i64 4294967295, ptr @current_Revision, ptr null }, %struct.long_param_def_s { ptr @.str.12, i64 0, i64 4294967295, ptr @current_MaxGlobalVM, ptr @set_MaxGlobalVM }], align 16
@system_bool_params = internal constant [1 x %struct.bool_param_def_s] [%struct.bool_param_def_s { ptr @.str.13, ptr @current_ByteOrder, ptr null }], align 16
@system_string_params = internal constant [1 x %struct.string_param_def_s] [%struct.string_param_def_s { ptr @.str.14, ptr @current_RealFormat, ptr null }], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"BuildTime\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MaxFontCache\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"CurFontCache\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Revision\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MaxGlobalVM\00", align 1
@gs_buildtime = external local_unnamed_addr global i64, align 8
@ifont_dir = external local_unnamed_addr global ptr, align 8
@gs_revision = external local_unnamed_addr global i64, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"ByteOrder\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"RealFormat\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"IEEE\00", align 1
@user_param_set = internal constant %struct.param_set_s { ptr @user_long_params, i32 11, ptr @user_bool_params, i32 1, ptr @user_string_params, i32 1 }, align 8
@user_long_params = internal constant [11 x %struct.long_param_def_s] [%struct.long_param_def_s { ptr @.str.16, i64 0, i64 4294967295, ptr @current_JobTimeout, ptr @set_JobTimeout }, %struct.long_param_def_s { ptr @.str.17, i64 0, i64 4294967295, ptr @current_MaxFontItem, ptr @set_MaxFontItem }, %struct.long_param_def_s { ptr @.str.18, i64 0, i64 4294967295, ptr @current_MinFontCompress, ptr @set_MinFontCompress }, %struct.long_param_def_s { ptr @.str.19, i64 0, i64 4294967295, ptr @current_MaxOpStack, ptr @set_MaxOpStack }, %struct.long_param_def_s { ptr @.str.20, i64 0, i64 4294967295, ptr @current_MaxDictStack, ptr @set_MaxDictStack }, %struct.long_param_def_s { ptr @.str.21, i64 0, i64 4294967295, ptr @current_MaxExecStack, ptr @set_MaxExecStack }, %struct.long_param_def_s { ptr @.str.22, i64 0, i64 4294967295, ptr @current_MaxLocalVM, ptr @set_MaxLocalVM }, %struct.long_param_def_s { ptr @.str.23, i64 -2, i64 0, ptr @current_VMReclaim, ptr @set_vm_reclaim }, %struct.long_param_def_s { ptr @.str.24, i64 0, i64 4294967295, ptr @current_VMThreshold, ptr @set_vm_threshold }, %struct.long_param_def_s { ptr @.str.25, i64 0, i64 4294967295, ptr @current_JobTimeout, ptr @set_JobTimeout }, %struct.long_param_def_s { ptr @.str.26, i64 0, i64 4294967295, ptr @current_MinScreenLevels, ptr @set_MinScreenLevels }], align 16
@user_bool_params = internal constant [1 x %struct.bool_param_def_s] [%struct.bool_param_def_s { ptr @.str.27, ptr @current_AccurateScreens, ptr @set_AccurateScreens }], align 16
@user_string_params = internal constant [1 x %struct.string_param_def_s] [%struct.string_param_def_s { ptr @.str.28, ptr @current_JobName, ptr @set_JobName }], align 16
@.str.16 = private unnamed_addr constant [11 x i8] c"JobTimeout\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"MaxFontItem\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"MinFontCompress\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"MaxOpStack\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"MaxDictStack\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"MaxExecStack\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"MaxLocalVM\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"VMReclaim\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"VMThreshold\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"WaitTimeout\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"MinScreenLevels\00", align 1
@d_stack = external global %struct.ref_stack_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"AccurateScreens\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"JobName\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@StartJobPassword = internal global %struct.password_s zeroinitializer, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"StartJobPassword\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"SystemParamsPassword\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zusparam_op_defs() local_unnamed_addr #0 {
  ret ptr @zusparam_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentsystemparams(ptr nocapture readnone %0) #1 {
  %2 = tail call fastcc i32 @current_param_list(ptr noundef nonnull @system_param_set, ptr noundef null)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zcurrentuserparams(ptr nocapture readnone %0) #1 {
  %2 = tail call fastcc i32 @current_param_list(ptr noundef nonnull @user_param_set, ptr noundef null)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetsystemparam(ptr noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 13
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %26

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %10 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %26

16:                                               ; preds = %8
  call void @name_string_ref(ptr noundef %0, ptr noundef nonnull %2) #9
  %17 = call fastcc i32 @current_param_list(ptr noundef nonnull @system_param_set, ptr noundef nonnull %2)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !17
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -2
  store ptr %25, ptr @o_stack, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %6, %15, %16, %19, %22
  %27 = phi i32 [ -16, %15 ], [ 0, %22 ], [ %7, %6 ], [ %17, %16 ], [ -21, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zgetuserparam(ptr noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 13
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %26

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !8
  %10 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = icmp slt i64 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !16
  br label %26

16:                                               ; preds = %8
  call void @name_string_ref(ptr noundef %0, ptr noundef nonnull %2) #9
  %17 = call fastcc i32 @current_param_list(ptr noundef nonnull @user_param_set, ptr noundef nonnull %2)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !17
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -2
  store ptr %25, ptr @o_stack, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %6, %15, %16, %19, %22
  %27 = phi i32 [ -16, %15 ], [ 0, %22 ], [ %7, %6 ], [ %17, %16 ], [ -21, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @zcheckpassword(ptr nocapture noundef %0) #1 {
  %2 = alloca [2 x %struct.ref_s], align 16
  %3 = alloca %struct.array_param_list_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %4 = call i32 @name_ref(ptr noundef nonnull @.str.29, i32 noundef 8, ptr noundef nonnull %2, i32 noundef 0) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds [2 x %struct.ref_s], ptr %2, i64 0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !17
  %8 = call i32 @array_param_list_read(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  %9 = call i32 @param_check_password(ptr noundef nonnull %3, ptr noundef nonnull @StartJobPassword) #9
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = call i32 @param_check_password(ptr noundef nonnull %3, ptr noundef nonnull @SystemParamsPassword) #9
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i64 2, i64 %11
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.array_param_list_s, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  call void %17(ptr noundef %15, ptr noundef %19, ptr noundef nonnull @.str.30) #9
  %20 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i64 %14, ptr %20, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !31
  br label %21

21:                                               ; preds = %1, %6
  %22 = phi i32 [ 0, %6 ], [ %4, %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetsystemparams(ptr noundef %0) #1 {
  %2 = alloca %struct.dict_param_list_s, align 8
  %3 = alloca %struct.password_s, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %37

9:                                                ; preds = %1
  %10 = call i32 @dict_param_list_read(ptr noundef nonnull %2, ptr noundef %0, ptr noundef null, i32 noundef 0) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = call i32 @param_check_password(ptr noundef nonnull %2, ptr noundef nonnull @SystemParamsPassword) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = icmp sgt i32 %13, 0
  %17 = select i1 %16, i32 -7, i32 %13
  br label %26

18:                                               ; preds = %12
  %19 = call i32 @param_read_password(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef nonnull %3) #9
  switch i32 %19, label %26 [
    i32 1, label %21
    i32 0, label %20
  ]

20:                                               ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) @StartJobPassword, ptr noundef nonnull align 4 dereferenceable(68) %3, i64 68, i1 false), !tbaa.struct !32
  br label %21

21:                                               ; preds = %20, %18
  %22 = call i32 @param_read_password(ptr noundef nonnull %2, ptr noundef nonnull @.str.32, ptr noundef nonnull %3) #9
  switch i32 %22, label %26 [
    i32 1, label %24
    i32 0, label %23
  ]

23:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) @SystemParamsPassword, ptr noundef nonnull align 4 dereferenceable(68) %3, i64 68, i1 false), !tbaa.struct !32
  br label %24

24:                                               ; preds = %23, %21
  %25 = call fastcc i32 @setparams(ptr noundef nonnull %2, ptr noundef nonnull @system_param_set)
  br label %26

26:                                               ; preds = %21, %18, %24, %15
  %27 = phi i32 [ %17, %15 ], [ %19, %18 ], [ %22, %21 ], [ %25, %24 ]
  %28 = load ptr, ptr @gs_imemory, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %28, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.dict_param_list_s, ptr %2, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  call void %30(ptr noundef %28, ptr noundef %32, ptr noundef nonnull @.str.30) #9
  %33 = icmp slt i32 %27, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.ref_s, ptr %35, i64 -1
  store ptr %36, ptr @o_stack, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %26, %9, %34, %7
  %38 = phi i32 [ 0, %34 ], [ %8, %7 ], [ %10, %9 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetuserparams(ptr noundef %0) #1 {
  %2 = alloca %struct.dict_param_list_s, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #9
  br label %22

8:                                                ; preds = %1
  %9 = call i32 @dict_param_list_read(ptr noundef nonnull %2, ptr noundef %0, ptr noundef null, i32 noundef 0) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = call fastcc i32 @setparams(ptr noundef nonnull %2, ptr noundef nonnull @user_param_set)
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %13, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct.dict_param_list_s, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  call void %15(ptr noundef %13, ptr noundef %17, ptr noundef nonnull @.str.30) #9
  %18 = icmp slt i32 %12, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -1
  store ptr %21, ptr @o_stack, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %11, %8, %19, %6
  %23 = phi i32 [ 0, %19 ], [ %7, %6 ], [ %9, %8 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @current_param_list(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.stack_param_list_s, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_param_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %7 = call i32 @stack_param_list_write(ptr noundef nonnull %3, ptr noundef nonnull @o_stack, ptr noundef null) #9
  %8 = getelementptr inbounds %struct.param_set_s, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !36
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  br label %30

15:                                               ; preds = %55
  %16 = add nuw nsw i64 %31, 1
  %17 = load i32, ptr %8, align 8, !tbaa !36
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %30, label %20, !llvm.loop !38

20:                                               ; preds = %15, %2
  %21 = phi i32 [ undef, %2 ], [ %57, %15 ]
  %22 = getelementptr inbounds %struct.param_set_s, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !40
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %63, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.param_set_s, ptr %0, i64 0, i32 2
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %29 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  br label %73

30:                                               ; preds = %11, %15
  %31 = phi i64 [ 0, %11 ], [ %16, %15 ]
  %32 = phi i32 [ undef, %11 ], [ %57, %15 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct.long_param_def_s, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  br i1 %12, label %44, label %36

36:                                               ; preds = %30
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #10
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr %13, align 8, !tbaa !5
  %40 = load i16, ptr %14, align 2, !tbaa !44
  %41 = zext i16 %40 to i32
  %42 = call i32 @bytes_compare(ptr noundef %35, i32 noundef %38, ptr noundef %39, i32 noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %36, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %45 = load ptr, ptr %0, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.long_param_def_s, ptr %45, i64 %31, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = call i64 %47() #9
  store i64 %48, ptr %4, align 8, !tbaa !19
  %49 = load ptr, ptr %3, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  %52 = call i32 %51(ptr noundef nonnull %3, ptr noundef %35, ptr noundef nonnull %4) #9
  %53 = icmp sgt i32 %52, -1
  %54 = select i1 %53, i32 %32, i32 %52
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %55

55:                                               ; preds = %44, %36
  %56 = phi i1 [ true, %36 ], [ %53, %44 ]
  %57 = phi i32 [ %32, %36 ], [ %54, %44 ]
  br i1 %56, label %15, label %133

58:                                               ; preds = %98
  %59 = add nuw nsw i64 %74, 1
  %60 = load i32, ptr %22, align 8, !tbaa !40
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %73, label %63, !llvm.loop !50

63:                                               ; preds = %58, %20
  %64 = phi i32 [ %21, %20 ], [ %100, %58 ]
  %65 = getelementptr inbounds %struct.param_set_s, ptr %0, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !51
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %133, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.param_set_s, ptr %0, i64 0, i32 4
  %70 = icmp eq ptr %1, null
  %71 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %72 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  br label %106

73:                                               ; preds = %25, %58
  %74 = phi i64 [ 0, %25 ], [ %59, %58 ]
  %75 = phi i32 [ %21, %25 ], [ %100, %58 ]
  %76 = load ptr, ptr %26, align 8, !tbaa !52
  %77 = getelementptr inbounds %struct.bool_param_def_s, ptr %76, i64 %74
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  br i1 %27, label %87, label %79

79:                                               ; preds = %73
  %80 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78) #10
  %81 = trunc i64 %80 to i32
  %82 = load ptr, ptr %28, align 8, !tbaa !5
  %83 = load i16, ptr %29, align 2, !tbaa !44
  %84 = zext i16 %83 to i32
  %85 = call i32 @bytes_compare(ptr noundef %78, i32 noundef %81, ptr noundef %82, i32 noundef %84) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %79, %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %88 = load ptr, ptr %26, align 8, !tbaa !52
  %89 = getelementptr inbounds %struct.bool_param_def_s, ptr %88, i64 %74, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !55
  %91 = call i32 %90() #9
  store i32 %91, ptr %5, align 4, !tbaa !33
  %92 = load ptr, ptr %3, align 8, !tbaa !46
  %93 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  %95 = call i32 %94(ptr noundef nonnull %3, ptr noundef %78, ptr noundef nonnull %5) #9
  %96 = icmp sgt i32 %95, -1
  %97 = select i1 %96, i32 %75, i32 %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %98

98:                                               ; preds = %87, %79
  %99 = phi i1 [ true, %79 ], [ %96, %87 ]
  %100 = phi i32 [ %75, %79 ], [ %97, %87 ]
  br i1 %99, label %58, label %133

101:                                              ; preds = %130
  %102 = add nuw nsw i64 %107, 1
  %103 = load i32, ptr %65, align 8, !tbaa !51
  %104 = zext i32 %103 to i64
  %105 = icmp ult i64 %102, %104
  br i1 %105, label %106, label %133, !llvm.loop !57

106:                                              ; preds = %68, %101
  %107 = phi i64 [ 0, %68 ], [ %102, %101 ]
  %108 = phi i32 [ %64, %68 ], [ %132, %101 ]
  %109 = load ptr, ptr %69, align 8, !tbaa !58
  %110 = getelementptr inbounds %struct.string_param_def_s, ptr %109, i64 %107
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  br i1 %70, label %120, label %112

112:                                              ; preds = %106
  %113 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %111) #10
  %114 = trunc i64 %113 to i32
  %115 = load ptr, ptr %71, align 8, !tbaa !5
  %116 = load i16, ptr %72, align 2, !tbaa !44
  %117 = zext i16 %116 to i32
  %118 = call i32 @bytes_compare(ptr noundef %111, i32 noundef %114, ptr noundef %115, i32 noundef %117) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %112, %106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %121 = load ptr, ptr %69, align 8, !tbaa !58
  %122 = getelementptr inbounds %struct.string_param_def_s, ptr %121, i64 %107, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !61
  call void %123(ptr noundef nonnull %6) #9
  %124 = load ptr, ptr %3, align 8, !tbaa !46
  %125 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %124, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !62
  %127 = call i32 %126(ptr noundef nonnull %3, ptr noundef %111, ptr noundef nonnull %6) #9
  %128 = icmp sgt i32 %127, -1
  %129 = select i1 %128, i32 %108, i32 %127
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  br label %130

130:                                              ; preds = %120, %112
  %131 = phi i1 [ true, %112 ], [ %128, %120 ]
  %132 = phi i32 [ %108, %112 ], [ %129, %120 ]
  br i1 %131, label %101, label %133

133:                                              ; preds = %55, %98, %130, %101, %63
  %134 = phi i32 [ 0, %63 ], [ 0, %101 ], [ %132, %130 ], [ %100, %98 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  ret i32 %134
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @stack_param_list_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i64 @current_BuildTime() #5 {
  %1 = load i64, ptr @gs_buildtime, align 8, !tbaa !19
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxFontCache() #1 {
  %1 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  %2 = tail call i32 @gs_currentcachesize(ptr noundef %1) #9
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxFontCache(i64 noundef %0) #1 {
  %2 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  %3 = tail call i64 @llvm.smin.i64(i64 %0, i64 4294967295)
  %4 = tail call i64 @llvm.smax.i64(i64 %3, i64 0)
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @gs_setcachesize(ptr noundef %2, i32 noundef %5) #9
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i64 @current_CurFontCache() #1 {
  %1 = alloca [7 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %1) #9
  %2 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  call void @gs_cachestatus(ptr noundef %2, ptr noundef nonnull %1) #9
  %3 = load i32, ptr %1, align 16, !tbaa !33
  %4 = zext i32 %3 to i64
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %1) #9
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i64 @current_Revision() #5 {
  %1 = load i64, ptr @gs_revision, align 8, !tbaa !19
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxGlobalVM() #1 {
  %1 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #9
  %2 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %2, ptr noundef nonnull %1) #9
  %3 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #9
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_MaxGlobalVM(i64 noundef %0) #1 {
  %2 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %3, ptr noundef nonnull %2) #9
  %4 = call i64 @llvm.smax.i64(i64 %0, i64 0)
  %5 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %2, i64 0, i32 1
  store i64 %4, ptr %5, align 8, !tbaa !63
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 0
}

declare i32 @gs_currentcachesize(ptr noundef) local_unnamed_addr #3

declare i32 @gs_setcachesize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gs_cachestatus(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_memory_gc_status(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_memory_set_gc_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @current_ByteOrder() #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @current_RealFormat(ptr nocapture noundef writeonly %0) #6 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct.gs_param_string_s, ptr %0, i64 0, i32 1
  store i32 4, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.gs_param_string_s, ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @current_JobTimeout() #0 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @set_JobTimeout(i64 %0) #0 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxFontItem() #1 {
  %1 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  %2 = tail call i32 @gs_currentcacheupper(ptr noundef %1) #9
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxFontItem(i64 noundef %0) #1 {
  %2 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  %3 = trunc i64 %0 to i32
  %4 = tail call i32 @gs_setcacheupper(ptr noundef %2, i32 noundef %3) #9
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MinFontCompress() #1 {
  %1 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  %2 = tail call i32 @gs_currentcachelower(ptr noundef %1) #9
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MinFontCompress(i64 noundef %0) #1 {
  %2 = load ptr, ptr @ifont_dir, align 8, !tbaa !23
  %3 = trunc i64 %0 to i32
  %4 = tail call i32 @gs_setcachelower(ptr noundef %2, i32 noundef %3) #9
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i64 @current_MaxOpStack() #5 {
  %1 = load i64, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 6, i32 1), align 8, !tbaa !5
  %2 = and i64 %1, 4294967295
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxOpStack(i64 noundef %0) #1 {
  %2 = tail call i32 @ref_stack_set_max_count(ptr noundef nonnull @o_stack, i64 noundef %0) #9
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i64 @current_MaxDictStack() #5 {
  %1 = load i64, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 6, i32 1), align 8, !tbaa !5
  %2 = and i64 %1, 4294967295
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxDictStack(i64 noundef %0) #1 {
  %2 = tail call i32 @ref_stack_set_max_count(ptr noundef nonnull @d_stack, i64 noundef %0) #9
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i64 @current_MaxExecStack() #5 {
  %1 = load i64, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 6, i32 1), align 8, !tbaa !5
  %2 = and i64 %1, 4294967295
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @set_MaxExecStack(i64 noundef %0) #1 {
  %2 = tail call i32 @ref_stack_set_max_count(ptr noundef nonnull @e_stack, i64 noundef %0) #9
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @current_MaxLocalVM() #1 {
  %1 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #9
  %2 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %2, ptr noundef nonnull %1) #9
  %3 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %1, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #9
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_MaxLocalVM(i64 noundef %0) #1 {
  %2 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %3, ptr noundef nonnull %2) #9
  %4 = call i64 @llvm.smax.i64(i64 %0, i64 0)
  %5 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %2, i64 0, i32 1
  store i64 %4, ptr %5, align 8, !tbaa !63
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_set_gc_status(ptr noundef %6, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @current_VMReclaim() #1 {
  %1 = alloca %struct.gs_memory_gc_status_s, align 8
  %2 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %3, ptr noundef nonnull %1) #9
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %4, ptr noundef nonnull %2) #9
  %5 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.gs_memory_gc_status_s, ptr %2, i64 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = sext i1 %10 to i64
  %12 = select i1 %7, i64 -2, i64 %11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #9
  ret i64 %12
}

declare i32 @set_vm_reclaim(i64 noundef) #3

; Function Attrs: nounwind uwtable
define internal i64 @current_VMThreshold() #1 {
  %1 = alloca %struct.gs_memory_gc_status_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #9
  %2 = load ptr, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  call void @gs_memory_gc_status(ptr noundef %2, ptr noundef nonnull %1) #9
  %3 = load i64, ptr %1, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #9
  ret i64 %3
}

declare i32 @set_vm_threshold(i64 noundef) #3

; Function Attrs: nounwind uwtable
define internal i64 @current_MinScreenLevels() #1 {
  %1 = tail call i32 @gs_currentminscreenlevels() #9
  %2 = zext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_MinScreenLevels(i64 noundef %0) #1 {
  %2 = trunc i64 %0 to i32
  tail call void @gs_setminscreenlevels(i32 noundef %2) #9
  ret i32 0
}

declare i32 @gs_currentcacheupper(ptr noundef) local_unnamed_addr #3

declare i32 @gs_setcacheupper(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_currentcachelower(ptr noundef) local_unnamed_addr #3

declare i32 @gs_setcachelower(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ref_stack_set_max_count(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gs_currentminscreenlevels() local_unnamed_addr #3

declare void @gs_setminscreenlevels(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @current_AccurateScreens() #1 {
  %1 = tail call i32 @gs_currentaccuratescreens() #9
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_AccurateScreens(i32 noundef %0) #1 {
  tail call void @gs_setaccuratescreens(i32 noundef %0) #9
  ret i32 0
}

declare i32 @gs_currentaccuratescreens() local_unnamed_addr #3

declare void @gs_setaccuratescreens(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @current_JobName(ptr nocapture noundef writeonly %0) #6 {
  store ptr null, ptr %0, align 8, !tbaa !65
  %2 = getelementptr inbounds %struct.gs_param_string_s, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct.gs_param_string_s, ptr %0, i64 0, i32 2
  store i32 1, ptr %3, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @set_JobName(ptr nocapture readnone %0) #0 {
  ret i32 0
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @array_param_list_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @param_check_password(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_param_list_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @param_read_password(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @setparams(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.param_set_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %46, %2
  %9 = phi i32 [ undef, %2 ], [ %45, %46 ]
  %10 = getelementptr inbounds %struct.param_set_s, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %83, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.param_set_s, ptr %1, i64 0, i32 2
  br label %51

15:                                               ; preds = %2, %46
  %16 = phi i64 [ %47, %46 ], [ 0, %2 ]
  %17 = phi i32 [ %45, %46 ], [ undef, %2 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %19 = getelementptr inbounds %struct.long_param_def_s, ptr %18, i64 %16, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.long_param_def_s, ptr %18, i64 %16
  %24 = load ptr, ptr %0, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = load ptr, ptr %23, align 8, !tbaa !42
  %28 = call i32 %26(ptr noundef nonnull %0, ptr noundef %27, ptr noundef nonnull %3) #9
  switch i32 %28, label %43 [
    i32 1, label %42
    i32 0, label %29
  ]

29:                                               ; preds = %22
  %30 = load i64, ptr %3, align 8, !tbaa !19
  %31 = getelementptr inbounds %struct.long_param_def_s, ptr %18, i64 %16, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !72
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.long_param_def_s, ptr %18, i64 %16, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !73
  %37 = icmp sgt i64 %30, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %19, align 8, !tbaa !71
  %40 = call i32 %39(i64 noundef %30) #9
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %22
  br label %43

43:                                               ; preds = %38, %29, %34, %22, %15, %42
  %44 = phi i32 [ 0, %42 ], [ 4, %15 ], [ 1, %22 ], [ 1, %34 ], [ 1, %29 ], [ 1, %38 ]
  %45 = phi i32 [ %17, %42 ], [ %17, %15 ], [ %28, %22 ], [ -15, %34 ], [ -15, %29 ], [ %40, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  switch i32 %44, label %83 [
    i32 0, label %46
    i32 4, label %46
  ]

46:                                               ; preds = %43, %43
  %47 = add nuw nsw i64 %16, 1
  %48 = load i32, ptr %5, align 8, !tbaa !36
  %49 = zext i32 %48 to i64
  %50 = icmp ult i64 %47, %49
  br i1 %50, label %15, label %8, !llvm.loop !74

51:                                               ; preds = %13, %78
  %52 = phi i64 [ 0, %13 ], [ %79, %78 ]
  %53 = phi i32 [ %9, %13 ], [ %77, %78 ]
  %54 = load ptr, ptr %14, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %55 = getelementptr inbounds %struct.bool_param_def_s, ptr %54, i64 %52, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = icmp eq ptr %56, null
  br i1 %57, label %75, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.bool_param_def_s, ptr %54, i64 %52
  %60 = load ptr, ptr %0, align 8, !tbaa !46
  %61 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = load ptr, ptr %59, align 8, !tbaa !53
  %64 = call i32 %62(ptr noundef nonnull %0, ptr noundef %63, ptr noundef nonnull %4) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load ptr, ptr %55, align 8, !tbaa !75
  %68 = load i32, ptr %4, align 4, !tbaa !33
  %69 = call i32 %67(i32 noundef %68) #9
  br label %70

70:                                               ; preds = %66, %58
  %71 = phi i32 [ %69, %66 ], [ %64, %58 ]
  %72 = icmp slt i32 %71, 0
  %73 = lshr i32 %71, 31
  %74 = select i1 %72, i32 %71, i32 %53
  br label %75

75:                                               ; preds = %70, %51
  %76 = phi i32 [ 8, %51 ], [ %73, %70 ]
  %77 = phi i32 [ %53, %51 ], [ %74, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  switch i32 %76, label %83 [
    i32 0, label %78
    i32 8, label %78
  ]

78:                                               ; preds = %75, %75
  %79 = add nuw nsw i64 %52, 1
  %80 = load i32, ptr %10, align 8, !tbaa !40
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %51, label %83, !llvm.loop !76

83:                                               ; preds = %43, %75, %78, %8
  %84 = phi i32 [ 0, %8 ], [ 0, %78 ], [ %77, %75 ], [ %45, %43 ]
  ret i32 %84
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !10, i64 0}
!16 = !{!9, !14, i64 64}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23, i64 8, i64 8, !23}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!10, !10, i64 0}
!24 = !{!25, !10, i64 0}
!25 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !10, i64 48, !14, i64 56, !14, i64 60}
!26 = !{!27, !10, i64 88}
!27 = !{!"gs_memory_s", !28, i64 0}
!28 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!29 = !{!30, !10, i64 40}
!30 = !{!"array_param_list_s", !10, i64 0, !6, i64 8, !10, i64 40, !14, i64 48, !14, i64 52, !10, i64 56, !10, i64 64}
!31 = !{!11, !13, i64 0}
!32 = !{i64 0, i64 4, !33, i64 4, i64 64, !5}
!33 = !{!14, !14, i64 0}
!34 = !{!35, !10, i64 40}
!35 = !{!"dict_param_list_s", !10, i64 0, !6, i64 8, !10, i64 40, !14, i64 48, !14, i64 52, !11, i64 56}
!36 = !{!37, !14, i64 8}
!37 = !{!"param_set_s", !10, i64 0, !14, i64 8, !10, i64 16, !14, i64 24, !10, i64 32, !14, i64 40}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!37, !14, i64 24}
!41 = !{!37, !10, i64 0}
!42 = !{!43, !10, i64 0}
!43 = !{!"long_param_def_s", !10, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !10, i64 32}
!44 = !{!11, !13, i64 2}
!45 = !{!43, !10, i64 24}
!46 = !{!47, !10, i64 0}
!47 = !{!"gs_param_list_s", !10, i64 0}
!48 = !{!49, !10, i64 24}
!49 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!50 = distinct !{!50, !39}
!51 = !{!37, !14, i64 40}
!52 = !{!37, !10, i64 16}
!53 = !{!54, !10, i64 0}
!54 = !{!"bool_param_def_s", !10, i64 0, !10, i64 8, !10, i64 16}
!55 = !{!54, !10, i64 8}
!56 = !{!49, !10, i64 8}
!57 = distinct !{!57, !39}
!58 = !{!37, !10, i64 32}
!59 = !{!60, !10, i64 0}
!60 = !{!"string_param_def_s", !10, i64 0, !10, i64 8, !10, i64 16}
!61 = !{!60, !10, i64 8}
!62 = !{!49, !10, i64 40}
!63 = !{!64, !20, i64 8}
!64 = !{!"gs_memory_gc_status_s", !20, i64 0, !20, i64 8, !10, i64 16, !14, i64 24, !14, i64 28, !20, i64 32}
!65 = !{!66, !10, i64 0}
!66 = !{!"gs_param_string_s", !10, i64 0, !14, i64 8, !14, i64 12}
!67 = !{!66, !14, i64 8}
!68 = !{!66, !14, i64 12}
!69 = !{!64, !14, i64 28}
!70 = !{!64, !20, i64 0}
!71 = !{!43, !10, i64 32}
!72 = !{!43, !20, i64 8}
!73 = !{!43, !20, i64 16}
!74 = distinct !{!74, !39}
!75 = !{!54, !10, i64 16}
!76 = distinct !{!76, !39}
