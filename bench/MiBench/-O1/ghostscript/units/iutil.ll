; ModuleID = 'iutil.c'
source_filename = "iutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_array_table_s = type { %struct.ref_s, ptr, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@op_array_table_local = external local_unnamed_addr global %struct.op_array_table_s, align 8
@op_array_table_global = external local_unnamed_addr global %struct.op_array_table_s, align 8
@op_def_count = external local_unnamed_addr global i32, align 4
@op_def_table = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"@0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.9g\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"--nostringval--\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"write_matrix\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @refcpy_to_old(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %8
  %10 = load i16, ptr %0, align 8, !tbaa !8
  %11 = and i16 %10, 12
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %23, label %17

13:                                               ; preds = %17
  %14 = add i32 %18, -1
  %15 = getelementptr inbounds %struct.ref_s, ptr %19, i64 1
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %23, label %17, !llvm.loop !12

17:                                               ; preds = %5, %13
  %18 = phi i32 [ %14, %13 ], [ %3, %5 ]
  %19 = phi ptr [ %15, %13 ], [ %2, %5 ]
  %20 = load i16, ptr %19, align 8, !tbaa !8
  %21 = and i16 %20, 12
  %22 = icmp ugt i16 %21, %11
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %17, %5
  %24 = phi i1 [ false, %5 ], [ %22, %17 ], [ %22, %13 ]
  %25 = phi i32 [ 0, %5 ], [ 0, %13 ], [ -7, %17 ]
  br i1 %24, label %78, label %26

26:                                               ; preds = %23
  %27 = icmp ugt ptr %9, %2
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = zext i32 %3 to i64
  %30 = getelementptr inbounds %struct.ref_s, ptr %2, i64 %29
  %31 = icmp ugt ptr %30, %9
  br i1 %31, label %54, label %32

32:                                               ; preds = %28, %26
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %78, label %34

34:                                               ; preds = %32, %46
  %35 = phi i32 [ %38, %46 ], [ %3, %32 ]
  %36 = phi ptr [ %51, %46 ], [ %9, %32 ]
  %37 = phi ptr [ %52, %46 ], [ %2, %32 ]
  %38 = add i32 %35, -1
  %39 = load i16, ptr %36, align 8, !tbaa !8
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !14
  %42 = and i32 %41, %40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %36, ptr noundef %4) #14
  br label %46

46:                                               ; preds = %34, %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !18
  %47 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !25
  %48 = load i16, ptr %36, align 8, !tbaa !8
  %49 = trunc i32 %47 to i16
  %50 = or i16 %48, %49
  store i16 %50, ptr %36, align 8, !tbaa !8
  %51 = getelementptr inbounds %struct.ref_s, ptr %36, i64 1
  %52 = getelementptr inbounds %struct.ref_s, ptr %37, i64 1
  %53 = icmp eq i32 %38, 0
  br i1 %53, label %78, label %34, !llvm.loop !26

54:                                               ; preds = %28
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.ref_s, ptr %9, i64 %29
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i32 [ %62, %72 ], [ %3, %56 ]
  %60 = phi ptr [ %64, %72 ], [ %57, %56 ]
  %61 = phi ptr [ %63, %72 ], [ %30, %56 ]
  %62 = add i32 %59, -1
  %63 = getelementptr inbounds %struct.ref_s, ptr %61, i64 -1
  %64 = getelementptr inbounds %struct.ref_s, ptr %60, i64 -1
  %65 = load i16, ptr %64, align 8, !tbaa !8
  %66 = zext i16 %65 to i32
  %67 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !14
  %68 = and i32 %67, %66
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %64, ptr noundef %4) #14
  br label %72

72:                                               ; preds = %58, %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false), !tbaa.struct !18
  %73 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !25
  %74 = load i16, ptr %64, align 8, !tbaa !8
  %75 = trunc i32 %73 to i16
  %76 = or i16 %74, %75
  store i16 %76, ptr %64, align 8, !tbaa !8
  %77 = icmp eq i32 %62, 0
  br i1 %77, label %78, label %58, !llvm.loop !27

78:                                               ; preds = %46, %72, %32, %54, %23
  %79 = phi i32 [ %25, %23 ], [ 0, %54 ], [ 0, %32 ], [ 0, %72 ], [ 0, %46 ]
  ret i32 %79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @refs_check_space(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %16, label %9

5:                                                ; preds = %9
  %6 = add i32 %10, -1
  %7 = getelementptr inbounds %struct.ref_s, ptr %11, i64 1
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %16, label %9, !llvm.loop !12

9:                                                ; preds = %3, %5
  %10 = phi i32 [ %6, %5 ], [ %1, %3 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %3 ]
  %12 = load i16, ptr %11, align 8, !tbaa !8
  %13 = and i16 %12, 12
  %14 = zext nneg i16 %13 to i32
  %15 = icmp ugt i32 %14, %2
  br i1 %15, label %16, label %5

16:                                               ; preds = %9, %5, %3
  %17 = phi i32 [ 0, %3 ], [ -7, %9 ], [ 0, %5 ]
  ret i32 %17
}

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @refcpy_to_new(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %15, %5 ], [ %1, %3 ]
  %8 = phi ptr [ %14, %5 ], [ %0, %3 ]
  %9 = add i32 %6, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !18
  %10 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !25
  %11 = load i16, ptr %8, align 8, !tbaa !8
  %12 = trunc i32 %10 to i16
  %13 = or i16 %11, %12
  store i16 %13, ptr %8, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  %15 = getelementptr inbounds %struct.ref_s, ptr %7, i64 1
  %16 = icmp eq i32 %9, 0
  br i1 %16, label %17, label %5, !llvm.loop !28

17:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @refset_null(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !25
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, 3584
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %1, %4 ], [ %11, %8 ]
  %10 = phi ptr [ %0, %4 ], [ %12, %8 ]
  %11 = add i32 %9, -1
  store i16 %7, ptr %10, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.ref_s, ptr %10, i64 1
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %8, !llvm.loop !29

14:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @obj_eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %5, %8
  br i1 %9, label %54, label %10

10:                                               ; preds = %2
  switch i8 %5, label %41 [
    i8 11, label %11
    i8 16, label %20
    i8 13, label %29
    i8 17, label %31
    i8 18, label %39
  ]

11:                                               ; preds = %10
  %12 = icmp eq i8 %8, 16
  br i1 %12, label %13, label %229

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !5
  %18 = sitofp i64 %17 to float
  %19 = fcmp oeq float %15, %18
  br label %229

20:                                               ; preds = %10
  %21 = icmp eq i8 %8, 11
  br i1 %21, label %22, label %229

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !5
  %25 = sitofp i64 %24 to float
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %27 = load float, ptr %26, align 8, !tbaa !5
  %28 = fcmp oeq float %27, %25
  br label %229

29:                                               ; preds = %10
  %30 = icmp eq i8 %8, 18
  br i1 %30, label %50, label %229

31:                                               ; preds = %10
  %32 = icmp eq i8 %8, 17
  br i1 %32, label %33, label %229

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !5
  %38 = icmp eq i64 %35, %37
  br label %229

39:                                               ; preds = %10
  %40 = icmp eq i8 %8, 13
  br i1 %40, label %50, label %229

41:                                               ; preds = %10
  %42 = load i16, ptr %0, align 8, !tbaa !8
  %43 = icmp ugt i16 %42, 5375
  %44 = select i1 %43, i32 15, i32 %6
  %45 = load i16, ptr %1, align 8, !tbaa !8
  %46 = icmp ugt i16 %45, 5375
  %47 = zext i8 %8 to i32
  %48 = select i1 %46, i32 15, i32 %47
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %54, label %229

50:                                               ; preds = %39, %29
  %51 = phi ptr [ %0, %29 ], [ %1, %39 ]
  %52 = phi ptr [ %3, %29 ], [ %0, %39 ]
  %53 = phi ptr [ %1, %29 ], [ %3, %39 ]
  call void @name_string_ref(ptr noundef %51, ptr noundef nonnull %3) #14
  br label %54

54:                                               ; preds = %50, %41, %2
  %55 = phi ptr [ %0, %41 ], [ %0, %2 ], [ %52, %50 ]
  %56 = phi ptr [ %1, %41 ], [ %1, %2 ], [ %53, %50 ]
  %57 = load i16, ptr %55, align 8, !tbaa !8
  %58 = icmp ugt i16 %57, 5375
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %55, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !5
  br label %62

62:                                               ; preds = %54, %59
  %63 = phi i8 [ %61, %59 ], [ 15, %54 ]
  switch i8 %63, label %228 [
    i8 4, label %64
    i8 5, label %76
    i8 6, label %76
    i8 1, label %88
    i8 2, label %94
    i8 3, label %100
    i8 11, label %112
    i8 12, label %229
    i8 14, label %229
    i8 13, label %118
    i8 20, label %124
    i8 15, label %124
    i8 16, label %180
    i8 18, label %186
    i8 19, label %199
    i8 8, label %205
    i8 9, label %205
    i8 10, label %211
  ]

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %70, label %229

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tas_s, ptr %55, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !30
  %73 = getelementptr inbounds %struct.tas_s, ptr %56, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !30
  %75 = icmp eq i16 %72, %74
  br label %229

76:                                               ; preds = %62, %62
  %77 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %82, label %229

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tas_s, ptr %55, i64 0, i32 1
  %84 = load i16, ptr %83, align 2, !tbaa !30
  %85 = getelementptr inbounds %struct.tas_s, ptr %56, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !30
  %87 = icmp eq i16 %84, %86
  br label %229

88:                                               ; preds = %62
  %89 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %90 = load i16, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %92 = load i16, ptr %91, align 8, !tbaa !5
  %93 = icmp eq i16 %90, %92
  br label %229

94:                                               ; preds = %62
  %95 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %96, %98
  br label %229

100:                                              ; preds = %62
  %101 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = icmp eq ptr %102, %104
  br i1 %105, label %106, label %229

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.tas_s, ptr %55, i64 0, i32 1
  %108 = load i16, ptr %107, align 2, !tbaa !30
  %109 = getelementptr inbounds %struct.tas_s, ptr %56, i64 0, i32 1
  %110 = load i16, ptr %109, align 2, !tbaa !30
  %111 = icmp eq i16 %108, %110
  br label %229

112:                                              ; preds = %62
  %113 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !5
  %117 = icmp eq i64 %114, %116
  br label %229

118:                                              ; preds = %62
  %119 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  %121 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %120, %122
  br label %229

124:                                              ; preds = %62, %62
  %125 = getelementptr inbounds %struct.tas_s, ptr %55, i64 0, i32 1
  %126 = load i16, ptr %125, align 2, !tbaa !30
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %132 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %131, i64 %133
  br label %135

135:                                              ; preds = %139, %128
  %136 = phi ptr [ %131, %128 ], [ %137, %139 ]
  %137 = getelementptr inbounds ptr, ptr %136, i64 1
  %138 = icmp ult ptr %137, %134
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load ptr, ptr %137, align 8, !tbaa !24
  %141 = getelementptr inbounds %struct.op_def, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !32
  %143 = icmp eq ptr %142, %130
  br i1 %143, label %144, label %135, !llvm.loop !34

144:                                              ; preds = %139
  %145 = ptrtoint ptr %137 to i64
  %146 = ptrtoint ptr %131 to i64
  %147 = sub i64 %145, %146
  %148 = lshr exact i64 %147, 3
  %149 = trunc i64 %148 to i16
  br label %150

150:                                              ; preds = %135, %144, %124
  %151 = phi i16 [ %126, %124 ], [ %149, %144 ], [ 0, %135 ]
  %152 = getelementptr inbounds %struct.tas_s, ptr %56, i64 0, i32 1
  %153 = load i16, ptr %152, align 2, !tbaa !30
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  %158 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %159 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %158, i64 %160
  br label %162

162:                                              ; preds = %166, %155
  %163 = phi ptr [ %158, %155 ], [ %164, %166 ]
  %164 = getelementptr inbounds ptr, ptr %163, i64 1
  %165 = icmp ult ptr %164, %161
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load ptr, ptr %164, align 8, !tbaa !24
  %168 = getelementptr inbounds %struct.op_def, ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !32
  %170 = icmp eq ptr %169, %157
  br i1 %170, label %171, label %162, !llvm.loop !34

171:                                              ; preds = %166
  %172 = ptrtoint ptr %164 to i64
  %173 = ptrtoint ptr %158 to i64
  %174 = sub i64 %172, %173
  %175 = lshr exact i64 %174, 3
  %176 = trunc i64 %175 to i16
  br label %177

177:                                              ; preds = %162, %171, %150
  %178 = phi i16 [ %153, %150 ], [ %176, %171 ], [ 0, %162 ]
  %179 = icmp eq i16 %151, %178
  br label %229

180:                                              ; preds = %62
  %181 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %182 = load float, ptr %181, align 8, !tbaa !5
  %183 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %184 = load float, ptr %183, align 8, !tbaa !5
  %185 = fcmp oeq float %182, %184
  br label %229

186:                                              ; preds = %62
  %187 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  %189 = getelementptr inbounds %struct.tas_s, ptr %55, i64 0, i32 1
  %190 = load i16, ptr %189, align 2, !tbaa !30
  %191 = zext i16 %190 to i32
  %192 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = getelementptr inbounds %struct.tas_s, ptr %56, i64 0, i32 1
  %195 = load i16, ptr %194, align 2, !tbaa !30
  %196 = zext i16 %195 to i32
  %197 = call i32 @bytes_compare(ptr noundef %188, i32 noundef %191, ptr noundef %193, i32 noundef %196) #14
  %198 = icmp eq i32 %197, 0
  br label %229

199:                                              ; preds = %62
  %200 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  %204 = icmp eq ptr %201, %203
  br label %229

205:                                              ; preds = %62, %62
  %206 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !5
  %208 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !5
  %210 = icmp eq ptr %207, %209
  br label %229

211:                                              ; preds = %62
  %212 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !5
  %214 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !5
  br label %216

216:                                              ; preds = %216, %211
  %217 = phi ptr [ %213, %211 ], [ %219, %216 ]
  %218 = getelementptr inbounds %struct.gs_font_s, ptr %217, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !35
  %220 = icmp eq ptr %219, %217
  br i1 %220, label %221, label %216, !llvm.loop !41

221:                                              ; preds = %216, %221
  %222 = phi ptr [ %224, %221 ], [ %215, %216 ]
  %223 = getelementptr inbounds %struct.gs_font_s, ptr %222, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !35
  %225 = icmp eq ptr %224, %222
  br i1 %225, label %226, label %221, !llvm.loop !42

226:                                              ; preds = %221
  %227 = icmp eq ptr %217, %222
  br label %229

228:                                              ; preds = %62
  br label %229

229:                                              ; preds = %62, %62, %100, %106, %76, %82, %64, %70, %41, %39, %31, %33, %29, %20, %22, %11, %13, %228, %226, %205, %199, %186, %180, %177, %118, %112, %94, %88
  %230 = phi i1 [ false, %228 ], [ %227, %226 ], [ %210, %205 ], [ %204, %199 ], [ %198, %186 ], [ %185, %180 ], [ %179, %177 ], [ %123, %118 ], [ %117, %112 ], [ %99, %94 ], [ %93, %88 ], [ false, %11 ], [ %19, %13 ], [ false, %20 ], [ %28, %22 ], [ false, %29 ], [ false, %31 ], [ %38, %33 ], [ false, %39 ], [ false, %41 ], [ false, %64 ], [ %75, %70 ], [ false, %76 ], [ %87, %82 ], [ false, %100 ], [ %111, %106 ], [ true, %62 ], [ true, %62 ]
  %231 = zext i1 %230 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %231
}

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @op_find_index(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %5 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  br label %8

8:                                                ; preds = %12, %1
  %9 = phi ptr [ %4, %1 ], [ %10, %12 ]
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = icmp ult ptr %10, %7
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.op_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !32
  %16 = icmp eq ptr %15, %3
  br i1 %16, label %17, label %8, !llvm.loop !34

17:                                               ; preds = %12
  %18 = ptrtoint ptr %10 to i64
  %19 = ptrtoint ptr %4 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 3
  %22 = trunc i64 %21 to i16
  br label %23

23:                                               ; preds = %8, %17
  %24 = phi i16 [ %22, %17 ], [ 0, %8 ]
  ret i16 %24
}

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @obj_ident_eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = getelementptr inbounds i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = icmp eq i8 %4, 18
  br i1 %9, label %10, label %23

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !30
  %19 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !30
  %21 = icmp eq i16 %18, %20
  %22 = zext i1 %21 to i32
  br label %25

23:                                               ; preds = %8
  %24 = tail call i32 @obj_eq(ptr noundef %0, ptr noundef %1), !range !43
  br label %25

25:                                               ; preds = %10, %16, %2, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %2 ], [ 0, %10 ], [ %22, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @obj_cvp(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [30 x i8], align 16
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca float, align 4
  %10 = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = load i16, ptr %0, align 8, !tbaa !8
  %14 = icmp ugt i16 %13, 5375
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %0, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !5
  br label %18

18:                                               ; preds = %12, %15
  %19 = phi i8 [ %17, %15 ], [ 15, %12 ]
  switch i8 %19, label %180 [
    i8 1, label %20
    i8 11, label %20
    i8 16, label %20
  ]

20:                                               ; preds = %18, %18, %18, %6
  %21 = load i16, ptr %0, align 8, !tbaa !8
  %22 = icmp ugt i16 %21, 5375
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !5
  br label %26

26:                                               ; preds = %20, %23
  %27 = phi i8 [ %25, %23 ], [ 15, %20 ]
  switch i8 %27, label %170 [
    i8 1, label %28
    i8 11, label %33
    i8 13, label %37
    i8 20, label %46
    i8 15, label %87
    i8 16, label %135
    i8 18, label %159
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %30 = load i16, ptr %29, align 8, !tbaa !5
  %31 = icmp eq i16 %30, 0
  %32 = select i1 %31, ptr @.str.1, ptr @.str
  br label %170

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !5
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %35) #14
  br label %170

37:                                               ; preds = %26, %72
  %38 = phi ptr [ %8, %72 ], [ %0, %26 ]
  call void @name_string_ref(ptr noundef nonnull %38, ptr noundef nonnull %8) #14
  %39 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.tas_s, ptr %8, i64 0, i32 1
  %42 = load i16, ptr %41, align 2, !tbaa !30
  %43 = zext i16 %42 to i32
  %44 = icmp eq ptr %4, null
  br i1 %44, label %174, label %45

45:                                               ; preds = %37
  store ptr %40, ptr %4, align 8, !tbaa !24
  br label %174

46:                                               ; preds = %26
  %47 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !30
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %54 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  br label %57

57:                                               ; preds = %61, %50
  %58 = phi ptr [ %53, %50 ], [ %59, %61 ]
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = icmp ult ptr %59, %56
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 8, !tbaa !24
  %63 = getelementptr inbounds %struct.op_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !32
  %65 = icmp eq ptr %64, %52
  br i1 %65, label %66, label %57, !llvm.loop !34

66:                                               ; preds = %61
  %67 = ptrtoint ptr %59 to i64
  %68 = ptrtoint ptr %53 to i64
  %69 = sub i64 %67, %68
  %70 = lshr exact i64 %69, 3
  %71 = trunc i64 %70 to i16
  br label %72

72:                                               ; preds = %57, %66, %46
  %73 = phi i16 [ %48, %46 ], [ %71, %66 ], [ 0, %57 ]
  %74 = zext i16 %73 to i32
  %75 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 3), align 4
  %76 = icmp ugt i32 %75, %74
  %77 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 1), align 8
  %78 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 1), align 8
  %79 = select i1 %76, ptr %77, ptr %78
  %80 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 3), align 4
  %81 = select i1 %76, i32 %80, i32 %75
  %82 = sub i32 %74, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i16, ptr %79, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !19
  %86 = zext i16 %85 to i32
  call void @name_index_ref(i32 noundef %86, ptr noundef nonnull %8) #14
  br label %37

87:                                               ; preds = %26
  %88 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %89 = load i16, ptr %88, align 2, !tbaa !30
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %95 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  br label %98

98:                                               ; preds = %102, %91
  %99 = phi ptr [ %94, %91 ], [ %100, %102 ]
  %100 = getelementptr inbounds ptr, ptr %99, i64 1
  %101 = icmp ult ptr %100, %97
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load ptr, ptr %100, align 8, !tbaa !24
  %104 = getelementptr inbounds %struct.op_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !32
  %106 = icmp eq ptr %105, %93
  br i1 %106, label %107, label %98, !llvm.loop !34

107:                                              ; preds = %102
  %108 = ptrtoint ptr %100 to i64
  %109 = ptrtoint ptr %94 to i64
  %110 = sub i64 %108, %109
  %111 = lshr exact i64 %110, 3
  %112 = trunc i64 %111 to i16
  br label %113

113:                                              ; preds = %98, %107, %87
  %114 = phi i16 [ %89, %87 ], [ %112, %107 ], [ 0, %98 ]
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = zext i16 %114 to i32
  %118 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %119 = icmp ugt i32 %118, %117
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %122 = zext i16 %114 to i64
  %123 = getelementptr inbounds ptr, ptr %121, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !24
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  br label %127

127:                                              ; preds = %113, %116, %120
  %128 = phi i1 [ false, %120 ], [ true, %116 ], [ true, %113 ]
  %129 = phi ptr [ %126, %120 ], [ %7, %116 ], [ %7, %113 ]
  br i1 %128, label %130, label %170

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = ptrtoint ptr %132 to i64
  %134 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %133) #14
  br label %170

135:                                              ; preds = %26
  %136 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %137 = load float, ptr %136, align 8, !tbaa !5
  %138 = fpext float %137 to double
  %139 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %138) #14
  br i1 %11, label %147, label %140

140:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  %141 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %7, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #14
  %142 = load float, ptr %9, align 4, !tbaa !22
  %143 = fcmp une float %142, %137
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %138) #14
  br label %146

146:                                              ; preds = %144, %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %147

147:                                              ; preds = %146, %135
  %148 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 46) #15
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %170

150:                                              ; preds = %147
  %151 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 101) #15
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = call i64 @strlen(ptr nonnull dereferenceable(1) %7)
  %155 = getelementptr inbounds i8, ptr %7, i64 %154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %155, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  br label %170

156:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %10) #14
  %157 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %151) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %151, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false) #14
  %158 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %10) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %10) #14
  br label %170

159:                                              ; preds = %26
  %160 = and i16 %21, 32
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %180, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  %165 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %166 = load i16, ptr %165, align 2, !tbaa !30
  %167 = zext i16 %166 to i32
  %168 = icmp eq ptr %4, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %162
  store ptr %164, ptr %4, align 8, !tbaa !24
  br label %174

170:                                              ; preds = %26, %153, %156, %127, %147, %130, %33, %28
  %171 = phi ptr [ %7, %147 ], [ %129, %127 ], [ %129, %130 ], [ %7, %33 ], [ %32, %28 ], [ %7, %156 ], [ %7, %153 ], [ @.str.8, %26 ]
  %172 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %171) #15
  %173 = trunc i64 %172 to i32
  br label %174

174:                                              ; preds = %162, %169, %37, %45, %170
  %175 = phi i32 [ %173, %170 ], [ %167, %169 ], [ %167, %162 ], [ %43, %45 ], [ %43, %37 ]
  %176 = phi ptr [ %171, %170 ], [ %164, %169 ], [ %164, %162 ], [ %40, %45 ], [ %40, %37 ]
  store i32 %175, ptr %3, align 4, !tbaa !31
  %177 = icmp ugt i32 %175, %2
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = zext i32 %175 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %176, i64 %179, i1 false)
  br label %180

180:                                              ; preds = %174, %159, %18, %178
  %181 = phi i32 [ 0, %178 ], [ -20, %18 ], [ -7, %159 ], [ -15, %174 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %7) #14
  ret i32 %181
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @op_index_ref(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %7 = zext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.op_def, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !5
  br label %32

13:                                               ; preds = %2
  %14 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 3), align 4
  %15 = icmp ugt i32 %14, %0
  %16 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 0, i32 1), align 8
  %17 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 0, i32 1), align 8
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = zext i32 %0 to i64
  %20 = getelementptr inbounds %struct.ref_s, ptr %18, i64 %19
  %21 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 3), align 4
  %22 = select i1 %15, i32 %21, i32 %14
  %23 = zext i32 %22 to i64
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds %struct.ref_s, ptr %20, i64 %24
  %26 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !5
  %27 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 4), align 8
  %28 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 4), align 8
  %29 = select i1 %15, i32 %27, i32 %28
  %30 = trunc i32 %29 to i16
  %31 = add i16 %30, 5120
  br label %32

32:                                               ; preds = %13, %5
  %33 = phi i16 [ %31, %13 ], [ 3968, %5 ]
  store i16 %33, ptr %1, align 8, !tbaa !8
  %34 = trunc i32 %0 to i16
  %35 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %34, ptr %35, align 2, !tbaa !30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @array_get(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !30
  %6 = zext i16 %5 to i64
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  switch i8 %10, label %37 [
    i8 4, label %11
    i8 5, label %16
    i8 6, label %32
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = and i64 %1, 4294967295
  %15 = getelementptr inbounds %struct.ref_s, ptr %13, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !18
  br label %37

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = trunc i64 %1 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16, %21
  %22 = phi i32 [ %24, %21 ], [ %19, %16 ]
  %23 = phi ptr [ %28, %21 ], [ %18, %16 ]
  %24 = add i32 %22, -1
  %25 = load i16, ptr %23, align 2, !tbaa !19
  %26 = icmp ugt i16 %25, 16383
  %27 = select i1 %26, i64 1, i64 8
  %28 = getelementptr inbounds i16, ptr %23, i64 %27
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %30, label %21, !llvm.loop !45

30:                                               ; preds = %21, %16
  %31 = phi ptr [ %18, %16 ], [ %28, %21 ]
  tail call void @packed_get(ptr noundef %31, ptr noundef %2)
  br label %37

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = and i64 %1, 4294967295
  %36 = getelementptr inbounds i16, ptr %34, i64 %35
  tail call void @packed_get(ptr noundef %36, ptr noundef %2)
  br label %37

37:                                               ; preds = %8, %3, %32, %30, %11
  %38 = phi i32 [ 0, %32 ], [ 0, %30 ], [ 0, %11 ], [ -15, %3 ], [ -20, %8 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local void @packed_get(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 2, !tbaa !19
  %4 = zext i16 %3 to i32
  %5 = and i32 %4, 4095
  %6 = lshr i32 %4, 13
  switch i32 %6, label %7 [
    i32 2, label %8
    i32 3, label %42
    i32 6, label %46
    i32 7, label %47
    i32 0, label %50
    i32 1, label %50
  ]

7:                                                ; preds = %2
  store i16 3584, ptr %1, align 8, !tbaa !8
  br label %51

8:                                                ; preds = %2
  %9 = load i32, ptr @op_def_count, align 4, !tbaa !31
  %10 = icmp ugt i32 %9, %5
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load ptr, ptr @op_def_table, align 8, !tbaa !24
  %13 = zext nneg i32 %5 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.op_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !5
  store i16 3968, ptr %1, align 8, !tbaa !8
  %19 = trunc i32 %5 to i16
  %20 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %19, ptr %20, align 2, !tbaa !30
  br label %51

21:                                               ; preds = %8
  %22 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 3), align 4
  %23 = icmp ugt i32 %22, %5
  %24 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 0, i32 1), align 8
  %25 = load ptr, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 0, i32 1), align 8
  %26 = select i1 %23, ptr %24, ptr %25
  %27 = zext nneg i32 %5 to i64
  %28 = getelementptr inbounds %struct.ref_s, ptr %26, i64 %27
  %29 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 3), align 4
  %30 = select i1 %23, i32 %29, i32 %22
  %31 = zext i32 %30 to i64
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds %struct.ref_s, ptr %28, i64 %32
  %34 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !5
  %35 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_global, i64 0, i32 4), align 8
  %36 = load i32, ptr getelementptr inbounds (%struct.op_array_table_s, ptr @op_array_table_local, i64 0, i32 4), align 8
  %37 = select i1 %23, i32 %35, i32 %36
  %38 = trunc i32 %37 to i16
  %39 = add i16 %38, 5120
  store i16 %39, ptr %1, align 8, !tbaa !8
  %40 = trunc i32 %5 to i16
  %41 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %40, ptr %41, align 2, !tbaa !30
  br label %51

42:                                               ; preds = %2
  %43 = add nsw i32 %5, -2048
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store i64 %44, ptr %45, align 8, !tbaa !5
  store i16 2816, ptr %1, align 8, !tbaa !8
  br label %51

46:                                               ; preds = %2
  tail call void @name_index_ref(i32 noundef %5, ptr noundef %1) #14
  br label %51

47:                                               ; preds = %2
  tail call void @name_index_ref(i32 noundef %5, ptr noundef %1) #14
  %48 = load i16, ptr %1, align 8, !tbaa !8
  %49 = or i16 %48, 128
  store i16 %49, ptr %1, align 8, !tbaa !8
  br label %51

50:                                               ; preds = %2, %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  br label %51

51:                                               ; preds = %21, %11, %50, %47, %46, %42, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @string_to_ref(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @gs_alloc_string_ref(ptr noundef %2, ptr noundef %1, i32 noundef 112, i32 noundef %6, ptr noundef %3) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = and i64 %5, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %0, i64 %12, i1 false)
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi i32 [ 0, %9 ], [ %7, %4 ]
  ret i32 %14
}

declare i32 @gs_alloc_string_ref(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ref_to_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !30
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = add nuw nsw i32 %6, 1
  %10 = tail call ptr %8(ptr noundef %1, i32 noundef %9, ptr noundef %2) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = zext i16 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr align 1 %14, i64 %15, i1 false)
  %16 = getelementptr inbounds i8, ptr %10, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !5
  br label %17

17:                                               ; preds = %3, %12
  %18 = phi ptr [ %10, %12 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @num_params(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds float, ptr %2, i64 %6
  br label %8

8:                                                ; preds = %5, %27
  %9 = phi i32 [ %13, %27 ], [ %1, %5 ]
  %10 = phi i32 [ %29, %27 ], [ 0, %5 ]
  %11 = phi ptr [ %28, %27 ], [ %7, %5 ]
  %12 = phi ptr [ %30, %27 ], [ %0, %5 ]
  %13 = add nsw i32 %9, -1
  %14 = shl i32 %10, 1
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  switch i8 %16, label %35 [
    i8 16, label %17
    i8 11, label %21
    i8 0, label %36
  ]

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %19 = load float, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds float, ptr %11, i64 -1
  store float %19, ptr %20, align 4, !tbaa !22
  br label %27

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !5
  %24 = sitofp i64 %23 to float
  %25 = getelementptr inbounds float, ptr %11, i64 -1
  store float %24, ptr %25, align 4, !tbaa !22
  %26 = or disjoint i32 %14, 1
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi ptr [ %25, %21 ], [ %20, %17 ]
  %29 = phi i32 [ %26, %21 ], [ %14, %17 ]
  %30 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -1
  %31 = icmp sgt i32 %9, 1
  br i1 %31, label %8, label %32, !llvm.loop !49

32:                                               ; preds = %27, %3
  %33 = phi i32 [ 0, %3 ], [ %29, %27 ]
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  br label %36

35:                                               ; preds = %8
  br label %36

36:                                               ; preds = %8, %35, %32
  %37 = phi i32 [ %34, %32 ], [ -20, %35 ], [ -17, %8 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @real_param(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %4, label %14 [
    i8 11, label %5
    i8 16, label %9
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !5
  %8 = sitofp i64 %7 to float
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load float, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi float [ %11, %9 ], [ %8, %5 ]
  store float %13, ptr %1, align 4, !tbaa !22
  br label %14

14:                                               ; preds = %2, %12
  %15 = phi i32 [ 0, %12 ], [ -20, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @int_param(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 11
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %5, 0
  %9 = select i1 %8, i32 -17, i32 -20
  br label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = sext i32 %1 to i64
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %12 to i32
  store i32 %16, ptr %2, align 4, !tbaa !31
  br label %17

17:                                               ; preds = %10, %15, %7
  %18 = phi i32 [ 0, %15 ], [ %9, %7 ], [ -15, %10 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @check_type_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i32 -17, i32 -20
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @make_reals(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %9, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %13, %5 ], [ %1, %3 ]
  %8 = phi ptr [ %12, %5 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load float, ptr %7, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  store float %10, ptr %11, align 8, !tbaa !5
  store i16 4096, ptr %8, align 8, !tbaa !8
  %12 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  %13 = getelementptr inbounds float, ptr %7, i64 1
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %5, !llvm.loop !50

15:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @check_proc_failed(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = load i16, ptr %0, align 8, !tbaa !8
  %3 = and i16 %2, 15360
  %4 = icmp eq i16 %3, 1024
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 -17, i32 -20
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ -7, %1 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @read_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = load i16, ptr %0, align 8, !tbaa !8
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 1056
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %8, 0
  %12 = select i1 %11, i32 -17, i32 -20
  br label %52

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !30
  %16 = icmp eq i16 %15, 6
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 5
  %21 = getelementptr inbounds float, ptr %1, i64 6
  br label %22

22:                                               ; preds = %41, %17
  %23 = phi i32 [ %27, %41 ], [ 6, %17 ]
  %24 = phi i32 [ %43, %41 ], [ 0, %17 ]
  %25 = phi ptr [ %42, %41 ], [ %21, %17 ]
  %26 = phi ptr [ %44, %41 ], [ %20, %17 ]
  %27 = add nsw i32 %23, -1
  %28 = shl i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !5
  switch i8 %30, label %48 [
    i8 16, label %31
    i8 11, label %35
    i8 0, label %49
  ]

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ref_s, ptr %26, i64 0, i32 1
  %33 = load float, ptr %32, align 8, !tbaa !5
  %34 = getelementptr inbounds float, ptr %25, i64 -1
  store float %33, ptr %34, align 4, !tbaa !22
  br label %41

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.ref_s, ptr %26, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !5
  %38 = sitofp i64 %37 to float
  %39 = getelementptr inbounds float, ptr %25, i64 -1
  store float %38, ptr %39, align 4, !tbaa !22
  %40 = or disjoint i32 %28, 1
  br label %41

41:                                               ; preds = %35, %31
  %42 = phi ptr [ %39, %35 ], [ %34, %31 ]
  %43 = phi i32 [ %40, %35 ], [ %28, %31 ]
  %44 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -1
  %45 = icmp ugt i32 %23, 1
  br i1 %45, label %22, label %46, !llvm.loop !49

46:                                               ; preds = %41
  %47 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  br label %49

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %22, %48, %46
  %50 = phi i32 [ %47, %46 ], [ -20, %48 ], [ -17, %22 ]
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %13, %10, %6, %49
  %53 = phi i32 [ %51, %49 ], [ %12, %10 ], [ -7, %6 ], [ -15, %13 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local i32 @write_matrix(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8, !tbaa !8
  %4 = and i16 %3, 16144
  %5 = icmp eq i16 %4, 1040
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %8, 0
  %12 = select i1 %11, i32 -17, i32 -20
  br label %41

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !30
  %16 = icmp eq i16 %15, 6
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  br label %20

20:                                               ; preds = %17, %31
  %21 = phi i32 [ 5, %17 ], [ %37, %31 ]
  %22 = phi ptr [ %1, %17 ], [ %39, %31 ]
  %23 = phi ptr [ %19, %17 ], [ %38, %31 ]
  %24 = load i16, ptr %23, align 8, !tbaa !8
  %25 = zext i16 %24 to i32
  %26 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !14
  %27 = and i32 %26, %25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef nonnull @.str.9) #14
  br label %31

31:                                               ; preds = %20, %29
  %32 = load float, ptr %22, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.ref_s, ptr %23, i64 0, i32 1
  store float %32, ptr %33, align 8, !tbaa !5
  %34 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !25
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, 4096
  store i16 %36, ptr %23, align 8, !tbaa !8
  %37 = add nsw i32 %21, -1
  %38 = getelementptr inbounds %struct.ref_s, ptr %23, i64 1
  %39 = getelementptr inbounds float, ptr %22, i64 1
  %40 = icmp eq i32 %21, 0
  br i1 %40, label %41, label %20, !llvm.loop !51

41:                                               ; preds = %31, %13, %10, %6
  %42 = phi i32 [ %12, %10 ], [ -7, %6 ], [ -15, %13 ], [ 0, %31 ]
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !11, i64 0}
!9 = !{!"ref_s", !10, i64 0, !6, i64 8}
!10 = !{!"tas_s", !11, i64 0, !11, i64 2}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !17, i64 56}
!15 = !{!"gs_dual_memory_s", !16, i64 0, !6, i64 8, !17, i64 40, !17, i64 44, !16, i64 48, !17, i64 56, !17, i64 60}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = !{i64 0, i64 2, !19, i64 2, i64 2, !19, i64 8, i64 8, !20, i64 8, i64 2, !19, i64 8, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!16, !16, i64 0}
!25 = !{!15, !17, i64 60}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = !{!9, !11, i64 2}
!31 = !{!17, !17, i64 0}
!32 = !{!33, !16, i64 8}
!33 = !{!"", !16, i64 0, !16, i64 8}
!34 = distinct !{!34, !13}
!35 = !{!36, !16, i64 32}
!36 = !{!"gs_font_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !37, i64 48, !17, i64 72, !17, i64 76, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96, !23, i64 100, !38, i64 104, !40, i64 176, !40, i64 228}
!37 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!38 = !{!"gs_font_procs_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !39, i64 32, !16, i64 48, !16, i64 56, !16, i64 64}
!39 = !{!"gx_xfont_callbacks_s", !16, i64 0, !16, i64 8}
!40 = !{!"gs_font_name_s", !6, i64 0, !17, i64 48}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = !{i32 0, i32 2}
!44 = !{!33, !16, i64 0}
!45 = distinct !{!45, !13}
!46 = !{!47, !16, i64 96}
!47 = !{!"gs_memory_s", !48, i64 0}
!48 = !{!"gs_memory_procs_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
