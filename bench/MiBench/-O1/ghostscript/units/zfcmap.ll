; ModuleID = 'zfcmap.c'
source_filename = "zfcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_cmap_s = type { %struct.gs_cid_system_info_s, %struct.gs_uid_s, i32, %struct.gx_code_map_s, %struct.gx_code_map_s, ptr, ptr }
%struct.gs_uid_s = type { i64, ptr }
%struct.gx_code_map_s = type { i8, i8, i8, %union.bd_, %union.d_, ptr }
%union.bd_ = type { i8 }
%union.d_ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"CMap\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CodeMap\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@st_cmap = external constant %struct.gs_memory_struct_type_s, align 8
@zfcmap_op_defs.op_defs_ = internal constant [2 x %struct.op_def] [%struct.op_def { ptr @.str.2, ptr @zbuildcmap }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"1.buildcmap\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CIDSystemInfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Registry\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Ordering\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Supplement\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"zbuildcmap(cmap)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"WMode\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c".CodeMaps\00", align 1
@st_code_map_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"acquire_code_map\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"free_code_map\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ztype0_get_cmap(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca %struct.gs_cid_system_info_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5
  %8 = call i32 @dict_find_string(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull %4) #5
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %46, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = call i32 @dict_find_string(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #5
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %46, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8, !tbaa !5
  %20 = load i16, ptr %19, align 8, !tbaa !10
  %21 = and i16 %20, 15872
  %22 = icmp eq i16 %21, 2048
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %24, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.ref_s, ptr %19, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = call ptr %26(ptr noundef %24, ptr noundef %28) #5
  %30 = icmp eq ptr %29, @st_cmap
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !20
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = call i32 @array_get(ptr noundef %1, i64 noundef 0, ptr noundef nonnull %6) #5
  %40 = call fastcc i32 @acquire_cid_system_info(ptr noundef nonnull %7, ptr noundef nonnull %6)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = call fastcc i32 @cid_system_info_compatible(ptr noundef nonnull %7, ptr noundef %34), !range !21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store ptr %34, ptr %0, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %42, %38, %31, %3, %10, %15, %18, %23, %45
  %47 = phi i32 [ 0, %45 ], [ -10, %23 ], [ -10, %18 ], [ -10, %15 ], [ -10, %10 ], [ -10, %3 ], [ -15, %31 ], [ %40, %38 ], [ -15, %42 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @acquire_cid_system_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #5
  %6 = call i32 @dict_find_string(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #5
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %57, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %57

13:                                               ; preds = %8
  %14 = call i32 @dict_find_string(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #5
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %57, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 8, !tbaa !5
  %18 = call i32 @dict_find_string(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull %5) #5
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !tbaa !5
  %22 = load i16, ptr %21, align 8, !tbaa !10
  %23 = and i16 %22, 16160
  %24 = icmp eq i16 %23, 4640
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = icmp eq i8 %27, 18
  %29 = select i1 %28, i32 -7, i32 -20
  br label %57

30:                                               ; preds = %20
  %31 = load ptr, ptr %5, align 8, !tbaa !5
  %32 = load i16, ptr %31, align 8, !tbaa !10
  %33 = and i16 %32, 16160
  %34 = icmp eq i16 %33, 4640
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = icmp eq i8 %37, 18
  %39 = select i1 %38, i32 -7, i32 -20
  br label %57

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.ref_s, ptr %21, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  store ptr %42, ptr %0, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.tas_s, ptr %21, i64 0, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !20
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.gs_const_string_s, ptr %0, i64 0, i32 1
  store i32 %45, ptr %46, align 8, !tbaa !25
  %47 = getelementptr inbounds %struct.ref_s, ptr %31, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.tas_s, ptr %31, i64 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !20
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1, i32 1
  store i32 %52, ptr %53, align 8, !tbaa !27
  %54 = load ptr, ptr %3, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 2
  %56 = call i32 @dict_int_param(ptr noundef %54, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 2147483647, i32 noundef -1, ptr noundef nonnull %55) #5
  br label %57

57:                                               ; preds = %13, %16, %8, %2, %40, %35, %25
  %58 = phi i32 [ %56, %40 ], [ %39, %35 ], [ %29, %25 ], [ -15, %2 ], [ -20, %8 ], [ -15, %16 ], [ -15, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cid_system_info_compatible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.gs_const_string_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !25
  %6 = load ptr, ptr %1, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.gs_const_string_s, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !25
  %9 = tail call i32 @bytes_compare(ptr noundef %3, i32 noundef %5, ptr noundef %6, i32 noundef %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !27
  %16 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %1, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !27
  %20 = tail call i32 @bytes_compare(ptr noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %19) #5
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %11, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %11 ]
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfcmap_op_defs() local_unnamed_addr #3 {
  ret ptr @zfcmap_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zbuildcmap(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !9
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %89

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !9
  %15 = load i16, ptr %14, align 8, !tbaa !28
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %89, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = tail call ptr %21(ptr noundef %19, ptr noundef nonnull @st_cmap, ptr noundef nonnull @.str.7) #5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %27 = tail call i32 @dict_uid_param(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 0, ptr noundef %26) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %84, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 2
  %31 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %30) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %84, label %33

33:                                               ; preds = %29
  %34 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %2) #5
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %84, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %2, align 8, !tbaa !5
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !9
  %40 = icmp eq i8 %39, 4
  br i1 %40, label %41, label %84

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tas_s, ptr %37, i64 0, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !20
  %44 = icmp eq i16 %43, 2
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #5
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %84, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8, !tbaa !5
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !9
  %52 = icmp eq i8 %51, 14
  br i1 %52, label %53, label %84

53:                                               ; preds = %48
  %54 = call fastcc i32 @acquire_cid_system_info(ptr noundef nonnull %22, ptr noundef %0)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %2, align 8, !tbaa !5
  %58 = call i32 @array_get(ptr noundef %57, i64 noundef 0, ptr noundef nonnull %4) #5
  %59 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 3
  %60 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %61 = call fastcc i32 @acquire_code_map(ptr noundef nonnull %59, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull %22, ptr noundef %60)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %2, align 8, !tbaa !5
  %65 = call i32 @array_get(ptr noundef %64, i64 noundef 1, ptr noundef nonnull %5) #5
  %66 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 4
  %67 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %68 = call fastcc i32 @acquire_code_map(ptr noundef nonnull %66, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %22, ptr noundef %67)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 5
  store ptr @zfont_mark_glyph_name, ptr %71, align 8, !tbaa !31
  %72 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 6
  store ptr null, ptr %72, align 8, !tbaa !36
  %73 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store ptr %22, ptr %73, align 8, !tbaa !9
  %74 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !37
  %75 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !38
  %76 = or i32 %75, %74
  %77 = trunc i32 %76 to i16
  %78 = or i16 %77, 96
  %79 = add i16 %78, 2048
  store i16 %79, ptr %6, align 8, !tbaa !10
  %80 = call i32 @dict_put_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %6) #5
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %70
  %83 = call i32 @zreadonly(ptr noundef %0) #5
  br label %89

84:                                               ; preds = %33, %36, %41, %45, %48, %18, %70, %53, %56, %63, %24, %29
  %85 = phi i32 [ %27, %24 ], [ %31, %29 ], [ %54, %53 ], [ %61, %56 ], [ %68, %63 ], [ %80, %70 ], [ -25, %18 ], [ -15, %48 ], [ -15, %45 ], [ -15, %41 ], [ -15, %36 ], [ -15, %33 ]
  %86 = load ptr, ptr @gs_imemory, align 8, !tbaa !14
  %87 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %86, i64 0, i32 11
  %88 = load ptr, ptr %87, align 8, !tbaa !39
  call void %88(ptr noundef %86, ptr noundef %22, ptr noundef nonnull @.str.7) #5
  br label %89

89:                                               ; preds = %12, %84, %82, %10
  %90 = phi i32 [ %85, %84 ], [ %83, %82 ], [ %11, %10 ], [ -7, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %90
}

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

declare i32 @dict_uid_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @acquire_code_map(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ref_s, align 8
  %7 = icmp sgt i32 %2, 3
  br i1 %7, label %226, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, -17
  store i8 %11, ptr %9, align 2
  %12 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 5
  store ptr %3, ptr %12, align 8, !tbaa !40
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %71 [
    i8 14, label %15
    i8 13, label %20
    i8 11, label %27
    i8 18, label %37
  ]

15:                                               ; preds = %8
  %16 = and i8 %10, -20
  %17 = or disjoint i8 %16, 1
  store i8 %17, ptr %9, align 2
  %18 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 3
  store i8 0, ptr %18, align 1, !tbaa !9
  %19 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  store i64 2147483647, ptr %19, align 8, !tbaa !9
  br label %226

20:                                               ; preds = %8
  %21 = and i8 %10, -20
  %22 = or disjoint i8 %21, 1
  store i8 %22, ptr %9, align 2
  %23 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 3
  store i8 0, ptr %23, align 1, !tbaa !9
  %24 = tail call i32 @name_index(ptr noundef %1) #5
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  store i64 %25, ptr %26, align 8, !tbaa !9
  br label %226

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !9
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %226, label %31

31:                                               ; preds = %27
  %32 = and i8 %10, -20
  %33 = or disjoint i8 %32, 1
  store i8 %33, ptr %9, align 2
  %34 = load i64, ptr %28, align 8, !tbaa !9
  %35 = add i64 %34, 2147483648
  %36 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  store i64 %35, ptr %36, align 8, !tbaa !9
  br label %226

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !20
  %40 = add i16 %39, -5
  %41 = icmp ult i16 %40, -4
  br i1 %41, label %226, label %42

42:                                               ; preds = %37
  %43 = and i8 %10, -20
  store i8 %43, ptr %9, align 2
  %44 = load i16, ptr %38, align 2, !tbaa !20
  %45 = trunc i16 %44 to i8
  %46 = shl i8 %45, 2
  %47 = add i8 %46, 12
  %48 = and i8 %47, 12
  %49 = and i8 %10, -32
  %50 = or disjoint i8 %48, %49
  store i8 %50, ptr %9, align 2
  %51 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 3
  store i8 0, ptr %51, align 1, !tbaa !9
  %52 = load i16, ptr %38, align 2, !tbaa !20
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  %57 = zext i16 %52 to i64
  br label %58

58:                                               ; preds = %54, %58
  %59 = phi i64 [ 0, %54 ], [ %66, %58 ]
  %60 = phi i64 [ 0, %54 ], [ %65, %58 ]
  %61 = shl i64 %60, 8
  %62 = getelementptr inbounds i8, ptr %56, i64 %59
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = zext i8 %63 to i64
  %65 = or disjoint i64 %61, %64
  %66 = add nuw nsw i64 %59, 1
  %67 = icmp eq i64 %66, %57
  br i1 %67, label %68, label %58, !llvm.loop !41

68:                                               ; preds = %58, %42
  %69 = phi i64 [ 0, %42 ], [ %65, %58 ]
  %70 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  store i64 %69, ptr %70, align 8, !tbaa !9
  br label %226

71:                                               ; preds = %8
  %72 = load i16, ptr %1, align 8, !tbaa !10
  %73 = and i16 %72, 15360
  %74 = icmp eq i16 %73, 1024
  br i1 %74, label %75, label %226

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !20
  %78 = add i16 %77, -257
  %79 = icmp ult i16 %78, -256
  br i1 %79, label %226, label %80

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %81 = icmp eq i16 %77, 0
  br i1 %81, label %127, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds i8, ptr %6, i64 1
  %84 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %85 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %86 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %87 = zext nneg i16 %77 to i64
  br label %88

88:                                               ; preds = %82, %120
  %89 = phi i64 [ 0, %82 ], [ %125, %120 ]
  %90 = phi i32 [ 0, %82 ], [ %124, %120 ]
  %91 = phi i32 [ 14, %82 ], [ %97, %120 ]
  %92 = phi i32 [ undef, %82 ], [ %123, %120 ]
  %93 = phi i64 [ undef, %82 ], [ %122, %120 ]
  %94 = phi i64 [ undef, %82 ], [ %121, %120 ]
  %95 = call i32 @array_get(ptr noundef nonnull %1, i64 noundef %89, ptr noundef nonnull %6) #5
  %96 = load i8, ptr %83, align 1, !tbaa !9
  %97 = zext i8 %96 to i32
  switch i8 %96, label %115 [
    i8 14, label %120
    i8 11, label %98
  ]

98:                                               ; preds = %88
  %99 = icmp eq i32 %91, 11
  br i1 %99, label %100, label %112

100:                                              ; preds = %98
  %101 = icmp eq i32 %92, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  %103 = load i64, ptr %85, align 8, !tbaa !9
  %104 = sub nsw i64 %103, %94
  %105 = icmp ult i64 %104, 2
  br i1 %105, label %120, label %112

106:                                              ; preds = %100
  %107 = load i64, ptr %84, align 8, !tbaa !9
  %108 = sub nsw i64 %107, %94
  %109 = icmp eq i64 %108, %93
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = add i32 %92, 1
  br label %120

112:                                              ; preds = %98, %106, %102
  %113 = phi i64 [ %104, %102 ], [ %93, %106 ], [ %93, %98 ]
  %114 = load i64, ptr %86, align 8, !tbaa !9
  br label %115

115:                                              ; preds = %88, %112
  %116 = phi i64 [ %94, %88 ], [ %114, %112 ]
  %117 = phi i64 [ %93, %88 ], [ %113, %112 ]
  %118 = phi i32 [ %92, %88 ], [ 1, %112 ]
  %119 = add i32 %90, 1
  br label %120

120:                                              ; preds = %102, %88, %115, %110
  %121 = phi i64 [ %116, %115 ], [ %107, %110 ], [ %94, %88 ], [ %94, %102 ]
  %122 = phi i64 [ %117, %115 ], [ %93, %110 ], [ %93, %88 ], [ %104, %102 ]
  %123 = phi i32 [ %118, %115 ], [ %111, %110 ], [ %92, %88 ], [ 2, %102 ]
  %124 = phi i32 [ %119, %115 ], [ %90, %110 ], [ %90, %88 ], [ %90, %102 ]
  %125 = add nuw nsw i64 %89, 1
  %126 = icmp eq i64 %125, %87
  br i1 %126, label %127, label %88, !llvm.loop !43

127:                                              ; preds = %120, %80
  %128 = phi i64 [ undef, %80 ], [ %121, %120 ]
  %129 = phi i64 [ undef, %80 ], [ %122, %120 ]
  %130 = phi i32 [ 0, %80 ], [ %124, %120 ]
  %131 = call i32 @llvm.umax.i32(i32 %130, i32 1)
  %132 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  %134 = call ptr %133(ptr noundef %4, i32 noundef %131, ptr noundef nonnull @st_code_map_element, ptr noundef nonnull @.str.10) #5
  %135 = icmp eq ptr %134, null
  br i1 %135, label %224, label %136

136:                                              ; preds = %127
  %137 = load i8, ptr %9, align 2
  %138 = and i8 %137, -4
  %139 = or disjoint i8 %138, 2
  store i8 %139, ptr %9, align 2
  %140 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  store ptr %134, ptr %140, align 8, !tbaa !9
  %141 = getelementptr inbounds %struct.gx_code_map_s, ptr %134, i64 0, i32 1
  store i8 -1, ptr %141, align 1, !tbaa !45
  store i8 -1, ptr %134, align 8, !tbaa !46
  %142 = getelementptr inbounds %struct.gx_code_map_s, ptr %134, i64 0, i32 2
  %143 = load i8, ptr %142, align 2
  %144 = and i8 %143, -4
  %145 = or disjoint i8 %144, 1
  store i8 %145, ptr %142, align 2
  %146 = getelementptr inbounds %struct.gx_code_map_s, ptr %134, i64 0, i32 3
  store i8 0, ptr %146, align 1, !tbaa !9
  %147 = getelementptr inbounds %struct.gx_code_map_s, ptr %134, i64 0, i32 4
  store i64 2147483647, ptr %147, align 8, !tbaa !9
  %148 = icmp eq i16 %77, 0
  br i1 %148, label %220, label %149

149:                                              ; preds = %136
  %150 = getelementptr inbounds i8, ptr %6, i64 1
  %151 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %152 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %153 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %154 = add nuw nsw i32 %2, 1
  %155 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 3
  %156 = zext nneg i16 %77 to i64
  br label %157

157:                                              ; preds = %149, %217
  %158 = phi i64 [ 0, %149 ], [ %218, %217 ]
  %159 = phi i32 [ undef, %149 ], [ %216, %217 ]
  %160 = phi i32 [ 0, %149 ], [ %213, %217 ]
  %161 = phi i32 [ 14, %149 ], [ %168, %217 ]
  %162 = phi i64 [ %129, %149 ], [ %212, %217 ]
  %163 = phi i64 [ %128, %149 ], [ %211, %217 ]
  %164 = zext i32 %160 to i64
  %165 = getelementptr inbounds %struct.gx_code_map_s, ptr %134, i64 %164
  %166 = call i32 @array_get(ptr noundef nonnull %1, i64 noundef %158, ptr noundef nonnull %6) #5
  %167 = load i8, ptr %150, align 1, !tbaa !9
  %168 = zext i8 %167 to i32
  switch i8 %167, label %198 [
    i8 14, label %210
    i8 11, label %169
  ]

169:                                              ; preds = %157
  %170 = icmp eq i32 %161, 11
  br i1 %170, label %171, label %195

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.gx_code_map_s, ptr %165, i64 -1
  %173 = load i8, ptr %172, align 8, !tbaa !46
  %174 = getelementptr %struct.gx_code_map_s, ptr %165, i64 -1, i32 1
  %175 = load i8, ptr %174, align 1, !tbaa !45
  %176 = icmp eq i8 %173, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load i64, ptr %152, align 8, !tbaa !9
  %179 = sub nsw i64 %178, %163
  %180 = icmp ult i64 %179, 2
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = getelementptr %struct.gx_code_map_s, ptr %165, i64 -1, i32 2
  %183 = trunc i64 %179 to i8
  %184 = load i8, ptr %182, align 2
  %185 = shl nuw nsw i8 %183, 4
  %186 = and i8 %184, -17
  %187 = or disjoint i8 %186, %185
  store i8 %187, ptr %182, align 2
  %188 = add i8 %175, 1
  store i8 %188, ptr %174, align 1, !tbaa !45
  br label %210

189:                                              ; preds = %171
  %190 = load i64, ptr %151, align 8, !tbaa !9
  %191 = sub nsw i64 %190, %163
  %192 = icmp eq i64 %191, %162
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = add i8 %175, 1
  store i8 %194, ptr %174, align 1, !tbaa !45
  br label %210

195:                                              ; preds = %169, %189, %177
  %196 = phi i64 [ %179, %177 ], [ %162, %189 ], [ %162, %169 ]
  %197 = load i64, ptr %153, align 8, !tbaa !9
  br label %198

198:                                              ; preds = %157, %195
  %199 = phi i64 [ %163, %157 ], [ %197, %195 ]
  %200 = phi i64 [ %162, %157 ], [ %196, %195 ]
  %201 = call fastcc i32 @acquire_code_map(ptr noundef nonnull %165, ptr noundef nonnull %6, i32 noundef %154, ptr noundef %3, ptr noundef %4)
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = call i32 @llvm.usub.sat.i32(i32 %160, i32 1)
  %205 = trunc i32 %204 to i8
  store i8 %205, ptr %155, align 1, !tbaa !9
  call fastcc void @free_code_map(ptr noundef %0, ptr noundef %4)
  br label %210

206:                                              ; preds = %198
  %207 = trunc i64 %158 to i8
  %208 = getelementptr inbounds %struct.gx_code_map_s, ptr %134, i64 %164, i32 1
  store i8 %207, ptr %208, align 1, !tbaa !45
  store i8 %207, ptr %165, align 8, !tbaa !46
  %209 = add i32 %160, 1
  br label %210

210:                                              ; preds = %157, %206, %203, %193, %181
  %211 = phi i64 [ %199, %203 ], [ %199, %206 ], [ %163, %181 ], [ %190, %193 ], [ %163, %157 ]
  %212 = phi i64 [ %200, %203 ], [ %200, %206 ], [ %179, %181 ], [ %162, %193 ], [ %162, %157 ]
  %213 = phi i32 [ %160, %203 ], [ %209, %206 ], [ %160, %181 ], [ %160, %193 ], [ %160, %157 ]
  %214 = phi i32 [ %201, %203 ], [ 0, %206 ], [ %159, %181 ], [ %159, %193 ], [ %159, %157 ]
  %215 = phi i32 [ 1, %203 ], [ 0, %206 ], [ 13, %181 ], [ 13, %193 ], [ 13, %157 ]
  %216 = phi i32 [ %201, %203 ], [ %159, %206 ], [ %159, %181 ], [ %159, %193 ], [ %159, %157 ]
  switch i32 %215, label %224 [
    i32 0, label %217
    i32 13, label %217
  ]

217:                                              ; preds = %210, %210
  %218 = add nuw nsw i64 %158, 1
  %219 = icmp eq i64 %218, %156
  br i1 %219, label %220, label %157, !llvm.loop !47

220:                                              ; preds = %217, %136
  %221 = trunc i32 %131 to i8
  %222 = add i8 %221, -1
  %223 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 3
  store i8 %222, ptr %223, align 1, !tbaa !9
  br label %224

224:                                              ; preds = %210, %127, %220
  %225 = phi i32 [ 0, %220 ], [ -25, %127 ], [ %214, %210 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %226

226:                                              ; preds = %224, %27, %37, %75, %71, %5, %68, %31, %20, %15
  %227 = phi i32 [ 0, %68 ], [ 0, %31 ], [ 0, %20 ], [ 0, %15 ], [ -13, %5 ], [ %225, %224 ], [ -15, %71 ], [ -15, %75 ], [ -15, %37 ], [ -15, %27 ]
  ret i32 %227
}

declare i32 @zfont_mark_glyph_name(i64 noundef, ptr noundef) #2

declare i32 @dict_put_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zreadonly(ptr noundef) local_unnamed_addr #2

declare i32 @name_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_code_map(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 3
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  %11 = zext i8 %9 to i64
  br label %12

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %11, %7 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.gx_code_map_s, ptr %14, i64 %13
  tail call fastcc void @free_code_map(ptr noundef %15, ptr noundef %1)
  %16 = add nsw i64 %13, -1
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %12, label %18, !llvm.loop !48

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  tail call void %20(ptr noundef %1, ptr noundef %22, ptr noundef nonnull @.str.11) #5
  br label %23

23:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !13, i64 0}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !16, i64 40, !16, i64 44, !6, i64 48, !16, i64 56, !16, i64 60}
!16 = !{!"int", !7, i64 0}
!17 = !{!18, !6, i64 80}
!18 = !{!"gs_memory_s", !19, i64 0}
!19 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!20 = !{!11, !13, i64 2}
!21 = !{i32 0, i32 2}
!22 = !{!23, !6, i64 0}
!23 = !{!"gs_cid_system_info_s", !24, i64 0, !24, i64 16, !16, i64 32}
!24 = !{!"gs_const_string_s", !6, i64 0, !16, i64 8}
!25 = !{!23, !16, i64 8}
!26 = !{!23, !6, i64 16}
!27 = !{!23, !16, i64 24}
!28 = !{!29, !13, i64 0}
!29 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!30 = !{!18, !6, i64 16}
!31 = !{!32, !6, i64 112}
!32 = !{!"gs_cmap_s", !23, i64 0, !33, i64 40, !16, i64 56, !35, i64 64, !35, i64 88, !6, i64 112, !6, i64 120}
!33 = !{!"gs_uid_s", !34, i64 0, !6, i64 8}
!34 = !{!"long", !7, i64 0}
!35 = !{!"gx_code_map_s", !7, i64 0, !7, i64 1, !16, i64 2, !16, i64 2, !16, i64 2, !7, i64 3, !7, i64 8, !6, i64 16}
!36 = !{!32, !6, i64 120}
!37 = !{!15, !16, i64 40}
!38 = !{!15, !16, i64 60}
!39 = !{!18, !6, i64 88}
!40 = !{!35, !6, i64 16}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !42}
!44 = !{!18, !6, i64 48}
!45 = !{!35, !7, i64 1}
!46 = !{!35, !7, i64 0}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !42}
