; ModuleID = 'zmisc2.c'
source_filename = "zmisc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }

@zmisc2_op_defs.op_defs_ = internal constant [5 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zlanguagelevel }, %struct.op_def { ptr @.str.1, ptr @zsetlanguagelevel }, %struct.op_def { ptr @.str.2, ptr null }, %struct.op_def { ptr @.str.3, ptr @z2where }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0.languagelevel\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"1.setlanguagelevel\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"1where\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@ref_language_level = external global %struct.ref_s, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"setlanguagelevel\00", align 1
@d_stack = external global %struct.ref_stack_s, align 8
@ref_systemdict = external global %struct.ref_s, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"globaldict\00", align 1
@dict_auto_expand = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"setcolor\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"FreeHandDict\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zmisc2_op_defs() local_unnamed_addr #0 {
  ret ptr @zmisc2_op_defs.op_defs_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @zlanguagelevel(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %4 = icmp ugt ptr %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %7

6:                                                ; preds = %1
  store ptr %2, ptr @o_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @ref_language_level, i64 16, i1 false), !tbaa.struct !16
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ -16, %5 ], [ 0, %6 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetlanguagelevel(ptr noundef %0) #2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [2 x %struct.ref_s], align 16
  %5 = alloca [2 x %struct.ref_s], align 16
  %6 = alloca ptr, align 8
  %7 = alloca [2 x %struct.ref_s], align 16
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !23
  %10 = icmp eq i8 %9, 11
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @check_type_failed(ptr noundef %0) #7
  br label %139

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !23
  %16 = add i64 %15, -3
  %17 = icmp ult i64 %16, -2
  br i1 %17, label %139, label %18

18:                                               ; preds = %13
  %19 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !23
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %123, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #7
  %23 = add i32 %22, -2
  %24 = zext i32 %23 to i64
  %25 = tail call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %24) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %26 = call i32 @dict_find_string(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #7
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %120, label %28

28:                                               ; preds = %21
  %29 = icmp eq i64 %15, 2
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %31 = load ptr, ptr %2, align 8, !tbaa !22
  %32 = call i32 @dict_find_string(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #7
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 8, !tbaa !22
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !23
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !16
  br label %40

40:                                               ; preds = %39, %30
  store i32 1, ptr @dict_auto_expand, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %57

41:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %120

42:                                               ; preds = %28
  %43 = call i32 @dict_first(ptr noundef %25) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  %44 = call i32 @dict_next(ptr noundef %25, i32 noundef %43, ptr noundef nonnull %4) #7
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %4, i64 1
  br label %48

48:                                               ; preds = %53, %46
  %49 = phi i32 [ %44, %46 ], [ %54, %53 ]
  %50 = load i8, ptr %47, align 1, !tbaa !23
  %51 = icmp eq i8 %50, 13
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @name_invalidate_value_cache(ptr noundef nonnull %4) #7
  br label %53

53:                                               ; preds = %52, %48
  %54 = call i32 @dict_next(ptr noundef %25, i32 noundef %49, ptr noundef nonnull %4) #7
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %48, label %56, !llvm.loop !25

56:                                               ; preds = %53, %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) @ref_systemdict, i64 16, i1 false), !tbaa.struct !16
  store i32 0, ptr @dict_auto_expand, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  br label %57

57:                                               ; preds = %56, %40
  %58 = load ptr, ptr %2, align 8, !tbaa !22
  %59 = call i32 @dict_first(ptr noundef %58) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %60 = load ptr, ptr %2, align 8, !tbaa !22
  %61 = call i32 @dict_next(ptr noundef %60, i32 noundef %59, ptr noundef nonnull %5) #7
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %116

63:                                               ; preds = %57
  %64 = getelementptr inbounds [2 x %struct.ref_s], ptr %5, i64 0, i64 1
  %65 = getelementptr inbounds i8, ptr %5, i64 17
  br label %66

66:                                               ; preds = %102, %63
  %67 = phi i32 [ %61, %63 ], [ %105, %102 ]
  %68 = phi i32 [ -20, %63 ], [ %103, %102 ]
  %69 = load i8, ptr %65, align 1, !tbaa !23
  %70 = icmp eq i8 %69, 2
  br i1 %70, label %71, label %107

71:                                               ; preds = %66
  %72 = call i32 @dict_find(ptr noundef nonnull %64, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load ptr, ptr %6, align 8, !tbaa !22
  %76 = call i32 @obj_eq(ptr noundef nonnull %64, ptr noundef %75) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %107, label %78

78:                                               ; preds = %74
  %79 = call i32 @dict_first(ptr noundef nonnull %64) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  %80 = call i32 @dict_find(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %99, label %82, !llvm.loop !27

82:                                               ; preds = %78
  %83 = call i32 @dict_next(ptr noundef nonnull %64, i32 noundef %79, ptr noundef nonnull %7) #7
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %99

85:                                               ; preds = %82, %95
  %86 = phi i32 [ %97, %95 ], [ %83, %82 ]
  %87 = phi i32 [ %96, %95 ], [ %68, %82 ]
  %88 = call i32 @obj_eq(ptr noundef nonnull %7, ptr noundef nonnull %5) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load ptr, ptr %6, align 8, !tbaa !22
  %92 = call fastcc i32 @swap_entry(ptr noundef nonnull %7, ptr noundef %91, ptr noundef nonnull %64)
  %93 = icmp sgt i32 %92, -1
  %94 = select i1 %93, i32 %87, i32 %92
  br i1 %93, label %95, label %99

95:                                               ; preds = %90, %85
  %96 = phi i32 [ %87, %85 ], [ %94, %90 ]
  %97 = call i32 @dict_next(ptr noundef nonnull %64, i32 noundef %86, ptr noundef nonnull %7) #7
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %85, label %99, !llvm.loop !28

99:                                               ; preds = %95, %90, %82, %78
  %100 = phi i32 [ 4, %78 ], [ 0, %82 ], [ 0, %95 ], [ 1, %90 ]
  %101 = phi i32 [ %68, %78 ], [ %68, %82 ], [ %96, %95 ], [ %94, %90 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  switch i32 %100, label %112 [
    i32 0, label %102
    i32 4, label %102
  ]

102:                                              ; preds = %107, %99, %99
  %103 = phi i32 [ %101, %99 ], [ %101, %99 ], [ %111, %107 ]
  %104 = load ptr, ptr %2, align 8, !tbaa !22
  %105 = call i32 @dict_next(ptr noundef %104, i32 noundef %67, ptr noundef nonnull %5) #7
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %66, label %112, !llvm.loop !27

107:                                              ; preds = %74, %71, %66
  %108 = load ptr, ptr %2, align 8, !tbaa !22
  %109 = call fastcc i32 @swap_entry(ptr noundef nonnull %5, ptr noundef nonnull @ref_systemdict, ptr noundef %108)
  %110 = icmp sgt i32 %109, -1
  %111 = select i1 %110, i32 %68, i32 %109
  br i1 %110, label %102, label %112

112:                                              ; preds = %107, %102, %99
  %113 = phi i32 [ %100, %99 ], [ 1, %107 ], [ 0, %102 ]
  %114 = phi i32 [ %101, %99 ], [ %111, %107 ], [ %103, %102 ]
  %115 = icmp eq i32 %113, 0
  br label %116

116:                                              ; preds = %112, %57
  %117 = phi i1 [ true, %57 ], [ %115, %112 ]
  %118 = phi i32 [ -20, %57 ], [ %114, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  br i1 %117, label %119, label %120

119:                                              ; preds = %116
  call void @dict_set_top() #7
  br label %120

120:                                              ; preds = %21, %41, %116, %119
  %121 = phi i32 [ 0, %119 ], [ %118, %116 ], [ -20, %41 ], [ -21, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %120, %18
  %124 = phi i32 [ %121, %120 ], [ 0, %18 ]
  %125 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %126 = getelementptr inbounds %struct.ref_s, ptr %125, i64 -1
  store ptr %126, ptr @o_stack, align 8, !tbaa !15
  %127 = load i16, ptr @ref_language_level, align 8, !tbaa !29
  %128 = zext i16 %127 to i32
  %129 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !30
  %130 = and i32 %129, %128
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef null, ptr noundef nonnull @ref_language_level, ptr noundef nonnull @.str.4) #7
  br label %134

134:                                              ; preds = %123, %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_language_level, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !16
  %135 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !32
  %136 = load i16, ptr @ref_language_level, align 8, !tbaa !29
  %137 = trunc i32 %135 to i16
  %138 = or i16 %136, %137
  store i16 %138, ptr @ref_language_level, align 8, !tbaa !29
  br label %139

139:                                              ; preds = %120, %13, %134, %11
  %140 = phi i32 [ %124, %134 ], [ %12, %11 ], [ -15, %13 ], [ %121, %120 ]
  ret i32 %140
}

; Function Attrs: nounwind uwtable
define internal i32 @z2where(ptr noundef %0) #2 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = load ptr, ptr @d_stack, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !23
  %8 = icmp eq i8 %7, 13
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  call void @name_string_ref(ptr noundef %0, ptr noundef nonnull %2) #7
  %10 = getelementptr inbounds %struct.tas_s, ptr %2, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !33
  %12 = icmp eq i16 %11, 8
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %15, ptr noundef nonnull dereferenceable(8) @.str.6, i64 8)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = call i32 @name_ref(ptr noundef nonnull @.str.7, i32 noundef 12, ptr noundef nonnull %3, i32 noundef -1) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = call i32 @name_index(ptr noundef nonnull %3) #7
  %23 = call ptr @dict_find_name_by_index(i32 noundef %22) #7
  store ptr %23, ptr %4, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 @obj_eq(ptr noundef nonnull %23, ptr noundef %5) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %21, %18, %13, %9, %1
  %29 = call i32 @zwhere(ptr noundef %0) #7
  br label %48

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !23
  %33 = load i16, ptr %32, align 8, !tbaa !34
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = call i32 @dict_find(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %4) #7
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !16
  %40 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %41 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !5
  %42 = icmp ugt ptr %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !14
  br label %48

44:                                               ; preds = %39
  store ptr %40, ptr @o_stack, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 1, ptr %45, align 8, !tbaa !23
  store i16 256, ptr %40, align 8, !tbaa !29
  br label %48

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %47, align 8, !tbaa !23
  store i16 256, ptr %0, align 8, !tbaa !29
  br label %48

48:                                               ; preds = %44, %46, %30, %43, %28
  %49 = phi i32 [ %29, %28 ], [ -16, %43 ], [ -7, %30 ], [ 0, %46 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #5

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #5

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dict_first(ptr noundef) local_unnamed_addr #5

declare i32 @dict_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @name_invalidate_value_cache(ptr noundef) local_unnamed_addr #5

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @swap_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = call i32 @dict_find(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4) #7
  switch i32 %6, label %34 [
    i32 0, label %7
    i32 1, label %8
  ]

7:                                                ; preds = %3
  store i16 3584, ptr %5, align 8, !tbaa !29
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !16
  br label %10

10:                                               ; preds = %8, %7
  %11 = load i16, ptr %2, align 8, !tbaa !29
  %12 = and i16 %11, 12
  %13 = or i16 %11, 12
  store i16 %13, ptr %2, align 8, !tbaa !29
  %14 = call i32 @dict_put(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %5) #7
  %15 = getelementptr inbounds i8, ptr %0, i64 17
  %16 = load i8, ptr %15, align 1, !tbaa !23
  %17 = icmp eq i8 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @dict_undef(ptr noundef %1, ptr noundef %0) #7
  br label %29

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %22 = load i16, ptr %1, align 8, !tbaa !29
  %23 = and i16 %22, 12
  %24 = or i16 %22, 12
  store i16 %24, ptr %1, align 8, !tbaa !29
  %25 = call i32 @dict_put(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %21) #7
  %26 = load i16, ptr %1, align 8, !tbaa !29
  %27 = and i16 %26, -13
  %28 = or disjoint i16 %27, %23
  store i16 %28, ptr %1, align 8, !tbaa !29
  br label %29

29:                                               ; preds = %20, %18
  %30 = phi i32 [ %19, %18 ], [ %25, %20 ]
  %31 = load i16, ptr %2, align 8, !tbaa !29
  %32 = and i16 %31, -13
  %33 = or disjoint i16 %32, %12
  store i16 %33, ptr %2, align 8, !tbaa !29
  br label %34

34:                                               ; preds = %3, %29
  %35 = phi i32 [ %30, %29 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %35
}

declare void @dict_set_top() local_unnamed_addr #5

declare i32 @dict_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @dict_undef(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @dict_find_name_by_index(i32 noundef) local_unnamed_addr #5

declare i32 @name_index(ptr noundef) local_unnamed_addr #5

declare i32 @zwhere(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!6, !13, i64 64}
!15 = !{!6, !7, i64 0}
!16 = !{i64 0, i64 2, !17, i64 2, i64 2, !17, i64 8, i64 8, !18, i64 8, i64 2, !17, i64 8, i64 4, !20, i64 8, i64 8, !18, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !8, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !8, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!13, !13, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = !{!10, !12, i64 0}
!30 = !{!31, !13, i64 56}
!31 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !13, i64 40, !13, i64 44, !7, i64 48, !13, i64 56, !13, i64 60}
!32 = !{!31, !13, i64 60}
!33 = !{!10, !12, i64 2}
!34 = !{!35, !12, i64 0}
!35 = !{!"dict_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
