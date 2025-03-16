; ModuleID = 'zdict.c'
source_filename = "zdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }

@d_stack = external global %struct.ref_stack_s, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@min_dstack_size = external local_unnamed_addr global i32, align 4
@dtop_keys = external local_unnamed_addr global ptr, align 8
@dtop_npairs = external local_unnamed_addr global i32, align 4
@dtop_values = external local_unnamed_addr global ptr, align 8
@dsspace = external local_unnamed_addr global i32, align 4
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@ref_systemdict = external global %struct.ref_s, align 8
@dict_auto_expand = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [16 x i8] c"dict_put(value)\00", align 1
@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@zdict_op_defs.op_defs_ = internal constant [20 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zcleardictstack }, %struct.op_def { ptr @.str.2, ptr @zbegin }, %struct.op_def { ptr @.str.3, ptr @zcountdictstack }, %struct.op_def { ptr @.str.4, ptr @zcurrentdict }, %struct.op_def { ptr @.str.5, ptr @zdef }, %struct.op_def { ptr @.str.6, ptr @zdict }, %struct.op_def { ptr @.str.7, ptr @zdictstack }, %struct.op_def { ptr @.str.8, ptr @zend }, %struct.op_def { ptr @.str.9, ptr @zknown }, %struct.op_def { ptr @.str.10, ptr @zload }, %struct.op_def { ptr @.str.11, ptr @zmaxlength }, %struct.op_def { ptr @.str.12, ptr @zundef }, %struct.op_def { ptr @.str.13, ptr @zwhere }, %struct.op_def { ptr @.str.14, ptr @zdictcopynew }, %struct.op_def { ptr @.str.15, ptr @zdicttomark }, %struct.op_def { ptr @.str.16, ptr @zforceput }, %struct.op_def { ptr @.str.17, ptr @zknownget }, %struct.op_def { ptr @.str.18, ptr @zknownundef }, %struct.op_def { ptr @.str.19, ptr @zsetmaxlength }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"0cleardictstack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1begin\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"0countdictstack\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"0currentdict\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"2def\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"1dict\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"0dictstack\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"0end\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"2known\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1load\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"1maxlength\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"2.undef\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"1where\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"2.dictcopynew\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"1.dicttomark\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"3.forceput\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"2.knownget\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"1.knownundef\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"2.setmaxlength\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"dictstack\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zdict(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp ugt i64 %9, 4294967295
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = trunc i64 %9 to i32
  %13 = tail call i32 @dict_create(i32 noundef %12, ptr noundef %0) #6
  br label %14

14:                                               ; preds = %7, %11, %5
  %15 = phi i32 [ %13, %11 ], [ %6, %5 ], [ -15, %7 ]
  ret i32 %15
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

declare i32 @dict_create(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zbegin(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i16, ptr %9, align 8, !tbaa !8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %15 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 2), align 8, !tbaa !17
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ref_s, ptr %14, i64 1
  store ptr %18, ptr @d_stack, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  tail call void @dict_set_top() #6
  %19 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 -1
  store ptr %20, ptr @o_stack, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %13, %7, %17, %5
  %22 = phi i32 [ 0, %17 ], [ %6, %5 ], [ -7, %7 ], [ -3, %13 ]
  ret i32 %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @dict_set_top() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zend(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !25
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  %9 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 5), align 4, !tbaa !26
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  %12 = load i32, ptr @min_dstack_size, align 4, !tbaa !27
  %13 = zext i32 %12 to i64
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %17 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !25
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %19
  %20 = tail call i32 @ref_stack_pop_block(ptr noundef nonnull @d_stack) #6
  %21 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %22 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !25
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %19, label %24, !llvm.loop !28

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %16, %15 ], [ %21, %19 ]
  %26 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  store ptr %26, ptr @d_stack, align 8, !tbaa !13
  tail call void @dict_set_top() #6
  br label %27

27:                                               ; preds = %1, %24
  %28 = phi i32 [ 0, %24 ], [ -4, %1 ]
  ret i32 %28
}

declare i32 @ref_stack_pop_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zop_def(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [2 x %struct.ref_s], align 16
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %5 = getelementptr inbounds i8, ptr %0, i64 -15
  %6 = load i8, ptr %5, align 1, !tbaa !5
  switch i8 %6, label %29 [
    i8 13, label %7
    i8 14, label %130
    i8 0, label %28
  ]

7:                                                ; preds = %1
  %8 = tail call i32 @name_index(ptr noundef nonnull %4) #6
  %9 = load ptr, ptr @dtop_keys, align 8, !tbaa !24
  %10 = load i32, ptr @dtop_npairs, align 4, !tbaa !27
  %11 = add i32 %10, -1
  %12 = and i32 %11, %8
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i16, ptr %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !19
  %17 = zext i16 %16 to i32
  %18 = add i32 %8, 49152
  %19 = icmp eq i32 %18, %17
  br i1 %19, label %20, label %29

20:                                               ; preds = %7
  %21 = load ptr, ptr @dtop_values, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %14
  store ptr %22, ptr %2, align 8, !tbaa !24
  %23 = load i16, ptr %0, align 8, !tbaa !30
  %24 = and i16 %23, 12
  %25 = zext nneg i16 %24 to i32
  %26 = load i32, ptr @dsspace, align 4, !tbaa !27
  %27 = icmp slt i32 %26, %25
  br i1 %27, label %29, label %107

28:                                               ; preds = %1
  br label %130

29:                                               ; preds = %7, %20, %1
  %30 = load i16, ptr %0, align 8, !tbaa !30
  %31 = and i16 %30, 12
  %32 = zext nneg i16 %31 to i32
  %33 = load i32, ptr @dsspace, align 4, !tbaa !27
  %34 = icmp slt i32 %33, %32
  %35 = load ptr, ptr @d_stack, align 8, !tbaa !13
  br i1 %34, label %36, label %101

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ref_s, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i16, ptr %38, align 8, !tbaa !8
  %40 = and i16 %39, 16
  %41 = icmp eq i16 %40, 0
  %42 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 3), align 4
  %43 = icmp sgt i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %98, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_systemdict, i64 0, i32 1), align 8, !tbaa !5
  %47 = icmp eq ptr %38, %46
  br i1 %47, label %75, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %49 = load i16, ptr %46, align 8, !tbaa !8
  %50 = and i16 %49, 16
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @dict_first(ptr noundef nonnull @ref_systemdict) #6
  %54 = getelementptr inbounds [2 x %struct.ref_s], ptr %3, i64 0, i64 1, i32 1
  %55 = call i32 @dict_next(ptr noundef nonnull @ref_systemdict, i32 noundef %53, ptr noundef nonnull %3) #6
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %97

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %3, i64 17
  br label %59

59:                                               ; preds = %57, %69
  %60 = phi i32 [ %55, %57 ], [ %70, %69 ]
  %61 = load i8, ptr %58, align 1, !tbaa !5
  %62 = icmp eq i8 %61, 2
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load ptr, ptr %54, align 8, !tbaa !5
  %65 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %66 = getelementptr inbounds %struct.ref_s, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = icmp eq ptr %64, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %63, %59
  %70 = call i32 @dict_next(ptr noundef nonnull @ref_systemdict, i32 noundef %60, ptr noundef nonnull %3) #6
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %59, label %72, !llvm.loop !31

72:                                               ; preds = %63, %69
  %73 = phi i32 [ %70, %69 ], [ %60, %63 ]
  %74 = icmp sgt i32 %73, -1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br i1 %74, label %75, label %98

75:                                               ; preds = %72, %45
  %76 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %77 = call i32 @dict_find(ptr noundef %76, ptr noundef nonnull %4, ptr noundef nonnull %2) #6
  switch i32 %77, label %78 [
    i32 1, label %98
    i32 -2, label %79
    i32 0, label %86
  ]

78:                                               ; preds = %75
  br label %98

79:                                               ; preds = %75
  %80 = load i32, ptr @dict_auto_expand, align 4, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %84 = call i32 @dict_grow(ptr noundef %83) #6
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %75, %82
  %87 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %88 = load i16, ptr %87, align 8, !tbaa !30
  %89 = and i16 %88, 12
  %90 = or i16 %88, 12
  store i16 %90, ptr %87, align 8, !tbaa !30
  %91 = call i32 @dict_put(ptr noundef nonnull %87, ptr noundef nonnull %4, ptr noundef nonnull %0) #6
  %92 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %93 = load i16, ptr %92, align 8, !tbaa !30
  %94 = and i16 %93, -13
  %95 = or disjoint i16 %94, %89
  store i16 %95, ptr %92, align 8, !tbaa !30
  br label %98

96:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br label %98

97:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br label %98

98:                                               ; preds = %97, %82, %79, %75, %96, %36, %72, %86, %78
  %99 = phi i1 [ false, %78 ], [ false, %86 ], [ false, %72 ], [ false, %36 ], [ false, %96 ], [ true, %75 ], [ false, %79 ], [ false, %82 ], [ false, %97 ]
  %100 = phi i32 [ %77, %78 ], [ %91, %86 ], [ -7, %72 ], [ -7, %36 ], [ -7, %96 ], [ -7, %75 ], [ -2, %79 ], [ %84, %82 ], [ -7, %97 ]
  br i1 %99, label %107, label %130

101:                                              ; preds = %29
  %102 = call i32 @dict_find(ptr noundef %35, ptr noundef nonnull %4, ptr noundef nonnull %2) #6
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %106 = call i32 @dict_put(ptr noundef %105, ptr noundef nonnull %4, ptr noundef nonnull %0) #6
  br label %130

107:                                              ; preds = %20, %101, %98
  %108 = load ptr, ptr %2, align 8, !tbaa !24
  %109 = load i16, ptr %108, align 8, !tbaa !30
  %110 = zext i16 %109 to i32
  %111 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !32
  %112 = and i32 %111, %110
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %116 = getelementptr inbounds %struct.ref_s, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %117, ptr noundef nonnull %108, ptr noundef nonnull @.str) #6
  br label %119

119:                                              ; preds = %107, %114
  %120 = load ptr, ptr %2, align 8, !tbaa !24
  %121 = getelementptr inbounds %struct.ref_s, ptr %120, i64 0, i32 1
  %122 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %123 = load i64, ptr %122, align 8
  store i64 %123, ptr %121, align 8
  %124 = load i32, ptr %0, align 8
  store i32 %124, ptr %120, align 8
  %125 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !34
  %126 = load ptr, ptr %2, align 8, !tbaa !24
  %127 = load i16, ptr %126, align 8, !tbaa !30
  %128 = trunc i32 %125 to i16
  %129 = or i16 %127, %128
  store i16 %129, ptr %126, align 8, !tbaa !30
  br label %130

130:                                              ; preds = %1, %98, %119, %104, %28
  %131 = phi i32 [ %106, %104 ], [ 0, %119 ], [ %100, %98 ], [ -17, %28 ], [ -20, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @name_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @dict_first(ptr noundef) local_unnamed_addr #1

declare i32 @dict_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dict_grow(ptr noundef) local_unnamed_addr #1

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zdef(ptr noundef %0) #0 {
  %2 = tail call i32 @zop_def(ptr noundef %0)
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -2
  store ptr %6, ptr @o_stack, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zwhere(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !25
  %4 = icmp ugt ptr %3, %0
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !25
  %8 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %7 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 4
  br label %14

14:                                               ; preds = %49, %5
  %15 = phi i32 [ undef, %5 ], [ %43, %49 ]
  %16 = phi ptr [ %0, %5 ], [ %44, %49 ]
  %17 = phi ptr [ %6, %5 ], [ %47, %49 ]
  %18 = phi ptr [ %7, %5 ], [ %51, %49 ]
  %19 = phi i64 [ %13, %5 ], [ %54, %49 ]
  %20 = and i64 %19, 4294967295
  %21 = getelementptr inbounds %struct.ref_s, ptr %18, i64 %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  br label %22

22:                                               ; preds = %32, %14
  %23 = phi ptr [ %21, %14 ], [ %24, %32 ]
  %24 = getelementptr inbounds %struct.ref_s, ptr %23, i64 -1
  %25 = icmp ugt ptr %23, %18
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = getelementptr %struct.ref_s, ptr %23, i64 -1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = load i16, ptr %28, align 8, !tbaa !8
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = call i32 @dict_find(ptr noundef nonnull %24, ptr noundef %16, ptr noundef nonnull %2) #6
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1
  %37 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !17
  %38 = icmp ugt ptr %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %42

40:                                               ; preds = %35
  store ptr %36, ptr @o_stack, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !18
  %41 = getelementptr inbounds %struct.ref_s, ptr %16, i64 1, i32 1
  store i16 1, ptr %41, align 8, !tbaa !5
  store i16 256, ptr %36, align 8, !tbaa !30
  br label %42

42:                                               ; preds = %22, %26, %40, %39
  %43 = phi i32 [ -16, %39 ], [ 0, %40 ], [ -7, %26 ], [ %15, %22 ]
  %44 = phi ptr [ %36, %39 ], [ %36, %40 ], [ %16, %26 ], [ %16, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  br i1 %25, label %58, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ref_stack_block_s, ptr %47, i64 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.ref_stack_block_s, ptr %47, i64 0, i32 1, i32 0, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !37
  %54 = zext i16 %53 to i64
  br label %14, !llvm.loop !39

55:                                               ; preds = %45
  br i1 %25, label %58, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.ref_s, ptr %44, i64 0, i32 1
  store i16 0, ptr %57, align 8, !tbaa !5
  store i16 256, ptr %44, align 8, !tbaa !30
  br label %58

58:                                               ; preds = %42, %55, %1, %56
  %59 = phi i32 [ %43, %55 ], [ 0, %56 ], [ -17, %1 ], [ %43, %42 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zcopy_dict(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %48

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i16, ptr %16, align 8, !tbaa !8
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr @dict_auto_expand, align 4, !tbaa !27
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = tail call i32 @dict_length(ptr noundef %0) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = tail call i32 @dict_maxlength(ptr noundef %0) #6
  %28 = tail call i32 @dict_length(ptr noundef nonnull %2) #6
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %26, %20
  %31 = tail call i32 @dict_copy_entries(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 0) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %35 = and i64 %34, 4294967295
  %36 = icmp eq i64 %35, 2
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %15, align 8, !tbaa !5
  %39 = load i16, ptr %38, align 8, !tbaa !8
  %40 = and i16 %39, -17
  %41 = load ptr, ptr %9, align 8, !tbaa !5
  %42 = load i16, ptr %41, align 8, !tbaa !8
  %43 = and i16 %42, 16
  %44 = or disjoint i16 %43, %40
  store i16 %44, ptr %38, align 8, !tbaa !8
  br label %45

45:                                               ; preds = %37, %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %46 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.ref_s, ptr %46, i64 -1
  store ptr %47, ptr @o_stack, align 8, !tbaa !13
  br label %48

48:                                               ; preds = %30, %23, %26, %14, %8, %45, %6
  %49 = phi i32 [ 0, %45 ], [ %7, %6 ], [ -7, %8 ], [ -7, %14 ], [ -15, %26 ], [ -15, %23 ], [ %31, %30 ]
  ret i32 %49
}

declare i32 @dict_length(ptr noundef) local_unnamed_addr #1

declare i32 @dict_maxlength(ptr noundef) local_unnamed_addr #1

declare i32 @dict_copy_entries(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zdict_op_defs() local_unnamed_addr #4 {
  ret ptr @zdict_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcleardictstack(ptr nocapture readnone %0) #0 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !25
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 5), align 4, !tbaa !26
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = load i32, ptr @min_dstack_size, align 4, !tbaa !27
  %14 = zext i32 %13 to i64
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = icmp eq ptr %3, %5
  br i1 %17, label %18, label %23

18:                                               ; preds = %16, %18
  %19 = tail call i32 @ref_stack_pop_block(ptr noundef nonnull @d_stack) #6
  %20 = load ptr, ptr @d_stack, align 8, !tbaa !13
  %21 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !25
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %18, label %23, !llvm.loop !28

23:                                               ; preds = %18, %16
  %24 = phi ptr [ %3, %16 ], [ %20, %18 ]
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 -1
  store ptr %25, ptr @d_stack, align 8, !tbaa !13
  tail call void @dict_set_top() #6
  br i1 %15, label %26, label %2, !llvm.loop !40

26:                                               ; preds = %2, %23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @zcountdictstack(ptr noundef %0) #0 {
  %2 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #6
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !17
  %5 = icmp ugt ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %15

7:                                                ; preds = %1
  store ptr %3, ptr @o_stack, align 8, !tbaa !13
  %8 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %9 = and i64 %8, 4294967295
  %10 = icmp ne i64 %9, 2
  %11 = sext i1 %10 to i32
  %12 = add i32 %2, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !30
  br label %15

15:                                               ; preds = %7, %6
  %16 = phi i32 [ -16, %6 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zcurrentdict(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !17
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !36
  br label %8

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !13
  %7 = load ptr, ptr @d_stack, align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !18
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @zdictstack(ptr noundef %0) #0 {
  %2 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #6
  %3 = load i16, ptr %0, align 8, !tbaa !30
  %4 = and i16 %3, 16144
  %5 = icmp eq i16 %4, 1040
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %19

12:                                               ; preds = %1
  %13 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %14 = and i64 %13, 4294967295
  %15 = icmp ne i64 %14, 2
  %16 = sext i1 %15 to i32
  %17 = add i32 %2, %16
  %18 = tail call i32 @ref_stack_store(ptr noundef nonnull @d_stack, ptr noundef nonnull %0, i32 noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.20) #6
  br label %19

19:                                               ; preds = %10, %6, %12
  %20 = phi i32 [ %18, %12 ], [ %11, %10 ], [ -7, %6 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zknown(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %4 = getelementptr inbounds i8, ptr %0, i64 -15
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #6
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i16, ptr %11, align 8, !tbaa !8
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = call i32 @dict_find(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #6
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i16
  store i16 %18, ptr %10, align 8, !tbaa !5
  store i16 256, ptr %3, align 8, !tbaa !30
  %19 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 -1
  store ptr %20, ptr @o_stack, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %9, %15, %7
  %22 = phi i32 [ 0, %15 ], [ %8, %7 ], [ -7, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @zload(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  switch i8 %4, label %11 [
    i8 13, label %5
    i8 14, label %36
    i8 0, label %10
  ]

5:                                                ; preds = %1
  %6 = tail call i32 @name_index(ptr noundef %0) #6
  %7 = tail call ptr @dict_find_name_by_index(i32 noundef %6) #6
  store ptr %7, ptr %2, align 8, !tbaa !24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !18
  br label %36

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  %12 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = zext i32 %12 to i64
  br label %19

16:                                               ; preds = %33
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %36, label %19, !llvm.loop !41

19:                                               ; preds = %14, %16
  %20 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %21 = phi i32 [ undef, %14 ], [ %35, %16 ]
  %22 = call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %20) #6
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i16, ptr %24, align 8, !tbaa !8
  %26 = and i16 %25, 32
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = call i32 @dict_find(ptr noundef %22, ptr noundef %0, ptr noundef nonnull %2) #6
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !18
  br label %33

33:                                               ; preds = %28, %19, %31
  %34 = phi i1 [ false, %31 ], [ false, %19 ], [ true, %28 ]
  %35 = phi i32 [ 0, %31 ], [ -7, %19 ], [ %21, %28 ]
  br i1 %34, label %16, label %36

36:                                               ; preds = %16, %33, %11, %1, %5, %10, %9
  %37 = phi i32 [ -17, %10 ], [ 0, %9 ], [ -21, %5 ], [ -20, %1 ], [ -21, %11 ], [ %35, %33 ], [ -21, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zmaxlength(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i16, ptr %9, align 8, !tbaa !8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @dict_maxlength(ptr noundef %0) #6
  %15 = zext i32 %14 to i64
  store i64 %15, ptr %8, align 8, !tbaa !5
  store i16 2816, ptr %0, align 8, !tbaa !30
  br label %16

16:                                               ; preds = %7, %13, %5
  %17 = phi i32 [ 0, %13 ], [ %6, %5 ], [ -7, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @zundef(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %18

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @dict_undef(ptr noundef nonnull %2, ptr noundef %0) #6
  %16 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 -2
  store ptr %17, ptr @o_stack, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %8, %14, %6
  %19 = phi i32 [ 0, %14 ], [ %7, %6 ], [ -7, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @zdictcopynew(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %35

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %35

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i16, ptr %22, align 8, !tbaa !8
  %24 = and i16 %23, 16
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr @dict_auto_expand, align 4, !tbaa !27
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @dict_copy_entries(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !18
  %33 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -1
  store ptr %34, ptr @o_stack, align 8, !tbaa !13
  br label %35

35:                                               ; preds = %29, %26, %20, %8, %32, %18, %6
  %36 = phi i32 [ 0, %32 ], [ %19, %18 ], [ %7, %6 ], [ -7, %8 ], [ -7, %20 ], [ -21, %26 ], [ %30, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @zdicttomark(ptr nocapture readnone %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = tail call i32 @ref_stack_counttomark(ptr noundef nonnull @o_stack) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = lshr exact i32 %6, 1
  %11 = call i32 @dict_create(i32 noundef %10, ptr noundef nonnull %2) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = zext i32 %6 to i64
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 2
  %19 = icmp ult i64 %18, %16
  br i1 %19, label %20, label %27, !llvm.loop !42

20:                                               ; preds = %15, %17
  %21 = phi i64 [ 0, %15 ], [ %18, %17 ]
  %22 = or disjoint i64 %21, 1
  %23 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %22) #6
  %24 = call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %21) #6
  %25 = call i32 @dict_put(ptr noundef nonnull %2, ptr noundef %23, ptr noundef %24) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %17

27:                                               ; preds = %17, %13
  %28 = phi i32 [ %11, %13 ], [ %25, %17 ]
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %6) #6
  %29 = load ptr, ptr @o_stack, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !18
  br label %30

30:                                               ; preds = %20, %9, %5, %1, %27
  %31 = phi i32 [ %28, %27 ], [ -24, %1 ], [ -15, %5 ], [ %11, %9 ], [ %25, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @zforceput(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %3 = getelementptr inbounds i8, ptr %0, i64 -31
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %31

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_systemdict, i64 0, i32 1), align 8, !tbaa !5
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i16, ptr %2, align 8, !tbaa !30
  %15 = and i16 %14, 12
  %16 = or i16 %14, 12
  store i16 %16, ptr %2, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %18 = tail call i32 @dict_put(ptr noundef nonnull %2, ptr noundef nonnull %17, ptr noundef %0) #6
  %19 = load i16, ptr %2, align 8, !tbaa !30
  %20 = and i16 %19, -13
  %21 = or disjoint i16 %20, %15
  store i16 %21, ptr %2, align 8, !tbaa !30
  br label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %24 = tail call i32 @dict_put(ptr noundef nonnull %2, ptr noundef nonnull %23, ptr noundef %0) #6
  br label %25

25:                                               ; preds = %22, %13
  %26 = phi i32 [ %18, %13 ], [ %24, %22 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.ref_s, ptr %29, i64 -3
  store ptr %30, ptr @o_stack, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %25, %28, %6
  %32 = phi i32 [ 0, %28 ], [ %7, %6 ], [ %26, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @zknownget(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %4 = getelementptr inbounds i8, ptr %0, i64 -15
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %3) #6
  br label %24

9:                                                ; preds = %1
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i16, ptr %11, align 8, !tbaa !8
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = call i32 @dict_find(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #6
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store i16 0, ptr %10, align 8, !tbaa !5
  store i16 256, ptr %3, align 8, !tbaa !30
  %19 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.ref_s, ptr %19, i64 -1
  store ptr %20, ptr @o_stack, align 8, !tbaa !13
  br label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !18
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 1, ptr %23, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !30
  br label %24

24:                                               ; preds = %18, %21, %9, %7
  %25 = phi i32 [ %8, %7 ], [ -7, %9 ], [ 0, %21 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @zknownundef(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = tail call i32 @dict_undef(ptr noundef nonnull %2, ptr noundef %0) #6
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i16
  store i16 %17, ptr %9, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !30
  %18 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -1
  store ptr %19, ptr @o_stack, align 8, !tbaa !13
  br label %20

20:                                               ; preds = %8, %14, %6
  %21 = phi i32 [ 0, %14 ], [ %7, %6 ], [ -7, %8 ]
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetmaxlength(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %34

8:                                                ; preds = %1
  %9 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !8
  %12 = and i16 %11, 16
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 11
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %34

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !5
  %23 = icmp ugt i64 %22, 4294967295
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = trunc i64 %22 to i32
  %26 = tail call i32 @dict_length(ptr noundef nonnull %2) #6
  %27 = icmp ugt i32 %26, %25
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @dict_resize(ptr noundef nonnull %2, i32 noundef %25) #6
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load ptr, ptr @o_stack, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 -2
  store ptr %33, ptr @o_stack, align 8, !tbaa !13
  br label %34

34:                                               ; preds = %28, %31, %24, %20, %8, %18, %6
  %35 = phi i32 [ %19, %18 ], [ %7, %6 ], [ -7, %8 ], [ -15, %20 ], [ -2, %24 ], [ %29, %31 ], [ %29, %28 ]
  ret i32 %35
}

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #1

declare i32 @ref_stack_store(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dict_find_name_by_index(i32 noundef) local_unnamed_addr #1

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dict_undef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ref_stack_counttomark(ptr noundef) local_unnamed_addr #1

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dict_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!8 = !{!9, !12, i64 0}
!9 = !{!"dict_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
!10 = !{!"ref_s", !11, i64 0, !6, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"ref_stack_s", !15, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !16, i64 40, !16, i64 44, !10, i64 48, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !10, i64 88, !16, i64 104, !16, i64 108, !16, i64 112, !15, i64 120}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!14, !15, i64 16}
!18 = !{i64 0, i64 2, !19, i64 2, i64 2, !19, i64 8, i64 8, !20, i64 8, i64 2, !19, i64 8, i64 4, !22, i64 8, i64 8, !20, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24}
!19 = !{!12, !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!14, !15, i64 8}
!26 = !{!14, !16, i64 44}
!27 = !{!16, !16, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!10, !12, i64 0}
!31 = distinct !{!31, !29}
!32 = !{!33, !16, i64 56}
!33 = !{!"gs_dual_memory_s", !15, i64 0, !6, i64 8, !16, i64 40, !16, i64 44, !15, i64 48, !16, i64 56, !16, i64 60}
!34 = !{!33, !16, i64 60}
!35 = distinct !{!35, !29}
!36 = !{!14, !16, i64 64}
!37 = !{!38, !12, i64 18}
!38 = !{!"ref_stack_block_s", !10, i64 0, !10, i64 16}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
