; ModuleID = 'iparam.c'
source_filename = "iparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.stack_param_list_s = type { ptr, %union.anon, ptr, i32, i32, ptr, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, %struct.ref_s, i32 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.iparam_list_s = type { ptr, %union.anon.7, ptr, i32, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, %struct.ref_s, i32 }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.dict_param_list_s = type { ptr, %union.anon.1, ptr, i32, i32, %struct.ref_s }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, %struct.ref_s, i32 }
%struct.array_param_list_s = type { ptr, %union.anon.4, ptr, i32, i32, ptr, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, %struct.ref_s, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iparam_loc_s = type { ptr, ptr }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_param_int_array_s = type { ptr, i32, i32 }
%struct.gs_param_float_array_s = type { ptr, i32, i32 }
%struct.gs_param_string_array_s = type { ptr, i32, i32 }
%struct.gs_param_collection_s = type { ptr, i32 }

@ref_write_procs = internal constant %struct.gs_param_list_procs_s { ptr @ref_param_write_null, ptr @ref_param_write_bool, ptr @ref_param_write_int, ptr @ref_param_write_long, ptr @ref_param_write_float, ptr @ref_param_write_string, ptr @ref_param_write_name, ptr @ref_param_write_int_array, ptr @ref_param_write_float_array, ptr @ref_param_write_string_array, ptr @ref_param_write_name_array, ptr @ref_param_begin_write_dict, ptr @ref_param_end_write_dict, ptr @ref_param_requested, ptr null, ptr null, ptr null }, align 8
@ref_read_procs = internal constant %struct.gs_param_list_procs_s { ptr @ref_param_read_null, ptr @ref_param_read_bool, ptr @ref_param_read_int, ptr @ref_param_read_long, ptr @ref_param_read_float, ptr @ref_param_read_string, ptr @ref_param_read_string, ptr @ref_param_read_int_array, ptr @ref_param_read_float_array, ptr @ref_param_read_string_array, ptr @ref_param_read_string_array, ptr @ref_param_begin_read_dict, ptr @ref_param_end_read_dict, ptr null, ptr @ref_param_read_get_policy, ptr @ref_param_read_signal_error, ptr @ref_param_read_commit }, align 8
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ref_param_write_string\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ref_param_write_int_array\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ref_param_write_float_array\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ref_param_write_string_array\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"ref_param_write_name_array\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ref_param_begin_write_dict\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"ref_param_end_write_dict\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ref_param_read_int_array\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"ref_param_read_float_array\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ref_read_float_array_param\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"ref_param_read_string_array\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"iparam_list_release\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"ref_param_end_read_dict\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ref_param_read_init\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @stack_param_list_write(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  store ptr @ref_write_procs, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 1
  store ptr @stack_param_write, ptr %4, align 8, !tbaa !11
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  br i1 %5, label %7, label %8

7:                                                ; preds = %3
  store i16 3584, ptr %6, align 8, !tbaa !11
  br label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  br label %9

9:                                                ; preds = %7, %8
  %10 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 5
  store ptr %1, ptr %12, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %13, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @stack_param_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.ref_stack_s, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %6 to i64
  %11 = sub i64 %9, %10
  %12 = icmp slt i64 %11, 32
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = tail call i32 @ref_stack_push(ptr noundef nonnull %5, i32 noundef 2) #11
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call ptr @ref_stack_index(ptr noundef nonnull %5, i64 noundef 1) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !12
  %18 = load ptr, ptr %5, align 8, !tbaa !25
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ %6, %13 ]
  br i1 %15, label %24, label %29

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ref_s, ptr %6, i64 2
  store ptr %22, ptr %5, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.ref_s, ptr %6, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !12
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi ptr [ %20, %19 ], [ %22, %21 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  %26 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !24
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !24
  br label %29

29:                                               ; preds = %19, %24
  %30 = phi i32 [ 0, %24 ], [ %14, %19 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @dict_param_list_write(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load i16, ptr %5, align 8, !tbaa !30
  %7 = and i16 %6, 16
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  store ptr @ref_write_procs, ptr %0, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.dict_param_list_s, ptr %0, i64 0, i32 1
  store ptr @dict_param_write, ptr %10, align 8, !tbaa !11
  %11 = icmp eq ptr %2, null
  %12 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  br i1 %11, label %13, label %14

13:                                               ; preds = %9
  store i16 3584, ptr %12, align 8, !tbaa !11
  br label %15

14:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  br label %15

15:                                               ; preds = %13, %14
  %16 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  store ptr null, ptr %16, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %17, align 4, !tbaa !22
  %18 = getelementptr inbounds %struct.dict_param_list_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !12
  br label %19

19:                                               ; preds = %3, %15
  %20 = phi i32 [ 0, %15 ], [ -7, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @dict_param_write(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dict_param_list_s, ptr %0, i64 0, i32 5
  %5 = tail call i32 @dict_put(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #11
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @array_param_list_read(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  store ptr @ref_read_procs, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.array_param_list_s, ptr %0, i64 0, i32 1
  store ptr @array_param_read, ptr %9, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.array_param_list_s, ptr %0, i64 0, i32 5
  store ptr %1, ptr %10, align 8, !tbaa !36
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds %struct.ref_s, ptr %1, i64 %11
  %13 = getelementptr inbounds %struct.array_param_list_s, ptr %0, i64 0, i32 6
  store ptr %12, ptr %13, align 8, !tbaa !37
  %14 = icmp eq ptr %3, null
  %15 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  br i1 %14, label %16, label %17

16:                                               ; preds = %8
  store i16 3584, ptr %15, align 8, !tbaa !11
  br label %18

17:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !12
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  store i32 %4, ptr %19, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 3
  store i32 %2, ptr %20, align 8, !tbaa !38
  %21 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = tail call ptr %23(ptr noundef %21, i32 noundef %2, i32 noundef 4, ptr noundef nonnull @.str.14) #11
  %25 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !20
  %26 = icmp eq ptr %24, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = shl nuw nsw i64 %11, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %24, i8 0, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %29, align 4, !tbaa !22
  br label %30

30:                                               ; preds = %27, %18, %5
  %31 = phi i32 [ -15, %5 ], [ 0, %27 ], [ -25, %18 ]
  ret i32 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @array_param_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.array_param_list_s, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.array_param_list_s, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp ult ptr %5, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %31
  %12 = phi ptr [ %5, %9 ], [ %32, %31 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 13
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = load ptr, ptr %10, align 8, !tbaa !11
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1
  store ptr %22, ptr %2, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = ptrtoint ptr %12 to i64
  %26 = ptrtoint ptr %5 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 4
  %29 = getelementptr inbounds i32, ptr %24, i64 %28
  %30 = getelementptr inbounds %struct.iparam_loc_s, ptr %2, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !46
  store i32 1, ptr %29, align 4, !tbaa !47
  br label %34

31:                                               ; preds = %11, %16
  %32 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2
  %33 = icmp ult ptr %32, %7
  br i1 %33, label %11, label %34, !llvm.loop !48

34:                                               ; preds = %31, %3, %21
  %35 = phi i32 [ 0, %21 ], [ 1, %3 ], [ 1, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @stack_param_list_read(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = tail call i32 @ref_stack_counttomark(ptr noundef %1) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %5
  %9 = xor i32 %2, -1
  %10 = add i32 %6, %9
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  store ptr @ref_read_procs, ptr %0, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 1
  store ptr @stack_param_read, ptr %14, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 5
  store ptr %1, ptr %15, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 6
  store i32 %2, ptr %16, align 8, !tbaa !50
  %17 = lshr exact i32 %10, 1
  %18 = icmp eq ptr %3, null
  %19 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  br i1 %18, label %20, label %21

20:                                               ; preds = %13
  store i16 3584, ptr %19, align 8, !tbaa !11
  br label %22

21:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !12
  br label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  store i32 %4, ptr %23, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 3
  store i32 %17, ptr %24, align 8, !tbaa !38
  %25 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %26 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = tail call ptr %27(ptr noundef %25, i32 noundef %17, i32 noundef 4, ptr noundef nonnull @.str.14) #11
  %29 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !20
  %30 = icmp eq ptr %28, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = zext nneg i32 %17 to i64
  %33 = shl nuw nsw i64 %32, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %28, i8 0, i64 %33, i1 false)
  %34 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %34, align 4, !tbaa !22
  br label %35

35:                                               ; preds = %31, %22, %8, %5
  %36 = phi i32 [ -24, %5 ], [ -15, %8 ], [ 0, %31 ], [ -25, %22 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @ref_stack_counttomark(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @stack_param_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.stack_param_list_s, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  br label %14

14:                                               ; preds = %9, %37
  %15 = phi i32 [ %7, %9 ], [ %38, %37 ]
  %16 = phi i32 [ %12, %9 ], [ %39, %37 ]
  %17 = zext i32 %16 to i64
  %18 = tail call ptr @ref_stack_index(ptr noundef %5, i64 noundef %17) #11
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = icmp eq i8 %20, 13
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load ptr, ptr %13, align 8, !tbaa !11
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = add i32 %16, -1
  %29 = zext i32 %28 to i64
  %30 = tail call ptr @ref_stack_index(ptr noundef %5, i64 noundef %29) #11
  store ptr %30, ptr %2, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = add i32 %15, -1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %32, i64 %34
  %36 = getelementptr inbounds %struct.iparam_loc_s, ptr %2, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !46
  store i32 1, ptr %35, align 4, !tbaa !47
  br label %41

37:                                               ; preds = %22, %14
  %38 = add i32 %15, -1
  %39 = add i32 %16, 2
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %14, !llvm.loop !51

41:                                               ; preds = %37, %3, %27
  %42 = phi i32 [ 0, %27 ], [ 1, %3 ], [ 1, %37 ]
  ret i32 %42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_param_list_read(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = load i16, ptr %6, align 8, !tbaa !30
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  store ptr @ref_read_procs, ptr %0, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.dict_param_list_s, ptr %0, i64 0, i32 1
  store ptr @dict_param_read, ptr %11, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.dict_param_list_s, ptr %0, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !12
  %13 = tail call i32 @dict_max_index(ptr noundef %1) #11
  %14 = add i32 %13, 1
  %15 = icmp eq ptr %2, null
  %16 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  br i1 %15, label %17, label %18

17:                                               ; preds = %10
  store i16 3584, ptr %16, align 8, !tbaa !11
  br label %19

18:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !12
  br label %19

19:                                               ; preds = %18, %17
  %20 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  store i32 %3, ptr %20, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 3
  store i32 %14, ptr %21, align 8, !tbaa !38
  %22 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = tail call ptr %24(ptr noundef %22, i32 noundef %14, i32 noundef 4, ptr noundef nonnull @.str.14) #11
  %26 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = zext i32 %14 to i64
  %30 = shl nuw nsw i64 %29, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %25, i8 0, i64 %30, i1 false)
  %31 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %31, align 4, !tbaa !22
  br label %32

32:                                               ; preds = %28, %19, %4
  %33 = phi i32 [ -7, %4 ], [ 0, %28 ], [ -25, %19 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dict_param_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dict_param_list_s, ptr %0, i64 0, i32 5
  %5 = tail call i32 @dict_find(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #11
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = load ptr, ptr %2, align 8, !tbaa !44
  %11 = tail call i32 @dict_value_index(ptr noundef nonnull %4, ptr noundef %10) #11
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %9, i64 %12
  %14 = getelementptr inbounds %struct.iparam_loc_s, ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !46
  store i32 1, ptr %13, align 4, !tbaa !47
  br label %15

15:                                               ; preds = %3, %7
  %16 = phi i32 [ 0, %7 ], [ 1, %3 ]
  ret i32 %16
}

declare i32 @dict_max_index(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_null(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  store i16 3584, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %6 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %13 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #11
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !11
  store i16 2816, ptr %4, align 8, !tbaa !52
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %15 ], [ -15, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %24

20:                                               ; preds = %8
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %22 = trunc i64 %21 to i32
  %23 = call i32 @name_ref(ptr noundef %1, i32 noundef %22, ptr noundef nonnull %4, i32 noundef 0) #11
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = call i32 %29(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  br label %31

31:                                               ; preds = %2, %24, %27
  %32 = phi i32 [ %30, %27 ], [ 0, %2 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_bool(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load i32, ptr %2, align 4, !tbaa !47
  %8 = trunc i32 %7 to i16
  %9 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store i16 %8, ptr %9, align 8, !tbaa !11
  store i16 256, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %10 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %17 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, ptr %4, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %19 ], [ -15, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %28

24:                                               ; preds = %12
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %26 = trunc i64 %25 to i32
  %27 = call i32 @name_ref(ptr noundef %1, i32 noundef %26, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = call i32 %33(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %35

35:                                               ; preds = %3, %28, %31
  %36 = phi i32 [ %34, %31 ], [ 0, %3 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_int(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load i32, ptr %2, align 4, !tbaa !47
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store i64 %8, ptr %9, align 8, !tbaa !11
  store i16 2816, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %10 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %17 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, ptr %4, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %19 ], [ -15, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %28

24:                                               ; preds = %12
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %26 = trunc i64 %25 to i32
  %27 = call i32 @name_ref(ptr noundef %1, i32 noundef %26, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = call i32 %33(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %35

35:                                               ; preds = %3, %28, %31
  %36 = phi i32 [ %34, %31 ], [ 0, %3 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_long(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load i64, ptr %2, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !11
  store i16 2816, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %9 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %4, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %18 ], [ -15, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %27

23:                                               ; preds = %11
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %25 = trunc i64 %24 to i32
  %26 = call i32 @name_ref(ptr noundef %1, i32 noundef %25, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ %22, %21 ], [ %26, %23 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = call i32 %32(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %34

34:                                               ; preds = %3, %27, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %3 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_float(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load float, ptr %2, align 4, !tbaa !17
  %8 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store float %7, ptr %8, align 8, !tbaa !11
  store i16 4096, ptr %6, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %9 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %4, align 8, !tbaa !15
  %20 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %18 ], [ -15, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %27

23:                                               ; preds = %11
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %25 = trunc i64 %24 to i32
  %26 = call i32 @name_ref(ptr noundef %1, i32 noundef %25, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ %22, %21 ], [ %26, %23 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = call i32 %32(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %34

34:                                               ; preds = %3, %27, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %3 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !57
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store ptr %10, ptr %17, align 8, !tbaa !11
  br label %31

18:                                               ; preds = %9
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = tail call ptr %21(ptr noundef %19, i32 noundef %12, ptr noundef nonnull @.str.1) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = zext i32 %12 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %22, ptr align 1 %10, i64 %25, i1 false)
  %26 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store ptr %22, ptr %26, align 8, !tbaa !11
  %27 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !59
  %28 = trunc i32 %27 to i16
  %29 = or i16 %28, 96
  %30 = add i16 %29, 4608
  br label %31

31:                                               ; preds = %24, %16
  %32 = phi i16 [ 4704, %16 ], [ %30, %24 ]
  store i16 %32, ptr %6, align 8, !tbaa !52
  %33 = trunc i32 %12 to i16
  %34 = getelementptr inbounds %struct.tas_s, ptr %6, i64 0, i32 1
  store i16 %33, ptr %34, align 2, !tbaa !60
  br label %35

35:                                               ; preds = %31, %18
  %36 = phi i1 [ true, %18 ], [ false, %31 ]
  %37 = phi i32 [ -25, %18 ], [ 0, %31 ]
  br i1 %36, label %66, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %39 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !22
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %46 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, ptr %4, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ 0, %48 ], [ -15, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %57

53:                                               ; preds = %41
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %55 = trunc i64 %54 to i32
  %56 = call i32 @name_ref(ptr noundef %1, i32 noundef %55, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = call i32 %62(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %64

64:                                               ; preds = %38, %57, %60
  %65 = phi i32 [ %63, %60 ], [ 0, %38 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %66

66:                                               ; preds = %35, %3, %64
  %67 = phi i32 [ %65, %64 ], [ 0, %3 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_name(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !57
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @name_ref(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %6, i32 noundef %16) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %20 = call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %27 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, ptr %4, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ 0, %29 ], [ -15, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %38

34:                                               ; preds = %22
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %36 = trunc i64 %35 to i32
  %37 = call i32 @name_ref(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ %37, %34 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = call i32 %43(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %45

45:                                               ; preds = %19, %38, %41
  %46 = phi i32 [ %44, %41 ], [ 0, %19 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %47

47:                                               ; preds = %9, %3, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %3 ], [ %17, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_int_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.gs_param_int_array_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %14 = call i32 @gs_alloc_ref_array(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 112, i32 noundef %9, ptr noundef nonnull @.str.2) #11
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %67, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %36, %25 ], [ %24, %22 ]
  %27 = phi i32 [ %35, %25 ], [ %9, %22 ]
  %28 = phi ptr [ %37, %25 ], [ %7, %22 ]
  %29 = load i32, ptr %28, align 4, !tbaa !47
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, ptr %26, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !11
  %32 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !64
  %33 = trunc i32 %32 to i16
  %34 = add i16 %33, 2816
  store i16 %34, ptr %26, align 8, !tbaa !52
  %35 = add i32 %27, -1
  %36 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  %37 = getelementptr inbounds i32, ptr %28, i64 1
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %25, !llvm.loop !65

39:                                               ; preds = %25, %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %40 = call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %47 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, ptr %4, align 8, !tbaa !15
  %51 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ 0, %49 ], [ -15, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %58

54:                                               ; preds = %42
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %56 = trunc i64 %55 to i32
  %57 = call i32 @name_ref(ptr noundef %1, i32 noundef %56, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i32 [ %53, %52 ], [ %57, %54 ]
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = call i32 %63(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %65

65:                                               ; preds = %39, %58, %61
  %66 = phi i32 [ %64, %61 ], [ 0, %39 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %67

67:                                               ; preds = %17, %65
  %68 = phi i32 [ %66, %65 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_float_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %14 = call i32 @gs_alloc_ref_array(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 112, i32 noundef %9, ptr noundef nonnull @.str.3) #11
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %66, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %35, %25 ], [ %24, %22 ]
  %27 = phi i32 [ %34, %25 ], [ %9, %22 ]
  %28 = phi ptr [ %36, %25 ], [ %7, %22 ]
  %29 = load float, ptr %28, align 4, !tbaa !17
  %30 = getelementptr inbounds %struct.ref_s, ptr %26, i64 0, i32 1
  store float %29, ptr %30, align 8, !tbaa !11
  %31 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !64
  %32 = trunc i32 %31 to i16
  %33 = add i16 %32, 4096
  store i16 %33, ptr %26, align 8, !tbaa !52
  %34 = add i32 %27, -1
  %35 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  %36 = getelementptr inbounds float, ptr %28, i64 1
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %25, !llvm.loop !69

38:                                               ; preds = %25, %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %39 = call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !22
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %46 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, ptr %4, align 8, !tbaa !15
  %50 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ 0, %48 ], [ -15, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %57

53:                                               ; preds = %41
  %54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %55 = trunc i64 %54 to i32
  %56 = call i32 @name_ref(ptr noundef %1, i32 noundef %55, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %57

57:                                               ; preds = %53, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %53 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = call i32 %62(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %64

64:                                               ; preds = %38, %57, %60
  %65 = phi i32 [ %63, %60 ], [ 0, %38 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %66

66:                                               ; preds = %17, %64
  %67 = phi i32 [ %65, %64 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_string_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %14 = call i32 @gs_alloc_ref_array(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 112, i32 noundef %9, ptr noundef nonnull @.str.4) #11
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %90, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %22, %57
  %26 = phi ptr [ %59, %57 ], [ %24, %22 ]
  %27 = phi i32 [ %58, %57 ], [ %9, %22 ]
  %28 = phi ptr [ %60, %57 ], [ %7, %22 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.gs_param_string_s, ptr %28, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.gs_param_string_s, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ref_s, ptr %26, i64 0, i32 1
  store ptr %29, ptr %36, align 8, !tbaa !11
  br label %50

37:                                               ; preds = %25
  %38 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %38, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = call ptr %40(ptr noundef %38, i32 noundef %31, ptr noundef nonnull @.str.1) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = zext i32 %31 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr align 1 %29, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.ref_s, ptr %26, i64 0, i32 1
  store ptr %41, ptr %45, align 8, !tbaa !11
  %46 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !59
  %47 = trunc i32 %46 to i16
  %48 = or i16 %47, 96
  %49 = add i16 %48, 4608
  br label %50

50:                                               ; preds = %43, %35
  %51 = phi i16 [ 4704, %35 ], [ %49, %43 ]
  store i16 %51, ptr %26, align 8, !tbaa !52
  %52 = trunc i32 %31 to i16
  %53 = getelementptr inbounds %struct.tas_s, ptr %26, i64 0, i32 1
  store i16 %52, ptr %53, align 2, !tbaa !60
  br label %54

54:                                               ; preds = %50, %37
  %55 = phi i1 [ true, %37 ], [ false, %50 ]
  %56 = phi i32 [ -25, %37 ], [ 0, %50 ]
  br i1 %55, label %90, label %57

57:                                               ; preds = %54
  %58 = add i32 %27, -1
  %59 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  %60 = getelementptr inbounds %struct.gs_param_string_s, ptr %28, i64 1
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %62, label %25, !llvm.loop !73

62:                                               ; preds = %57, %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %63 = call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %67 = load i32, ptr %66, align 4, !tbaa !22
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %70 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, ptr %4, align 8, !tbaa !15
  %74 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %73, ptr %74, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ 0, %72 ], [ -15, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %81

77:                                               ; preds = %65
  %78 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %79 = trunc i64 %78 to i32
  %80 = call i32 @name_ref(ptr noundef %1, i32 noundef %79, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %81

81:                                               ; preds = %77, %75
  %82 = phi i32 [ %76, %75 ], [ %80, %77 ]
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  %87 = call i32 %86(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %88

88:                                               ; preds = %62, %81, %84
  %89 = phi i32 [ %87, %84 ], [ 0, %62 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %90

90:                                               ; preds = %54, %17, %88
  %91 = phi i32 [ %89, %88 ], [ %18, %17 ], [ %56, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_write_name_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = load ptr, ptr %2, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %14 = call i32 @gs_alloc_ref_array(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 112, i32 noundef %9, ptr noundef nonnull @.str.5) #11
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %14, i32 1
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %71, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %22, %38
  %26 = phi ptr [ %40, %38 ], [ %24, %22 ]
  %27 = phi i32 [ %39, %38 ], [ %9, %22 ]
  %28 = phi ptr [ %41, %38 ], [ %7, %22 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.gs_param_string_s, ptr %28, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.gs_param_string_s, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @name_ref(ptr noundef %29, i32 noundef %31, ptr noundef %26, i32 noundef %35) #11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %25
  %39 = add i32 %27, -1
  %40 = getelementptr inbounds %struct.ref_s, ptr %26, i64 1
  %41 = getelementptr inbounds %struct.gs_param_string_s, ptr %28, i64 1
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %25, !llvm.loop !74

43:                                               ; preds = %38, %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %44 = call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %51 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, ptr %4, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %54, ptr %55, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ 0, %53 ], [ -15, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %62

58:                                               ; preds = %46
  %59 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %60 = trunc i64 %59 to i32
  %61 = call i32 @name_ref(ptr noundef %1, i32 noundef %60, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %62

62:                                               ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = call i32 %67(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %69

69:                                               ; preds = %43, %62, %65
  %70 = phi i32 [ %68, %65 ], [ 0, %43 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %71

71:                                               ; preds = %25, %17, %69
  %72 = phi i32 [ %70, %69 ], [ %18, %17 ], [ %36, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_begin_write_dict(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.ref_s, align 8
  %6 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = tail call ptr %7(ptr noundef nonnull %6, i32 noundef 72, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_param_collection_s, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = call i32 @dict_create(i32 noundef %12, ptr noundef nonnull %5) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !78
  call void %18(ptr noundef %16, ptr noundef nonnull %8, ptr noundef nonnull @.str.6) #11
  br label %35

19:                                               ; preds = %10
  store ptr %8, ptr %2, align 8, !tbaa !79
  %20 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = load i16, ptr %21, align 8, !tbaa !30
  %23 = and i16 %22, 16
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  store ptr @ref_write_procs, ptr %8, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.dict_param_list_s, ptr %8, i64 0, i32 1
  store ptr @dict_param_write, ptr %26, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.iparam_list_s, ptr %8, i64 0, i32 1, i32 0, i32 1
  store i16 3584, ptr %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.iparam_list_s, ptr %8, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !20
  %29 = getelementptr inbounds %struct.iparam_list_s, ptr %8, i64 0, i32 4
  store i32 0, ptr %29, align 4, !tbaa !22
  %30 = getelementptr inbounds %struct.dict_param_list_s, ptr %8, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !12
  br label %31

31:                                               ; preds = %19, %25
  %32 = phi i32 [ 0, %25 ], [ -7, %19 ]
  br i1 %24, label %35, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.dict_param_list_s, ptr %8, i64 0, i32 4
  store i32 %3, ptr %34, align 4, !tbaa !80
  br label %35

35:                                               ; preds = %31, %4, %33, %15
  %36 = phi i32 [ %13, %15 ], [ 0, %33 ], [ -25, %4 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_end_write_dict(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = load ptr, ptr %2, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.dict_param_list_s, ptr %6, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %8 = tail call i32 @ref_param_requested(ptr noundef %0, ptr noundef %1), !range !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, ptr %4, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %17 ], [ -15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %26

22:                                               ; preds = %10
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %24 = trunc i64 %23 to i32
  %25 = call i32 @name_ref(ptr noundef %1, i32 noundef %24, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = call i32 %31(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  br label %33

33:                                               ; preds = %3, %26, %29
  %34 = phi i32 [ %32, %29 ], [ 0, %3 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %35 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %36 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %35, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = load ptr, ptr %2, align 8, !tbaa !79
  call void %37(ptr noundef %35, ptr noundef %38, ptr noundef nonnull @.str.7) #11
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_requested(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %0, i64 17
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #11
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, ptr %3, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !11
  store i16 2816, ptr %4, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %17 ], [ -15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %26

22:                                               ; preds = %10
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %24 = trunc i64 %23 to i32
  %25 = call i32 @name_ref(ptr noundef %1, i32 noundef %24, ptr noundef nonnull %4, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %20, %22
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call i32 @dict_find(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %26, %2, %29
  %34 = phi i32 [ %32, %29 ], [ 1, %2 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %34
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dict_create(i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @ref_stack_push(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_null(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #11
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !11
  store i16 2816, ptr %4, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %12 ], [ -15, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %21

17:                                               ; preds = %2
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %19 = trunc i64 %18 to i32
  %20 = call i32 @name_ref(ptr noundef %1, i32 noundef %19, ptr noundef nonnull %4, i32 noundef 0) #11
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = call i32 %26(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8, !tbaa !44
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 14
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.iparam_loc_s, ptr %5, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  store i32 -20, ptr %36, align 4, !tbaa !47
  br label %37

37:                                               ; preds = %21, %24, %29, %34
  %38 = phi i32 [ -20, %34 ], [ %22, %21 ], [ %27, %24 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_bool(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %4, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %13 ], [ -15, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %22

18:                                               ; preds = %3
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %20 = trunc i64 %19 to i32
  %21 = call i32 @name_ref(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %17, %16 ], [ %21, %18 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = call i32 %27(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !tbaa !44
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.iparam_loc_s, ptr %6, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  store i32 -20, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %22, %25, %30, %35
  %39 = phi i32 [ -20, %35 ], [ %23, %22 ], [ %28, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.ref_s, ptr %42, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !11
  %45 = zext i16 %44 to i32
  store i32 %45, ptr %2, align 4, !tbaa !47
  br label %46

46:                                               ; preds = %38, %41
  %47 = phi i32 [ 0, %41 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_int(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %4, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %13 ], [ -15, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %22

18:                                               ; preds = %3
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %20 = trunc i64 %19 to i32
  %21 = call i32 @name_ref(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %17, %16 ], [ %21, %18 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = call i32 %27(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !tbaa !44
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 11
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.iparam_loc_s, ptr %6, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  store i32 -20, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %22, %25, %30, %35
  %39 = phi i32 [ -20, %35 ], [ %23, %22 ], [ %28, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.ref_s, ptr %42, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !11
  %45 = add i64 %44, 2147483648
  %46 = icmp ult i64 %45, 4294967296
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = trunc i64 %44 to i32
  store i32 %48, ptr %2, align 4, !tbaa !47
  br label %49

49:                                               ; preds = %41, %38, %47
  %50 = phi i32 [ 0, %47 ], [ %39, %38 ], [ -15, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_long(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %4, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %13 ], [ -15, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %22

18:                                               ; preds = %3
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %20 = trunc i64 %19 to i32
  %21 = call i32 @name_ref(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %17, %16 ], [ %21, %18 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = call i32 %27(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !tbaa !44
  %32 = getelementptr inbounds i8, ptr %31, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 11
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.iparam_loc_s, ptr %6, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  store i32 -20, ptr %37, align 4, !tbaa !47
  br label %38

38:                                               ; preds = %22, %25, %30, %35
  %39 = phi i32 [ -20, %35 ], [ %23, %22 ], [ %28, %25 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.ref_s, ptr %42, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !11
  store i64 %44, ptr %2, align 8, !tbaa !15
  br label %45

45:                                               ; preds = %38, %41
  %46 = phi i32 [ 0, %41 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_float(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, ptr %4, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %13 ], [ -15, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %22

18:                                               ; preds = %3
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %20 = trunc i64 %19 to i32
  %21 = call i32 @name_ref(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i32 [ %17, %16 ], [ %21, %18 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = call i32 %27(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 8, !tbaa !44
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !11
  switch i8 %35, label %43 [
    i8 11, label %36
    i8 16, label %40
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ref_s, ptr %33, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !11
  %39 = sitofp i64 %38 to float
  br label %46

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ref_s, ptr %33, i64 0, i32 1
  %42 = load float, ptr %41, align 8, !tbaa !11
  br label %46

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.iparam_loc_s, ptr %6, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  store i32 -20, ptr %45, align 4, !tbaa !47
  br label %48

46:                                               ; preds = %40, %36
  %47 = phi float [ %42, %40 ], [ %39, %36 ]
  store float %47, ptr %2, align 4, !tbaa !17
  br label %48

48:                                               ; preds = %29, %46, %43
  %49 = phi i32 [ -20, %43 ], [ 0, %46 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %5) #11
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, ptr %5, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store i64 %15, ptr %16, align 8, !tbaa !11
  store i16 2816, ptr %6, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %14 ], [ -15, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %23

19:                                               ; preds = %3
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %21 = trunc i64 %20 to i32
  %22 = call i32 @name_ref(ptr noundef %1, i32 noundef %21, ptr noundef nonnull %6, i32 noundef 0) #11
  br label %23

23:                                               ; preds = %19, %17
  %24 = phi i32 [ %18, %17 ], [ %22, %19 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = call i32 %28(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  %34 = load ptr, ptr %7, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !11
  switch i8 %36, label %55 [
    i8 13, label %37
    i8 18, label %38
  ]

37:                                               ; preds = %33
  call void @name_string_ref(ptr noundef %34, ptr noundef nonnull %4) #11
  br label %45

38:                                               ; preds = %33
  %39 = load i16, ptr %34, align 8, !tbaa !52
  %40 = and i16 %39, 32
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.iparam_loc_s, ptr %7, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  store i32 -7, ptr %44, align 4, !tbaa !47
  br label %58

45:                                               ; preds = %38, %37
  %46 = phi i32 [ 1, %37 ], [ 0, %38 ]
  %47 = phi ptr [ %4, %37 ], [ %34, %38 ]
  %48 = getelementptr inbounds %struct.tas_s, ptr %47, i64 0, i32 1
  %49 = getelementptr inbounds %struct.ref_s, ptr %47, i64 0, i32 1
  %50 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 0, i32 2
  store i32 %46, ptr %50, align 4, !tbaa !57
  %51 = load ptr, ptr %49, align 8, !tbaa !11
  store ptr %51, ptr %2, align 8, !tbaa !54
  %52 = load i16, ptr %48, align 2, !tbaa !60
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.gs_param_string_s, ptr %2, i64 0, i32 1
  store i32 %53, ptr %54, align 8, !tbaa !56
  br label %58

55:                                               ; preds = %33
  %56 = getelementptr inbounds %struct.iparam_loc_s, ptr %7, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  store i32 -20, ptr %57, align 4, !tbaa !47
  br label %58

58:                                               ; preds = %42, %45, %55
  %59 = phi i32 [ -20, %55 ], [ 0, %45 ], [ -7, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %60

60:                                               ; preds = %30, %58
  %61 = phi i32 [ %59, %58 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_int_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = call fastcc i32 @ref_param_read_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %57

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !60
  %11 = zext i16 %10 to i32
  %12 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = call ptr %14(ptr noundef %12, i32 noundef %11, i32 noundef 4, ptr noundef nonnull @.str.8) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %7
  %18 = icmp eq i16 %10, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %4, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 0, i32 1
  %22 = zext i16 %10 to i64
  br label %23

23:                                               ; preds = %39, %19
  %24 = phi i64 [ 0, %19 ], [ %42, %39 ]
  %25 = phi i32 [ 0, %19 ], [ %40, %39 ]
  %26 = load ptr, ptr %21, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 %24
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 11
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ref_s, ptr %26, i64 %24, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !11
  %34 = add i64 %33, 2147483648
  %35 = icmp ult i64 %34, 4294967296
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = trunc i64 %33 to i32
  %38 = getelementptr inbounds i32, ptr %15, i64 %24
  store i32 %37, ptr %38, align 4, !tbaa !47
  br label %39

39:                                               ; preds = %31, %23, %36
  %40 = phi i32 [ %25, %36 ], [ -20, %23 ], [ -15, %31 ]
  %41 = phi i1 [ false, %36 ], [ true, %23 ], [ true, %31 ]
  %42 = add nuw nsw i64 %24, 1
  %43 = icmp eq i64 %42, %22
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %23, !llvm.loop !81

45:                                               ; preds = %39, %17
  %46 = phi i32 [ 0, %17 ], [ %40, %39 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %50 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !78
  call void %51(ptr noundef %49, ptr noundef nonnull %15, ptr noundef nonnull @.str.8) #11
  %52 = getelementptr inbounds %struct.iparam_loc_s, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  store i32 %46, ptr %53, align 4, !tbaa !47
  br label %57

54:                                               ; preds = %45
  store ptr %15, ptr %2, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.gs_param_int_array_s, ptr %2, i64 0, i32 1
  store i32 %11, ptr %55, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.gs_param_int_array_s, ptr %2, i64 0, i32 2
  store i32 1, ptr %56, align 4, !tbaa !82
  br label %57

57:                                               ; preds = %7, %3, %54, %48
  %58 = phi i32 [ %46, %48 ], [ 0, %54 ], [ %5, %3 ], [ -25, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_float_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %5 = call fastcc i32 @ref_param_read_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !60
  %11 = zext i16 %10 to i32
  %12 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = call ptr %14(ptr noundef %12, i32 noundef %11, i32 noundef 4, ptr noundef nonnull @.str.9) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr %4, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = zext i16 %10 to i64
  %22 = getelementptr inbounds %struct.ref_s, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -1
  %24 = call i32 @num_params(ptr noundef nonnull %23, i32 noundef %11, ptr noundef nonnull %15) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %27, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  call void %29(ptr noundef %27, ptr noundef nonnull %15, ptr noundef nonnull @.str.10) #11
  %30 = getelementptr inbounds %struct.iparam_loc_s, ptr %4, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  store i32 %24, ptr %31, align 4, !tbaa !47
  br label %35

32:                                               ; preds = %17
  store ptr %15, ptr %2, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %2, i64 0, i32 1
  store i32 %11, ptr %33, align 8, !tbaa !68
  %34 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %2, i64 0, i32 2
  store i32 1, ptr %34, align 4, !tbaa !83
  br label %35

35:                                               ; preds = %7, %3, %32, %26
  %36 = phi i32 [ %24, %26 ], [ 0, %32 ], [ %5, %3 ], [ -25, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_string_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = call fastcc i32 @ref_param_read_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.tas_s, ptr %9, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !60
  %14 = zext i16 %13 to i32
  %15 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = call ptr %17(ptr noundef %15, i32 noundef %14, i32 noundef 16, ptr noundef nonnull @.str.11) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %8
  %21 = icmp eq i16 %13, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.iparam_loc_s, ptr %5, i64 0, i32 1
  %24 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %25 = getelementptr inbounds %struct.iparam_loc_s, ptr %5, i64 0, i32 1
  %26 = zext i16 %13 to i64
  br label %27

27:                                               ; preds = %22, %53
  %28 = phi i64 [ 0, %22 ], [ %56, %53 ]
  %29 = getelementptr inbounds %struct.ref_s, ptr %11, i64 %28
  store ptr %29, ptr %5, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.gs_param_string_s, ptr %18, i64 %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !11
  switch i8 %32, label %51 [
    i8 13, label %33
    i8 18, label %34
  ]

33:                                               ; preds = %27
  call void @name_string_ref(ptr noundef %29, ptr noundef nonnull %4) #11
  br label %41

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ref_s, ptr %11, i64 %28, i32 1
  %36 = load i16, ptr %29, align 8, !tbaa !52
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load ptr, ptr %23, align 8, !tbaa !46
  store i32 -7, ptr %40, align 4, !tbaa !47
  br label %53

41:                                               ; preds = %34, %33
  %42 = phi i32 [ 1, %33 ], [ 0, %34 ]
  %43 = phi ptr [ %24, %33 ], [ %35, %34 ]
  %44 = phi ptr [ %4, %33 ], [ %29, %34 ]
  %45 = getelementptr inbounds %struct.tas_s, ptr %44, i64 0, i32 1
  %46 = getelementptr inbounds %struct.gs_param_string_s, ptr %18, i64 %28, i32 2
  store i32 %42, ptr %46, align 4, !tbaa !57
  %47 = load ptr, ptr %43, align 8, !tbaa !11
  store ptr %47, ptr %30, align 8, !tbaa !54
  %48 = load i16, ptr %45, align 2, !tbaa !60
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.gs_param_string_s, ptr %18, i64 %28, i32 1
  store i32 %49, ptr %50, align 8, !tbaa !56
  br label %53

51:                                               ; preds = %27
  %52 = load ptr, ptr %25, align 8, !tbaa !46
  store i32 -20, ptr %52, align 4, !tbaa !47
  br label %53

53:                                               ; preds = %39, %41, %51
  %54 = phi i1 [ false, %51 ], [ true, %41 ], [ false, %39 ]
  %55 = phi i32 [ -20, %51 ], [ 0, %41 ], [ -7, %39 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %56 = add nuw nsw i64 %28, 1
  %57 = icmp ult i64 %56, %26
  %58 = select i1 %54, i1 %57, i1 false
  br i1 %58, label %27, label %59, !llvm.loop !84

59:                                               ; preds = %53, %20
  %60 = phi i32 [ 0, %20 ], [ %55, %53 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %64 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %63, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !78
  call void %65(ptr noundef %63, ptr noundef nonnull %18, ptr noundef nonnull @.str.11) #11
  %66 = getelementptr inbounds %struct.iparam_loc_s, ptr %5, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  store i32 %60, ptr %67, align 4, !tbaa !47
  br label %71

68:                                               ; preds = %59
  store ptr %18, ptr %2, align 8, !tbaa !70
  %69 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %2, i64 0, i32 1
  store i32 %14, ptr %69, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct.gs_param_string_array_s, ptr %2, i64 0, i32 2
  store i32 1, ptr %70, align 4, !tbaa !85
  br label %71

71:                                               ; preds = %8, %3, %68, %62
  %72 = phi i32 [ %60, %62 ], [ 0, %68 ], [ %6, %3 ], [ -25, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_begin_read_dict(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #1 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %8 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = tail call ptr %9(ptr noundef nonnull %8, i32 noundef 72, ptr noundef nonnull @.str.6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %11 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %5) #11
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store i64 %18, ptr %19, align 8, !tbaa !11
  store i16 2816, ptr %6, align 8, !tbaa !52
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %17 ], [ -15, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %26

22:                                               ; preds = %4
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %24 = trunc i64 %23 to i32
  %25 = call i32 @name_ref(ptr noundef %1, i32 noundef %24, ptr noundef nonnull %6, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = call i32 %31(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load ptr, ptr %7, align 8, !tbaa !44
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !11
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.iparam_loc_s, ptr %7, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  store i32 -20, ptr %41, align 4, !tbaa !47
  br label %42

42:                                               ; preds = %26, %29, %34, %39
  %43 = phi i32 [ -20, %39 ], [ %27, %26 ], [ %32, %29 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.ref_s, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = load i16, ptr %48, align 8, !tbaa !30
  %50 = and i16 %49, 32
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %45
  store ptr @ref_read_procs, ptr %10, align 8, !tbaa !32
  %53 = getelementptr inbounds %struct.dict_param_list_s, ptr %10, i64 0, i32 1
  store ptr @dict_param_read, ptr %53, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.dict_param_list_s, ptr %10, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false), !tbaa.struct !12
  %55 = call i32 @dict_max_index(ptr noundef %46) #11
  %56 = add i32 %55, 1
  %57 = getelementptr inbounds %struct.iparam_list_s, ptr %10, i64 0, i32 1, i32 0, i32 1
  store i16 3584, ptr %57, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.iparam_list_s, ptr %10, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %58, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.iparam_list_s, ptr %10, i64 0, i32 3
  store i32 %56, ptr %59, align 8, !tbaa !38
  %60 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = call ptr %62(ptr noundef %60, i32 noundef %56, i32 noundef 4, ptr noundef nonnull @.str.14) #11
  %64 = getelementptr inbounds %struct.iparam_list_s, ptr %10, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !20
  %65 = icmp eq ptr %63, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %52
  %67 = zext i32 %56 to i64
  %68 = shl nuw nsw i64 %67, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %63, i8 0, i64 %68, i1 false)
  %69 = getelementptr inbounds %struct.iparam_list_s, ptr %10, i64 0, i32 4
  store i32 0, ptr %69, align 4, !tbaa !22
  br label %70

70:                                               ; preds = %45, %52, %66
  %71 = phi i1 [ true, %45 ], [ false, %66 ], [ true, %52 ]
  %72 = phi i32 [ -7, %45 ], [ 0, %66 ], [ -25, %52 ]
  br i1 %71, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.iparam_loc_s, ptr %7, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  store i32 %72, ptr %75, align 4, !tbaa !47
  br label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.dict_param_list_s, ptr %10, i64 0, i32 4
  store i32 %3, ptr %77, align 4, !tbaa !80
  store ptr %10, ptr %2, align 8, !tbaa !79
  %78 = load ptr, ptr %7, align 8, !tbaa !44
  %79 = call i32 @dict_length(ptr noundef %78) #11
  %80 = getelementptr inbounds %struct.gs_param_collection_s, ptr %2, i64 0, i32 1
  store i32 %79, ptr %80, align 8, !tbaa !76
  br label %81

81:                                               ; preds = %42, %76, %73
  %82 = phi i32 [ %72, %73 ], [ 0, %76 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ref_param_end_read_dict(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = load ptr, ptr %2, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.dict_param_list_s, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void %6(ptr noundef %4, ptr noundef %9, ptr noundef nonnull @.str.12) #11
  %10 = load ptr, ptr @gs_imemory, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = load ptr, ptr %2, align 8, !tbaa !79
  tail call void %12(ptr noundef %10, ptr noundef %13, ptr noundef nonnull @.str.13) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ref_param_read_get_policy(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %0, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !11
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %11 = trunc i64 %10 to i32
  %12 = call i32 @name_ref(ptr noundef %1, i32 noundef %11, ptr noundef nonnull %3, i32 noundef -1) #11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = call i32 @dict_find(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8, !tbaa !19
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = icmp eq i8 %20, 11
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !11
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %2, %9, %14, %17, %22
  %27 = phi i32 [ %25, %22 ], [ 1, %17 ], [ 1, %14 ], [ 1, %9 ], [ 1, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ref_param_read_signal_error(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.iparam_loc_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %9 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %13 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %6) #11
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, ptr %6, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.ref_s, ptr %7, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !11
  store i16 2816, ptr %7, align 8, !tbaa !52
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %15 ], [ -15, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %24

20:                                               ; preds = %3
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %22 = trunc i64 %21 to i32
  %23 = call i32 @name_ref(ptr noundef %1, i32 noundef %22, ptr noundef nonnull %7, i32 noundef 0) #11
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = call i32 %29(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  br label %31

31:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  %32 = getelementptr inbounds %struct.iparam_loc_s, ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  store i32 %2, ptr %33, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %34 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %35 = getelementptr inbounds i8, ptr %0, i64 17
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %40 = trunc i64 %39 to i32
  %41 = call i32 @name_ref(ptr noundef %1, i32 noundef %40, ptr noundef nonnull %4, i32 noundef -1) #11
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = call i32 @dict_find(ptr noundef nonnull %34, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load ptr, ptr %5, align 8, !tbaa !19
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !11
  %50 = icmp eq i8 %49, 11
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ref_s, ptr %47, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !11
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %31, %38, %43, %46, %51
  %56 = phi i32 [ %54, %51 ], [ 1, %46 ], [ 1, %43 ], [ 1, %38 ], [ 1, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  switch i32 %56, label %58 [
    i32 1, label %59
    i32 2, label %57
  ]

57:                                               ; preds = %55
  br label %59

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %55, %58, %57
  %60 = phi i32 [ %2, %58 ], [ -26, %57 ], [ 0, %55 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret i32 %60
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @ref_param_read_commit(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  br label %12

12:                                               ; preds = %9, %19
  %13 = phi i64 [ 0, %9 ], [ %21, %19 ]
  %14 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %15 = getelementptr inbounds i32, ptr %11, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 -21, ptr %15, align 4, !tbaa !47
  br label %19

19:                                               ; preds = %12, %18
  %20 = phi i32 [ -21, %18 ], [ %14, %12 ]
  %21 = add nuw nsw i64 %13, 1
  %22 = load i32, ptr %6, align 8, !tbaa !38
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %12, label %25, !llvm.loop !87

25:                                               ; preds = %19, %5, %1
  %26 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %20, %19 ]
  ret i32 %26
}

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ref_param_read_array(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i64, ptr %4, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !11
  store i16 2816, ptr %5, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ 0, %12 ], [ -15, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %21

17:                                               ; preds = %3
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %19 = trunc i64 %18 to i32
  %20 = call i32 @name_ref(ptr noundef %1, i32 noundef %19, ptr noundef nonnull %5, i32 noundef 0) #11
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.iparam_list_s, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = call i32 %26(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load ptr, ptr %2, align 8, !tbaa !44
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 4
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.iparam_loc_s, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  store i32 -20, ptr %36, align 4, !tbaa !47
  br label %37

37:                                               ; preds = %21, %24, %29, %34
  %38 = phi i32 [ -20, %34 ], [ %22, %21 ], [ %27, %24 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8, !tbaa !44
  %42 = load i16, ptr %41, align 8, !tbaa !52
  %43 = and i16 %42, 32
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.iparam_loc_s, ptr %2, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  store i32 -7, ptr %47, align 4, !tbaa !47
  br label %48

48:                                               ; preds = %40, %37, %45
  %49 = phi i32 [ -7, %45 ], [ %38, %37 ], [ 0, %40 ]
  ret i32 %49
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dict_length(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare i32 @dict_value_index(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"stack_param_list_s", !7, i64 0, !8, i64 8, !7, i64 40, !10, i64 48, !10, i64 52, !7, i64 56, !10, i64 64}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{i64 0, i64 2, !13, i64 2, i64 2, !13, i64 8, i64 8, !15, i64 8, i64 2, !13, i64 8, i64 4, !17, i64 8, i64 8, !15, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19, i64 8, i64 8, !19}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !8, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !7, i64 40}
!21 = !{!"iparam_list_s", !7, i64 0, !8, i64 8, !7, i64 40, !10, i64 48, !10, i64 52}
!22 = !{!21, !10, i64 52}
!23 = !{!6, !7, i64 56}
!24 = !{!6, !10, i64 48}
!25 = !{!26, !7, i64 0}
!26 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !27, i64 24, !10, i64 40, !10, i64 44, !27, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !27, i64 88, !10, i64 104, !10, i64 108, !10, i64 112, !7, i64 120}
!27 = !{!"ref_s", !28, i64 0, !8, i64 8}
!28 = !{!"tas_s", !14, i64 0, !14, i64 2}
!29 = !{!26, !7, i64 16}
!30 = !{!31, !14, i64 0}
!31 = !{!"dict_s", !27, i64 0, !27, i64 16, !27, i64 32, !27, i64 48}
!32 = !{!33, !7, i64 0}
!33 = !{!"dict_param_list_s", !7, i64 0, !8, i64 8, !7, i64 40, !10, i64 48, !10, i64 52, !27, i64 56}
!34 = !{!35, !7, i64 0}
!35 = !{!"array_param_list_s", !7, i64 0, !8, i64 8, !7, i64 40, !10, i64 48, !10, i64 52, !7, i64 56, !7, i64 64}
!36 = !{!35, !7, i64 56}
!37 = !{!35, !7, i64 64}
!38 = !{!21, !10, i64 48}
!39 = !{!40, !7, i64 0}
!40 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!41 = !{!42, !7, i64 32}
!42 = !{!"gs_memory_s", !43, i64 0}
!43 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!44 = !{!45, !7, i64 0}
!45 = !{!"iparam_loc_s", !7, i64 0, !7, i64 8}
!46 = !{!45, !7, i64 8}
!47 = !{!10, !10, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!6, !10, i64 64}
!51 = distinct !{!51, !49}
!52 = !{!27, !14, i64 0}
!53 = !{i32 0, i32 2}
!54 = !{!55, !7, i64 0}
!55 = !{!"gs_param_string_s", !7, i64 0, !10, i64 8, !10, i64 12}
!56 = !{!55, !10, i64 8}
!57 = !{!55, !10, i64 12}
!58 = !{!42, !7, i64 96}
!59 = !{!40, !10, i64 40}
!60 = !{!27, !14, i64 2}
!61 = !{!62, !7, i64 0}
!62 = !{!"gs_param_int_array_s", !7, i64 0, !10, i64 8, !10, i64 12}
!63 = !{!62, !10, i64 8}
!64 = !{!40, !10, i64 60}
!65 = distinct !{!65, !49}
!66 = !{!67, !7, i64 0}
!67 = !{!"gs_param_float_array_s", !7, i64 0, !10, i64 8, !10, i64 12}
!68 = !{!67, !10, i64 8}
!69 = distinct !{!69, !49}
!70 = !{!71, !7, i64 0}
!71 = !{!"gs_param_string_array_s", !7, i64 0, !10, i64 8, !10, i64 12}
!72 = !{!71, !10, i64 8}
!73 = distinct !{!73, !49}
!74 = distinct !{!74, !49}
!75 = !{!42, !7, i64 0}
!76 = !{!77, !10, i64 8}
!77 = !{!"gs_param_collection_s", !7, i64 0, !10, i64 8}
!78 = !{!42, !7, i64 88}
!79 = !{!77, !7, i64 0}
!80 = !{!33, !10, i64 52}
!81 = distinct !{!81, !49}
!82 = !{!62, !10, i64 12}
!83 = !{!67, !10, i64 12}
!84 = distinct !{!84, !49}
!85 = !{!71, !10, i64 12}
!86 = !{!33, !7, i64 40}
!87 = distinct !{!87, !49}
